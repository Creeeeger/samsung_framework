package com.android.keyguard;

import com.android.keyguard.KeyguardUpdateMonitor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((KeyguardUpdateMonitor.AnonymousClass2) this.f$0).this$0.updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_BIOMETRIC_ENABLED_ON_KEYGUARD);
                return;
            case 1:
                KeyguardUpdateMonitor.AnonymousClass18 anonymousClass18 = (KeyguardUpdateMonitor.AnonymousClass18) this.f$0;
                anonymousClass18.getClass();
                anonymousClass18.this$0.updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_TRIGGERED_ALL_AUTHENTICATORS_REGISTERED);
                return;
            default:
                KeyguardUpdateMonitor.AnonymousClass18 anonymousClass182 = (KeyguardUpdateMonitor.AnonymousClass18) this.f$0;
                anonymousClass182.getClass();
                anonymousClass182.this$0.updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_TRIGGERED_ENROLLMENTS_CHANGED);
                return;
        }
    }
}
