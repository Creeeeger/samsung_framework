package com.android.systemui.plugins;

import android.graphics.Rect;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ClockFaceEvents {
    void onFontSettingChanged(float f);

    void onRegionDarknessChanged(boolean z);

    void onTargetRegionChanged(Rect rect);

    void onTimeTick();
}
