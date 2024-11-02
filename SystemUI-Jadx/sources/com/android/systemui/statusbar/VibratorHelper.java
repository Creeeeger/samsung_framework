package com.android.systemui.statusbar;

import android.media.AudioAttributes;
import android.os.VibrationAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.view.HapticFeedbackConstants;
import com.android.systemui.BasicRune;
import com.android.systemui.util.SettingsHelper;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VibratorHelper {
    public final Executor mExecutor;
    public final SettingsHelper mSettingsHelper;
    public final Vibrator mVibrator;
    public static final VibrationAttributes TOUCH_VIBRATION_ATTRIBUTES = VibrationAttributes.createForUsage(18);
    public static final VibrationEffect BIOMETRIC_SUCCESS_VIBRATION_EFFECT = VibrationEffect.get(0);
    public static final VibrationEffect BIOMETRIC_ERROR_VIBRATION_EFFECT = VibrationEffect.get(1);
    public static final VibrationAttributes HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES = VibrationAttributes.createForUsage(50);

    public VibratorHelper(Vibrator vibrator, SettingsHelper settingsHelper) {
        this(vibrator, Executors.newSingleThreadExecutor(), settingsHelper);
    }

    public final void cancel() {
        if (!hasVibrator()) {
            return;
        }
        final Vibrator vibrator = this.mVibrator;
        Objects.requireNonNull(vibrator);
        this.mExecutor.execute(new Runnable() { // from class: com.android.systemui.statusbar.VibratorHelper$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                vibrator.cancel();
            }
        });
    }

    public final boolean hasVibrator() {
        Vibrator vibrator = this.mVibrator;
        if (vibrator != null && vibrator.hasVibrator()) {
            return true;
        }
        return false;
    }

    public final boolean isSupportDCMotorHapticFeedback() {
        if (BasicRune.NAVBAR_DC_MOTOR_HAPTIC_FEEDBACK && this.mVibrator.semGetSupportedVibrationType() == 1) {
            return true;
        }
        return false;
    }

    public final void vibrate(final int i) {
        if (hasVibrator()) {
            this.mExecutor.execute(new Runnable() { // from class: com.android.systemui.statusbar.VibratorHelper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    VibratorHelper vibratorHelper = VibratorHelper.this;
                    int i2 = i;
                    vibratorHelper.getClass();
                    vibratorHelper.mVibrator.vibrate(VibrationEffect.get(i2, false), VibratorHelper.TOUCH_VIBRATION_ATTRIBUTES);
                }
            });
        }
    }

    public final void vibrateButton() {
        if (this.mSettingsHelper.isHapticFeedbackEnabled()) {
            vibrate(VibrationEffect.semCreateWaveform(HapticFeedbackConstants.semGetVibrationIndex(100), -1, VibrationEffect.SemMagnitudeType.TYPE_TOUCH));
        }
    }

    public final void vibrateGesture() {
        boolean z;
        int semGetVibrationIndex;
        SettingsHelper settingsHelper = this.mSettingsHelper;
        settingsHelper.getClass();
        if (BasicRune.NAVBAR_GESTURE && settingsHelper.mItemLists.get("navigation_gestures_vibrate").getIntValue() == 0) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            if (isSupportDCMotorHapticFeedback()) {
                semGetVibrationIndex = HapticFeedbackConstants.semGetVibrationIndex(100);
            } else {
                semGetVibrationIndex = HapticFeedbackConstants.semGetVibrationIndex(23);
            }
            vibrate(VibrationEffect.semCreateWaveform(semGetVibrationIndex, -1, VibrationEffect.SemMagnitudeType.TYPE_TOUCH));
        }
    }

    public VibratorHelper(Vibrator vibrator, Executor executor, SettingsHelper settingsHelper) {
        this.mExecutor = executor;
        this.mVibrator = vibrator;
        this.mSettingsHelper = settingsHelper;
    }

    public final void vibrate(final int i, final String str, final VibrationEffect vibrationEffect, final String str2, final VibrationAttributes vibrationAttributes) {
        if (hasVibrator()) {
            this.mExecutor.execute(new Runnable() { // from class: com.android.systemui.statusbar.VibratorHelper$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    VibratorHelper vibratorHelper = VibratorHelper.this;
                    vibratorHelper.mVibrator.vibrate(i, str, vibrationEffect, str2, vibrationAttributes);
                }
            });
        }
    }

    public final void vibrate(final VibrationEffect vibrationEffect, final AudioAttributes audioAttributes) {
        if (hasVibrator()) {
            this.mExecutor.execute(new Runnable() { // from class: com.android.systemui.statusbar.VibratorHelper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VibratorHelper vibratorHelper = VibratorHelper.this;
                    vibratorHelper.mVibrator.vibrate(vibrationEffect, audioAttributes);
                }
            });
        }
    }

    public final void vibrate(final VibrationEffect vibrationEffect) {
        if (hasVibrator()) {
            this.mExecutor.execute(new Runnable() { // from class: com.android.systemui.statusbar.VibratorHelper$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    VibratorHelper vibratorHelper = VibratorHelper.this;
                    vibratorHelper.mVibrator.vibrate(vibrationEffect);
                }
            });
        }
    }
}
