package com.android.keyguard;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardSecPinBasedInputViewController f$0;

    public /* synthetic */ KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3(KeyguardSecPinBasedInputViewController keyguardSecPinBasedInputViewController, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardSecPinBasedInputViewController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.initializeBottomContainerView$1();
                return;
            default:
                this.f$0.mPasswordEntry.requestFocus();
                return;
        }
    }
}
