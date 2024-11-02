package com.android.systemui.power.sound;

import android.content.Context;
import android.os.VibrationEffect;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BatteryCautionSound extends PowerUiSound {
    public BatteryCautionSound(Context context, int i) {
        super(context, i);
    }

    @Override // com.android.systemui.power.sound.PowerUiSound
    public final boolean checkCondition() {
        return true;
    }

    @Override // com.android.systemui.power.sound.PowerUiSound
    public final void playSoundAndVibration() {
        if (checkCommonCondition()) {
            int i = this.mRingerMode;
            if (2 == i) {
                playSound(4, 5);
                return;
            }
            if (1 == i) {
                playVibration(7, -1, VibrationEffect.SemMagnitudeType.TYPE_TOUCH);
            } else if (i == 0) {
                Log.d("PowerUiSound.BatteryCaution", "RINGER_MODE_SILENT");
            } else {
                Log.e("PowerUiSound.BatteryCaution", "unknown RINGER_MODE");
            }
        }
    }
}
