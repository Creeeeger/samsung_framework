package com.android.systemui.power.sound;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.VibrationEffect;
import android.provider.Settings;
import android.util.Log;
import com.android.systemui.PowerUiRune;
import com.samsung.android.media.SemSoundAssistantManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ChargingSound extends PowerUiSound {
    public final AnonymousClass1 mChargingSoundVibrationHandler;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.power.sound.ChargingSound$1] */
    public ChargingSound(Context context, int i) {
        super(context, i);
        this.mChargingSoundVibrationHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.systemui.power.sound.ChargingSound.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                Log.e("PowerUiSound.Charging", "This case is abnormal!!");
                                return;
                            } else {
                                ChargingSound.this.playVibration(112, -1, VibrationEffect.SemMagnitudeType.TYPE_TOUCH);
                                return;
                            }
                        }
                        ChargingSound.this.playVibration(111, -1, VibrationEffect.SemMagnitudeType.TYPE_TOUCH);
                        return;
                    }
                    ChargingSound.this.playSound(2, 1);
                    return;
                }
                ChargingSound.this.playSound(1, 1);
            }
        };
    }

    @Override // com.android.systemui.power.sound.PowerUiSound
    public final boolean checkCondition() {
        if (this.mAudioManager != null) {
            Log.i("PowerUiSound.Charging", "Check charging sound condition");
            int semGetCurrentDeviceType = this.mAudioManager.semGetCurrentDeviceType();
            if (PowerUiRune.AUDIO_DISABLE_HEADSET_CHARGING_SOUND) {
                if (semGetCurrentDeviceType == 3 || semGetCurrentDeviceType == 4) {
                    Log.w("PowerUiSound.Charging", "Should skip charging sound headset noise model...");
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    @Override // com.android.systemui.power.sound.PowerUiSound
    public final void playSoundAndVibration() {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        Log.i("PowerUiSound.Charging", "playSoundAndVibration Charging sound");
        Context context = this.mContext;
        boolean z4 = true;
        if (Settings.Secure.getIntForUser(context.getContentResolver(), "charging_sounds_enabled", 1, -2) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (Settings.Secure.getIntForUser(context.getContentResolver(), "charging_vibration_enabled", 1, -2) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (checkCommonCondition()) {
            int i2 = 4;
            AnonymousClass1 anonymousClass1 = this.mChargingSoundVibrationHandler;
            if (z) {
                new SemSoundAssistantManager(context).setFastAudioOpenMode();
                int i3 = this.mChargingType;
                if (i3 != 3 && i3 != 4) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (z3) {
                    i = 2;
                } else {
                    i = 1;
                }
                anonymousClass1.sendMessageDelayed(anonymousClass1.obtainMessage(i), 100);
            }
            if (z2) {
                int i4 = this.mChargingType;
                if (i4 != 3 && i4 != 4) {
                    z4 = false;
                }
                if (!z4) {
                    i2 = 3;
                }
                anonymousClass1.sendMessageDelayed(anonymousClass1.obtainMessage(i2), 180);
            }
        }
    }
}
