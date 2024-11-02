package com.android.systemui.screenshot.sep;

import android.graphics.Rect;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenCaptureHelperForB5CoverScreen extends ScreenCaptureHelper {
    @Override // com.android.systemui.screenshot.sep.ScreenCaptureHelper
    public final Rect getScreenshotEffectRect() {
        int i = this.screenWidth;
        int i2 = this.screenHeight;
        if (!isB5ScreenEffect()) {
            i2 -= this.safeInsetTop + this.safeInsetBottom;
        }
        Rect rect = new Rect();
        rect.set(0, 0, i, i2);
        return rect;
    }

    @Override // com.android.systemui.screenshot.sep.ScreenCaptureHelper
    public final Rect getScreenshotRectToCapture() {
        boolean isExcludeSystemUI = ScreenshotUtils.isExcludeSystemUI(this.displayContext);
        if (!isB5ScreenEffect()) {
            this.screenNativeHeight -= this.safeInsetTop + this.safeInsetBottom;
        } else if (ScreenshotUtils.isExcludeSystemUI(this.displayContext)) {
            this.screenNativeHeight -= this.navigationBarHeight;
        }
        Rect rect = this.rectToCapture;
        if (isB5CoverScreenInReverseMode() && isExcludeSystemUI) {
            rect.set(0, this.navigationBarHeight, (int) this.screenNativeWidth, (int) this.screenNativeHeight);
        } else {
            rect.set(0, 0, (int) this.screenNativeWidth, (int) this.screenNativeHeight);
        }
        return rect;
    }

    @Override // com.android.systemui.screenshot.sep.ScreenCaptureHelper
    public final boolean isB5CoverScreenInReverseMode() {
        boolean z;
        int navBarPosition = ScreenshotUtils.getNavBarPosition(this.displayContext, this.navigationBarHeight, true);
        if (this.isNavigationBarVisible) {
            if (ScreenCaptureHelper.getDegreesForRotation(ScreenshotUtils.getDisplay(this.capturedDisplayId, this.displayContext)) == 180.0f) {
                z = true;
            } else {
                z = false;
            }
            if (z && navBarPosition == 4) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.screenshot.sep.ScreenCaptureHelper
    public final boolean isB5ScreenEffect() {
        if ((!isLetterBoxHide() || this.isNavigationBarVisible) && !isB5CoverScreenInReverseMode()) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.screenshot.sep.ScreenCaptureHelper
    public final boolean isLetterBoxHide() {
        if (this.safeInsetTop <= 0 && this.safeInsetLeft <= 0 && this.safeInsetRight <= 0 && this.safeInsetBottom <= 0) {
            return false;
        }
        return true;
    }
}
