package com.android.keyguard;

import com.samsung.android.bio.face.SemBioFaceManager;
import java.lang.ref.WeakReference;
import java.util.Optional;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecFaceAuthCallback extends SemBioFaceManager.AuthenticationCallback {
    public final WeakReference mDispatcher;

    public SecFaceAuthCallback(Consumer<SecFaceMsg> consumer) {
        this.mDispatcher = new WeakReference(consumer);
    }

    public final void onAuthenticationAcquired(final int i) {
        Optional.ofNullable((Consumer) this.mDispatcher.get()).ifPresent(new Consumer() { // from class: com.android.keyguard.SecFaceAuthCallback$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Consumer) obj).accept(SecFaceMsg.obtain(4, i, null, null));
            }
        });
    }

    public final void onAuthenticationError(int i, CharSequence charSequence) {
        Optional.ofNullable((Consumer) this.mDispatcher.get()).ifPresent(new SecFaceAuthCallback$$ExternalSyntheticLambda0(i, 0, charSequence));
    }

    public final void onAuthenticationFailed() {
        Optional.ofNullable((Consumer) this.mDispatcher.get()).ifPresent(new SecFaceAuthCallback$$ExternalSyntheticLambda3());
    }

    public final void onAuthenticationHelp(int i, CharSequence charSequence) {
        Optional.ofNullable((Consumer) this.mDispatcher.get()).ifPresent(new SecFaceAuthCallback$$ExternalSyntheticLambda0(i, 1, charSequence));
    }

    public final void onAuthenticationSucceeded(final SemBioFaceManager.AuthenticationResult authenticationResult) {
        Optional.ofNullable((Consumer) this.mDispatcher.get()).ifPresent(new Consumer() { // from class: com.android.keyguard.SecFaceAuthCallback$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Consumer) obj).accept(SecFaceMsg.obtain(2, -1, null, authenticationResult));
            }
        });
    }
}
