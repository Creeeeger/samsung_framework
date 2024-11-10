package com.android.server.contentcapture;

import android.R;
import android.app.ActivityManagerInternal;
import android.app.ActivityThread;
import android.app.assist.ActivityId;
import android.content.ComponentName;
import android.content.ContentCaptureOptions;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityPresentationInfo;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.service.contentcapture.ContentCaptureService;
import android.service.contentcapture.IDataShareCallback;
import android.service.contentcapture.IDataShareReadAdapter;
import android.service.voice.VoiceInteractionManagerInternal;
import android.util.ArraySet;
import android.util.LocalLog;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.contentcapture.ContentCaptureHelper;
import android.view.contentcapture.DataRemovalRequest;
import android.view.contentcapture.DataShareRequest;
import android.view.contentcapture.IContentCaptureManager;
import android.view.contentcapture.IContentCaptureOptionsCallback;
import android.view.contentcapture.IDataShareWriteAdapter;
import com.android.internal.infra.GlobalWhitelistState;
import com.android.internal.os.IResultReceiver;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.SyncResultReceiver;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.contentcapture.ContentCaptureManagerService;
import com.android.server.infra.AbstractMasterSystemService;
import com.android.server.infra.FrameworkResourcesServiceNameResolver;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public final class ContentCaptureManagerService extends AbstractMasterSystemService {
    public static final String TAG = "ContentCaptureManagerService";
    public ActivityManagerInternal mAm;
    public final RemoteCallbackList mCallbacks;
    public final ContentCaptureManagerServiceStub mContentCaptureManagerServiceStub;
    public final Executor mDataShareExecutor;
    public boolean mDevCfgDisableFlushForViewTreeAppearing;
    public int mDevCfgIdleFlushingFrequencyMs;
    public int mDevCfgIdleUnbindTimeoutMs;
    public int mDevCfgLogHistorySize;
    public int mDevCfgLoggingLevel;
    public int mDevCfgMaxBufferSize;
    public int mDevCfgTextChangeFlushingFrequencyMs;
    public boolean mDisabledByDeviceConfig;
    public SparseBooleanArray mDisabledBySettings;
    public final GlobalContentCaptureOptions mGlobalContentCaptureOptions;
    public final Handler mHandler;
    public final LocalService mLocalService;
    public final Set mPackagesWithShareRequests;
    public final LocalLog mRequestsHistory;

    @Override // com.android.server.infra.AbstractMasterSystemService
    public int getMaximumTemporaryServiceDurationMs() {
        return 120000;
    }

    public ContentCaptureManagerService(Context context) {
        super(context, new FrameworkResourcesServiceNameResolver(context, R.string.ext_media_status_removed), "no_content_capture", 1);
        this.mLocalService = new LocalService();
        this.mContentCaptureManagerServiceStub = new ContentCaptureManagerServiceStub();
        this.mDataShareExecutor = Executors.newCachedThreadPool();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mPackagesWithShareRequests = new HashSet();
        this.mCallbacks = new RemoteCallbackList();
        this.mGlobalContentCaptureOptions = new GlobalContentCaptureOptions();
        DeviceConfig.addOnPropertiesChangedListener("content_capture", ActivityThread.currentApplication().getMainExecutor(), new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.contentcapture.ContentCaptureManagerService$$ExternalSyntheticLambda0
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                ContentCaptureManagerService.this.lambda$new$0(properties);
            }
        });
        setDeviceConfigProperties();
        if (this.mDevCfgLogHistorySize > 0) {
            if (this.debug) {
                Slog.d(TAG, "log history size: " + this.mDevCfgLogHistorySize);
            }
            this.mRequestsHistory = new LocalLog(this.mDevCfgLogHistorySize);
        } else {
            if (this.debug) {
                Slog.d(TAG, "disabled log history because size is " + this.mDevCfgLogHistorySize);
            }
            this.mRequestsHistory = null;
        }
        List supportedUsers = getSupportedUsers();
        for (int i = 0; i < supportedUsers.size(); i++) {
            int i2 = ((UserInfo) supportedUsers.get(i)).id;
            if (!isEnabledBySettings(i2)) {
                Slog.i(TAG, "user " + i2 + " disabled by settings");
                if (this.mDisabledBySettings == null) {
                    this.mDisabledBySettings = new SparseBooleanArray(1);
                }
                this.mDisabledBySettings.put(i2, true);
            }
            this.mGlobalContentCaptureOptions.setServiceInfo(i2, this.mServiceNameResolver.getServiceName(i2), this.mServiceNameResolver.isTemporary(i2));
        }
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public ContentCapturePerUserService newServiceLocked(int i, boolean z) {
        return new ContentCapturePerUserService(this, this.mLock, z, i);
    }

    @Override // com.android.server.SystemService
    public boolean isUserSupported(SystemService.TargetUser targetUser) {
        return targetUser.isFull() || targetUser.isProfile();
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("content_capture", this.mContentCaptureManagerServiceStub);
        publishLocalService(ContentCaptureManagerInternal.class, this.mLocalService);
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public void onServiceRemoved(ContentCapturePerUserService contentCapturePerUserService, int i) {
        contentCapturePerUserService.destroyLocked();
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public void onServicePackageUpdatingLocked(int i) {
        ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) getServiceForUserLocked(i);
        if (contentCapturePerUserService != null) {
            contentCapturePerUserService.onPackageUpdatingLocked();
        }
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public void onServicePackageUpdatedLocked(int i) {
        ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) getServiceForUserLocked(i);
        if (contentCapturePerUserService != null) {
            contentCapturePerUserService.onPackageUpdatedLocked();
        }
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public void onServiceNameChanged(int i, String str, boolean z) {
        this.mGlobalContentCaptureOptions.setServiceInfo(i, str, z);
        super.onServiceNameChanged(i, str, z);
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public void enforceCallingPermissionForManagement() {
        getContext().enforceCallingPermission("android.permission.MANAGE_CONTENT_CAPTURE", TAG);
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public void registerForExtraSettingsChanges(ContentResolver contentResolver, ContentObserver contentObserver) {
        contentResolver.registerContentObserver(Settings.Secure.getUriFor("content_capture_enabled"), false, contentObserver, -1);
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public void onSettingsChanged(int i, String str) {
        str.hashCode();
        if (str.equals("content_capture_enabled")) {
            setContentCaptureFeatureEnabledBySettingsForUser(i, isEnabledBySettings(i));
            return;
        }
        Slog.w(TAG, "Unexpected property (" + str + "); updating cache instead");
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public boolean isDisabledLocked(int i) {
        return this.mDisabledByDeviceConfig || isDisabledBySettingsLocked(i) || super.isDisabledLocked(i);
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public void assertCalledByPackageOwner(String str) {
        try {
            super.assertCalledByPackageOwner(str);
        } catch (SecurityException e) {
            int callingUid = Binder.getCallingUid();
            VoiceInteractionManagerInternal.HotwordDetectionServiceIdentity hotwordDetectionServiceIdentity = ((VoiceInteractionManagerInternal) LocalServices.getService(VoiceInteractionManagerInternal.class)).getHotwordDetectionServiceIdentity();
            if (callingUid != hotwordDetectionServiceIdentity.getIsolatedUid()) {
                super.assertCalledByPackageOwner(str);
                return;
            }
            String[] packagesForUid = getContext().getPackageManager().getPackagesForUid(hotwordDetectionServiceIdentity.getOwnerUid());
            if (packagesForUid != null) {
                for (String str2 : packagesForUid) {
                    if (str.equals(str2)) {
                        return;
                    }
                }
            }
            throw e;
        }
    }

    public final boolean isDisabledBySettingsLocked(int i) {
        SparseBooleanArray sparseBooleanArray = this.mDisabledBySettings;
        return sparseBooleanArray != null && sparseBooleanArray.get(i);
    }

    public final boolean isEnabledBySettings(int i) {
        return Settings.Secure.getIntForUser(getContext().getContentResolver(), "content_capture_enabled", 1, i) == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0080 A[LOOP:0: B:2:0x0008->B:31:0x0080, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a5 A[SYNTHETIC] */
    /* renamed from: onDeviceConfigChange, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void lambda$new$0(android.provider.DeviceConfig.Properties r6) {
        /*
            r5 = this;
            java.util.Set r0 = r6.getKeyset()
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto La8
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            r1.hashCode()
            int r2 = r1.hashCode()
            r3 = -1
            switch(r2) {
                case -2119665698: goto L73;
                case -1970239836: goto L67;
                case -302650995: goto L5b;
                case -148969820: goto L4f;
                case 227845607: goto L43;
                case 1119140421: goto L37;
                case 1568835651: goto L2c;
                case 2068460406: goto L21;
                default: goto L1f;
            }
        L1f:
            goto L7d
        L21:
            java.lang.String r2 = "idle_flush_frequency"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L2a
            goto L7d
        L2a:
            r3 = 7
            goto L7d
        L2c:
            java.lang.String r2 = "idle_unbind_timeout"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L35
            goto L7d
        L35:
            r3 = 6
            goto L7d
        L37:
            java.lang.String r2 = "max_buffer_size"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L41
            goto L7d
        L41:
            r3 = 5
            goto L7d
        L43:
            java.lang.String r2 = "log_history_size"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L4d
            goto L7d
        L4d:
            r3 = 4
            goto L7d
        L4f:
            java.lang.String r2 = "text_change_flush_frequency"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L59
            goto L7d
        L59:
            r3 = 3
            goto L7d
        L5b:
            java.lang.String r2 = "service_explicitly_enabled"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L65
            goto L7d
        L65:
            r3 = 2
            goto L7d
        L67:
            java.lang.String r2 = "logging_level"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L71
            goto L7d
        L71:
            r3 = 1
            goto L7d
        L73:
            java.lang.String r2 = "disable_flush_for_view_tree_appearing"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L7c
            goto L7d
        L7c:
            r3 = 0
        L7d:
            switch(r3) {
                case 0: goto La5;
                case 1: goto La1;
                case 2: goto L98;
                case 3: goto La5;
                case 4: goto La5;
                case 5: goto La5;
                case 6: goto La5;
                case 7: goto La5;
                default: goto L80;
            }
        L80:
            java.lang.String r2 = com.android.server.contentcapture.ContentCaptureManagerService.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Ignoring change on "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            android.util.Slog.i(r2, r1)
            goto L8
        L98:
            r0 = 0
            java.lang.String r6 = r6.getString(r1, r0)
            r5.setDisabledByDeviceConfig(r6)
            return
        La1:
            r5.setLoggingLevelFromDeviceConfig()
            return
        La5:
            r5.setFineTuneParamsFromDeviceConfig()
        La8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.contentcapture.ContentCaptureManagerService.lambda$new$0(android.provider.DeviceConfig$Properties):void");
    }

    public final void setFineTuneParamsFromDeviceConfig() {
        synchronized (this.mLock) {
            this.mDevCfgMaxBufferSize = DeviceConfig.getInt("content_capture", "max_buffer_size", 500);
            this.mDevCfgIdleFlushingFrequencyMs = DeviceConfig.getInt("content_capture", "idle_flush_frequency", 5000);
            this.mDevCfgTextChangeFlushingFrequencyMs = DeviceConfig.getInt("content_capture", "text_change_flush_frequency", 1000);
            this.mDevCfgLogHistorySize = DeviceConfig.getInt("content_capture", "log_history_size", 20);
            this.mDevCfgIdleUnbindTimeoutMs = DeviceConfig.getInt("content_capture", "idle_unbind_timeout", 0);
            this.mDevCfgDisableFlushForViewTreeAppearing = DeviceConfig.getBoolean("content_capture", "disable_flush_for_view_tree_appearing", false);
            if (enableTimeout()) {
                this.mDevCfgIdleUnbindTimeoutMs = 120000;
            }
            if (this.verbose) {
                Slog.v(TAG, "setFineTuneParamsFromDeviceConfig(): bufferSize=" + this.mDevCfgMaxBufferSize + ", idleFlush=" + this.mDevCfgIdleFlushingFrequencyMs + ", textFluxh=" + this.mDevCfgTextChangeFlushingFrequencyMs + ", logHistory=" + this.mDevCfgLogHistorySize + ", idleUnbindTimeoutMs=" + this.mDevCfgIdleUnbindTimeoutMs + ", disableFlushForViewTreeAppearing=" + this.mDevCfgDisableFlushForViewTreeAppearing);
            }
        }
    }

    public final boolean enableTimeout() {
        return getContext().getPackageManager().hasSystemFeature("com.samsung.feature.samsung_experience_mobile_lite");
    }

    public final void setLoggingLevelFromDeviceConfig() {
        int i = DeviceConfig.getInt("content_capture", "logging_level", ContentCaptureHelper.getDefaultLoggingLevel());
        this.mDevCfgLoggingLevel = i;
        ContentCaptureHelper.setLoggingLevel(i);
        boolean z = ContentCaptureHelper.sVerbose;
        this.verbose = z;
        this.debug = ContentCaptureHelper.sDebug;
        if (z) {
            Slog.v(TAG, "setLoggingLevelFromDeviceConfig(): level=" + this.mDevCfgLoggingLevel + ", debug=" + this.debug + ", verbose=" + this.verbose);
        }
    }

    public final void setDeviceConfigProperties() {
        setLoggingLevelFromDeviceConfig();
        setFineTuneParamsFromDeviceConfig();
        setDisabledByDeviceConfig(DeviceConfig.getProperty("content_capture", "service_explicitly_enabled"));
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setDisabledByDeviceConfig(java.lang.String r10) {
        /*
            r9 = this;
            boolean r0 = r9.verbose
            if (r0 == 0) goto L1b
            java.lang.String r0 = com.android.server.contentcapture.ContentCaptureManagerService.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "setDisabledByDeviceConfig(): explicitlyEnabled="
            r1.append(r2)
            r1.append(r10)
            java.lang.String r1 = r1.toString()
            android.util.Slog.v(r0, r1)
        L1b:
            java.util.List r0 = r9.getSupportedUsers()
            r1 = 1
            r2 = 0
            if (r10 == 0) goto L2d
            java.lang.String r3 = "false"
            boolean r10 = r10.equalsIgnoreCase(r3)
            if (r10 == 0) goto L2d
            r10 = r1
            goto L2e
        L2d:
            r10 = r2
        L2e:
            java.lang.Object r3 = r9.mLock
            monitor-enter(r3)
            boolean r4 = r9.mDisabledByDeviceConfig     // Catch: java.lang.Throwable -> Lb8
            if (r4 != r10) goto L52
            boolean r9 = r9.verbose     // Catch: java.lang.Throwable -> Lb8
            if (r9 == 0) goto L50
            java.lang.String r9 = com.android.server.contentcapture.ContentCaptureManagerService.TAG     // Catch: java.lang.Throwable -> Lb8
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb8
            r0.<init>()     // Catch: java.lang.Throwable -> Lb8
            java.lang.String r1 = "setDisabledByDeviceConfig(): already "
            r0.append(r1)     // Catch: java.lang.Throwable -> Lb8
            r0.append(r10)     // Catch: java.lang.Throwable -> Lb8
            java.lang.String r10 = r0.toString()     // Catch: java.lang.Throwable -> Lb8
            android.util.Slog.v(r9, r10)     // Catch: java.lang.Throwable -> Lb8
        L50:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> Lb8
            return
        L52:
            r9.mDisabledByDeviceConfig = r10     // Catch: java.lang.Throwable -> Lb8
            java.lang.String r10 = com.android.server.contentcapture.ContentCaptureManagerService.TAG     // Catch: java.lang.Throwable -> Lb8
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb8
            r4.<init>()     // Catch: java.lang.Throwable -> Lb8
            java.lang.String r5 = "setDisabledByDeviceConfig(): set to "
            r4.append(r5)     // Catch: java.lang.Throwable -> Lb8
            boolean r5 = r9.mDisabledByDeviceConfig     // Catch: java.lang.Throwable -> Lb8
            r4.append(r5)     // Catch: java.lang.Throwable -> Lb8
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> Lb8
            android.util.Slog.i(r10, r4)     // Catch: java.lang.Throwable -> Lb8
            r10 = r2
        L6e:
            int r4 = r0.size()     // Catch: java.lang.Throwable -> Lb8
            if (r10 >= r4) goto Lb6
            java.lang.Object r4 = r0.get(r10)     // Catch: java.lang.Throwable -> Lb8
            android.content.pm.UserInfo r4 = (android.content.pm.UserInfo) r4     // Catch: java.lang.Throwable -> Lb8
            int r4 = r4.id     // Catch: java.lang.Throwable -> Lb8
            boolean r5 = r9.mDisabledByDeviceConfig     // Catch: java.lang.Throwable -> Lb8
            if (r5 != 0) goto L89
            boolean r5 = r9.isDisabledBySettingsLocked(r4)     // Catch: java.lang.Throwable -> Lb8
            if (r5 == 0) goto L87
            goto L89
        L87:
            r5 = r2
            goto L8a
        L89:
            r5 = r1
        L8a:
            java.lang.String r6 = com.android.server.contentcapture.ContentCaptureManagerService.TAG     // Catch: java.lang.Throwable -> Lb8
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb8
            r7.<init>()     // Catch: java.lang.Throwable -> Lb8
            java.lang.String r8 = "setDisabledByDeviceConfig(): updating service for user "
            r7.append(r8)     // Catch: java.lang.Throwable -> Lb8
            r7.append(r4)     // Catch: java.lang.Throwable -> Lb8
            java.lang.String r8 = " to "
            r7.append(r8)     // Catch: java.lang.Throwable -> Lb8
            if (r5 == 0) goto La4
            java.lang.String r8 = "'disabled'"
            goto La6
        La4:
            java.lang.String r8 = "'enabled'"
        La6:
            r7.append(r8)     // Catch: java.lang.Throwable -> Lb8
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Lb8
            android.util.Slog.i(r6, r7)     // Catch: java.lang.Throwable -> Lb8
            r9.updateCachedServiceLocked(r4, r5)     // Catch: java.lang.Throwable -> Lb8
            int r10 = r10 + 1
            goto L6e
        Lb6:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> Lb8
            return
        Lb8:
            r9 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> Lb8
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.contentcapture.ContentCaptureManagerService.setDisabledByDeviceConfig(java.lang.String):void");
    }

    public final void setContentCaptureFeatureEnabledBySettingsForUser(int i, boolean z) {
        synchronized (this.mLock) {
            if (this.mDisabledBySettings == null) {
                this.mDisabledBySettings = new SparseBooleanArray();
            }
            boolean z2 = true;
            if (!((!this.mDisabledBySettings.get(i)) ^ z)) {
                if (this.debug) {
                    Slog.d(TAG, "setContentCaptureFeatureEnabledForUser(): already " + z);
                }
                return;
            }
            if (z) {
                Slog.i(TAG, "setContentCaptureFeatureEnabled(): enabling service for user " + i);
                this.mDisabledBySettings.delete(i);
            } else {
                Slog.i(TAG, "setContentCaptureFeatureEnabled(): disabling service for user " + i);
                this.mDisabledBySettings.put(i, true);
            }
            if (z && !this.mDisabledByDeviceConfig) {
                z2 = false;
            }
            updateCachedServiceLocked(i, z2);
        }
    }

    public void destroySessions(int i, IResultReceiver iResultReceiver) {
        Slog.i(TAG, "destroySessions() for userId " + i);
        enforceCallingPermissionForManagement();
        synchronized (this.mLock) {
            if (i != -1) {
                ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) peekServiceForUserLocked(i);
                if (contentCapturePerUserService != null) {
                    contentCapturePerUserService.destroySessionsLocked();
                }
            } else {
                visitServicesLocked(new AbstractMasterSystemService.Visitor() { // from class: com.android.server.contentcapture.ContentCaptureManagerService$$ExternalSyntheticLambda1
                    @Override // com.android.server.infra.AbstractMasterSystemService.Visitor
                    public final void visit(Object obj) {
                        ((ContentCapturePerUserService) obj).destroySessionsLocked();
                    }
                });
            }
        }
        try {
            iResultReceiver.send(0, new Bundle());
        } catch (RemoteException unused) {
        }
    }

    public void listSessions(int i, IResultReceiver iResultReceiver) {
        Slog.i(TAG, "listSessions() for userId " + i);
        enforceCallingPermissionForManagement();
        Bundle bundle = new Bundle();
        final ArrayList<String> arrayList = new ArrayList<>();
        synchronized (this.mLock) {
            if (i != -1) {
                ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) peekServiceForUserLocked(i);
                if (contentCapturePerUserService != null) {
                    contentCapturePerUserService.listSessionsLocked(arrayList);
                }
            } else {
                visitServicesLocked(new AbstractMasterSystemService.Visitor() { // from class: com.android.server.contentcapture.ContentCaptureManagerService$$ExternalSyntheticLambda2
                    @Override // com.android.server.infra.AbstractMasterSystemService.Visitor
                    public final void visit(Object obj) {
                        ((ContentCapturePerUserService) obj).listSessionsLocked(arrayList);
                    }
                });
            }
        }
        bundle.putStringArrayList("sessions", arrayList);
        try {
            iResultReceiver.send(0, bundle);
        } catch (RemoteException unused) {
        }
    }

    public void updateOptions(final String str, final ContentCaptureOptions contentCaptureOptions) {
        this.mCallbacks.broadcast(new BiConsumer() { // from class: com.android.server.contentcapture.ContentCaptureManagerService$$ExternalSyntheticLambda3
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ContentCaptureManagerService.lambda$updateOptions$3(str, contentCaptureOptions, (IContentCaptureOptionsCallback) obj, obj2);
            }
        });
    }

    public static /* synthetic */ void lambda$updateOptions$3(String str, ContentCaptureOptions contentCaptureOptions, IContentCaptureOptionsCallback iContentCaptureOptionsCallback, Object obj) {
        if (obj.equals(str)) {
            try {
                iContentCaptureOptionsCallback.setContentCaptureOptions(contentCaptureOptions);
            } catch (RemoteException e) {
                Slog.w(TAG, "Unable to send setContentCaptureOptions(): " + e);
            }
        }
    }

    public final ActivityManagerInternal getAmInternal() {
        synchronized (this.mLock) {
            if (this.mAm == null) {
                this.mAm = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
            }
        }
        return this.mAm;
    }

    public final void assertCalledByServiceLocked(String str) {
        if (!isCalledByServiceLocked(str)) {
            throw new SecurityException("caller is not user's ContentCapture service");
        }
    }

    public final boolean isCalledByServiceLocked(String str) {
        int callingUserId = UserHandle.getCallingUserId();
        int callingUid = Binder.getCallingUid();
        String serviceName = this.mServiceNameResolver.getServiceName(callingUserId);
        if (serviceName == null) {
            Slog.e(TAG, str + ": called by UID " + callingUid + ", but there's no service set for user " + callingUserId);
            return false;
        }
        ComponentName unflattenFromString = ComponentName.unflattenFromString(serviceName);
        if (unflattenFromString == null) {
            Slog.w(TAG, str + ": invalid service name: " + serviceName);
            return false;
        }
        try {
            int packageUidAsUser = getContext().getPackageManager().getPackageUidAsUser(unflattenFromString.getPackageName(), UserHandle.getCallingUserId());
            if (callingUid == packageUidAsUser) {
                return true;
            }
            Slog.e(TAG, str + ": called by UID " + callingUid + ", but service UID is " + packageUidAsUser);
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            Slog.w(TAG, str + ": could not verify UID for " + serviceName);
            return false;
        }
    }

    public final boolean throwsSecurityException(IResultReceiver iResultReceiver, Runnable runnable) {
        try {
            runnable.run();
            return false;
        } catch (SecurityException e) {
            try {
                iResultReceiver.send(-1, SyncResultReceiver.bundleFor(e.getMessage()));
                return true;
            } catch (RemoteException e2) {
                Slog.w(TAG, "Unable to send security exception (" + e + "): ", e2);
                return true;
            }
        }
    }

    public final boolean isDefaultServiceLocked(int i) {
        String defaultServiceName = this.mServiceNameResolver.getDefaultServiceName(i);
        if (defaultServiceName == null) {
            return false;
        }
        return defaultServiceName.equals(this.mServiceNameResolver.getServiceName(i));
    }

    @Override // com.android.server.infra.AbstractMasterSystemService
    public void dumpLocked(String str, PrintWriter printWriter) {
        super.dumpLocked(str, printWriter);
        String str2 = str + "  ";
        printWriter.print(str);
        printWriter.print("Users disabled by Settings: ");
        printWriter.println(this.mDisabledBySettings);
        printWriter.print(str);
        printWriter.println("DeviceConfig Settings: ");
        printWriter.print(str2);
        printWriter.print("disabled: ");
        printWriter.println(this.mDisabledByDeviceConfig);
        printWriter.print(str2);
        printWriter.print("loggingLevel: ");
        printWriter.println(this.mDevCfgLoggingLevel);
        printWriter.print(str2);
        printWriter.print("maxBufferSize: ");
        printWriter.println(this.mDevCfgMaxBufferSize);
        printWriter.print(str2);
        printWriter.print("idleFlushingFrequencyMs: ");
        printWriter.println(this.mDevCfgIdleFlushingFrequencyMs);
        printWriter.print(str2);
        printWriter.print("textChangeFlushingFrequencyMs: ");
        printWriter.println(this.mDevCfgTextChangeFlushingFrequencyMs);
        printWriter.print(str2);
        printWriter.print("logHistorySize: ");
        printWriter.println(this.mDevCfgLogHistorySize);
        printWriter.print(str2);
        printWriter.print("idleUnbindTimeoutMs: ");
        printWriter.println(this.mDevCfgIdleUnbindTimeoutMs);
        printWriter.print(str2);
        printWriter.print("disableFlushForViewTreeAppearing: ");
        printWriter.println(this.mDevCfgDisableFlushForViewTreeAppearing);
        printWriter.print(str);
        printWriter.println("Global Options:");
        this.mGlobalContentCaptureOptions.dump(str2, printWriter);
    }

    /* loaded from: classes.dex */
    public final class ContentCaptureManagerServiceStub extends IContentCaptureManager.Stub {
        public ContentCaptureManagerServiceStub() {
        }

        public void startSession(IBinder iBinder, IBinder iBinder2, ComponentName componentName, int i, int i2, IResultReceiver iResultReceiver) {
            Objects.requireNonNull(iBinder);
            Objects.requireNonNull(iBinder2);
            int callingUserId = UserHandle.getCallingUserId();
            ActivityPresentationInfo activityPresentationInfo = ContentCaptureManagerService.this.getAmInternal().getActivityPresentationInfo(iBinder);
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(callingUserId);
                if (!ContentCaptureManagerService.this.isDefaultServiceLocked(callingUserId) && !ContentCaptureManagerService.this.isCalledByServiceLocked("startSession()")) {
                    ContentCaptureService.setClientState(iResultReceiver, 4, (IBinder) null);
                } else {
                    contentCapturePerUserService.startSessionLocked(iBinder, iBinder2, activityPresentationInfo, i, Binder.getCallingUid(), i2, iResultReceiver);
                }
            }
        }

        public void finishSession(int i) {
            int callingUserId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ((ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(callingUserId)).finishSessionLocked(i);
            }
        }

        public void getServiceComponentName(IResultReceiver iResultReceiver) {
            ComponentName serviceComponentName;
            int callingUserId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                serviceComponentName = ((ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(callingUserId)).getServiceComponentName();
            }
            try {
                iResultReceiver.send(0, SyncResultReceiver.bundleFor(serviceComponentName));
            } catch (RemoteException e) {
                Slog.w(ContentCaptureManagerService.TAG, "Unable to send service component name: " + e);
            }
        }

        public void removeData(DataRemovalRequest dataRemovalRequest) {
            Objects.requireNonNull(dataRemovalRequest);
            ContentCaptureManagerService.this.assertCalledByPackageOwner(dataRemovalRequest.getPackageName());
            int callingUserId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ((ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(callingUserId)).removeDataLocked(dataRemovalRequest);
            }
        }

        public void shareData(DataShareRequest dataShareRequest, IDataShareWriteAdapter iDataShareWriteAdapter) {
            Objects.requireNonNull(dataShareRequest);
            Objects.requireNonNull(iDataShareWriteAdapter);
            ContentCaptureManagerService.this.assertCalledByPackageOwner(dataShareRequest.getPackageName());
            int callingUserId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(callingUserId);
                if (ContentCaptureManagerService.this.mPackagesWithShareRequests.size() < 10 && !ContentCaptureManagerService.this.mPackagesWithShareRequests.contains(dataShareRequest.getPackageName())) {
                    contentCapturePerUserService.onDataSharedLocked(dataShareRequest, new DataShareCallbackDelegate(dataShareRequest, iDataShareWriteAdapter, ContentCaptureManagerService.this));
                    return;
                }
                try {
                    ContentCaptureMetricsLogger.writeServiceEvent(14, ContentCaptureManagerService.this.mServiceNameResolver.getServiceName(callingUserId));
                    iDataShareWriteAdapter.error(2);
                } catch (RemoteException unused) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to send error message to client");
                }
            }
        }

        public void isContentCaptureFeatureEnabled(IResultReceiver iResultReceiver) {
            synchronized (ContentCaptureManagerService.this.mLock) {
                if (ContentCaptureManagerService.this.throwsSecurityException(iResultReceiver, new Runnable() { // from class: com.android.server.contentcapture.ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContentCaptureManagerService.ContentCaptureManagerServiceStub.this.lambda$isContentCaptureFeatureEnabled$0();
                    }
                })) {
                    return;
                }
                try {
                    iResultReceiver.send(!ContentCaptureManagerService.this.mDisabledByDeviceConfig && !ContentCaptureManagerService.this.isDisabledBySettingsLocked(UserHandle.getCallingUserId()) ? 1 : 2, (Bundle) null);
                } catch (RemoteException e) {
                    Slog.w(ContentCaptureManagerService.TAG, "Unable to send isContentCaptureFeatureEnabled(): " + e);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$isContentCaptureFeatureEnabled$0() {
            ContentCaptureManagerService.this.assertCalledByServiceLocked("isContentCaptureFeatureEnabled()");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getServiceSettingsActivity$1() {
            ContentCaptureManagerService.this.enforceCallingPermissionForManagement();
        }

        public void getServiceSettingsActivity(IResultReceiver iResultReceiver) {
            if (ContentCaptureManagerService.this.throwsSecurityException(iResultReceiver, new Runnable() { // from class: com.android.server.contentcapture.ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ContentCaptureManagerService.ContentCaptureManagerServiceStub.this.lambda$getServiceSettingsActivity$1();
                }
            })) {
                return;
            }
            int callingUserId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(callingUserId);
                if (contentCapturePerUserService == null) {
                    return;
                }
                ComponentName serviceSettingsActivityLocked = contentCapturePerUserService.getServiceSettingsActivityLocked();
                try {
                    iResultReceiver.send(0, SyncResultReceiver.bundleFor(serviceSettingsActivityLocked));
                } catch (RemoteException e) {
                    Slog.w(ContentCaptureManagerService.TAG, "Unable to send getServiceSettingsIntent(): " + e);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getContentCaptureConditions$2(String str) {
            ContentCaptureManagerService.this.assertCalledByPackageOwner(str);
        }

        public void getContentCaptureConditions(final String str, IResultReceiver iResultReceiver) {
            ArrayList list;
            if (ContentCaptureManagerService.this.throwsSecurityException(iResultReceiver, new Runnable() { // from class: com.android.server.contentcapture.ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ContentCaptureManagerService.ContentCaptureManagerServiceStub.this.lambda$getContentCaptureConditions$2(str);
                }
            })) {
                return;
            }
            int callingUserId = UserHandle.getCallingUserId();
            synchronized (ContentCaptureManagerService.this.mLock) {
                ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(callingUserId);
                list = contentCapturePerUserService == null ? null : ContentCaptureHelper.toList(contentCapturePerUserService.getContentCaptureConditionsLocked(str));
            }
            try {
                iResultReceiver.send(0, SyncResultReceiver.bundleFor(list));
            } catch (RemoteException e) {
                Slog.w(ContentCaptureManagerService.TAG, "Unable to send getServiceComponentName(): " + e);
            }
        }

        public void registerContentCaptureOptionsCallback(String str, IContentCaptureOptionsCallback iContentCaptureOptionsCallback) {
            ContentCaptureManagerService.this.assertCalledByPackageOwner(str);
            ContentCaptureManagerService.this.mCallbacks.register(iContentCaptureOptionsCallback, str);
            ContentCaptureOptions options = ContentCaptureManagerService.this.mGlobalContentCaptureOptions.getOptions(UserHandle.getCallingUserId(), str);
            if (options != null) {
                try {
                    iContentCaptureOptionsCallback.setContentCaptureOptions(options);
                } catch (RemoteException e) {
                    Slog.w(ContentCaptureManagerService.TAG, "Unable to send setContentCaptureOptions(): " + e);
                }
            }
        }

        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (DumpUtils.checkDumpPermission(ContentCaptureManagerService.this.getContext(), ContentCaptureManagerService.TAG, printWriter)) {
                boolean z = true;
                if (strArr != null) {
                    for (String str : strArr) {
                        str.hashCode();
                        if (str.equals("--no-history")) {
                            z = false;
                        } else {
                            if (str.equals("--help")) {
                                printWriter.println("Usage: dumpsys content_capture [--no-history]");
                                return;
                            }
                            Slog.w(ContentCaptureManagerService.TAG, "Ignoring invalid dump arg: " + str);
                        }
                    }
                }
                synchronized (ContentCaptureManagerService.this.mLock) {
                    ContentCaptureManagerService.this.dumpLocked("", printWriter);
                }
                printWriter.print("Requests history: ");
                if (ContentCaptureManagerService.this.mRequestsHistory == null) {
                    printWriter.println("disabled by device config");
                } else {
                    if (z) {
                        printWriter.println();
                        ContentCaptureManagerService.this.mRequestsHistory.reverseDump(fileDescriptor, printWriter, strArr);
                        printWriter.println();
                        return;
                    }
                    printWriter.println();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
            new ContentCaptureManagerServiceShellCommand(ContentCaptureManagerService.this).exec(this, fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, resultReceiver);
        }

        public void resetTemporaryService(int i) {
            ContentCaptureManagerService.this.resetTemporaryService(i);
        }

        public void setTemporaryService(int i, String str, int i2) {
            ContentCaptureManagerService.this.setTemporaryService(i, str, i2);
        }

        public void setDefaultServiceEnabled(int i, boolean z) {
            ContentCaptureManagerService.this.setDefaultServiceEnabled(i, z);
        }
    }

    /* loaded from: classes.dex */
    public final class LocalService extends ContentCaptureManagerInternal {
        public LocalService() {
        }

        @Override // com.android.server.contentcapture.ContentCaptureManagerInternal
        public boolean isContentCaptureServiceForUser(int i, int i2) {
            synchronized (ContentCaptureManagerService.this.mLock) {
                if (!ContentCaptureManagerService.this.isDisabledLocked(i2)) {
                    ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(i2);
                    if (contentCapturePerUserService == null) {
                        return false;
                    }
                    return contentCapturePerUserService.isContentCaptureServiceForUserLocked(i);
                }
                if (ContentCaptureManagerService.this.verbose) {
                    Slog.v(ContentCaptureManagerService.TAG, "isContentCaptureServiceForUser() disabled!");
                }
                return false;
            }
        }

        @Override // com.android.server.contentcapture.ContentCaptureManagerInternal
        public boolean sendActivityAssistData(int i, IBinder iBinder, Bundle bundle) {
            synchronized (ContentCaptureManagerService.this.mLock) {
                if (!ContentCaptureManagerService.this.isDisabledLocked(i)) {
                    ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(i);
                    if (contentCapturePerUserService == null) {
                        return false;
                    }
                    return contentCapturePerUserService.sendActivityAssistDataLocked(iBinder, bundle);
                }
                if (ContentCaptureManagerService.this.verbose) {
                    Slog.v(ContentCaptureManagerService.TAG, "sendActivityAssistData() disabled!");
                }
                return false;
            }
        }

        @Override // com.android.server.contentcapture.ContentCaptureManagerInternal
        public ContentCaptureOptions getOptionsForPackage(int i, String str) {
            return ContentCaptureManagerService.this.mGlobalContentCaptureOptions.getOptions(i, str);
        }

        @Override // com.android.server.contentcapture.ContentCaptureManagerInternal
        public void notifyActivityEvent(int i, ComponentName componentName, int i2, ActivityId activityId) {
            synchronized (ContentCaptureManagerService.this.mLock) {
                if (!ContentCaptureManagerService.this.isDisabledLocked(i)) {
                    ContentCapturePerUserService contentCapturePerUserService = (ContentCapturePerUserService) ContentCaptureManagerService.this.getServiceForUserLocked(i);
                    if (contentCapturePerUserService != null) {
                        contentCapturePerUserService.onActivityEventLocked(activityId, componentName, i2);
                    }
                } else {
                    if (ContentCaptureManagerService.this.verbose) {
                        Slog.v(ContentCaptureManagerService.TAG, "notifyActivityEvent() disabled!");
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public final class GlobalContentCaptureOptions extends GlobalWhitelistState {
        public final SparseArray mServicePackages = new SparseArray();
        public final SparseBooleanArray mTemporaryServices = new SparseBooleanArray();

        public GlobalContentCaptureOptions() {
        }

        public final void setServiceInfo(int i, String str, boolean z) {
            synchronized (((GlobalWhitelistState) this).mGlobalWhitelistStateLock) {
                if (z) {
                    this.mTemporaryServices.put(i, true);
                } else {
                    this.mTemporaryServices.delete(i);
                }
                if (str != null) {
                    ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                    if (unflattenFromString == null) {
                        Slog.w(ContentCaptureManagerService.TAG, "setServiceInfo(): invalid name: " + str);
                        this.mServicePackages.remove(i);
                    } else {
                        this.mServicePackages.put(i, unflattenFromString.getPackageName());
                    }
                } else {
                    this.mServicePackages.remove(i);
                }
            }
        }

        public ContentCaptureOptions getOptions(int i, String str) {
            ArraySet arraySet;
            ContentCaptureOptions contentCaptureOptions;
            synchronized (((GlobalWhitelistState) this).mGlobalWhitelistStateLock) {
                boolean isWhitelisted = isWhitelisted(i, str);
                if (isWhitelisted) {
                    arraySet = null;
                } else {
                    ArraySet whitelistedComponents = getWhitelistedComponents(i, str);
                    if (whitelistedComponents == null && str.equals(this.mServicePackages.get(i))) {
                        if (ContentCaptureManagerService.this.verbose) {
                            Slog.v(ContentCaptureManagerService.TAG, "getOptionsForPackage() lite for " + str);
                        }
                        return new ContentCaptureOptions(ContentCaptureManagerService.this.mDevCfgLoggingLevel);
                    }
                    arraySet = whitelistedComponents;
                }
                if (Build.IS_USER && ContentCaptureManagerService.this.mServiceNameResolver.isTemporary(i) && !str.equals(this.mServicePackages.get(i))) {
                    Slog.w(ContentCaptureManagerService.TAG, "Ignoring package " + str + " while using temporary service " + ((String) this.mServicePackages.get(i)));
                    return null;
                }
                if (isWhitelisted || arraySet != null) {
                    synchronized (ContentCaptureManagerService.this.mLock) {
                        ContentCaptureManagerService contentCaptureManagerService = ContentCaptureManagerService.this;
                        contentCaptureOptions = new ContentCaptureOptions(contentCaptureManagerService.mDevCfgLoggingLevel, contentCaptureManagerService.mDevCfgMaxBufferSize, contentCaptureManagerService.mDevCfgIdleFlushingFrequencyMs, contentCaptureManagerService.mDevCfgTextChangeFlushingFrequencyMs, contentCaptureManagerService.mDevCfgLogHistorySize, contentCaptureManagerService.mDevCfgDisableFlushForViewTreeAppearing, arraySet);
                        if (ContentCaptureManagerService.this.verbose) {
                            Slog.v(ContentCaptureManagerService.TAG, "getOptionsForPackage(" + str + "): " + contentCaptureOptions);
                        }
                    }
                    return contentCaptureOptions;
                }
                if (ContentCaptureManagerService.this.verbose) {
                    Slog.v(ContentCaptureManagerService.TAG, "getOptionsForPackage(" + str + "): not whitelisted");
                }
                return null;
            }
        }

        public void dump(String str, PrintWriter printWriter) {
            super.dump(str, printWriter);
            synchronized (((GlobalWhitelistState) this).mGlobalWhitelistStateLock) {
                if (this.mServicePackages.size() > 0) {
                    printWriter.print(str);
                    printWriter.print("Service packages: ");
                    printWriter.println(this.mServicePackages);
                }
                if (this.mTemporaryServices.size() > 0) {
                    printWriter.print(str);
                    printWriter.print("Temp services: ");
                    printWriter.println(this.mTemporaryServices);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class DataShareCallbackDelegate extends IDataShareCallback.Stub {
        public final IDataShareWriteAdapter mClientAdapter;
        public final DataShareRequest mDataShareRequest;
        public final AtomicBoolean mLoggedWriteFinish = new AtomicBoolean(false);
        public final ContentCaptureManagerService mParentService;

        public DataShareCallbackDelegate(DataShareRequest dataShareRequest, IDataShareWriteAdapter iDataShareWriteAdapter, ContentCaptureManagerService contentCaptureManagerService) {
            this.mDataShareRequest = dataShareRequest;
            this.mClientAdapter = iDataShareWriteAdapter;
            this.mParentService = contentCaptureManagerService;
        }

        public void accept(final IDataShareReadAdapter iDataShareReadAdapter) {
            Slog.i(ContentCaptureManagerService.TAG, "Data share request accepted by Content Capture service");
            logServiceEvent(7);
            Pair createPipe = createPipe();
            if (createPipe == null) {
                logServiceEvent(12);
                sendErrorSignal(this.mClientAdapter, iDataShareReadAdapter, 1);
                return;
            }
            final ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) createPipe.second;
            final ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) createPipe.first;
            Pair createPipe2 = createPipe();
            if (createPipe2 == null) {
                logServiceEvent(13);
                bestEffortCloseFileDescriptors(parcelFileDescriptor, parcelFileDescriptor2);
                sendErrorSignal(this.mClientAdapter, iDataShareReadAdapter, 1);
                return;
            }
            final ParcelFileDescriptor parcelFileDescriptor3 = (ParcelFileDescriptor) createPipe2.second;
            final ParcelFileDescriptor parcelFileDescriptor4 = (ParcelFileDescriptor) createPipe2.first;
            synchronized (this.mParentService.mLock) {
                this.mParentService.mPackagesWithShareRequests.add(this.mDataShareRequest.getPackageName());
            }
            if (!setUpSharingPipeline(this.mClientAdapter, iDataShareReadAdapter, parcelFileDescriptor, parcelFileDescriptor4)) {
                sendErrorSignal(this.mClientAdapter, iDataShareReadAdapter, 1);
                bestEffortCloseFileDescriptors(parcelFileDescriptor, parcelFileDescriptor2, parcelFileDescriptor3, parcelFileDescriptor4);
                synchronized (this.mParentService.mLock) {
                    this.mParentService.mPackagesWithShareRequests.remove(this.mDataShareRequest.getPackageName());
                }
                return;
            }
            bestEffortCloseFileDescriptors(parcelFileDescriptor, parcelFileDescriptor4);
            this.mParentService.mDataShareExecutor.execute(new Runnable() { // from class: com.android.server.contentcapture.ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ContentCaptureManagerService.DataShareCallbackDelegate.this.lambda$accept$0(parcelFileDescriptor2, parcelFileDescriptor3, iDataShareReadAdapter);
                }
            });
            this.mParentService.mHandler.postDelayed(new Runnable() { // from class: com.android.server.contentcapture.ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ContentCaptureManagerService.DataShareCallbackDelegate.this.lambda$accept$1(parcelFileDescriptor, parcelFileDescriptor2, parcelFileDescriptor3, parcelFileDescriptor4, iDataShareReadAdapter);
                }
            }, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x00dd -> B:34:0x00ef). Please report as a decompilation issue!!! */
        public /* synthetic */ void lambda$accept$0(ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, IDataShareReadAdapter iDataShareReadAdapter) {
            boolean z;
            boolean z2 = false;
            try {
                try {
                    try {
                        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                        try {
                            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor2);
                            try {
                                byte[] bArr = new byte[1024];
                                z = false;
                                while (true) {
                                    try {
                                        int read = autoCloseInputStream.read(bArr);
                                        if (read == -1) {
                                            try {
                                                break;
                                            } catch (Throwable th) {
                                                th = th;
                                                z2 = z;
                                                try {
                                                    autoCloseInputStream.close();
                                                } catch (Throwable th2) {
                                                    th.addSuppressed(th2);
                                                }
                                                throw th;
                                            }
                                        }
                                        autoCloseOutputStream.write(bArr, 0, read);
                                        z = true;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        z2 = z;
                                        try {
                                            autoCloseOutputStream.close();
                                        } catch (Throwable th4) {
                                            th.addSuppressed(th4);
                                        }
                                        throw th;
                                    }
                                }
                                autoCloseOutputStream.close();
                                try {
                                    autoCloseInputStream.close();
                                    synchronized (this.mParentService.mLock) {
                                        this.mParentService.mPackagesWithShareRequests.remove(this.mDataShareRequest.getPackageName());
                                    }
                                } catch (IOException e) {
                                    e = e;
                                    z2 = z;
                                    Slog.e(ContentCaptureManagerService.TAG, "Failed to pipe client and service streams", e);
                                    logServiceEvent(10);
                                    sendErrorSignal(this.mClientAdapter, iDataShareReadAdapter, 1);
                                    synchronized (this.mParentService.mLock) {
                                        this.mParentService.mPackagesWithShareRequests.remove(this.mDataShareRequest.getPackageName());
                                    }
                                    if (z2) {
                                        if (!this.mLoggedWriteFinish.get()) {
                                            logServiceEvent(9);
                                            this.mLoggedWriteFinish.set(true);
                                        }
                                        try {
                                            this.mClientAdapter.finish();
                                        } catch (RemoteException e2) {
                                            Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the client operation", e2);
                                        }
                                        iDataShareReadAdapter.finish();
                                        return;
                                    }
                                    logServiceEvent(11);
                                    sendErrorSignal(this.mClientAdapter, iDataShareReadAdapter, 1);
                                } catch (Throwable th5) {
                                    th = th5;
                                    z2 = z;
                                    synchronized (this.mParentService.mLock) {
                                        this.mParentService.mPackagesWithShareRequests.remove(this.mDataShareRequest.getPackageName());
                                    }
                                    if (z2) {
                                        if (!this.mLoggedWriteFinish.get()) {
                                            logServiceEvent(9);
                                            this.mLoggedWriteFinish.set(true);
                                        }
                                        try {
                                            this.mClientAdapter.finish();
                                        } catch (RemoteException e3) {
                                            Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the client operation", e3);
                                        }
                                        try {
                                            iDataShareReadAdapter.finish();
                                        } catch (RemoteException e4) {
                                            Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the service operation", e4);
                                        }
                                    } else {
                                        logServiceEvent(11);
                                        sendErrorSignal(this.mClientAdapter, iDataShareReadAdapter, 1);
                                    }
                                    throw th;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            autoCloseInputStream.close();
                            throw th;
                        }
                    } catch (IOException e5) {
                        e = e5;
                    }
                } catch (RemoteException e6) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the service operation", e6);
                }
                if (z) {
                    if (!this.mLoggedWriteFinish.get()) {
                        logServiceEvent(9);
                        this.mLoggedWriteFinish.set(true);
                    }
                    try {
                        this.mClientAdapter.finish();
                    } catch (RemoteException e7) {
                        Slog.e(ContentCaptureManagerService.TAG, "Failed to call finish() the client operation", e7);
                    }
                    iDataShareReadAdapter.finish();
                    return;
                }
                logServiceEvent(11);
                sendErrorSignal(this.mClientAdapter, iDataShareReadAdapter, 1);
            } catch (Throwable th8) {
                th = th8;
            }
        }

        public void reject() {
            Slog.i(ContentCaptureManagerService.TAG, "Data share request rejected by Content Capture service");
            logServiceEvent(8);
            try {
                this.mClientAdapter.rejected();
            } catch (RemoteException e) {
                Slog.w(ContentCaptureManagerService.TAG, "Failed to call rejected() the client operation", e);
                try {
                    this.mClientAdapter.error(1);
                } catch (RemoteException e2) {
                    Slog.w(ContentCaptureManagerService.TAG, "Failed to call error() the client operation", e2);
                }
            }
        }

        public final boolean setUpSharingPipeline(IDataShareWriteAdapter iDataShareWriteAdapter, IDataShareReadAdapter iDataShareReadAdapter, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2) {
            try {
                iDataShareWriteAdapter.write(parcelFileDescriptor);
                try {
                    iDataShareReadAdapter.start(parcelFileDescriptor2);
                    return true;
                } catch (RemoteException e) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to call start() the service operation", e);
                    logServiceEvent(13);
                    return false;
                }
            } catch (RemoteException e2) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to call write() the client operation", e2);
                logServiceEvent(12);
                return false;
            }
        }

        /* renamed from: enforceDataSharingTtl, reason: merged with bridge method [inline-methods] */
        public final void lambda$accept$1(ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, ParcelFileDescriptor parcelFileDescriptor3, ParcelFileDescriptor parcelFileDescriptor4, IDataShareReadAdapter iDataShareReadAdapter) {
            synchronized (this.mParentService.mLock) {
                this.mParentService.mPackagesWithShareRequests.remove(this.mDataShareRequest.getPackageName());
                boolean z = (parcelFileDescriptor2.getFileDescriptor().valid() || parcelFileDescriptor3.getFileDescriptor().valid()) ? false : true;
                if (z) {
                    if (!this.mLoggedWriteFinish.get()) {
                        logServiceEvent(9);
                        this.mLoggedWriteFinish.set(true);
                    }
                    Slog.i(ContentCaptureManagerService.TAG, "Content capture data sharing session terminated successfully for package '" + this.mDataShareRequest.getPackageName() + "'");
                } else {
                    logServiceEvent(15);
                    Slog.i(ContentCaptureManagerService.TAG, "Reached the timeout of Content Capture data sharing session for package '" + this.mDataShareRequest.getPackageName() + "', terminating the pipe.");
                }
                bestEffortCloseFileDescriptors(parcelFileDescriptor, parcelFileDescriptor2, parcelFileDescriptor3, parcelFileDescriptor4);
                if (!z) {
                    sendErrorSignal(this.mClientAdapter, iDataShareReadAdapter, 3);
                }
            }
        }

        public final Pair createPipe() {
            try {
                ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                if (createPipe.length != 2) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to create a content capture data-sharing pipe, unexpected number of file descriptors");
                    return null;
                }
                if (!createPipe[0].getFileDescriptor().valid() || !createPipe[1].getFileDescriptor().valid()) {
                    Slog.e(ContentCaptureManagerService.TAG, "Failed to create a content capture data-sharing pipe, didn't receive a pair of valid file descriptors.");
                    return null;
                }
                return Pair.create(createPipe[0], createPipe[1]);
            } catch (IOException e) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to create a content capture data-sharing pipe", e);
                return null;
            }
        }

        public final void bestEffortCloseFileDescriptor(ParcelFileDescriptor parcelFileDescriptor) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to close a file descriptor", e);
            }
        }

        public final void bestEffortCloseFileDescriptors(ParcelFileDescriptor... parcelFileDescriptorArr) {
            for (ParcelFileDescriptor parcelFileDescriptor : parcelFileDescriptorArr) {
                bestEffortCloseFileDescriptor(parcelFileDescriptor);
            }
        }

        public static void sendErrorSignal(IDataShareWriteAdapter iDataShareWriteAdapter, IDataShareReadAdapter iDataShareReadAdapter, int i) {
            try {
                iDataShareWriteAdapter.error(i);
            } catch (RemoteException e) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to call error() the client operation", e);
            }
            try {
                iDataShareReadAdapter.error(i);
            } catch (RemoteException e2) {
                Slog.e(ContentCaptureManagerService.TAG, "Failed to call error() the service operation", e2);
            }
        }

        public final void logServiceEvent(int i) {
            ContentCaptureMetricsLogger.writeServiceEvent(i, this.mParentService.mServiceNameResolver.getServiceName(UserHandle.getCallingUserId()));
        }
    }
}
