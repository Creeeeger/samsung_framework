package com.android.systemui.biometrics;

import com.android.systemui.biometrics.AuthContainerView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AuthContainerView$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ AuthContainerView$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                AuthContainerView authContainerView = (AuthContainerView) this.f$0;
                authContainerView.setVisibility(4);
                authContainerView.removeWindowIfAttached();
                return;
            case 1:
                ((AuthContainerView) this.f$0).animateAway(1, true);
                return;
            case 2:
                ((AuthContainerView) this.f$0).onDialogAnimatedIn();
                return;
            default:
                AuthContainerView.BiometricCallback biometricCallback = (AuthContainerView.BiometricCallback) this.f$0;
                biometricCallback.getClass();
                int i = AuthContainerView.$r8$clinit;
                biometricCallback.this$0.addCredentialView(false, true);
                return;
        }
    }
}
