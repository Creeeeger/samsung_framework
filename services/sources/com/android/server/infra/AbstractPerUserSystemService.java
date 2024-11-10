package com.android.server.infra;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ServiceInfo;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.util.Slog;
import com.android.server.display.DisplayPowerController2;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public abstract class AbstractPerUserSystemService {
    public boolean mDisabled;
    public final Object mLock;
    public final AbstractMasterSystemService mMaster;
    public ServiceInfo mServiceInfo;
    public boolean mSetupComplete;
    public final String mTag = getClass().getSimpleName();
    public final int mUserId;

    public void handlePackageUpdateLocked(String str) {
    }

    public abstract ServiceInfo newServiceInfoLocked(ComponentName componentName);

    public AbstractPerUserSystemService(AbstractMasterSystemService abstractMasterSystemService, Object obj, int i) {
        this.mMaster = abstractMasterSystemService;
        this.mLock = obj;
        this.mUserId = i;
        updateIsSetupComplete(i);
    }

    public final void updateIsSetupComplete(int i) {
        this.mSetupComplete = "1".equals(Settings.Secure.getStringForUser(getContext().getContentResolver(), "user_setup_complete", i));
    }

    public boolean isEnabledLocked() {
        return (!this.mSetupComplete || this.mServiceInfo == null || this.mDisabled) ? false : true;
    }

    public final boolean isDisabledByUserRestrictionsLocked() {
        return this.mDisabled;
    }

    public boolean updateLocked(boolean z) {
        boolean isEnabledLocked = isEnabledLocked();
        if (this.mMaster.verbose) {
            Slog.v(this.mTag, "updateLocked(u=" + this.mUserId + "): wasEnabled=" + isEnabledLocked + ", mSetupComplete=" + this.mSetupComplete + ", disabled=" + z + ", mDisabled=" + this.mDisabled);
        }
        updateIsSetupComplete(this.mUserId);
        this.mDisabled = z;
        ServiceNameResolver serviceNameResolver = this.mMaster.mServiceNameResolver;
        if (serviceNameResolver != null && serviceNameResolver.isConfiguredInMultipleMode()) {
            if (this.mMaster.debug) {
                Slog.d(this.mTag, "Should not end up in updateLocked when isConfiguredInMultipleMode is true");
            }
        } else {
            updateServiceInfoLocked();
        }
        return isEnabledLocked != isEnabledLocked();
    }

    public final ComponentName updateServiceInfoLocked() {
        ComponentName[] updateServiceInfoListLocked = updateServiceInfoListLocked();
        if (updateServiceInfoListLocked == null || updateServiceInfoListLocked.length == 0) {
            return null;
        }
        return updateServiceInfoListLocked[0];
    }

    public final ComponentName[] updateServiceInfoListLocked() {
        ServiceNameResolver serviceNameResolver = this.mMaster.mServiceNameResolver;
        if (serviceNameResolver == null) {
            return null;
        }
        if (!serviceNameResolver.isConfiguredInMultipleMode()) {
            return new ComponentName[]{getServiceComponent(getComponentNameLocked())};
        }
        String[] serviceNameList = this.mMaster.mServiceNameResolver.getServiceNameList(this.mUserId);
        if (serviceNameList == null) {
            return null;
        }
        ComponentName[] componentNameArr = new ComponentName[serviceNameList.length];
        for (int i = 0; i < serviceNameList.length; i++) {
            componentNameArr[i] = getServiceComponent(serviceNameList[i]);
        }
        return componentNameArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005b A[Catch: Exception -> 0x00bb, all -> 0x00de, TRY_ENTER, TryCatch #0 {Exception -> 0x00bb, blocks: (B:10:0x005b, B:12:0x0067, B:19:0x0092, B:21:0x009a), top: B:8:0x0059, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0092 A[Catch: Exception -> 0x00bb, all -> 0x00de, TryCatch #0 {Exception -> 0x00bb, blocks: (B:10:0x005b, B:12:0x0067, B:19:0x0092, B:21:0x009a), top: B:8:0x0059, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.content.ComponentName getServiceComponent(java.lang.String r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.mLock
            monitor-enter(r0)
            boolean r1 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> Lde
            r2 = 0
            if (r1 != 0) goto L57
            android.content.ComponentName r1 = android.content.ComponentName.unflattenFromString(r8)     // Catch: java.lang.Throwable -> L35 java.lang.Throwable -> Lde
            android.content.pm.IPackageManager r3 = android.app.AppGlobals.getPackageManager()     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            int r4 = r7.mUserId     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            r5 = 0
            android.content.pm.ServiceInfo r3 = r3.getServiceInfo(r1, r5, r4)     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            if (r3 != 0) goto L59
            java.lang.String r4 = r7.mTag     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            r5.<init>()     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            java.lang.String r6 = "Bad service name: "
            r5.append(r6)     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            r5.append(r8)     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            android.util.Slog.e(r4, r5)     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> Lde
            goto L59
        L33:
            r3 = move-exception
            goto L37
        L35:
            r3 = move-exception
            r1 = r2
        L37:
            java.lang.String r4 = r7.mTag     // Catch: java.lang.Throwable -> Lde
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lde
            r5.<init>()     // Catch: java.lang.Throwable -> Lde
            java.lang.String r6 = "Error getting service info for '"
            r5.append(r6)     // Catch: java.lang.Throwable -> Lde
            r5.append(r8)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r6 = "': "
            r5.append(r6)     // Catch: java.lang.Throwable -> Lde
            r5.append(r3)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> Lde
            android.util.Slog.e(r4, r3)     // Catch: java.lang.Throwable -> Lde
            r3 = r2
            goto L59
        L57:
            r1 = r2
            r3 = r1
        L59:
            if (r3 == 0) goto L92
            android.content.pm.ServiceInfo r3 = r7.newServiceInfoLocked(r1)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            r7.mServiceInfo = r3     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            com.android.server.infra.AbstractMasterSystemService r3 = r7.mMaster     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            boolean r3 = r3.debug     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            if (r3 == 0) goto Ldc
            java.lang.String r3 = r7.mTag     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            r4.<init>()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            java.lang.String r5 = "Set component for user "
            r4.append(r5)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            int r5 = r7.mUserId     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            r4.append(r5)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            java.lang.String r5 = " as "
            r4.append(r5)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            r4.append(r1)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            java.lang.String r5 = " and info as "
            r4.append(r5)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            android.content.pm.ServiceInfo r5 = r7.mServiceInfo     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            r4.append(r5)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            android.util.Slog.d(r3, r4)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            goto Ldc
        L92:
            r7.mServiceInfo = r2     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            com.android.server.infra.AbstractMasterSystemService r3 = r7.mMaster     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            boolean r3 = r3.debug     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            if (r3 == 0) goto Ldc
            java.lang.String r3 = r7.mTag     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            r4.<init>()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            java.lang.String r5 = "Reset component for user "
            r4.append(r5)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            int r5 = r7.mUserId     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            r4.append(r5)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            java.lang.String r5 = ":"
            r4.append(r5)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            r4.append(r8)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            android.util.Slog.d(r3, r4)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lde
            goto Ldc
        Lbb:
            r3 = move-exception
            java.lang.String r4 = r7.mTag     // Catch: java.lang.Throwable -> Lde
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lde
            r5.<init>()     // Catch: java.lang.Throwable -> Lde
            java.lang.String r6 = "Bad ServiceInfo for '"
            r5.append(r6)     // Catch: java.lang.Throwable -> Lde
            r5.append(r8)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r8 = "': "
            r5.append(r8)     // Catch: java.lang.Throwable -> Lde
            r5.append(r3)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r8 = r5.toString()     // Catch: java.lang.Throwable -> Lde
            android.util.Slog.e(r4, r8)     // Catch: java.lang.Throwable -> Lde
            r7.mServiceInfo = r2     // Catch: java.lang.Throwable -> Lde
        Ldc:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lde
            return r1
        Lde:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lde
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.infra.AbstractPerUserSystemService.getServiceComponent(java.lang.String):android.content.ComponentName");
    }

    public final int getUserId() {
        return this.mUserId;
    }

    public final AbstractMasterSystemService getMaster() {
        return this.mMaster;
    }

    public final int getServiceUidLocked() {
        ServiceInfo serviceInfo = this.mServiceInfo;
        if (serviceInfo == null) {
            if (!this.mMaster.verbose) {
                return -1;
            }
            Slog.v(this.mTag, "getServiceUidLocked(): no mServiceInfo");
            return -1;
        }
        return serviceInfo.applicationInfo.uid;
    }

    public final String getComponentNameLocked() {
        return this.mMaster.mServiceNameResolver.getServiceName(this.mUserId);
    }

    public final boolean isTemporaryServiceSetLocked() {
        return this.mMaster.mServiceNameResolver.isTemporary(this.mUserId);
    }

    public final void resetTemporaryServiceLocked() {
        this.mMaster.mServiceNameResolver.resetTemporaryService(this.mUserId);
    }

    public final ServiceInfo getServiceInfo() {
        return this.mServiceInfo;
    }

    public final ComponentName getServiceComponentName() {
        ComponentName componentName;
        synchronized (this.mLock) {
            ServiceInfo serviceInfo = this.mServiceInfo;
            componentName = serviceInfo == null ? null : serviceInfo.getComponentName();
        }
        return componentName;
    }

    public final String getServicePackageName() {
        ComponentName serviceComponentName = getServiceComponentName();
        if (serviceComponentName == null) {
            return null;
        }
        return serviceComponentName.getPackageName();
    }

    public final CharSequence getServiceLabelLocked() {
        ServiceInfo serviceInfo = this.mServiceInfo;
        if (serviceInfo == null) {
            return null;
        }
        return serviceInfo.loadSafeLabel(getContext().getPackageManager(), DisplayPowerController2.RATE_FROM_DOZE_TO_ON, 5);
    }

    public final Drawable getServiceIconLocked() {
        ServiceInfo serviceInfo = this.mServiceInfo;
        if (serviceInfo == null) {
            return null;
        }
        return serviceInfo.loadIcon(getContext().getPackageManager());
    }

    public final void removeSelfFromCache() {
        synchronized (this.mMaster.mLock) {
            this.mMaster.removeCachedServiceListLocked(this.mUserId);
        }
    }

    public final boolean isDebug() {
        return this.mMaster.debug;
    }

    public final boolean isVerbose() {
        return this.mMaster.verbose;
    }

    public final int getTargedSdkLocked() {
        ServiceInfo serviceInfo = this.mServiceInfo;
        if (serviceInfo == null) {
            return 0;
        }
        return serviceInfo.applicationInfo.targetSdkVersion;
    }

    public final boolean isSetupCompletedLocked() {
        return this.mSetupComplete;
    }

    public final Context getContext() {
        return this.mMaster.getContext();
    }

    public void dumpLocked(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("User: ");
        printWriter.println(this.mUserId);
        if (this.mServiceInfo != null) {
            printWriter.print(str);
            printWriter.print("Service Label: ");
            printWriter.println(getServiceLabelLocked());
            printWriter.print(str);
            printWriter.print("Target SDK: ");
            printWriter.println(getTargedSdkLocked());
        }
        if (this.mMaster.mServiceNameResolver != null) {
            printWriter.print(str);
            printWriter.print("Name resolver: ");
            this.mMaster.mServiceNameResolver.dumpShort(printWriter, this.mUserId);
            printWriter.println();
        }
        printWriter.print(str);
        printWriter.print("Disabled by UserManager: ");
        printWriter.println(this.mDisabled);
        printWriter.print(str);
        printWriter.print("Setup complete: ");
        printWriter.println(this.mSetupComplete);
        if (this.mServiceInfo != null) {
            printWriter.print(str);
            printWriter.print("Service UID: ");
            printWriter.println(this.mServiceInfo.applicationInfo.uid);
        }
        printWriter.println();
    }
}
