package com.android.keyguard;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecPinViewController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardSecPinViewController f$0;

    public /* synthetic */ KeyguardSecPinViewController$$ExternalSyntheticLambda0(KeyguardSecPinViewController keyguardSecPinViewController, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardSecPinViewController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.verifyPasswordAndUnlock();
                return;
            default:
                this.f$0.updateMessageLayout();
                return;
        }
    }
}
