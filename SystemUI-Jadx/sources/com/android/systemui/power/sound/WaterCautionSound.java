package com.android.systemui.power.sound;

import android.content.Context;
import android.os.VibrationEffect;
import com.samsung.systemui.splugins.edgelightingplus.PluginEdgeLightingPlus;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WaterCautionSound extends PowerUiSound {
    public WaterCautionSound(Context context, int i) {
        super(context, i);
    }

    @Override // com.android.systemui.power.sound.PowerUiSound
    public final boolean checkCondition() {
        if (this.mRingerMode != 2) {
            this.mRingerMode = 2;
            return true;
        }
        return true;
    }

    @Override // com.android.systemui.power.sound.PowerUiSound
    public final void playSoundAndVibration() {
        playSound(7, 7);
        playVibration(9, PluginEdgeLightingPlus.VERSION, VibrationEffect.SemMagnitudeType.TYPE_NOTIFICATION);
    }
}
