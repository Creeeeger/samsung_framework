package com.android.systemui.power;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecBatteryStatsSnapshot {
    public boolean automaticTestMode;
    public int batteryHealth;
    public int batteryLevel;
    public long chargingTime;
    public int chargingType;
    public int currentBatteryMode;
    public boolean isHiccupState;
    public String optimizationChargingFinishTime;

    public final String toString() {
        return "SecBatteryStatsSnapshot{batteryLevel=" + this.batteryLevel + ", currentBatteryMode=" + this.currentBatteryMode + ", chargingTime=" + this.chargingTime + ", chargingType=" + this.chargingType + ", batteryHealth=" + this.batteryHealth + ", automaticTestMode=" + this.automaticTestMode + ", isHiccupState=" + this.isHiccupState + ", optChargingFinishTime=" + this.optimizationChargingFinishTime + '}';
    }
}
