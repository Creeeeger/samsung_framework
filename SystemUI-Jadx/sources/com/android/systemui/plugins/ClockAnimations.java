package com.android.systemui.plugins;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ClockAnimations {
    void charge();

    void doze(float f);

    void enter();

    void fold(float f);

    void onPickerCarouselSwiping(float f);

    void onPositionUpdated(int i, int i2, float f);
}
