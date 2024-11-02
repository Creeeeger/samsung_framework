package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.view.DisplayCutout;
import com.samsung.android.feature.SemFloatingFeature;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class IndicatorGardenAlgorithm {
    public final Context context;
    public final float cornerRoundFromFloatingFeature;
    public final int cornerRoundSidePadding;
    public final IndicatorGardenInputProperties inputProperties;
    public final String name = getClass().getSimpleName();

    public IndicatorGardenAlgorithm(Context context, IndicatorGardenInputProperties indicatorGardenInputProperties) {
        this.context = context;
        this.inputProperties = indicatorGardenInputProperties;
        float parseFloat = Float.parseFloat(SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"));
        this.cornerRoundFromFloatingFeature = parseFloat;
        this.cornerRoundSidePadding = (int) (((10.0f - parseFloat) * parseFloat) - 1.0f);
    }

    public int calculateCameraTopMargin() {
        return 0;
    }

    public int calculateCenterContainerMaxWidth() {
        return 0;
    }

    public int calculateLeftContainerMaxWidth(IndicatorGarden indicatorGarden) {
        return 0;
    }

    public int calculateLeftPadding() {
        return 0;
    }

    public int calculateRightContainerMaxWidth(IndicatorGarden indicatorGarden) {
        return 0;
    }

    public int calculateRightPadding() {
        return 0;
    }

    public final int getDefaultSidePadding() {
        boolean z;
        int i;
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        if (indicatorGardenInputProperties.rotation == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z && (i = indicatorGardenInputProperties.cornerPaddingC) != 0) {
            return i;
        }
        if (Float.compare(this.cornerRoundFromFloatingFeature, 0.0f) != 0) {
            return (int) (this.cornerRoundSidePadding * indicatorGardenInputProperties.density);
        }
        return indicatorGardenInputProperties.defaultStartPadding;
    }

    public final boolean getHasCutoutForIndicator() {
        DisplayCutout displayCutout = this.inputProperties.displayCutout;
        if (displayCutout != null) {
            Intrinsics.checkNotNull(displayCutout);
            if (displayCutout.getSafeInsetTop() > 0) {
                return true;
            }
        }
        return false;
    }

    public final int getLeftContainerMaxWidth(IndicatorGarden indicatorGarden) {
        int i;
        int defaultSidePadding = getDefaultSidePadding();
        int defaultSidePadding2 = getDefaultSidePadding();
        IndicatorGardenContainer centerContainer = indicatorGarden.getCenterContainer();
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        if (centerContainer != null && centerContainer.isGardenVisible() && centerContainer.getGardenWidth() > 0) {
            return ((indicatorGardenInputProperties.statusBarWidth / 2) - defaultSidePadding) - (centerContainer.getGardenWidth() / 2);
        }
        IndicatorGardenContainer rightContainer = indicatorGarden.getRightContainer();
        if (rightContainer != null) {
            i = rightContainer.getGardenWidth();
        } else {
            i = 0;
        }
        return Math.max(((indicatorGardenInputProperties.statusBarWidth - Math.max(indicatorGarden.getEssentialRightWidth(), i)) - (defaultSidePadding + defaultSidePadding2)) - indicatorGardenInputProperties.defaultCenterPadding, indicatorGarden.getEssentialLeftWidth());
    }

    public final int getRightContainerMaxWidth(IndicatorGarden indicatorGarden) {
        int defaultSidePadding = getDefaultSidePadding();
        int defaultSidePadding2 = getDefaultSidePadding();
        IndicatorGardenContainer centerContainer = indicatorGarden.getCenterContainer();
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        if (centerContainer != null && centerContainer.isGardenVisible() && centerContainer.getGardenWidth() > 0) {
            return ((indicatorGardenInputProperties.statusBarWidth / 2) - defaultSidePadding2) - (centerContainer.getGardenWidth() / 2);
        }
        return Math.max(((indicatorGardenInputProperties.statusBarWidth - (defaultSidePadding + defaultSidePadding2)) - indicatorGarden.getEssentialLeftWidth()) - indicatorGardenInputProperties.defaultCenterPadding, indicatorGarden.getEssentialRightWidth());
    }

    public boolean hasCameraTopMargin() {
        return false;
    }

    public void initResources() {
    }
}
