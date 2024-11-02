package com.android.systemui.statusbar.phone;

import android.view.ViewGroup;
import android.view.WindowInsets;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface IndicatorGarden {
    IndicatorGardenContainer getCenterContainer();

    int getEssentialLeftWidth();

    int getEssentialRightWidth();

    WindowInsets getGardenWindowInsets();

    ViewGroup getHeightContainer();

    IndicatorGardenContainer getLeftContainer();

    IndicatorGardenContainer getRightContainer();

    ViewGroup getSidePaddingContainer();

    void updateGarden(IndicatorGardenModel indicatorGardenModel, IndicatorGardenInputProperties indicatorGardenInputProperties);
}
