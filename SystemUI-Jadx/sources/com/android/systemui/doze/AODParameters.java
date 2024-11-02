package com.android.systemui.doze;

import android.net.Uri;
import android.provider.Settings;
import com.android.systemui.LsRune;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.util.SettingsHelper;
import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AODParameters {
    public final AODParameters$$ExternalSyntheticLambda0 mAODSettingStateCallback;
    public boolean mDozeAlwaysOn = true;
    public boolean mDozeUiState;
    public final Lazy mPluginAODManagerLazy;
    public final SettingsHelper mSettingsHelper;
    public final StatusBarStateController mStatusBarStateController;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.util.SettingsHelper$OnChangedCallback, com.android.systemui.doze.AODParameters$$ExternalSyntheticLambda0] */
    public AODParameters(SettingsHelper settingsHelper, Lazy lazy, StatusBarStateController statusBarStateController) {
        ?? r0 = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.doze.AODParameters$$ExternalSyntheticLambda0
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                AODParameters aODParameters = AODParameters.this;
                aODParameters.updateDozeAlwaysOn();
                ((PluginAODManager) aODParameters.mPluginAODManagerLazy.get()).updateAnimateScreenOff();
            }
        };
        this.mAODSettingStateCallback = r0;
        this.mSettingsHelper = settingsHelper;
        this.mPluginAODManagerLazy = lazy;
        this.mStatusBarStateController = statusBarStateController;
        settingsHelper.registerCallback(r0, Settings.System.getUriFor("aod_mode"), Settings.System.getUriFor("aod_tap_to_show_mode"), Settings.System.getUriFor("aod_mode_start_time"), Settings.System.getUriFor("aod_mode_end_time"), Settings.System.getUriFor("aod_show_for_new_noti"), Settings.System.getUriFor("aod_show_lockscreen_wallpaper"));
        updateDozeAlwaysOn();
        if (LsRune.AOD_FULLSCREEN) {
            statusBarStateController.addCallback(new StatusBarStateController.StateListener() { // from class: com.android.systemui.doze.AODParameters.1
                @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
                public final void onStatePostChange() {
                    ((PluginAODManager) AODParameters.this.mPluginAODManagerLazy.get()).updateAnimateScreenOff();
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateDozeAlwaysOn() {
        /*
            r7 = this;
            com.android.systemui.util.SettingsHelper r0 = r7.mSettingsHelper
            boolean r1 = r0.isAODEnabled()
            com.android.systemui.util.SettingsHelper$ItemMap r2 = r0.mItemLists
            java.lang.String r3 = "aod_tap_to_show_mode"
            com.android.systemui.util.SettingsHelper$Item r2 = r2.get(r3)
            int r2 = r2.getIntValue()
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L18
            r2 = r3
            goto L19
        L18:
            r2 = r4
        L19:
            com.android.systemui.util.SettingsHelper$ItemMap r5 = r0.mItemLists
            java.lang.String r6 = "aod_show_for_new_noti"
            com.android.systemui.util.SettingsHelper$Item r5 = r5.get(r6)
            int r5 = r5.getIntValue()
            if (r5 == 0) goto L29
            r5 = r3
            goto L2a
        L29:
            r5 = r4
        L2a:
            if (r1 != 0) goto L2f
            r7.mDozeAlwaysOn = r4
            goto L7a
        L2f:
            if (r2 != 0) goto L78
            if (r5 == 0) goto L34
            goto L78
        L34:
            com.android.systemui.util.SettingsHelper$ItemMap r1 = r0.mItemLists
            java.lang.String r2 = "aod_mode_start_time"
            com.android.systemui.util.SettingsHelper$Item r1 = r1.get(r2)
            int r1 = r1.getIntValue()
            com.android.systemui.util.SettingsHelper$ItemMap r0 = r0.mItemLists
            java.lang.String r2 = "aod_mode_end_time"
            com.android.systemui.util.SettingsHelper$Item r0 = r0.get(r2)
            int r0 = r0.getIntValue()
            if (r1 != r0) goto L50
        L4e:
            r0 = r3
            goto L70
        L50:
            java.util.Calendar r2 = java.util.Calendar.getInstance()
            r5 = 11
            int r5 = r2.get(r5)
            r6 = 12
            int r2 = r2.get(r6)
            int r5 = r5 * 60
            int r5 = r5 + r2
            if (r1 >= r0) goto L6a
            if (r5 < r1) goto L6f
            if (r5 >= r0) goto L6f
            goto L4e
        L6a:
            if (r5 >= r1) goto L4e
            if (r5 >= r0) goto L6f
            goto L4e
        L6f:
            r0 = r4
        L70:
            if (r0 != 0) goto L75
            r7.mDozeAlwaysOn = r4
            goto L7a
        L75:
            r7.mDozeAlwaysOn = r3
            goto L7a
        L78:
            r7.mDozeAlwaysOn = r4
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.doze.AODParameters.updateDozeAlwaysOn():void");
    }
}
