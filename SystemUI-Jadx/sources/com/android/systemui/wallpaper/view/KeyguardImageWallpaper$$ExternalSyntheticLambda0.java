package com.android.systemui.wallpaper.view;

import android.util.Log;
import com.android.systemui.wallpaper.tilt.TiltColorController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardImageWallpaper$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ KeyguardImageWallpaper f$0;

    public /* synthetic */ KeyguardImageWallpaper$$ExternalSyntheticLambda0(KeyguardImageWallpaper keyguardImageWallpaper) {
        this.f$0 = keyguardImageWallpaper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        KeyguardImageWallpaper keyguardImageWallpaper = this.f$0;
        TiltColorController tiltColorController = keyguardImageWallpaper.mTiltColorController;
        if (tiltColorController != null) {
            tiltColorController.setEnable(false);
            TiltColorController tiltColorController2 = keyguardImageWallpaper.mTiltColorController;
            tiltColorController2.getClass();
            Log.i("TiltColorController", "stop");
            tiltColorController2.setTiltSettingObserver(false);
            tiltColorController2.stopAllAnimations();
        }
    }
}
