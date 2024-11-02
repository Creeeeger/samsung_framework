package com.android.systemui.battery;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungBatteryState {
    public static final int BATTERY_HEALTH_OVERHEAT_LIMIT;
    public final int batteryHealth;
    public final int batteryOnline;
    public final int batteryStatus;
    public final boolean charging;
    public final boolean isDirectPowerMode;
    public final int level;
    public final boolean pluggedIn;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        BATTERY_HEALTH_OVERHEAT_LIMIT = 8;
    }

    public SamsungBatteryState(int i, boolean z, boolean z2, int i2, int i3, int i4, boolean z3) {
        this.level = i;
        this.pluggedIn = z;
        this.charging = z2;
        this.batteryStatus = i2;
        this.batteryHealth = i3;
        this.batteryOnline = i4;
        this.isDirectPowerMode = z3;
    }

    public SamsungBatteryState() {
        this(-1, false, false, 1, 1, 1, false);
    }
}
