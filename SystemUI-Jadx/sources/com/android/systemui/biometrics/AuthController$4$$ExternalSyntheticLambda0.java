package com.android.systemui.biometrics;

import android.hardware.biometrics.BiometricStateListener;
import com.android.systemui.biometrics.AuthController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AuthController$4$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BiometricStateListener f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ boolean f$3;

    public /* synthetic */ AuthController$4$$ExternalSyntheticLambda0(BiometricStateListener biometricStateListener, int i, int i2, boolean z, int i3) {
        this.$r8$classId = i3;
        this.f$0 = biometricStateListener;
        this.f$1 = i;
        this.f$2 = i2;
        this.f$3 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                AuthController.AnonymousClass4 anonymousClass4 = (AuthController.AnonymousClass4) this.f$0;
                AuthController.m74$$Nest$mhandleEnrollmentsChanged(AuthController.this, 2, this.f$1, this.f$2, this.f$3);
                return;
            default:
                AuthController.AnonymousClass5 anonymousClass5 = (AuthController.AnonymousClass5) this.f$0;
                AuthController.m74$$Nest$mhandleEnrollmentsChanged(AuthController.this, 8, this.f$1, this.f$2, this.f$3);
                return;
        }
    }
}
