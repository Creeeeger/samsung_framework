package com.android.systemui.facewidget.plugin;

import android.app.SemWallpaperColors;
import android.util.Log;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import com.android.systemui.plugins.annotations.VersionCheckingProxy;
import com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils;
import com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWidgetCallback;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperEventNotifier;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.colors.KeyguardWallpaperColors;
import com.android.systemui.widget.SystemUIWidgetCallback;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceWidgetWallpaperUtilsWrapper implements PluginSystemUIWallpaperUtils {
    public final HashMap mCallbackMap = new HashMap();
    public final KeyguardWallpaper mKeyguardWallpaper;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class FaceWidgetSystemUIWidgetCallbackWrapper implements SystemUIWidgetCallback {
        public final PluginSystemUIWidgetCallback mCallback;

        public FaceWidgetSystemUIWidgetCallbackWrapper(PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback) {
            this.mCallback = pluginSystemUIWidgetCallback;
        }

        @Override // com.android.systemui.widget.SystemUIWidgetCallback
        public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
            String simpleString;
            PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback = this.mCallback;
            if (pluginSystemUIWidgetCallback != null) {
                int i = (int) j;
                StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("updateStyle: updateFlag = ", KeyguardWallpaperColors.getChangeFlagsString(i), ", colors = ");
                if (semWallpaperColors == null) {
                    simpleString = "null";
                } else {
                    simpleString = semWallpaperColors.toSimpleString();
                }
                m.append(simpleString);
                Log.d("FaceWidgetWallpaperUtilsWrapper", m.toString());
                pluginSystemUIWidgetCallback.updateStyle(i, semWallpaperColors);
            }
        }
    }

    public FaceWidgetWallpaperUtilsWrapper(KeyguardWallpaper keyguardWallpaper) {
        this.mKeyguardWallpaper = keyguardWallpaper;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils
    public final int getColorByName(String str) {
        return -1;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils
    public final boolean hasAdaptiveColorResult() {
        return false;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils
    public final boolean isOpenThemeLook() {
        return WallpaperUtils.mSettingsHelper.isOpenThemeLockWallpaper();
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils
    public final boolean isWhiteKeyguardWallpaper(String str) {
        return WallpaperUtils.isWhiteKeyguardWallpaper(str);
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils
    public final boolean isWhiteSubUiWallpaper(int i) {
        if (i < 0) {
            return false;
        }
        if (((KeyguardWallpaperController) this.mKeyguardWallpaper).getHint(i, true).getFontColor() != 1) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils
    public final synchronized void registerCallback(PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback, int i) {
        registerCallback(false, pluginSystemUIWidgetCallback, i);
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils
    public final synchronized void registerSubUiCallback(PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback, int i) {
        registerCallback(true, pluginSystemUIWidgetCallback, i);
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils
    public final synchronized void removeCallback(PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback) {
        removeCallback(false, pluginSystemUIWidgetCallback);
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginSystemUIWallpaperUtils
    public final synchronized void removeSubUiCallback(PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback) {
        removeCallback(true, pluginSystemUIWidgetCallback);
    }

    public final synchronized void registerCallback(boolean z, PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback, int i) {
        if (pluginSystemUIWidgetCallback != null) {
            if (!this.mCallbackMap.containsKey(pluginSystemUIWidgetCallback)) {
                FaceWidgetSystemUIWidgetCallbackWrapper faceWidgetSystemUIWidgetCallbackWrapper = new FaceWidgetSystemUIWidgetCallbackWrapper((PluginSystemUIWidgetCallback) new VersionCheckingProxy(PluginSystemUIWidgetCallback.class, pluginSystemUIWidgetCallback, new FaceWidgetWallpaperUtilsWrapper$$ExternalSyntheticLambda0()).get());
                this.mCallbackMap.put(pluginSystemUIWidgetCallback, faceWidgetSystemUIWidgetCallbackWrapper);
                long j = i;
                Log.d("FaceWidgetWallpaperUtilsWrapper", "registerCallback: flags = " + KeyguardWallpaperColors.getChangeFlagsString(j));
                if (z) {
                    if (WallpaperEventNotifier.getInstance() != null) {
                        WallpaperEventNotifier.getInstance().registerCallback(true, faceWidgetSystemUIWidgetCallbackWrapper, j);
                    }
                } else {
                    WallpaperUtils.registerSystemUIWidgetCallback(faceWidgetSystemUIWidgetCallbackWrapper, j);
                }
            }
        }
    }

    public final synchronized void removeCallback(boolean z, PluginSystemUIWidgetCallback pluginSystemUIWidgetCallback) {
        if (pluginSystemUIWidgetCallback != null) {
            if (this.mCallbackMap.containsKey(pluginSystemUIWidgetCallback)) {
                FaceWidgetSystemUIWidgetCallbackWrapper faceWidgetSystemUIWidgetCallbackWrapper = (FaceWidgetSystemUIWidgetCallbackWrapper) this.mCallbackMap.get(pluginSystemUIWidgetCallback);
                this.mCallbackMap.remove(pluginSystemUIWidgetCallback);
                if (z) {
                    if (WallpaperEventNotifier.getInstance() != null) {
                        WallpaperEventNotifier.getInstance().removeCallback(true, faceWidgetSystemUIWidgetCallbackWrapper);
                    }
                } else {
                    WallpaperUtils.removeSystemUIWidgetCallback(faceWidgetSystemUIWidgetCallbackWrapper);
                }
            }
        }
    }
}
