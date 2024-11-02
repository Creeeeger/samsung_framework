package com.android.systemui.statusbar.policy;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.location.ILocationManager;
import android.location.LocationManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.util.Log;
import androidx.mediarouter.media.MediaRoute2Provider$$ExternalSyntheticLambda0;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.BootCompleteCache;
import com.android.systemui.appops.AppOpItem;
import com.android.systemui.appops.AppOpsController;
import com.android.systemui.appops.AppOpsControllerImpl;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.policy.LocationController;
import com.android.systemui.util.DeviceConfigProxy;
import com.android.systemui.util.Utils;
import com.android.systemui.util.settings.SecureSettings;
import com.samsung.android.feature.SemCarrierFeature;
import com.sec.ims.configuration.DATA;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LocationControllerImpl extends BroadcastReceiver implements LocationController, AppOpsController.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AppOpsController mAppOpsController;
    public boolean mAreActiveLocationRequests;
    public final Handler mBackgroundHandler;
    public final AnonymousClass1 mContentObserver;
    public final Context mContext;
    public final DeviceConfigProxy mDeviceConfigProxy;
    public final H mHandler;
    public ILocationManager mLocationManager;
    public final PackageManager mPackageManager;
    public final SecureSettings mSecureSettings;
    public boolean mShouldDisplayAllAccesses;
    public boolean mShowSystemAccessesFlag;
    public boolean mShowSystemAccessesSetting;
    public final boolean mSupportChnNlpIcon;
    public final UiEventLogger mUiEventLogger;
    public final UserTracker mUserTracker;
    public AppOpItem mActiveAppOpItem = null;
    public final ArrayList mSettingsChangeCallbacks = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public H(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            LocationControllerImpl.this.mSettingsChangeCallbacks.remove((LocationController.LocationChangeCallback) message.obj);
                            return;
                        }
                        return;
                    }
                    LocationControllerImpl.this.mSettingsChangeCallbacks.add((LocationController.LocationChangeCallback) message.obj);
                    return;
                }
                synchronized (LocationControllerImpl.this.mSettingsChangeCallbacks) {
                    Utils.safeForeach(LocationControllerImpl.this.mSettingsChangeCallbacks, new Consumer() { // from class: com.android.systemui.statusbar.policy.LocationControllerImpl$H$$ExternalSyntheticLambda1
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            boolean z = LocationControllerImpl.this.mAreActiveLocationRequests;
                            ((LocationController.LocationChangeCallback) obj).onLocationActiveChanged();
                        }
                    });
                }
                return;
            }
            final boolean isLocationEnabled = LocationControllerImpl.this.isLocationEnabled();
            synchronized (LocationControllerImpl.this.mSettingsChangeCallbacks) {
                Utils.safeForeach(LocationControllerImpl.this.mSettingsChangeCallbacks, new Consumer() { // from class: com.android.systemui.statusbar.policy.LocationControllerImpl$H$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((LocationController.LocationChangeCallback) obj).onLocationSettingsChanged();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum LocationIndicatorEvent implements UiEventLogger.UiEventEnum {
        LOCATION_INDICATOR_MONITOR_HIGH_POWER(935),
        LOCATION_INDICATOR_SYSTEM_APP(936),
        LOCATION_INDICATOR_NON_SYSTEM_APP(937);

        private final int mId;

        LocationIndicatorEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v19, types: [com.android.systemui.statusbar.policy.LocationControllerImpl$1, android.database.ContentObserver] */
    public LocationControllerImpl(Context context, AppOpsController appOpsController, DeviceConfigProxy deviceConfigProxy, Looper looper, Handler handler, BroadcastDispatcher broadcastDispatcher, BootCompleteCache bootCompleteCache, UserTracker userTracker, PackageManager packageManager, UiEventLogger uiEventLogger, SecureSettings secureSettings) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        this.mContext = context;
        this.mAppOpsController = appOpsController;
        this.mDeviceConfigProxy = deviceConfigProxy;
        this.mHandler = new H(looper);
        this.mUserTracker = userTracker;
        this.mUiEventLogger = uiEventLogger;
        this.mSecureSettings = secureSettings;
        this.mBackgroundHandler = handler;
        this.mPackageManager = packageManager;
        try {
            i = Integer.parseInt(SystemProperties.get("persist.sys.gps.dds.subId", DATA.DM_FIELD_INDEX.PCSCF_DOMAIN));
        } catch (NumberFormatException unused) {
            Log.w("LocationControllerImpl", "Sim slot property has wrong value, set 0");
            i = 0;
        }
        String string = SemCarrierFeature.getInstance().getString(i, "CarrierFeature_GPS_ConfigAgpsSetting", "", false);
        string = (string == null || string.length() == 0) ? SystemProperties.get("ro.csc.sales_code") : string;
        if (SystemProperties.getInt("ro.product.first_api_level", 0) >= 34 && ("CHN".equals(string) || "CHC".equals(string) || "CHU".equals(string) || "CTC".equals(string) || "CHM".equals(string))) {
            z = true;
        } else {
            z = false;
        }
        this.mSupportChnNlpIcon = z;
        this.mDeviceConfigProxy.getClass();
        if (!DeviceConfig.getBoolean("privacy", "location_indicators_small_enabled", false) && !z) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.mShouldDisplayAllAccesses = z2;
        this.mDeviceConfigProxy.getClass();
        this.mShowSystemAccessesFlag = DeviceConfig.getBoolean("privacy", "location_indicators_show_system", false);
        if (this.mSecureSettings.getIntForUser(0, -2, "locationShowSystemOps") == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.mShowSystemAccessesSetting = z3;
        ?? r2 = new ContentObserver(this.mBackgroundHandler) { // from class: com.android.systemui.statusbar.policy.LocationControllerImpl.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z4) {
                LocationControllerImpl locationControllerImpl = LocationControllerImpl.this;
                int i2 = LocationControllerImpl.$r8$clinit;
                boolean z5 = false;
                if (locationControllerImpl.mSecureSettings.getIntForUser(0, -2, "locationShowSystemOps") == 1) {
                    z5 = true;
                }
                locationControllerImpl.mShowSystemAccessesSetting = z5;
            }
        };
        this.mContentObserver = r2;
        this.mSecureSettings.registerContentObserverForUser("locationShowSystemOps", r2, -1);
        DeviceConfigProxy deviceConfigProxy2 = this.mDeviceConfigProxy;
        Objects.requireNonNull(handler);
        MediaRoute2Provider$$ExternalSyntheticLambda0 mediaRoute2Provider$$ExternalSyntheticLambda0 = new MediaRoute2Provider$$ExternalSyntheticLambda0(handler);
        DeviceConfig.OnPropertiesChangedListener onPropertiesChangedListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.systemui.statusbar.policy.LocationControllerImpl$$ExternalSyntheticLambda0
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                boolean z4;
                LocationControllerImpl locationControllerImpl = LocationControllerImpl.this;
                locationControllerImpl.mDeviceConfigProxy.getClass();
                boolean z5 = false;
                if (!DeviceConfig.getBoolean("privacy", "location_indicators_small_enabled", false) && !locationControllerImpl.mSupportChnNlpIcon) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                locationControllerImpl.mShouldDisplayAllAccesses = z4;
                if (locationControllerImpl.mSecureSettings.getIntForUser(0, -2, "locationShowSystemOps") == 1) {
                    z5 = true;
                }
                locationControllerImpl.mShowSystemAccessesFlag = z5;
                locationControllerImpl.updateActiveLocationRequests();
            }
        };
        deviceConfigProxy2.getClass();
        DeviceConfig.addOnPropertiesChangedListener("privacy", mediaRoute2Provider$$ExternalSyntheticLambda0, onPropertiesChangedListener);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        intentFilter.addAction("android.location.HIGH_POWER_REQUEST_CHANGE");
        intentFilter.addAction("android.location.MODE_CHANGED");
        broadcastDispatcher.registerReceiverWithHandler(this, intentFilter, this.mHandler, UserHandle.ALL);
        ((AppOpsControllerImpl) this.mAppOpsController).addCallback(new int[]{0, 1, 42}, this);
        handler.post(new LocationControllerImpl$$ExternalSyntheticLambda1(this, 0));
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        LocationController.LocationChangeCallback locationChangeCallback = (LocationController.LocationChangeCallback) obj;
        synchronized (this.mSettingsChangeCallbacks) {
            this.mHandler.obtainMessage(3, locationChangeCallback).sendToTarget();
        }
        this.mHandler.sendEmptyMessage(1);
    }

    public boolean areActiveHighPowerLocationRequests() {
        ArrayList arrayList = (ArrayList) ((AppOpsControllerImpl) this.mAppOpsController).getActiveAppOps(false);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((AppOpItem) arrayList.get(i)).mCode == 42) {
                this.mActiveAppOpItem = (AppOpItem) arrayList.get(i);
                return true;
            }
        }
        this.mActiveAppOpItem = null;
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void areActiveLocationRequests() {
        /*
            Method dump skipped, instructions count: 225
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.policy.LocationControllerImpl.areActiveLocationRequests():void");
    }

    public final boolean isLocationEnabled() {
        int intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "location_mode", 0, ActivityManager.getCurrentUser());
        if (intForUser != 3 && intForUser != 1) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.appops.AppOpsController.Callback
    public final void onActiveStateChanged(boolean z, String str, int i, int i2) {
        updateActiveLocationRequests();
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.d("LocationControllerImpl", "onReceive() = " + action);
        if ("android.location.HIGH_POWER_REQUEST_CHANGE".equals(action)) {
            updateActiveLocationRequests();
        } else if ("android.location.MODE_CHANGED".equals(action)) {
            this.mHandler.sendEmptyMessage(1);
        }
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        LocationController.LocationChangeCallback locationChangeCallback = (LocationController.LocationChangeCallback) obj;
        synchronized (this.mSettingsChangeCallbacks) {
            this.mHandler.obtainMessage(4, locationChangeCallback).sendToTarget();
        }
    }

    public final boolean setLocationEnabled(boolean z) {
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        if (((UserManager) this.mContext.getSystemService("user")).hasUserRestriction("no_share_location", UserHandle.of(userId))) {
            return false;
        }
        Context context = this.mContext;
        Settings.Secure.putIntForUser(context.getContentResolver(), "location_changer", 2, userId);
        ((LocationManager) context.getSystemService(LocationManager.class)).setLocationEnabledForUser(z, UserHandle.of(userId));
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0074 A[Catch: RemoteException -> 0x008e, TryCatch #0 {RemoteException -> 0x008e, blocks: (B:20:0x0070, B:22:0x0074, B:23:0x0080, B:25:0x0084, B:27:0x008a), top: B:19:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0084 A[Catch: RemoteException -> 0x008e, TryCatch #0 {RemoteException -> 0x008e, blocks: (B:20:0x0070, B:22:0x0074, B:23:0x0080, B:25:0x0084, B:27:0x008a), top: B:19:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008a A[Catch: RemoteException -> 0x008e, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x008e, blocks: (B:20:0x0070, B:22:0x0074, B:23:0x0080, B:25:0x0084, B:27:0x008a), top: B:19:0x0070 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateActiveLocationRequests() {
        /*
            r6 = this;
            com.android.systemui.appops.AppOpItem r0 = r6.mActiveAppOpItem
            boolean r1 = r6.mShouldDisplayAllAccesses
            r2 = 1
            if (r1 == 0) goto L12
            android.os.Handler r1 = r6.mBackgroundHandler
            com.android.systemui.statusbar.policy.LocationControllerImpl$$ExternalSyntheticLambda1 r3 = new com.android.systemui.statusbar.policy.LocationControllerImpl$$ExternalSyntheticLambda1
            r3.<init>(r6, r2)
            r1.post(r3)
            goto L2f
        L12:
            boolean r1 = r6.mAreActiveLocationRequests
            boolean r3 = r6.areActiveHighPowerLocationRequests()
            r6.mAreActiveLocationRequests = r3
            if (r3 == r1) goto L2f
            com.android.systemui.statusbar.policy.LocationControllerImpl$H r1 = r6.mHandler
            r3 = 2
            r1.sendEmptyMessage(r3)
            boolean r1 = r6.mAreActiveLocationRequests
            if (r1 == 0) goto L2d
            com.android.internal.logging.UiEventLogger r1 = r6.mUiEventLogger
            com.android.systemui.statusbar.policy.LocationControllerImpl$LocationIndicatorEvent r3 = com.android.systemui.statusbar.policy.LocationControllerImpl.LocationIndicatorEvent.LOCATION_INDICATOR_MONITOR_HIGH_POWER
            r1.log(r3)
        L2d:
            r1 = r2
            goto L30
        L2f:
            r1 = 0
        L30:
            if (r1 != 0) goto L3a
            boolean r1 = r6.mAreActiveLocationRequests
            if (r1 == 0) goto La4
            com.android.systemui.appops.AppOpItem r1 = r6.mActiveAppOpItem
            if (r0 == r1) goto La4
        L3a:
            java.lang.String r1 = "LocationControllerImpl"
            android.os.Bundle r3 = new android.os.Bundle
            r3.<init>()
            java.lang.String r4 = "icon"
            boolean r5 = r6.mAreActiveLocationRequests
            r3.putBoolean(r4, r5)
            com.android.systemui.appops.AppOpItem r4 = r6.mActiveAppOpItem
            if (r4 == 0) goto L66
            if (r0 == 0) goto L54
            java.lang.String r0 = "onlyItemChanged"
            r3.putBoolean(r0, r2)
        L54:
            com.android.systemui.appops.AppOpItem r0 = r6.mActiveAppOpItem
            int r0 = r0.mUid
            java.lang.String r2 = "activeAppOpUid"
            r3.putInt(r2, r0)
            com.android.systemui.appops.AppOpItem r0 = r6.mActiveAppOpItem
            java.lang.String r0 = r0.mPackageName
            java.lang.String r2 = "activeAppOpPackageName"
            r3.putString(r2, r0)
        L66:
            android.os.Message r0 = android.os.Message.obtain()
            r2 = 204(0xcc, float:2.86E-43)
            r0.what = r2
            r0.obj = r3
            android.location.ILocationManager r2 = r6.mLocationManager     // Catch: android.os.RemoteException -> L8e
            if (r2 != 0) goto L80
            java.lang.String r2 = "location"
            android.os.IBinder r2 = android.os.ServiceManager.getService(r2)     // Catch: android.os.RemoteException -> L8e
            android.location.ILocationManager r2 = android.location.ILocationManager.Stub.asInterface(r2)     // Catch: android.os.RemoteException -> L8e
            r6.mLocationManager = r2     // Catch: android.os.RemoteException -> L8e
        L80:
            android.location.ILocationManager r6 = r6.mLocationManager     // Catch: android.os.RemoteException -> L8e
            if (r6 != 0) goto L8a
            java.lang.String r6 = "Failed to get Location Manager"
            android.util.Log.w(r1, r6)     // Catch: android.os.RemoteException -> L8e
            goto La4
        L8a:
            r6.notifyNSFLP(r0)     // Catch: android.os.RemoteException -> L8e
            goto La4
        L8e:
            r6 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Failed to send nsflp message, "
            r0.<init>(r2)
            java.lang.String r6 = r6.toString()
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            android.util.Log.w(r1, r6)
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.policy.LocationControllerImpl.updateActiveLocationRequests():void");
    }
}
