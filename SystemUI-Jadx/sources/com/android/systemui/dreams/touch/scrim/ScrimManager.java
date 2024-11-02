package com.android.systemui.dreams.touch.scrim;

import com.android.systemui.dreams.touch.BouncerSwipeTouchHandler;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScrimManager {
    public final ScrimController mBouncerScrimController;
    public final ScrimController mBouncerlessScrimController;
    public final HashSet mCallbacks;
    public ScrimController mCurrentController;
    public final Executor mExecutor;
    public final AnonymousClass1 mKeyguardStateCallback;
    public final KeyguardStateController mKeyguardStateController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.dreams.touch.scrim.ScrimManager$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements KeyguardStateController.Callback {
        public AnonymousClass1() {
        }

        @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
        public final void onKeyguardShowingChanged() {
            ScrimManager.this.mExecutor.execute(new Runnable() { // from class: com.android.systemui.dreams.touch.scrim.ScrimManager$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ScrimManager.this.updateController();
                }
            });
        }
    }

    public ScrimManager(Executor executor, ScrimController scrimController, ScrimController scrimController2, KeyguardStateController keyguardStateController) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mKeyguardStateCallback = anonymousClass1;
        this.mExecutor = executor;
        this.mCallbacks = new HashSet();
        this.mBouncerlessScrimController = scrimController2;
        this.mBouncerScrimController = scrimController;
        this.mKeyguardStateController = keyguardStateController;
        ((KeyguardStateControllerImpl) keyguardStateController).addCallback(anonymousClass1);
        updateController();
    }

    public final void updateController() {
        ScrimController scrimController;
        ScrimController scrimController2 = this.mCurrentController;
        if (((KeyguardStateControllerImpl) this.mKeyguardStateController).mCanDismissLockScreen) {
            scrimController = this.mBouncerlessScrimController;
        } else {
            scrimController = this.mBouncerScrimController;
        }
        this.mCurrentController = scrimController;
        if (scrimController2 == scrimController) {
            return;
        }
        this.mCallbacks.forEach(new Consumer() { // from class: com.android.systemui.dreams.touch.scrim.ScrimManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ScrimController scrimController3 = ScrimManager.this.mCurrentController;
                BouncerSwipeTouchHandler bouncerSwipeTouchHandler = ((BouncerSwipeTouchHandler.AnonymousClass1) obj).this$0;
                ScrimController scrimController4 = bouncerSwipeTouchHandler.mCurrentScrimController;
                if (scrimController4 != null) {
                    scrimController4.reset();
                }
                bouncerSwipeTouchHandler.mCurrentScrimController = scrimController3;
            }
        });
    }
}
