package com.android.systemui.vibrate;

import android.os.Vibrator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class VibratorType {
    public static VibratorType create(int i) {
        if (i != 1) {
            if (i != 2) {
                return new VibratorNone();
            }
            return new VibratorCoinDC();
        }
        return new VibratorLinear();
    }

    public abstract void playVibration(VibrationUtil vibrationUtil, int i);

    public abstract void setVibrator(Vibrator vibrator);
}
