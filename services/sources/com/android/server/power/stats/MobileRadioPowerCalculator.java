package com.android.server.power.stats;

import android.os.BatteryConsumer;
import android.os.BatteryStats;
import android.telephony.CellSignalStrength;
import android.util.Log;
import com.android.internal.os.PowerProfile;

/* loaded from: classes3.dex */
public class MobileRadioPowerCalculator extends PowerCalculator {
    public static final int NUM_SIGNAL_STRENGTH_LEVELS = CellSignalStrength.getNumSignalStrengthLevels();
    public static final BatteryConsumer.Key[] UNINITIALIZED_KEYS = new BatteryConsumer.Key[0];
    public final UsageBasedPowerEstimator mActivePowerEstimator;
    public final UsageBasedPowerEstimator mIdlePowerEstimator;
    public final UsageBasedPowerEstimator[] mIdlePowerEstimators = new UsageBasedPowerEstimator[NUM_SIGNAL_STRENGTH_LEVELS];
    public final PowerProfile mPowerProfile;
    public final UsageBasedPowerEstimator mScanPowerEstimator;
    public final UsageBasedPowerEstimator mSleepPowerEstimator;

    /* loaded from: classes3.dex */
    public class PowerAndDuration {
        public long remainingDurationMs;
        public double remainingPowerMah;
        public long totalAppDurationMs;
        public double totalAppPowerMah;

        public PowerAndDuration() {
        }
    }

    @Override // com.android.server.power.stats.PowerCalculator
    public boolean isPowerComponentSupported(int i) {
        return i == 8;
    }

    public MobileRadioPowerCalculator(PowerProfile powerProfile) {
        this.mPowerProfile = powerProfile;
        double averageBatteryDrainOrDefaultMa = powerProfile.getAverageBatteryDrainOrDefaultMa(4294967296L, Double.NaN);
        if (Double.isNaN(averageBatteryDrainOrDefaultMa)) {
            this.mSleepPowerEstimator = null;
        } else {
            this.mSleepPowerEstimator = new UsageBasedPowerEstimator(averageBatteryDrainOrDefaultMa);
        }
        double averageBatteryDrainOrDefaultMa2 = powerProfile.getAverageBatteryDrainOrDefaultMa(4563402752L, Double.NaN);
        if (Double.isNaN(averageBatteryDrainOrDefaultMa2)) {
            this.mIdlePowerEstimator = null;
        } else {
            this.mIdlePowerEstimator = new UsageBasedPowerEstimator(averageBatteryDrainOrDefaultMa2);
        }
        double averagePowerOrDefault = powerProfile.getAveragePowerOrDefault("radio.active", Double.NaN);
        if (Double.isNaN(averagePowerOrDefault)) {
            double averagePower = powerProfile.getAveragePower("modem.controller.rx") + 0.0d;
            int i = 0;
            while (true) {
                if (i >= NUM_SIGNAL_STRENGTH_LEVELS) {
                    break;
                }
                averagePower += powerProfile.getAveragePower("modem.controller.tx", i);
                i++;
            }
            averagePowerOrDefault = averagePower / (r9 + 1);
        }
        this.mActivePowerEstimator = new UsageBasedPowerEstimator(averagePowerOrDefault);
        if (!Double.isNaN(powerProfile.getAveragePowerOrDefault("radio.on", Double.NaN))) {
            for (int i2 = 0; i2 < NUM_SIGNAL_STRENGTH_LEVELS; i2++) {
                this.mIdlePowerEstimators[i2] = new UsageBasedPowerEstimator(powerProfile.getAveragePower("radio.on", i2));
            }
        } else {
            double averagePower2 = powerProfile.getAveragePower("modem.controller.idle");
            this.mIdlePowerEstimators[0] = new UsageBasedPowerEstimator((25.0d * averagePower2) / 180.0d);
            for (int i3 = 1; i3 < NUM_SIGNAL_STRENGTH_LEVELS; i3++) {
                this.mIdlePowerEstimators[i3] = new UsageBasedPowerEstimator(Math.max(1.0d, averagePower2 / 256.0d));
            }
        }
        this.mScanPowerEstimator = new UsageBasedPowerEstimator(powerProfile.getAveragePowerOrDefault("radio.scanning", 0.0d));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d3  */
    @Override // com.android.server.power.stats.PowerCalculator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void calculate(android.os.BatteryUsageStats.Builder r36, android.os.BatteryStats r37, long r38, long r40, android.os.BatteryUsageStatsQuery r42) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.power.stats.MobileRadioPowerCalculator.calculate(android.os.BatteryUsageStats$Builder, android.os.BatteryStats, long, long, android.os.BatteryUsageStatsQuery):void");
    }

    public final long calculateDuration(BatteryStats.Uid uid, int i) {
        return uid.getMobileRadioActiveTime(i) / 1000;
    }

    public final double calculateActiveModemPowerMah(BatteryStats batteryStats, long j) {
        long j2 = j / 1000;
        int numSignalStrengthLevels = CellSignalStrength.getNumSignalStrengthLevels();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        double d = 0.0d;
        while (i2 < 3) {
            int i3 = i2 == 2 ? 5 : 1;
            int i4 = i;
            while (i4 < i3) {
                boolean z2 = z;
                double d2 = d;
                int i5 = i;
                while (i5 < numSignalStrengthLevels) {
                    int i6 = i5;
                    int i7 = i3;
                    int i8 = i;
                    int i9 = i2;
                    long activeTxRadioDurationMs = batteryStats.getActiveTxRadioDurationMs(i2, i4, i6, j2);
                    if (activeTxRadioDurationMs != -1) {
                        double calcTxStatePowerMah = calcTxStatePowerMah(i9, i4, i6, activeTxRadioDurationMs);
                        if (!Double.isNaN(calcTxStatePowerMah)) {
                            d2 += calcTxStatePowerMah;
                            z2 = true;
                        }
                    }
                    i5 = i6 + 1;
                    i = i8;
                    i3 = i7;
                    i2 = i9;
                }
                int i10 = i3;
                int i11 = i;
                int i12 = i2;
                long activeRxRadioDurationMs = batteryStats.getActiveRxRadioDurationMs(i12, i4, j2);
                if (activeRxRadioDurationMs != -1) {
                    double calcRxStatePowerMah = calcRxStatePowerMah(i12, i4, activeRxRadioDurationMs);
                    if (!Double.isNaN(calcRxStatePowerMah)) {
                        d2 += calcRxStatePowerMah;
                        z = true;
                        d = d2;
                        i4++;
                        i2 = i12;
                        i = i11;
                        i3 = i10;
                    }
                }
                z = z2;
                d = d2;
                i4++;
                i2 = i12;
                i = i11;
                i3 = i10;
            }
            i2++;
            i = i;
        }
        int i13 = i;
        if (z) {
            return d;
        }
        long mobileRadioActiveTime = batteryStats.getMobileRadioActiveTime(j, i13) / 1000;
        if (mobileRadioActiveTime > 0) {
            return calcPowerFromRadioActiveDurationMah(mobileRadioActiveTime);
        }
        return 0.0d;
    }

    public static long buildModemPowerProfileKey(int i, int i2, int i3, int i4) {
        long j;
        long j2;
        long j3;
        long j4 = i != -1 ? 4294967296L | i : 4294967296L;
        if (i2 != -1) {
            if (i2 != 0) {
                if (i2 == 1) {
                    j3 = 1048576;
                } else if (i2 != 2) {
                    Log.w("MobRadioPowerCalculator", "Unexpected RadioAccessTechnology : " + i2);
                } else {
                    j3 = 2097152;
                }
                j4 |= j3;
            } else {
                j4 |= 0;
            }
        }
        if (i3 != -1) {
            if (i3 != 0) {
                if (i3 == 1) {
                    j2 = 65536;
                } else if (i3 == 2) {
                    j2 = 131072;
                } else if (i3 == 3) {
                    j2 = 196608;
                } else if (i3 != 4) {
                    Log.w("MobRadioPowerCalculator", "Unexpected NR frequency range : " + i3);
                } else {
                    j2 = 262144;
                }
                j4 |= j2;
            } else {
                j4 |= 0;
            }
        }
        if (i4 == -1) {
            return j4;
        }
        if (i4 == 0) {
            return j4 | 0;
        }
        if (i4 == 1) {
            j = 16777216;
        } else if (i4 == 2) {
            j = 33554432;
        } else if (i4 == 3) {
            j = 50331648;
        } else {
            if (i4 != 4) {
                Log.w("MobRadioPowerCalculator", "Unexpected transmission level : " + i4);
                return j4;
            }
            j = 67108864;
        }
        return j4 | j;
    }

    public double calcRxStatePowerMah(int i, int i2, long j) {
        long buildModemPowerProfileKey = buildModemPowerProfileKey(536870912, i, i2, -1);
        double averageBatteryDrainOrDefaultMa = this.mPowerProfile.getAverageBatteryDrainOrDefaultMa(buildModemPowerProfileKey, Double.NaN);
        if (!Double.isNaN(averageBatteryDrainOrDefaultMa)) {
            return (averageBatteryDrainOrDefaultMa * j) / 3600000.0d;
        }
        Log.w("MobRadioPowerCalculator", "Unavailable Power Profile constant for key 0x" + Long.toHexString(buildModemPowerProfileKey));
        return Double.NaN;
    }

    public double calcTxStatePowerMah(int i, int i2, int i3, long j) {
        long buildModemPowerProfileKey = buildModemPowerProfileKey(805306368, i, i2, i3);
        double averageBatteryDrainOrDefaultMa = this.mPowerProfile.getAverageBatteryDrainOrDefaultMa(buildModemPowerProfileKey, Double.NaN);
        if (!Double.isNaN(averageBatteryDrainOrDefaultMa)) {
            return (averageBatteryDrainOrDefaultMa * j) / 3600000.0d;
        }
        Log.w("MobRadioPowerCalculator", "Unavailable Power Profile constant for key 0x" + Long.toHexString(buildModemPowerProfileKey));
        return Double.NaN;
    }

    public double calcInactiveStatePowerMah(long j, long j2) {
        UsageBasedPowerEstimator usageBasedPowerEstimator = this.mSleepPowerEstimator;
        if (usageBasedPowerEstimator == null || this.mIdlePowerEstimator == null) {
            return Double.NaN;
        }
        return usageBasedPowerEstimator.calculatePower(j) + this.mIdlePowerEstimator.calculatePower(j2);
    }

    public double calcPowerFromRadioActiveDurationMah(long j) {
        return this.mActivePowerEstimator.calculatePower(j);
    }

    public double calcIdlePowerAtSignalStrengthMah(long j, int i) {
        return this.mIdlePowerEstimators[i].calculatePower(j);
    }

    public double calcScanTimePowerMah(long j) {
        return this.mScanPowerEstimator.calculatePower(j);
    }
}
