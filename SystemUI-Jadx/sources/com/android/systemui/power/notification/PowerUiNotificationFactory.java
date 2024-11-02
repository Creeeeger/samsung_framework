package com.android.systemui.power.notification;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PowerUiNotificationFactory {
    public static PowerUiNotification getNotification(int i, Context context) {
        switch (i) {
            case 1:
                return new LowBatteryNotification(context);
            case 2:
                return new ChargingNotification(context);
            case 3:
                return new IncompatibleChargerNotification(context);
            case 4:
                return new BatterySwellingNotification(context);
            case 5:
                return new HealthInterruptionNotification(context);
            case 6:
                return new OverheatNotification(context);
            case 7:
                return new SafeModeNotification(context);
            case 8:
                return new AbnormalPadNotification(context);
            case 9:
                return new BatteryProtectionNotification(context);
            case 10:
                return new OptimizationChargingNotification(context);
            default:
                return null;
        }
    }
}
