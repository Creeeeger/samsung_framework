package com.android.systemui.statusbar.phone;

import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.phone.ScrimController;
import com.android.systemui.util.AlarmTimeout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ScrimController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ScrimController$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        long j = 2500;
        switch (this.$r8$classId) {
            case 0:
                ScrimController scrimController = (ScrimController) this.f$0;
                AlarmTimeout alarmTimeout = scrimController.mTimeTicker;
                DozeParameters dozeParameters = scrimController.mDozeParameters;
                if (!dozeParameters.mControlScreenOffAnimation) {
                    j = dozeParameters.mAlwaysOnPolicy.wallpaperVisibilityDuration;
                }
                alarmTimeout.schedule(1, j);
                return;
            case 1:
                ScrimController scrimController2 = (ScrimController) this.f$0;
                ScrimController.Callback callback = scrimController2.mCallback;
                if (callback != null) {
                    callback.onDisplayBlanked();
                    scrimController2.mScreenBlankingCallbackCalled = true;
                }
                scrimController2.mBlankingTransitionRunnable = new ScrimController$$ExternalSyntheticLambda0(scrimController2, 3);
                if (scrimController2.mScreenOn) {
                    if (scrimController2.mSecLsScrimControlHelper.mKeyguardFastBioUnlockController.isFastWakeAndUnlockMode()) {
                        i = 300;
                    } else {
                        i = 32;
                    }
                } else {
                    i = 500;
                }
                ListPopupWindow$$ExternalSyntheticOutline0.m("Fading out scrims with delay: ", i, "ScrimController");
                scrimController2.mHandler.postDelayed(scrimController2.mBlankingTransitionRunnable, i);
                return;
            case 2:
                ScrimController scrimController3 = (ScrimController) this.f$0;
                AlarmTimeout alarmTimeout2 = scrimController3.mTimeTicker;
                DozeParameters dozeParameters2 = scrimController3.mDozeParameters;
                if (!dozeParameters2.mControlScreenOffAnimation) {
                    j = dozeParameters2.mAlwaysOnPolicy.wallpaperVisibilityDuration;
                }
                alarmTimeout2.schedule(1, j);
                return;
            case 3:
                ScrimController scrimController4 = (ScrimController) this.f$0;
                scrimController4.mBlankingTransitionRunnable = null;
                scrimController4.mPendingFrameCallback = null;
                scrimController4.mBlankScreen = false;
                scrimController4.updateScrims();
                return;
            case 4:
                ((ScrimController) this.f$0).updateScrims();
                return;
            default:
                ((AlarmTimeout) this.f$0).cancel();
                return;
        }
    }
}
