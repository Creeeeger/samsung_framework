package com.android.systemui.wallpaper;

import android.util.Log;
import android.view.DisplayInfo;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.systemui.util.DeviceState;
import com.android.systemui.wallpaper.view.SystemUIWallpaper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FixedOrientationController {
    public boolean mIsFixedOrientationApplied;
    public int mLastForcedRotation;
    public int mLastHeight;
    public int mLastWidth;
    public final boolean mShouldEnableScreenRotation;
    public final View mTargetView;
    public final SystemUIWallpaper mWallpaperView;

    public FixedOrientationController(SystemUIWallpaper systemUIWallpaper) {
        this(systemUIWallpaper, systemUIWallpaper);
    }

    public final void applyPortraitRotation() {
        boolean z;
        boolean z2;
        View view = this.mTargetView;
        if (view == null) {
            return;
        }
        if (this.mLastForcedRotation != 0 || this.mIsFixedOrientationApplied) {
            clearPortraitRotation();
        }
        SystemUIWallpaper systemUIWallpaper = this.mWallpaperView;
        systemUIWallpaper.awaitCall();
        DisplayInfo displayInfo = systemUIWallpaper.mCurDisplayInfo;
        int i = displayInfo.logicalHeight;
        int i2 = displayInfo.logicalWidth;
        int i3 = displayInfo.rotation;
        boolean z3 = false;
        if (view.getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("w = ", i2, ", h = ", i, ", isRtl = ");
        m.append(z);
        m.append(", newR = ");
        m.append(i3);
        m.append(", oldR = ");
        TooltipPopup$$ExternalSyntheticOutline0.m(m, this.mLastForcedRotation, "FixedOrientationController");
        if (i3 == this.mLastForcedRotation && i == this.mLastHeight && i2 == this.mLastWidth) {
            Log.i("FixedOrientationController", "Same configuration.");
            return;
        }
        if (i2 == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (i == 0) {
            z3 = true;
        }
        if (z3 | z2) {
            return;
        }
        this.mLastForcedRotation = i3;
        this.mLastHeight = i;
        this.mLastWidth = i2;
        if (i3 == 1) {
            view.setRotation(-90.0f);
        } else if (i3 == 3) {
            view.setRotation(90.0f);
        } else if (i3 == 2) {
            view.setRotation(180.0f);
        } else {
            view.setRotation(0.0f);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            if (i3 != 1 && i3 != 3) {
                if (i2 <= i) {
                    i2 = i;
                    i = i2;
                }
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                Log.i("FixedOrientationController", "#2 port w = " + i + ", h = " + i2);
                layoutParams.height = i2;
                layoutParams.width = i;
            } else {
                if (i <= i2) {
                    i2 = i;
                    i = i2;
                }
                float f = (i - i2) / 2.0f;
                if (z) {
                    view.setTranslationX(-f);
                } else {
                    view.setTranslationX(f);
                }
                view.setTranslationY((i2 - i) / 2.0f);
                Log.i("FixedOrientationController", "#2 land w = " + i + ", h = " + i2);
                layoutParams.height = i;
                layoutParams.width = i2;
            }
            view.requestLayout();
            this.mIsFixedOrientationApplied = true;
        }
    }

    public final void clearPortraitRotation() {
        View view = this.mTargetView;
        if (view == null) {
            return;
        }
        Log.i("FixedOrientationController", "clearPortraitRotation");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        view.setRotation(0.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        this.mLastForcedRotation = 0;
        view.requestLayout();
        this.mIsFixedOrientationApplied = false;
    }

    public FixedOrientationController(SystemUIWallpaper systemUIWallpaper, View view) {
        this.mLastForcedRotation = 0;
        this.mLastWidth = -1;
        this.mLastHeight = -1;
        this.mIsFixedOrientationApplied = false;
        this.mWallpaperView = systemUIWallpaper;
        this.mTargetView = view;
        if (systemUIWallpaper == null) {
            return;
        }
        this.mShouldEnableScreenRotation = DeviceState.shouldEnableKeyguardScreenRotation(systemUIWallpaper.getContext());
    }
}
