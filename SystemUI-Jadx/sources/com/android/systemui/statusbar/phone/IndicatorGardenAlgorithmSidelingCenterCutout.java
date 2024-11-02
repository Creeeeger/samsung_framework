package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.view.DisplayCutout;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicatorGardenAlgorithmSidelingCenterCutout extends IndicatorGardenAlgorithm {
    public int cutoutLeft;
    public int cutoutRight;
    public final IndicatorCutoutUtil indicatorCutoutUtil;
    public final IndicatorGardenInputProperties inputProperties;

    public IndicatorGardenAlgorithmSidelingCenterCutout(Context context, IndicatorGardenInputProperties indicatorGardenInputProperties, IndicatorCutoutUtil indicatorCutoutUtil) {
        super(context, indicatorGardenInputProperties);
        this.inputProperties = indicatorGardenInputProperties;
        this.indicatorCutoutUtil = indicatorCutoutUtil;
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
        int i = this.inputProperties.statusBarWidth;
        if (i > 0) {
            return i / 4;
        }
        return Math.max((int) ((super.inputProperties.statusBarWidth - (getDefaultSidePadding() * 2)) / 3.0f), 0);
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateLeftContainerMaxWidth(IndicatorGarden indicatorGarden) {
        int i;
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        if (indicatorGardenInputProperties.isRTL()) {
            int i2 = indicatorGardenInputProperties.statusBarWidth;
            IndicatorGardenContainer centerContainer = indicatorGarden.getCenterContainer();
            int calculateRightPadding = (i2 / 2) - calculateRightPadding();
            if (centerContainer != null && centerContainer.isGardenVisible() && centerContainer.getGardenWidth() > 0) {
                i = calculateRightPadding - (centerContainer.getGardenWidth() / 2);
            } else {
                i = calculateRightPadding;
            }
            int i3 = i2 - this.cutoutRight;
            if (i3 > 0 && i3 > calculateRightPadding()) {
                return Math.min(i, i3 - calculateRightPadding());
            }
            return Math.min(i, calculateRightPadding);
        }
        if (getHasCutoutForIndicator()) {
            int calculateLeftPadding = this.cutoutLeft - calculateLeftPadding();
            int calculateRightPadding2 = (indicatorGardenInputProperties.statusBarWidth - calculateRightPadding()) - calculateLeftPadding();
            IndicatorGardenContainer rightContainer = indicatorGarden.getRightContainer();
            Intrinsics.checkNotNull(rightContainer);
            return Math.min(calculateLeftPadding, calculateRightPadding2 - rightContainer.getGardenWidth());
        }
        return getLeftContainerMaxWidth(indicatorGarden);
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateLeftPadding() {
        int i;
        if (this.indicatorCutoutUtil.isUDCMainDisplay()) {
            return getDefaultSidePadding();
        }
        DisplayCutout displayCutout = this.inputProperties.displayCutout;
        if (displayCutout != null) {
            i = displayCutout.getSafeInsetLeft();
        } else {
            i = 0;
        }
        return getDefaultSidePadding() + i;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateRightContainerMaxWidth(IndicatorGarden indicatorGarden) {
        int i;
        int i2;
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        if (indicatorGardenInputProperties.isRTL()) {
            IndicatorGardenContainer centerContainer = indicatorGarden.getCenterContainer();
            int i3 = indicatorGardenInputProperties.statusBarWidth / 2;
            if (getHasCutoutForIndicator()) {
                i = calculateLeftPadding();
            } else {
                i = 0;
            }
            int i4 = i3 - i;
            if (centerContainer != null && centerContainer.isGardenVisible() && centerContainer.getGardenWidth() > 0) {
                i2 = i4 - (centerContainer.getGardenWidth() / 2);
            } else {
                i2 = i4;
            }
            int calculateRightPadding = (indicatorGardenInputProperties.statusBarWidth - calculateRightPadding()) - calculateLeftPadding();
            IndicatorGardenContainer rightContainer = indicatorGarden.getRightContainer();
            Intrinsics.checkNotNull(rightContainer);
            int gardenWidth = calculateRightPadding - rightContainer.getGardenWidth();
            if (gardenWidth > 0) {
                return Math.min(i2, gardenWidth);
            }
            return Math.min(i2, i4);
        }
        return getRightContainerMaxWidth(indicatorGarden);
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final int calculateRightPadding() {
        int i;
        if (this.indicatorCutoutUtil.isUDCMainDisplay()) {
            return getDefaultSidePadding();
        }
        DisplayCutout displayCutout = this.inputProperties.displayCutout;
        if (displayCutout != null) {
            i = displayCutout.getSafeInsetRight();
        } else {
            i = 0;
        }
        return getDefaultSidePadding() + i;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final boolean hasCameraTopMargin() {
        boolean z;
        if (super.inputProperties.rotation == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z && getHasCutoutForIndicator()) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenAlgorithm
    public final void initResources() {
        DisplayCutout displayCutout = this.inputProperties.displayCutout;
        if (displayCutout != null) {
            this.cutoutLeft = displayCutout.getBoundingRectTop().left;
            this.cutoutRight = displayCutout.getBoundingRectTop().right;
        }
    }
}
