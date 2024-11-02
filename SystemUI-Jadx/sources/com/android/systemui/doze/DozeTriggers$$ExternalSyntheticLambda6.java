package com.android.systemui.doze;

import android.os.Process;
import com.android.systemui.biometrics.UdfpsController;
import com.android.systemui.biometrics.UdfpsControllerOverlay;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DozeTriggers$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ DozeTriggers f$0;
    public final /* synthetic */ float f$1;
    public final /* synthetic */ float f$2;
    public final /* synthetic */ float[] f$3;

    public /* synthetic */ DozeTriggers$$ExternalSyntheticLambda6(DozeTriggers dozeTriggers, float f, float f2, float[] fArr) {
        this.f$0 = dozeTriggers;
        this.f$1 = f;
        this.f$2 = f2;
        this.f$3 = fArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        DozeTriggers dozeTriggers = this.f$0;
        float f = this.f$1;
        float f2 = this.f$2;
        float[] fArr = this.f$3;
        dozeTriggers.getClass();
        final int i = (int) f;
        final int i2 = (int) f2;
        final float f3 = fArr[3];
        final float f4 = fArr[4];
        final UdfpsController udfpsController = dozeTriggers.mAuthController.mUdfpsController;
        if (udfpsController != null && !udfpsController.mIsAodInterruptActive) {
            if (!udfpsController.mKeyguardUpdateMonitor.isFingerprintDetectionRunning()) {
                if (!udfpsController.mFalsingManager.isFalseLongTap(1)) {
                    udfpsController.mKeyguardViewManager.showPrimaryBouncer(true);
                    udfpsController.mVibrator.vibrate(Process.myUid(), udfpsController.mContext.getOpPackageName(), UdfpsController.EFFECT_CLICK, "aod-lock-icon-longpress", UdfpsController.LOCK_ICON_VIBRATION_ATTRIBUTES);
                    return;
                }
                return;
            }
            UdfpsControllerOverlay udfpsControllerOverlay = udfpsController.mOverlay;
            if (udfpsControllerOverlay != null) {
                j = udfpsControllerOverlay.requestId;
            } else {
                j = -1;
            }
            final long j2 = j;
            Runnable runnable = new Runnable() { // from class: com.android.systemui.biometrics.UdfpsController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    UdfpsController udfpsController2 = UdfpsController.this;
                    long j3 = j2;
                    int i3 = i;
                    int i4 = i2;
                    float f5 = f4;
                    float f6 = f3;
                    udfpsController2.mIsAodInterruptActive = true;
                    udfpsController2.mCancelAodFingerUpAction = udfpsController2.mFgExecutor.executeDelayed(1000L, new UdfpsController$$ExternalSyntheticLambda3(udfpsController2, 1));
                    udfpsController2.onFingerDown(j3, -1, i3, i4, f5, f6, 0.0f, 0L, 0L, false);
                }
            };
            udfpsController.mAodInterruptRunnable = runnable;
            if (udfpsController.mScreenOn) {
                runnable.run();
                udfpsController.mAodInterruptRunnable = null;
            }
        }
    }
}
