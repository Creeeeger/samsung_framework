package com.android.systemui.noticenter;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.util.Log;
import android.view.VelocityTracker;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.statusbar.notification.collection.coordinator.NotilusCoordinator;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.samsung.systemui.splugins.SPlugin;
import com.samsung.systemui.splugins.SPluginListener;
import com.samsung.systemui.splugins.SPluginVersions;
import com.samsung.systemui.splugins.noticenter.PluginNotiCenter;
import java.io.PrintWriter;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotiCenterPlugin implements Dumpable {
    public static final NotiCenterPlugin INSTANCE;
    public static final String TAG;
    public static CentralSurfaces centralSurfaces;
    public static boolean clearableNotifications;
    public static final Handler handler;
    public static boolean isNotiCenterConnected;
    public static NotilusCoordinator mListener;
    public static HashSet noclearAppList;
    public static boolean noclearEnabled;
    public static final NotiCenterPlugin$notiCenterCallback$1 notiCenterCallback;
    public static final NotiCenterPluginListener notiCenterPluginListener;
    public static PackageManager packageManager;
    public static PluginNotiCenter plugin;
    public static boolean showNotilusOnKeyguard;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotiCenterPluginListener implements SPluginListener {
        public final NotiCenterPlugin notiCenterPlugin;

        public NotiCenterPluginListener(NotiCenterPlugin notiCenterPlugin) {
            this.notiCenterPlugin = notiCenterPlugin;
        }

        @Override // com.samsung.systemui.splugins.SPluginListener
        public final void onPluginConnected(SPlugin sPlugin, Context context) {
            PluginNotiCenter pluginNotiCenter = (PluginNotiCenter) sPlugin;
            NotiCenterPlugin.INSTANCE.getClass();
            Log.d(NotiCenterPlugin.TAG, "onPluginConnected : " + pluginNotiCenter);
            this.notiCenterPlugin.getClass();
            NotiCenterPlugin.plugin = pluginNotiCenter;
            NotiCenterPlugin.isNotiCenterConnected = true;
            pluginNotiCenter.setCallback(NotiCenterPlugin.notiCenterCallback);
            ComponentName componentName = new ComponentName("com.samsung.systemui.notilus", "com.samsung.systemui.notilus.service.NotificationListener");
            PackageManager packageManager = NotiCenterPlugin.packageManager;
            if (packageManager != null) {
                packageManager.setComponentEnabledSetting(componentName, 1, 1);
            }
        }

        @Override // com.samsung.systemui.splugins.SPluginListener
        public final void onPluginDisconnected(SPlugin sPlugin, int i) {
            NotiCenterPlugin.INSTANCE.getClass();
            Log.d(NotiCenterPlugin.TAG, "onPluginDisconnected : " + ((PluginNotiCenter) sPlugin));
            this.notiCenterPlugin.getClass();
            NotiCenterPlugin.plugin = null;
            NotiCenterPlugin.isNotiCenterConnected = false;
            NotiCenterPlugin$notiCenterCallback$1 notiCenterPlugin$notiCenterCallback$1 = NotiCenterPlugin.notiCenterCallback;
            notiCenterPlugin$notiCenterCallback$1.onChangedVisibilityOnKeyguard(false);
            notiCenterPlugin$notiCenterCallback$1.onNotiStarPanelShowOnKeyguard(false);
            notiCenterPlugin$notiCenterCallback$1.onNoclearUpdate(false);
        }
    }

    static {
        NotiCenterPlugin notiCenterPlugin = new NotiCenterPlugin();
        INSTANCE = notiCenterPlugin;
        TAG = "NotiStar";
        handler = new Handler();
        notiCenterCallback = new NotiCenterPlugin$notiCenterCallback$1();
        notiCenterPluginListener = new NotiCenterPluginListener(notiCenterPlugin);
        VelocityTracker.obtain();
        Log.d("NotiStar", "NotiCenterPlugin init");
    }

    private NotiCenterPlugin() {
    }

    public static boolean isNotiCenterPluginConnected() {
        if (isNotiCenterConnected && plugin != null) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        int i;
        PluginNotiCenter pluginNotiCenter;
        printWriter.println(" NotiCenterPlugin: ");
        printWriter.print("  showNotilusOnKeyguard : " + showNotilusOnKeyguard);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m(" isNotiCenterConnected : ", isNotiCenterConnected, printWriter);
        PluginNotiCenter pluginNotiCenter2 = plugin;
        if (pluginNotiCenter2 != null) {
            i = pluginNotiCenter2.getVersion();
        } else {
            i = 0;
        }
        if (i >= SPluginVersions.PLATFORM_VERSION_NOTISTAR && (pluginNotiCenter = plugin) != null) {
            pluginNotiCenter.dump(null, printWriter, strArr);
        }
    }
}
