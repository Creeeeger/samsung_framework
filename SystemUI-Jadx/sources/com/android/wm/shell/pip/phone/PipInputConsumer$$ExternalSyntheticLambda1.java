package com.android.wm.shell.pip.phone;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipInputConsumer$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PipInputConsumer f$0;

    public /* synthetic */ PipInputConsumer$$ExternalSyntheticLambda1(PipInputConsumer pipInputConsumer, int i) {
        this.$r8$classId = i;
        this.f$0 = pipInputConsumer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                PipInputConsumer pipInputConsumer = this.f$0;
                PipController$$ExternalSyntheticLambda9 pipController$$ExternalSyntheticLambda9 = pipInputConsumer.mRegistrationListener;
                if (pipController$$ExternalSyntheticLambda9 != null) {
                    if (pipInputConsumer.mInputEventReceiver != null) {
                        z = true;
                    }
                    pipController$$ExternalSyntheticLambda9.f$0.onRegistrationChanged(z);
                    return;
                }
                return;
            default:
                PipController$$ExternalSyntheticLambda9 pipController$$ExternalSyntheticLambda92 = this.f$0.mRegistrationListener;
                if (pipController$$ExternalSyntheticLambda92 != null) {
                    pipController$$ExternalSyntheticLambda92.f$0.onRegistrationChanged(false);
                    return;
                }
                return;
        }
    }
}
