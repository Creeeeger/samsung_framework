package com.android.systemui.screenshot.sep;

import android.graphics.Rect;
import android.view.WindowManager;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenshotViewUtils {
    static {
        new ScreenshotViewUtils();
    }

    private ScreenshotViewUtils() {
    }

    public static final WindowManager.LayoutParams getLayoutParams(ScreenCaptureHelper screenCaptureHelper) {
        WindowManager.LayoutParams layoutParams;
        boolean z;
        int animationWindowType = screenCaptureHelper.getAnimationWindowType();
        if (screenCaptureHelper instanceof ScreenCaptureHelperForFlex) {
            Rect screenshotRectToCapture = screenCaptureHelper.getScreenshotRectToCapture();
            if (screenCaptureHelper.screenDegrees == 0.0f) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                Intrinsics.checkNotNull(screenshotRectToCapture);
                layoutParams = new WindowManager.LayoutParams(screenshotRectToCapture.width(), screenshotRectToCapture.height(), animationWindowType, 69207432, -3);
            } else {
                Intrinsics.checkNotNull(screenshotRectToCapture);
                layoutParams = new WindowManager.LayoutParams(screenshotRectToCapture.height(), screenshotRectToCapture.width(), animationWindowType, 69207432, -3);
            }
            layoutParams.gravity = 48;
        } else {
            layoutParams = new WindowManager.LayoutParams(-1, -1, animationWindowType, 69207432, -3);
            layoutParams.gravity = 17;
        }
        layoutParams.screenOrientation = -1;
        layoutParams.layoutInDisplayCutoutMode = 1;
        layoutParams.setFitInsetsTypes(0);
        return layoutParams;
    }
}
