package com.android.systemui.screenshot.sep;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.Display;
import android.view.DisplayInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenCaptureHelperForFlex extends ScreenCaptureHelper {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    @Override // com.android.systemui.screenshot.sep.ScreenCaptureHelper
    public final void initializeCaptureType() {
        this.screenCaptureType = 101;
    }

    @Override // com.android.systemui.screenshot.sep.ScreenCaptureHelper
    public final void initializeScreenshotVariable() {
        int i;
        int i2;
        int i3;
        int i4;
        Rect rect;
        Display display = ScreenshotUtils.getDisplay(this.capturedDisplayId, this.displayContext);
        DisplayInfo displayInfo = this.displayInfo;
        display.getDisplayInfo(displayInfo);
        this.displayWidth = displayInfo.logicalWidth;
        this.displayHeight = displayInfo.logicalHeight;
        this.displayRotation = displayInfo.rotation;
        this.screenDegrees = ScreenCaptureHelper.getDegreesForRotation(display);
        Bundle bundle = this.captureSharedBundle;
        if (bundle != null && (rect = (Rect) bundle.getParcelable("rect")) != null) {
            this.rectToCapture = rect;
        }
        Rect rect2 = this.rectToCapture;
        Intrinsics.checkNotNull(rect2);
        this.screenWidth = rect2.width();
        Rect rect3 = this.rectToCapture;
        Intrinsics.checkNotNull(rect3);
        this.screenHeight = rect3.height();
        int i5 = 0;
        if (this.isStatusBarVisible && ScreenshotUtils.isExcludeSystemUI(this.displayContext)) {
            i = this.statusBarHeight;
        } else {
            i = 0;
        }
        int i6 = (int) this.screenDegrees;
        if (i6 != 0) {
            if (i6 != 90) {
                if (i6 != 180) {
                    if (i6 != 270) {
                        i2 = 0;
                        i3 = 0;
                        i4 = 0;
                    } else {
                        int i7 = this.displayHeight;
                        Rect rect4 = this.rectToCapture;
                        Intrinsics.checkNotNull(rect4);
                        i5 = i7 - rect4.bottom;
                        Rect rect5 = this.rectToCapture;
                        Intrinsics.checkNotNull(rect5);
                        int i8 = rect5.left;
                        int i9 = this.displayHeight;
                        Rect rect6 = this.rectToCapture;
                        Intrinsics.checkNotNull(rect6);
                        int i10 = (i9 - rect6.top) - i;
                        Rect rect7 = this.rectToCapture;
                        Intrinsics.checkNotNull(rect7);
                        i4 = rect7.right;
                        i3 = i10;
                        i2 = i8;
                    }
                } else {
                    int i11 = this.displayWidth;
                    Rect rect8 = this.rectToCapture;
                    Intrinsics.checkNotNull(rect8);
                    i5 = i11 - rect8.right;
                    int i12 = this.displayHeight;
                    Rect rect9 = this.rectToCapture;
                    Intrinsics.checkNotNull(rect9);
                    int i13 = i12 - rect9.bottom;
                    int i14 = this.displayWidth;
                    Rect rect10 = this.rectToCapture;
                    Intrinsics.checkNotNull(rect10);
                    int i15 = i14 - rect10.left;
                    int i16 = this.displayHeight;
                    Rect rect11 = this.rectToCapture;
                    Intrinsics.checkNotNull(rect11);
                    i4 = (i16 - rect11.top) - i;
                    i2 = i13;
                    i3 = i15;
                }
            } else {
                Rect rect12 = this.rectToCapture;
                Intrinsics.checkNotNull(rect12);
                i5 = rect12.top + i;
                int i17 = this.displayWidth;
                Rect rect13 = this.rectToCapture;
                Intrinsics.checkNotNull(rect13);
                i2 = i17 - rect13.right;
                Rect rect14 = this.rectToCapture;
                Intrinsics.checkNotNull(rect14);
                i3 = rect14.bottom;
                int i18 = this.displayWidth;
                Rect rect15 = this.rectToCapture;
                Intrinsics.checkNotNull(rect15);
                i4 = i18 - rect15.left;
            }
        } else {
            Rect rect16 = this.rectToCapture;
            Intrinsics.checkNotNull(rect16);
            i5 = rect16.left;
            Rect rect17 = this.rectToCapture;
            Intrinsics.checkNotNull(rect17);
            i2 = i + rect17.top;
            Rect rect18 = this.rectToCapture;
            Intrinsics.checkNotNull(rect18);
            i3 = rect18.right;
            Rect rect19 = this.rectToCapture;
            Intrinsics.checkNotNull(rect19);
            i4 = rect19.bottom;
        }
        Rect rect20 = this.rectToCapture;
        Intrinsics.checkNotNull(rect20);
        rect20.set(i5, i2, i3, i4);
        Intrinsics.checkNotNull(this.rectToCapture);
        this.screenNativeWidth = r0.width();
        Intrinsics.checkNotNull(this.rectToCapture);
        this.screenNativeHeight = r0.height();
        this.builtInDisplayId = this.capturedDisplayId;
    }
}
