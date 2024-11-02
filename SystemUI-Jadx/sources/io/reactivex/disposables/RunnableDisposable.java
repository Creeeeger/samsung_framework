package io.reactivex.disposables;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
final class RunnableDisposable extends ReferenceDisposable<Runnable> {
    private static final long serialVersionUID = -8219729196779211169L;

    public RunnableDisposable(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.disposables.ReferenceDisposable
    public final void onDisposed(Object obj) {
        ((Runnable) obj).run();
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("RunnableDisposable(disposed=");
        if (get() == null) {
            z = true;
        } else {
            z = false;
        }
        sb.append(z);
        sb.append(", ");
        sb.append(get());
        sb.append(")");
        return sb.toString();
    }
}
