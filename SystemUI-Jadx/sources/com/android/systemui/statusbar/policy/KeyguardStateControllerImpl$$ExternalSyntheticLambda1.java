package com.android.systemui.statusbar.policy;

import com.android.systemui.statusbar.policy.KeyguardStateController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardStateControllerImpl$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((KeyguardStateController.Callback) obj).onPrimaryBouncerShowingChanged();
                return;
            case 1:
                ((KeyguardStateController.Callback) obj).onKeyguardGoingAwayChanged();
                return;
            case 2:
                ((KeyguardStateController.Callback) obj).onKeyguardDismissAmountChanged();
                return;
            case 3:
                ((KeyguardStateController.Callback) obj).onLaunchTransitionFadingAwayChanged();
                return;
            case 4:
                ((KeyguardStateController.Callback) obj).onKeyguardShowingChanged();
                return;
            default:
                ((KeyguardStateController.Callback) obj).onUnlockedChanged();
                return;
        }
    }
}
