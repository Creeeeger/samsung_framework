package com.android.systemui.power.sound;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.net.Uri;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.Log;
import android.view.HapticFeedbackConstants;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.knox.CustomSdkMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.media.NotificationPlayer;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class PowerUiSound {
    public AudioManager mAudioManager;
    public int mChargingType;
    public final Context mContext;
    public boolean mIsInCall;
    public NotificationPlayer mNotificationPlayer;
    public int mRingerMode;
    public final int mSoundType;
    public Vibrator mVibrator;

    public PowerUiSound(Context context, int i) {
        this.mContext = context;
        this.mSoundType = i;
    }

    public final boolean checkCommonCondition() {
        boolean z;
        int i;
        boolean z2;
        CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).mCustomSdkMonitor;
        if (customSdkMonitor != null && customSdkMonitor.mChargerConnectionSoundEnabledState) {
            z = true;
        } else {
            z = false;
        }
        if (!z && this.mSoundType == 1) {
            Log.d("PowerUiSound", "checkCommonCondition : Knox Custom disabled SOUND_TYPE_CHARGER_CONNECTION");
            return false;
        }
        AudioManager audioManager = this.mAudioManager;
        if (audioManager != null) {
            i = audioManager.getMode();
            if (this.mAudioManager.semIsRecordActive(-1) && 3 != i) {
                Log.d("PowerUiSound", "checkCommonCondition : recording so doesn't play sound");
                return false;
            }
        } else {
            i = 0;
        }
        this.mRingerMode = 2;
        if (Settings.System.getIntForUser(this.mContext.getContentResolver(), "alertoncall_mode", 1, -2) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.mIsInCall || i == 3) {
            if (z2) {
                this.mRingerMode = 1;
            } else {
                Log.d("PowerUiSound", "checkCommonCondition : calling and doesn't notify during calls");
                return false;
            }
        }
        return checkCondition();
    }

    public abstract boolean checkCondition();

    public final void playSound(int i, int i2) {
        Context context = this.mContext;
        SeslColorSpectrumView$$ExternalSyntheticOutline0.m("playSound : type = ", i, "PowerUiSound");
        try {
            Uri parse = Uri.parse(SoundPathFinder.getSoundPath(i, context));
            HashSet hashSet = new HashSet();
            if (i == 1 || i == 2) {
                hashSet.add("FAST_TRACK");
            }
            this.mNotificationPlayer.play(context, parse, false, new AudioAttributes.Builder().setInternalLegacyStreamType(i2).replaceTags(hashSet).build());
        } catch (NullPointerException e) {
            Log.w("PowerUiSound", "playSound : NPE occur", e);
        }
    }

    public abstract void playSoundAndVibration();

    public final void playVibration(int i, int i2, VibrationEffect.SemMagnitudeType semMagnitudeType) {
        Log.i("PowerUiSound", "playVibration : index = " + i);
        VibrationEffect semCreateHaptic = VibrationEffect.semCreateHaptic(HapticFeedbackConstants.semGetVibrationIndex(i), -1, semMagnitudeType);
        if (i2 != -1) {
            semCreateHaptic.semSetMagnitude(i2);
        }
        Vibrator vibrator = this.mVibrator;
        if (vibrator != null) {
            vibrator.vibrate(semCreateHaptic);
        } else {
            Log.e("PowerUiSound", "playVibration : Charging vibration setting is on but Vibrator is null");
        }
    }
}
