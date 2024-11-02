package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.view.DisplayCutout;
import com.android.systemui.util.DeviceType;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicatorGardenAlgorithmCenterCutout extends IndicatorGardenAlgorithm {
    public int cutoutCropSize;
    public int cutoutLeft;
    public int cutoutRight;
    public final IndicatorGardenInputProperties inputProperties;

    public IndicatorGardenAlgorithmCenterCutout(Context context, IndicatorGardenInputProperties indicatorGardenInputProperties) {
        super(context, indicatorGardenInputProperties);
        this.inputProperties = indicatorGardenInputProperties;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateCameraTopMargin() {
        if (hasCameraTopMargin()) {
            return this.inputProperties.cutoutTopMarginB;
        }
        return 0;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateCenterContainerMaxWidth() {
        if (this.inputProperties.displayCutout != null) {
            return Math.abs(getCenterCutoutWidth());
        }
        return 0;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateLeftContainerMaxWidth(IndicatorGarden indicatorGarden) {
        DisplayCutout displayCutout;
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        int i = indicatorGardenInputProperties.statusBarWidth;
        if (getCenterCutoutWidth() > 0 && (displayCutout = indicatorGardenInputProperties.displayCutout) != null) {
            Intrinsics.checkNotNull(displayCutout);
            if (displayCutout.getSafeInsetTop() > 0) {
                return ((i / 2) - calculateLeftPadding()) - (getCenterCutoutWidth() / 2);
            }
        }
        return getLeftContainerMaxWidth(indicatorGarden);
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateLeftPadding() {
        int i;
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        if (indicatorGardenInputProperties.displayCutout != null && !DeviceType.isTablet()) {
            DisplayCutout displayCutout = indicatorGardenInputProperties.displayCutout;
            Intrinsics.checkNotNull(displayCutout);
            i = displayCutout.getSafeInsetLeft();
        } else {
            i = 0;
        }
        return getDefaultSidePadding() + i;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateRightContainerMaxWidth(IndicatorGarden indicatorGarden) {
        DisplayCutout displayCutout;
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        int i = indicatorGardenInputProperties.statusBarWidth;
        if (getCenterCutoutWidth() > 0 && (displayCutout = indicatorGardenInputProperties.displayCutout) != null) {
            Intrinsics.checkNotNull(displayCutout);
            if (displayCutout.getSafeInsetTop() > 0) {
                return ((i / 2) - calculateRightPadding()) - (getCenterCutoutWidth() / 2);
            }
        }
        return getRightContainerMaxWidth(indicatorGarden);
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateRightPadding() {
        int i;
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        if (indicatorGardenInputProperties.displayCutout != null && !DeviceType.isTablet()) {
            DisplayCutout displayCutout = indicatorGardenInputProperties.displayCutout;
            Intrinsics.checkNotNull(displayCutout);
            i = displayCutout.getSafeInsetRight();
        } else {
            i = 0;
        }
        return getDefaultSidePadding() + i;
    }

    public final int getCenterCutoutWidth() {
        int i = this.cutoutCropSize;
        if (i > 0) {
            return (this.cutoutRight - this.cutoutLeft) - i;
        }
        return (this.cutoutRight - this.cutoutLeft) + this.inputProperties.cutoutSidePaddingD;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final boolean hasCameraTopMargin() {
        boolean z;
        if (!getHasCutoutForIndicator()) {
            return false;
        }
        if (super.inputProperties.rotation == 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final void initResources() {
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        this.cutoutCropSize = indicatorGardenInputProperties.cutoutInnerPaddingD;
        DisplayCutout displayCutout = indicatorGardenInputProperties.displayCutout;
        if (displayCutout != null) {
            this.cutoutLeft = displayCutout.getBoundingRectTop().left;
            this.cutoutRight = displayCutout.getBoundingRectTop().right;
        }
    }
}
