package com.android.systemui.plugins;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public enum ClockTickRate {
    PER_MINUTE(2),
    PER_SECOND(1),
    PER_FRAME(0);

    private final int value;

    ClockTickRate(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
