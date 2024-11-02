package android.speech.tts;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class AbstractSynthesisCallback implements SynthesisCallback {
    protected final boolean mClientIsUsingV2;

    public abstract void stop();

    public AbstractSynthesisCallback(boolean clientIsUsingV2) {
        this.mClientIsUsingV2 = clientIsUsingV2;
    }

    public int errorCodeOnStop() {
        return this.mClientIsUsingV2 ? -2 : -1;
    }
}
