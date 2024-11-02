package com.android.systemui.wallpaper.view;

import android.graphics.Bitmap;
import android.view.MotionEvent;
import com.android.systemui.wallpaper.KeyguardWallpaperController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface SystemUIWallpaperBase {
    void cleanUp();

    Bitmap getCapturedWallpaper();

    Bitmap getCapturedWallpaperForBlur();

    default int getCurrentPosition() {
        return 0;
    }

    Bitmap getWallpaperBitmap();

    void handleTouchEvent(MotionEvent motionEvent);

    void onBackDropLayoutChange();

    void onFaceAuthError();

    void onFingerprintAuthSuccess(boolean z);

    void onKeyguardBouncerFullyShowingChanged(boolean z);

    void onKeyguardShowing(boolean z);

    void onOccluded(boolean z);

    void onPause();

    void onResume();

    void onUnlock();

    void reset();

    void update();

    void updateBlurState(boolean z);

    default void dispatchWallpaperCommand(String str) {
    }

    default void setStartPosition(int i) {
    }

    default void setThumbnailVisibility(int i) {
    }

    default void setTransitionAnimationListener(KeyguardWallpaperController.AnonymousClass4 anonymousClass4) {
    }

    default void updateDrawState(boolean z) {
    }

    default void updateThumbnail() {
    }
}
