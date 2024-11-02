package com.samsung.systemui.splugins.navigationbar;

import android.graphics.Point;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface LayoutProvider {
    int getButtonDistanceSize(Point point, boolean z);

    int getButtonWidth(Point point, boolean z);

    String getGesturalLayout(boolean z, boolean z2);

    int getGestureWidth(Point point, boolean z);

    String getLayout(boolean z);

    String getLayout(boolean z, int i);

    int getSpaceSidePadding(Point point, boolean z);

    default int getSpaceSidePadding(Point point, boolean z, boolean z2) {
        return 0;
    }

    int getSpaceWidth(Point point, boolean z, boolean z2);

    int getVerticalLayoutID(boolean z);

    default void onSettingChanged(int i, String str) {
    }
}
