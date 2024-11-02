package android.telephony.ims;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class ImsMmTelManager$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ ImsStateCallback f$0;

    public /* synthetic */ ImsMmTelManager$$ExternalSyntheticLambda2(ImsStateCallback imsStateCallback) {
        this.f$0 = imsStateCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.binderDied();
    }
}
