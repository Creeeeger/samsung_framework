package com.android.systemui.navigationbar;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.om.IOverlayManager;
import android.content.pm.PackageManager;
import android.content.res.ApkAssets;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.Dumpable;
import com.android.systemui.biometrics.SideFpsController$$ExternalSyntheticOutline0;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.navigationbar.util.NavigationModeUtil;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavigationModeController implements Dumpable {
    public final Context mContext;
    public Context mCurrentUserContext;
    public boolean mDeviceProvisioned;
    public final AnonymousClass1 mDeviceProvisionedCallback;
    public final DeviceProvisionedController mDeviceProvisionedController;
    public final NavBarStore mNavBarStore;
    public final IOverlayManager mOverlayManager;
    public final AnonymousClass2 mReceiver;
    public final Executor mUiBgExecutor;
    public final ArrayList mListeners = new ArrayList();
    public final ArrayList mOverlayHistoryList = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ModeChangedListener {
        void onNavigationModeChanged(int i);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum ModeOverlayReason {
        UPDATE_INTERACTION_MODE_AS_OWNER_USER,
        UPDATE_INTERACTION_MODE_DEVICE_PROVISIONED_COMPLETE,
        /* JADX INFO: Fake field, exist only in values array */
        UPDATE_INTERACTION_MODE_BY_SPLUGIN
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.navigationbar.NavigationModeController$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.systemui.navigationbar.NavigationModeController$2, android.content.BroadcastReceiver] */
    public NavigationModeController(Context context, DeviceProvisionedController deviceProvisionedController, ConfigurationController configurationController, Executor executor, DumpManager dumpManager, NavBarStore navBarStore) {
        ?? r0 = new DeviceProvisionedController.DeviceProvisionedListener() { // from class: com.android.systemui.navigationbar.NavigationModeController.1
            @Override // com.android.systemui.statusbar.policy.DeviceProvisionedController.DeviceProvisionedListener
            public final void onDeviceProvisionedChanged() {
                String gestureOverlayPackageName;
                boolean z = BasicRune.NAVBAR_ENABLED;
                NavigationModeController navigationModeController = NavigationModeController.this;
                if (z) {
                    boolean isDeviceProvisioned = ((DeviceProvisionedControllerImpl) navigationModeController.mDeviceProvisionedController).isDeviceProvisioned();
                    if (navigationModeController.mDeviceProvisioned != isDeviceProvisioned) {
                        navigationModeController.mDeviceProvisioned = isDeviceProvisioned;
                        Context context2 = navigationModeController.mCurrentUserContext;
                        NavigationModeUtil navigationModeUtil = NavigationModeUtil.INSTANCE;
                        if (Settings.Global.getInt(context2.getContentResolver(), "navigation_bar_gesture_while_hidden", 0) == 0) {
                            gestureOverlayPackageName = QuickStepContract.NAV_BAR_MODE_3BUTTON_OVERLAY;
                        } else {
                            gestureOverlayPackageName = NavigationModeUtil.getGestureOverlayPackageName(context2);
                        }
                        if (NavigationModeController.getCurrentInteractionMode(navigationModeController.mContext) == 0 && !QuickStepContract.NAV_BAR_MODE_3BUTTON_OVERLAY.equals(gestureOverlayPackageName)) {
                            try {
                                navigationModeController.setModeOverlay(-2, ModeOverlayReason.UPDATE_INTERACTION_MODE_DEVICE_PROVISIONED_COMPLETE, gestureOverlayPackageName);
                            } catch (Exception e) {
                                Log.d("NavigationModeController", "Failed to setModeOverlay: ");
                                e.printStackTrace();
                            }
                        }
                    }
                    EventTypeFactory.EventType.OnDeviceProvisionedChanged onDeviceProvisionedChanged = new EventTypeFactory.EventType.OnDeviceProvisionedChanged(navigationModeController.mDeviceProvisioned);
                    NavBarStore navBarStore2 = navigationModeController.mNavBarStore;
                    ((NavBarStoreImpl) navBarStore2).handleEvent(navigationModeController, onDeviceProvisionedChanged);
                    ((NavBarStoreImpl) navBarStore2).handleEvent(navigationModeController, new EventTypeFactory.EventType.OnNavBarStyleChanged());
                }
                if (BasicRune.NAVBAR_SUPPORT_TASKBAR) {
                    ((NavBarStoreImpl) navigationModeController.mNavBarStore).handleEvent(navigationModeController, new EventTypeFactory.EventType.OnUpdateTaskbarAvailable());
                }
            }

            @Override // com.android.systemui.statusbar.policy.DeviceProvisionedController.DeviceProvisionedListener
            public final void onUserSwitched() {
                StringBuilder sb = new StringBuilder("onUserSwitched: ");
                ActivityManagerWrapper.sInstance.getClass();
                sb.append(ActivityManagerWrapper.getCurrentUserId());
                Log.d("NavigationModeController", sb.toString());
                NavigationModeController navigationModeController = NavigationModeController.this;
                navigationModeController.updateCurrentInteractionMode(true);
                if (BasicRune.NAVBAR_ENABLED) {
                    EventTypeFactory.EventType.OnNavBarStyleChanged onNavBarStyleChanged = new EventTypeFactory.EventType.OnNavBarStyleChanged();
                    NavBarStore navBarStore2 = navigationModeController.mNavBarStore;
                    ((NavBarStoreImpl) navBarStore2).handleEvent(navigationModeController, onNavBarStyleChanged);
                    ((NavBarStoreImpl) navBarStore2).handleEvent(navigationModeController, new EventTypeFactory.EventType.OnUserSwitched());
                }
            }
        };
        this.mDeviceProvisionedCallback = r0;
        ?? r2 = new BroadcastReceiver() { // from class: com.android.systemui.navigationbar.NavigationModeController.2
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                Log.d("NavigationModeController", "ACTION_OVERLAY_CHANGED");
                NavigationModeController.this.updateCurrentInteractionMode(true);
            }
        };
        this.mReceiver = r2;
        this.mContext = context;
        this.mCurrentUserContext = context;
        this.mOverlayManager = IOverlayManager.Stub.asInterface(ServiceManager.getService("overlay"));
        this.mUiBgExecutor = executor;
        boolean z = BasicRune.NAVBAR_ENABLED;
        if (z) {
            this.mDeviceProvisionedController = deviceProvisionedController;
            this.mNavBarStore = navBarStore;
        }
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, "NavigationModeController", this);
        ((DeviceProvisionedControllerImpl) deviceProvisionedController).addCallback(r0);
        if (!z) {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.OVERLAY_CHANGED");
            intentFilter.addDataScheme("package");
            intentFilter.addDataSchemeSpecificPart("android", 0);
            context.registerReceiverAsUser(r2, UserHandle.ALL, intentFilter, null, null);
        }
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.navigationbar.NavigationModeController.3
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onThemeChanged() {
                Log.d("NavigationModeController", "onOverlayChanged");
                NavigationModeController.this.updateCurrentInteractionMode(true);
            }
        });
        updateCurrentInteractionMode(false);
    }

    public static int getCurrentInteractionMode(Context context) {
        int integer = context.getResources().getInteger(R.integer.kg_security_flipper_weight);
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getCurrentInteractionMode: mode=", integer, " contextUser=");
        m.append(context.getUserId());
        Log.d("NavigationModeController", m.toString());
        return integer;
    }

    public final int addListener(ModeChangedListener modeChangedListener) {
        this.mListeners.add(modeChangedListener);
        return getCurrentInteractionMode(this.mCurrentUserContext);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        String str;
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "NavigationModeController:", "  mode=");
        m.append(getCurrentInteractionMode(this.mCurrentUserContext));
        printWriter.println(m.toString());
        try {
            str = String.join(", ", this.mOverlayManager.getDefaultOverlayPackages());
        } catch (RemoteException unused) {
            str = "failed_to_fetch";
        }
        FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("  defaultOverlays=", str, printWriter);
        if (BasicRune.NAVBAR_ENABLED) {
            printWriter.println("    contextUser=" + this.mCurrentUserContext.getUserId());
            printWriter.println("    assetPaths=");
            for (ApkAssets apkAssets : this.mCurrentUserContext.getResources().getAssets().getApkAssets()) {
                printWriter.println("      " + apkAssets.getDebugName());
            }
        } else {
            dumpAssetPaths(this.mCurrentUserContext);
        }
        if (BasicRune.NAVBAR_GESTURE) {
            ArrayList arrayList = this.mOverlayHistoryList;
            int size = arrayList.size();
            SideFpsController$$ExternalSyntheticOutline0.m("  mOverlayHistoryList.size=", size, printWriter);
            for (int i = 0; i < size; i++) {
                printWriter.println("    [" + i + "] " + ((String) arrayList.get(i)));
            }
        }
    }

    public final void dumpAssetPaths(Context context) {
        Log.d("NavigationModeController", "  contextUser=" + this.mCurrentUserContext.getUserId());
        Log.d("NavigationModeController", "  assetPaths=");
        for (ApkAssets apkAssets : context.getResources().getAssets().getApkAssets()) {
            Log.d("NavigationModeController", "    " + apkAssets.getDebugName());
        }
    }

    public final Context getCurrentUserContext() {
        ActivityManagerWrapper.sInstance.getClass();
        int currentUserId = ActivityManagerWrapper.getCurrentUserId();
        StringBuilder sb = new StringBuilder("getCurrentUserContext: contextUser=");
        Context context = this.mContext;
        sb.append(context.getUserId());
        sb.append(" currentUser=");
        sb.append(currentUserId);
        Log.d("NavigationModeController", sb.toString());
        if (context.getUserId() == currentUserId) {
            return context;
        }
        try {
            return context.createPackageContextAsUser(context.getPackageName(), 0, UserHandle.of(currentUserId));
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("NavigationModeController", "Failed to create package context", e);
            return null;
        }
    }

    public final void removeListener(ModeChangedListener modeChangedListener) {
        this.mListeners.remove(modeChangedListener);
    }

    public final void setModeOverlay(int i, ModeOverlayReason modeOverlayReason, String str) {
        if (BasicRune.NAVBAR_GESTURE) {
            StringBuilder sb = new StringBuilder();
            sb.append(" UserId=" + i);
            sb.append(" OverlayPkg=".concat(str));
            sb.append(" OverlayReason=" + modeOverlayReason);
            StringBuilder sb2 = new StringBuilder();
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            sb2.append(String.format("%02d:%02d:%02d.%03d", Integer.valueOf(calendar.get(11)), Integer.valueOf(calendar.get(12)), Integer.valueOf(calendar.get(13)), Integer.valueOf(calendar.get(14))));
            sb2.append(sb.toString());
            String sb3 = sb2.toString();
            ArrayList arrayList = this.mOverlayHistoryList;
            arrayList.add(sb3);
            while (arrayList.size() > 30) {
                arrayList.remove(0);
            }
        }
        try {
            this.mUiBgExecutor.execute(new NavigationModeController$$ExternalSyntheticLambda2(this, str, i));
        } catch (Exception e) {
            Log.d("NavigationModeController", "Failed to setModeOverlay: ");
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x011f A[Catch: Exception -> 0x0126, TRY_LEAVE, TryCatch #0 {Exception -> 0x0126, blocks: (B:28:0x0081, B:30:0x00b3, B:32:0x00ce, B:35:0x0106, B:37:0x010e, B:39:0x0112, B:41:0x011f, B:43:0x00d6, B:46:0x00df, B:47:0x00ee, B:49:0x00f2, B:50:0x00e7), top: B:27:0x0081 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateCurrentInteractionMode(boolean r15) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.NavigationModeController.updateCurrentInteractionMode(boolean):void");
    }
}
