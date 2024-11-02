package com.android.systemui.screenshot.sep;

import android.content.Context;
import android.media.AudioManager;
import android.os.SystemProperties;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.Log;
import android.view.HapticFeedbackConstants;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.samsung.android.feature.SemCscFeature;
import com.sec.ims.configuration.DATA;
import com.sec.ims.presence.ServiceTuple;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenshotFeedbackController {
    public final ScreenshotCaptureSound mCaptureSound;
    public final Context mContext;
    public final Vibrator mVibrator;

    public ScreenshotFeedbackController(Context context) {
        this.mContext = context;
        ScreenshotCaptureSound screenshotCaptureSound = new ScreenshotCaptureSound(context);
        this.mCaptureSound = screenshotCaptureSound;
        synchronized (screenshotCaptureSound) {
            String[] strArr = ScreenshotCaptureSound.SOUND_FILES;
            int[] iArr = screenshotCaptureSound.mSoundIds;
            if (iArr[0] == -1) {
                iArr[0] = screenshotCaptureSound.mSoundPool.load(strArr[0], 1);
            }
            int[] iArr2 = screenshotCaptureSound.mForcedSoundIds;
            if (iArr2[0] == -1) {
                iArr2[0] = screenshotCaptureSound.mForcedSoundPool.load(strArr[0], 1);
            }
        }
        this.mVibrator = (Vibrator) context.getSystemService("vibrator");
    }

    public final void semPlayCameraSound() {
        boolean z;
        boolean z2;
        boolean equals = SystemProperties.get("service.camera.running", DATA.DM_FIELD_INDEX.PCSCF_DOMAIN).equals("1");
        boolean equals2 = SystemProperties.get("service.camera.rec.running", DATA.DM_FIELD_INDEX.PCSCF_DOMAIN).equals("1");
        boolean equals3 = SystemProperties.get("service.camera.sfs.running", DATA.DM_FIELD_INDEX.PCSCF_DOMAIN).equals("1");
        String str = ScreenshotUtils.VALUE_SUB_DISPLAY_POLICY;
        boolean equals4 = SystemProperties.get("service.bioface.authenticating", DATA.DM_FIELD_INDEX.PCSCF_DOMAIN).equals("1");
        Context context = this.mContext;
        if (Settings.Secure.getInt(context.getContentResolver(), "skip_adaptive_sound", 0) == 1) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("isCameraRunning = ", equals, ", isRecordRunning = ", equals2, ", isSmartStayRunning = ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, equals3, ", isVtCallRunning = false, isBioFaceRunning = ", equals4, ", isAdaptiveBrightness = ");
        m.append(z);
        Log.i("Screenshot", m.toString());
        boolean z3 = SemCscFeature.getInstance().getBoolean("CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera", false);
        ScreenshotCaptureSound screenshotCaptureSound = this.mCaptureSound;
        if (z3) {
            if (equals && ((!equals2) & (!equals3) & (!equals4)) && !z) {
                Log.i("Screenshot", "Camera is running. Play capture sound!");
                screenshotCaptureSound.play(true);
                return;
            }
            return;
        }
        int ringerMode = ((AudioManager) context.getSystemService(ServiceTuple.MEDIA_CAP_AUDIO)).getRingerMode();
        if (Settings.System.getInt(context.getContentResolver(), "csc_pref_camera_forced_shuttersound_key", 0) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 && equals && !equals3 && !equals4 && !z) {
            Log.i("Screenshot", "[forcedShutterSound] Camera is running!!!!");
            screenshotCaptureSound.play(true);
            return;
        }
        if (ringerMode == 2) {
            screenshotCaptureSound.play(false);
            return;
        }
        if (ringerMode == 1) {
            StringBuilder sb = new StringBuilder("SupportedVibrationType() : ");
            Vibrator vibrator = this.mVibrator;
            sb.append(vibrator.semGetSupportedVibrationType());
            Log.i("Screenshot", sb.toString());
            if (vibrator.semGetSupportedVibrationType() > 1) {
                vibrator.vibrate(VibrationEffect.semCreateHaptic(HapticFeedbackConstants.semGetVibrationIndex(4), -1, VibrationEffect.SemMagnitudeType.TYPE_MAX));
            } else if (vibrator.semGetSupportedVibrationType() == 1) {
                vibrator.vibrate(VibrationEffect.semCreateWaveform(HapticFeedbackConstants.semGetVibrationIndex(100), -1, VibrationEffect.SemMagnitudeType.TYPE_TOUCH));
            }
        }
    }
}
