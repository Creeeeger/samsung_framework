package com.android.systemui.biometrics;

import com.android.systemui.biometrics.AuthController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AuthController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AuthController f$0;

    public /* synthetic */ AuthController$$ExternalSyntheticLambda1(AuthController authController, int i) {
        this.$r8$classId = i;
        this.f$0 = authController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.cancelIfOwnerIsNotInForeground();
                return;
            case 1:
                this.f$0.updateUdfpsLocation();
                return;
            default:
                AuthController authController = this.f$0;
                int i = AuthController.AnonymousClass1.$r8$clinit;
                authController.cancelIfOwnerIsNotInForeground();
                return;
        }
    }
}
