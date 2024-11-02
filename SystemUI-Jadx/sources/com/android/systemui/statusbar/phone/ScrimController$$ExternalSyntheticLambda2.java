package com.android.systemui.statusbar.phone;

import com.android.systemui.keyguard.shared.model.ScrimAlpha;
import com.android.systemui.keyguard.shared.model.TransitionState;
import com.android.systemui.keyguard.shared.model.TransitionStep;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ScrimController$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ScrimController f$0;

    public /* synthetic */ ScrimController$$ExternalSyntheticLambda2(ScrimController scrimController, int i) {
        this.$r8$classId = i;
        this.f$0 = scrimController;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                ScrimController scrimController = this.f$0;
                ScrimAlpha scrimAlpha = (ScrimAlpha) obj;
                scrimController.getClass();
                float f = scrimAlpha.frontAlpha;
                scrimController.mInFrontAlpha = f;
                scrimController.mScrimInFront.setViewAlpha(f);
                float f2 = scrimAlpha.notificationsAlpha;
                scrimController.mNotificationsAlpha = f2;
                scrimController.mNotificationsScrim.setViewAlpha(f2);
                float f3 = scrimAlpha.behindAlpha;
                scrimController.mBehindAlpha = f3;
                scrimController.mScrimBehind.setViewAlpha(f3);
                return;
            case 1:
                ScrimController scrimController2 = this.f$0;
                scrimController2.getClass();
                scrimController2.dispatchBackScrimState(((Float) obj).floatValue());
                return;
            default:
                ScrimController scrimController3 = this.f$0;
                scrimController3.getClass();
                TransitionState transitionState = ((TransitionStep) obj).transitionState;
                if (transitionState == TransitionState.RUNNING) {
                    z = true;
                } else {
                    z = false;
                }
                scrimController3.mIsBouncerToGoneTransitionRunning = z;
                if (transitionState == TransitionState.STARTED) {
                    scrimController3.mExpansionAffectsAlpha = false;
                    scrimController3.transitionTo(null, ScrimState.UNLOCKED);
                }
                if (transitionState == TransitionState.FINISHED || transitionState == TransitionState.CANCELED) {
                    scrimController3.mExpansionAffectsAlpha = true;
                    if (((KeyguardStateControllerImpl) scrimController3.mKeyguardStateController).mKeyguardFadingAway) {
                        scrimController3.mStatusBarKeyguardViewManager.onKeyguardFadedAway();
                    }
                    scrimController3.dispatchScrimsVisible();
                    return;
                }
                return;
        }
    }
}
