package io.reactivex.disposables;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableContainer;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.OpenHashSet;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CompositeDisposable implements Disposable, DisposableContainer {
    public volatile boolean disposed;
    public OpenHashSet resources;

    public CompositeDisposable() {
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public final boolean add(Disposable disposable) {
        int i = ObjectHelper.$r8$clinit;
        if (!this.disposed) {
            synchronized (this) {
                if (!this.disposed) {
                    OpenHashSet openHashSet = this.resources;
                    if (openHashSet == null) {
                        openHashSet = new OpenHashSet();
                        this.resources = openHashSet;
                    }
                    openHashSet.add(disposable);
                    return true;
                }
            }
        }
        disposable.dispose();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004c A[Catch: all -> 0x0050, DONT_GENERATE, TryCatch #0 {, blocks: (B:9:0x000d, B:11:0x0011, B:13:0x0013, B:15:0x0017, B:21:0x004c, B:23:0x002d, B:25:0x0033, B:27:0x0037, B:29:0x003f, B:32:0x0045, B:35:0x004e), top: B:8:0x000d }] */
    @Override // io.reactivex.internal.disposables.DisposableContainer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean delete(io.reactivex.disposables.Disposable r8) {
        /*
            r7 = this;
            java.lang.String r0 = "disposables is null"
            int r1 = io.reactivex.internal.functions.ObjectHelper.$r8$clinit
            if (r8 == 0) goto L53
            boolean r0 = r7.disposed
            r1 = 0
            if (r0 == 0) goto Lc
            return r1
        Lc:
            monitor-enter(r7)
            boolean r0 = r7.disposed     // Catch: java.lang.Throwable -> L50
            if (r0 == 0) goto L13
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L50
            return r1
        L13:
            io.reactivex.internal.util.OpenHashSet r0 = r7.resources     // Catch: java.lang.Throwable -> L50
            if (r0 == 0) goto L4e
            java.lang.Object[] r2 = r0.keys     // Catch: java.lang.Throwable -> L50
            int r3 = r0.mask     // Catch: java.lang.Throwable -> L50
            int r4 = r8.hashCode()     // Catch: java.lang.Throwable -> L50
            r5 = -1640531527(0xffffffff9e3779b9, float:-9.713111E-21)
            int r4 = r4 * r5
            int r5 = r4 >>> 16
            r4 = r4 ^ r5
            r4 = r4 & r3
            r5 = r2[r4]     // Catch: java.lang.Throwable -> L50
            r6 = 1
            if (r5 != 0) goto L2d
            goto L3d
        L2d:
            boolean r5 = r5.equals(r8)     // Catch: java.lang.Throwable -> L50
            if (r5 == 0) goto L37
            r0.removeEntry(r4, r3, r2)     // Catch: java.lang.Throwable -> L50
            goto L48
        L37:
            int r4 = r4 + r6
            r4 = r4 & r3
            r5 = r2[r4]     // Catch: java.lang.Throwable -> L50
            if (r5 != 0) goto L3f
        L3d:
            r8 = r1
            goto L49
        L3f:
            boolean r5 = r5.equals(r8)     // Catch: java.lang.Throwable -> L50
            if (r5 == 0) goto L37
            r0.removeEntry(r4, r3, r2)     // Catch: java.lang.Throwable -> L50
        L48:
            r8 = r6
        L49:
            if (r8 != 0) goto L4c
            goto L4e
        L4c:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L50
            return r6
        L4e:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L50
            return r1
        L50:
            r8 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L50
            throw r8
        L53:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.disposables.CompositeDisposable.delete(io.reactivex.disposables.Disposable):boolean");
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (this.disposed) {
            return;
        }
        synchronized (this) {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            OpenHashSet openHashSet = this.resources;
            ArrayList arrayList = null;
            this.resources = null;
            if (openHashSet != null) {
                for (Object obj : openHashSet.keys) {
                    if (obj instanceof Disposable) {
                        try {
                            ((Disposable) obj).dispose();
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(th);
                        }
                    }
                }
                if (arrayList != null) {
                    if (arrayList.size() == 1) {
                        throw ExceptionHelper.wrapOrThrow((Throwable) arrayList.get(0));
                    }
                    throw new CompositeException(arrayList);
                }
            }
        }
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public final boolean remove(Disposable disposable) {
        if (delete(disposable)) {
            disposable.dispose();
            return true;
        }
        return false;
    }

    public CompositeDisposable(Disposable... disposableArr) {
        int i = ObjectHelper.$r8$clinit;
        if (disposableArr != null) {
            this.resources = new OpenHashSet(disposableArr.length + 1);
            for (Disposable disposable : disposableArr) {
                ObjectHelper.requireNonNull(disposable, "A Disposable in the disposables array is null");
                this.resources.add(disposable);
            }
            return;
        }
        throw new NullPointerException("disposables is null");
    }

    public CompositeDisposable(Iterable<? extends Disposable> iterable) {
        int i = ObjectHelper.$r8$clinit;
        if (iterable != null) {
            this.resources = new OpenHashSet();
            for (Disposable disposable : iterable) {
                ObjectHelper.requireNonNull(disposable, "A Disposable item in the disposables sequence is null");
                this.resources.add(disposable);
            }
            return;
        }
        throw new NullPointerException("disposables is null");
    }
}
