package com.android.systemui.plugins;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ClockFaceConfig {
    private final boolean hasCustomPositionUpdatedAnimation;
    private final boolean hasCustomWeatherDataDisplay;
    private final ClockTickRate tickRate;

    public ClockFaceConfig() {
        this(null, false, false, 7, null);
    }

    public static /* synthetic */ ClockFaceConfig copy$default(ClockFaceConfig clockFaceConfig, ClockTickRate clockTickRate, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            clockTickRate = clockFaceConfig.tickRate;
        }
        if ((i & 2) != 0) {
            z = clockFaceConfig.hasCustomWeatherDataDisplay;
        }
        if ((i & 4) != 0) {
            z2 = clockFaceConfig.hasCustomPositionUpdatedAnimation;
        }
        return clockFaceConfig.copy(clockTickRate, z, z2);
    }

    public final ClockTickRate component1() {
        return this.tickRate;
    }

    public final boolean component2() {
        return this.hasCustomWeatherDataDisplay;
    }

    public final boolean component3() {
        return this.hasCustomPositionUpdatedAnimation;
    }

    public final ClockFaceConfig copy(ClockTickRate clockTickRate, boolean z, boolean z2) {
        return new ClockFaceConfig(clockTickRate, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClockFaceConfig)) {
            return false;
        }
        ClockFaceConfig clockFaceConfig = (ClockFaceConfig) obj;
        if (this.tickRate == clockFaceConfig.tickRate && this.hasCustomWeatherDataDisplay == clockFaceConfig.hasCustomWeatherDataDisplay && this.hasCustomPositionUpdatedAnimation == clockFaceConfig.hasCustomPositionUpdatedAnimation) {
            return true;
        }
        return false;
    }

    public final boolean getHasCustomPositionUpdatedAnimation() {
        return this.hasCustomPositionUpdatedAnimation;
    }

    public final boolean getHasCustomWeatherDataDisplay() {
        return this.hasCustomWeatherDataDisplay;
    }

    public final ClockTickRate getTickRate() {
        return this.tickRate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.tickRate.hashCode() * 31;
        boolean z = this.hasCustomWeatherDataDisplay;
        int i = 1;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (hashCode + i2) * 31;
        boolean z2 = this.hasCustomPositionUpdatedAnimation;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return i3 + i;
    }

    public String toString() {
        ClockTickRate clockTickRate = this.tickRate;
        boolean z = this.hasCustomWeatherDataDisplay;
        boolean z2 = this.hasCustomPositionUpdatedAnimation;
        StringBuilder sb = new StringBuilder("ClockFaceConfig(tickRate=");
        sb.append(clockTickRate);
        sb.append(", hasCustomWeatherDataDisplay=");
        sb.append(z);
        sb.append(", hasCustomPositionUpdatedAnimation=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, z2, ")");
    }

    public ClockFaceConfig(ClockTickRate clockTickRate, boolean z, boolean z2) {
        this.tickRate = clockTickRate;
        this.hasCustomWeatherDataDisplay = z;
        this.hasCustomPositionUpdatedAnimation = z2;
    }

    public /* synthetic */ ClockFaceConfig(ClockTickRate clockTickRate, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ClockTickRate.PER_MINUTE : clockTickRate, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
    }
}
