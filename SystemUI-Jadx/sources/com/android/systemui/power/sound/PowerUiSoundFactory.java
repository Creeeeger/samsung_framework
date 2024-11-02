package com.android.systemui.power.sound;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PowerUiSoundFactory {
    public static PowerUiSound getPowerUiSound(int i, Context context) {
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    if (i != 6) {
                        if (i != 7) {
                            return new ChargingSound(context, i);
                        }
                        return new UsbDamageCautionSound(context, i);
                    }
                    return new WaterCautionSound(context, i);
                }
                return new TemperatureLimitSound(context, i);
            }
            return new BatteryCautionSound(context, i);
        }
        return new LowBatterySound(context, i);
    }
}
