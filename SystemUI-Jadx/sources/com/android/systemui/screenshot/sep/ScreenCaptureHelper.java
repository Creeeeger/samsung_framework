package com.android.systemui.screenshot.sep;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.DisplayInfo;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.sec.ims.volte2.data.VolteConstants;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ScreenCaptureHelper {
    public static final String TAG;
    public int builtInDisplayId;
    public Bundle captureSharedBundle;
    public int capturedDisplayId;
    public Context displayContext;
    public int displayHeight;
    public int displayRotation;
    public int displayWidth;
    public boolean isNavigationBarVisible;
    public boolean isStatusBarVisible;
    public Bundle mBundle;
    public int navigationBarHeight;
    public int safeInsetBottom;
    public int safeInsetLeft;
    public int safeInsetRight;
    public int safeInsetTop;
    public int screenCaptureOrigin;
    public int screenCaptureSweepDirection;
    public int screenCaptureType;
    public float screenDegrees;
    public int screenHeight;
    public float screenNativeHeight;
    public float screenNativeWidth;
    public int screenWidth;
    public Rect stackBounds;
    public int statusBarHeight;
    public int windowMode;
    public final DisplayInfo displayInfo = new DisplayInfo();
    public Rect rectToCapture = new Rect();

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
        TAG = "ScreenCaptureHelper";
    }

    public static float getDegreesForRotation(Display display) {
        int realRotation = display.getRealRotation();
        if (realRotation != 1) {
            if (realRotation != 2) {
                if (realRotation != 3) {
                    return 0.0f;
                }
                return 90.0f;
            }
            return 180.0f;
        }
        return 270.0f;
    }

    public int getAnimationWindowType() {
        return VolteConstants.ErrorCode.REG_SUBSCRIBED;
    }

    public final void getExcludeSystemUIRect() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        String str = "old rectToCapture : " + this.rectToCapture;
        String str2 = TAG;
        Log.d(str2, str);
        int i6 = 0;
        if (this.isStatusBarVisible) {
            i = this.statusBarHeight;
        } else {
            i = 0;
        }
        if (this.isNavigationBarVisible) {
            i2 = this.navigationBarHeight;
        } else {
            i2 = 0;
        }
        int navBarPosition = ScreenshotUtils.getNavBarPosition(this.displayContext, i2, false);
        this.statusBarHeight = 0;
        this.navigationBarHeight = 0;
        int i7 = (int) this.screenDegrees;
        if (i7 != 0) {
            if (i7 != 90) {
                if (i7 != 180) {
                    if (i7 != 270) {
                        i = 0;
                        i5 = 0;
                        i4 = 0;
                    } else if (navBarPosition == 4) {
                        float f = this.screenNativeWidth;
                        i5 = ((int) f) - i;
                        i4 = (int) this.screenNativeHeight;
                        this.screenNativeWidth = f - (i + i2);
                        i = 0;
                        i6 = i2;
                    } else {
                        float f2 = this.screenNativeWidth;
                        i5 = ((int) f2) - i;
                        float f3 = this.screenNativeHeight;
                        this.screenNativeWidth = f2 - i;
                        this.screenNativeHeight = f3 - i2;
                        i = 0;
                        i4 = ((int) f3) - i2;
                    }
                } else {
                    i3 = (int) this.screenNativeWidth;
                    float f4 = this.screenNativeHeight;
                    i4 = ((int) f4) - i;
                    this.screenNativeHeight = f4 - (i + i2);
                    i = i2;
                }
            } else {
                if (navBarPosition == 4) {
                    float f5 = this.screenNativeWidth;
                    i5 = ((int) f5) - i2;
                    i4 = (int) this.screenNativeHeight;
                    this.screenNativeWidth = f5 - (i2 + i);
                } else {
                    float f6 = this.screenNativeWidth;
                    i5 = (int) f6;
                    float f7 = this.screenNativeHeight;
                    this.screenNativeWidth = f6 - i;
                    this.screenNativeHeight = f7 - i2;
                    i4 = ((int) f7) - i2;
                }
                i6 = i;
                i = 0;
            }
            Rect rect = this.rectToCapture;
            Intrinsics.checkNotNull(rect);
            rect.set(i6, i, i5, i4);
            Log.i(str2, "new getExcludeSystemUIRect : " + this.rectToCapture + " navigationBarPosition : " + navBarPosition);
            Unit unit = Unit.INSTANCE;
        }
        i3 = (int) this.screenNativeWidth;
        float f8 = this.screenNativeHeight;
        i4 = ((int) f8) - i2;
        this.screenNativeHeight = f8 - (i2 + i);
        i5 = i3;
        Rect rect2 = this.rectToCapture;
        Intrinsics.checkNotNull(rect2);
        rect2.set(i6, i, i5, i4);
        Log.i(str2, "new getExcludeSystemUIRect : " + this.rectToCapture + " navigationBarPosition : " + navBarPosition);
        Unit unit2 = Unit.INSTANCE;
    }

    public Rect getScreenshotEffectRect() {
        if (this.screenCaptureType == 1 && ScreenshotUtils.isExcludeSystemUI(this.displayContext)) {
            getExcludeSystemUIRect();
        }
        return this.rectToCapture;
    }

    public Rect getScreenshotRectToCapture() {
        if (this.screenCaptureType == 1 && ScreenshotUtils.isExcludeSystemUI(this.displayContext)) {
            getExcludeSystemUIRect();
        }
        return this.rectToCapture;
    }

    public void initializeCaptureType() {
        this.screenCaptureType = 1;
    }

    public void initializeScreenshotVariable() {
        Display display = ScreenshotUtils.getDisplay(this.capturedDisplayId, this.displayContext);
        DisplayInfo displayInfo = this.displayInfo;
        display.getDisplayInfo(displayInfo);
        int i = displayInfo.logicalWidth;
        this.displayWidth = i;
        this.screenWidth = i;
        int i2 = displayInfo.logicalHeight;
        this.displayHeight = i2;
        this.screenHeight = i2;
        this.screenNativeWidth = i;
        this.screenNativeHeight = i2;
        this.displayRotation = displayInfo.rotation;
        float degreesForRotation = getDegreesForRotation(display);
        this.screenDegrees = degreesForRotation;
        Log.d(TAG, "initializeScreenshotVariable: screenDegrees=" + degreesForRotation);
        if (this.screenDegrees > 0.0f) {
            float[] fArr = {this.screenNativeWidth, this.screenNativeHeight};
            Matrix matrix = new Matrix();
            matrix.reset();
            matrix.preRotate(-this.screenDegrees);
            matrix.mapPoints(fArr);
            fArr[0] = Math.abs(fArr[0]);
            float abs = Math.abs(fArr[1]);
            fArr[1] = abs;
            this.screenNativeWidth = fArr[0];
            this.screenNativeHeight = abs;
        }
        this.builtInDisplayId = this.capturedDisplayId;
    }

    public boolean isB5CoverScreenInReverseMode() {
        return false;
    }

    public boolean isB5ScreenEffect() {
        return false;
    }

    public boolean isLetterBoxHide() {
        return false;
    }

    public boolean isShowScreenshotAnimation() {
        return !(this instanceof ScreenCaptureHelperForPartial);
    }

    public final String toString() {
        int i = this.screenCaptureType;
        int i2 = this.screenCaptureSweepDirection;
        int i3 = this.capturedDisplayId;
        int i4 = this.screenCaptureOrigin;
        int i5 = this.safeInsetLeft;
        int i6 = this.safeInsetTop;
        int i7 = this.safeInsetRight;
        int i8 = this.safeInsetBottom;
        Bundle bundle = this.captureSharedBundle;
        int i9 = this.statusBarHeight;
        int i10 = this.navigationBarHeight;
        boolean z = this.isStatusBarVisible;
        boolean z2 = this.isNavigationBarVisible;
        Bundle bundle2 = this.mBundle;
        Context context = this.displayContext;
        int i11 = this.displayWidth;
        int i12 = this.displayHeight;
        int i13 = this.screenWidth;
        int i14 = this.screenHeight;
        Rect rect = this.rectToCapture;
        float f = this.screenDegrees;
        float f2 = this.screenNativeWidth;
        float f3 = this.screenNativeHeight;
        int i15 = this.builtInDisplayId;
        Rect rect2 = this.stackBounds;
        int i16 = this.windowMode;
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("ScreenCaptureHelper(screenCaptureType=", i, ", screenCaptureSweepDirection=", i2, ", capturedDisplayId=");
        AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i3, ", screenCaptureOrigin=", i4, ", safeInsetLeft=");
        AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i5, ", safeInsetTop=", i6, ", safeInsetRight=");
        AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i7, ", safeInsetBottom=", i8, ", captureSharedBundle=");
        m.append(bundle);
        m.append(", statusBarHeight=");
        m.append(i9);
        m.append(", navigationBarHeight=");
        m.append(i10);
        m.append(", isStatusBarVisible=");
        m.append(z);
        m.append(", isNavigationBarVisible=");
        m.append(z2);
        m.append(", mBundle=");
        m.append(bundle2);
        m.append(", displayContext=");
        m.append(context);
        m.append(", displayInfo=");
        m.append(this.displayInfo);
        m.append(", displayWidth=");
        m.append(i11);
        m.append(", displayHeight=");
        AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i12, ", screenWidth=", i13, ", screenHeight=");
        m.append(i14);
        m.append(", rectToCapture=");
        m.append(rect);
        m.append(", screenDegrees=");
        m.append(f);
        m.append(", screenNativeWidth=");
        m.append(f2);
        m.append(", screenNativeHeight=");
        m.append(f3);
        m.append(", builtInDisplayId=");
        m.append(i15);
        m.append(", stackBounds=");
        m.append(rect2);
        m.append(", windowMode=");
        m.append(i16);
        m.append(")");
        return m.toString();
    }

    public Bitmap onPostScreenshot(Bitmap bitmap) {
        return bitmap;
    }
}
