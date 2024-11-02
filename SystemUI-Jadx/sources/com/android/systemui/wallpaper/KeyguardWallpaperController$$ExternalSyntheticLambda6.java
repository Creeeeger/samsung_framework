package com.android.systemui.wallpaper;

import android.util.Log;
import com.android.systemui.util.Assert;
import com.android.systemui.wallpaper.view.KeyguardBlurredWallpaper;
import com.android.systemui.wallpaper.view.SystemUIWallpaperBase;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardWallpaperController$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ KeyguardWallpaperController f$0;
    public final /* synthetic */ SystemUIWallpaperBase f$1;

    public /* synthetic */ KeyguardWallpaperController$$ExternalSyntheticLambda6(KeyguardWallpaperController keyguardWallpaperController, SystemUIWallpaperBase systemUIWallpaperBase) {
        this.f$0 = keyguardWallpaperController;
        this.f$1 = systemUIWallpaperBase;
    }

    @Override // java.lang.Runnable
    public final void run() {
        KeyguardWallpaperController keyguardWallpaperController = this.f$0;
        SystemUIWallpaperBase systemUIWallpaperBase = this.f$1;
        keyguardWallpaperController.getClass();
        Assert.isMainThread();
        if (keyguardWallpaperController.mBlurredView == null) {
            keyguardWallpaperController.mBlurredView = new KeyguardBlurredWallpaper(keyguardWallpaperController.mContext, keyguardWallpaperController.mUpdateMonitor, null, keyguardWallpaperController.mExecutor, keyguardWallpaperController.mWcgConsumer, false, systemUIWallpaperBase, keyguardWallpaperController.mOccluded, keyguardWallpaperController.mBlurFilter);
            Log.i("KeyguardWallpaperController", "initBlurredView: mBlurredView = " + keyguardWallpaperController.mBlurredView);
            keyguardWallpaperController.mRootView.addView(keyguardWallpaperController.mBlurredView);
            keyguardWallpaperController.mWallpaperChanged = true;
            keyguardWallpaperController.mIsBlurredViewAdded = true;
        }
    }
}
