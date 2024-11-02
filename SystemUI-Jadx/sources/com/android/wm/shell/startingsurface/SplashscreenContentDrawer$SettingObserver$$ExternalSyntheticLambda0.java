package com.android.wm.shell.startingsurface;

import android.provider.Settings;
import com.android.wm.shell.startingsurface.SplashscreenContentDrawer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SplashscreenContentDrawer.SettingObserver settingObserver = (SplashscreenContentDrawer.SettingObserver) this.f$0;
                settingObserver.this$0.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("current_sec_active_themepackage"), false, settingObserver, settingObserver.this$0.mContext.getUserId());
                settingObserver.this$0.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("current_sec_appicon_theme_package"), false, settingObserver, settingObserver.this$0.mContext.getUserId());
                settingObserver.updateSettings(false);
                return;
            case 1:
                ((SplashscreenContentDrawer.SettingObserver) this.f$0).updateSettings(false);
                return;
            default:
                SplashscreenContentDrawer.PreloadIconData preloadIconData = ((SplashscreenContentDrawer.PreLoadIconDataHandler) this.f$0).this$0.mPreloadIcon;
                if (preloadIconData.mIsPreloaded) {
                    preloadIconData.mIsPreloaded = false;
                    preloadIconData.mContext = null;
                    preloadIconData.mPreloadIconDrawable = null;
                    return;
                }
                return;
        }
    }
}
