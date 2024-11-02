package io.reactivex.internal.disposables;

import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public enum DisposableHelper implements Disposable {
    DISPOSED;

    public static boolean setOnce(AtomicReference atomicReference, Disposable disposable) {
        int i = ObjectHelper.$r8$clinit;
        if (disposable != null) {
            if (!atomicReference.compareAndSet(null, disposable)) {
                disposable.dispose();
                if (atomicReference.get() != DISPOSED) {
                    RxJavaPlugins.onError(new ProtocolViolationException("Disposable already set!"));
                    return false;
                }
                return false;
            }
            return true;
        }
        throw new NullPointerException("d is null");
    }

    public static boolean validate(Disposable disposable, Disposable disposable2) {
        if (disposable2 == null) {
            RxJavaPlugins.onError(new NullPointerException("next is null"));
            return false;
        }
        if (disposable != null) {
            disposable2.dispose();
            RxJavaPlugins.onError(new ProtocolViolationException("Disposable already set!"));
            return false;
        }
        return true;
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
    }

    public static void dispose(AtomicReference atomicReference) {
        Disposable disposable;
        Disposable disposable2 = (Disposable) atomicReference.get();
        DisposableHelper disposableHelper = DISPOSED;
        if (disposable2 == disposableHelper || (disposable = (Disposable) atomicReference.getAndSet(disposableHelper)) == disposableHelper || disposable == null) {
            return;
        }
        disposable.dispose();
    }
}
