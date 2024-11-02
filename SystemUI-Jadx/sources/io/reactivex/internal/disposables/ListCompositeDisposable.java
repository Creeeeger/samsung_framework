package io.reactivex.internal.disposables;

import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.schedulers.ScheduledRunnable;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ListCompositeDisposable implements Disposable, DisposableContainer {
    public volatile boolean disposed;
    public List resources;

    public ListCompositeDisposable() {
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public final boolean add(Disposable disposable) {
        int i = ObjectHelper.$r8$clinit;
        if (!this.disposed) {
            synchronized (this) {
                if (!this.disposed) {
                    List list = this.resources;
                    if (list == null) {
                        list = new LinkedList();
                        this.resources = list;
                    }
                    list.add(disposable);
                    return true;
                }
            }
        }
        disposable.dispose();
        return false;
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public final boolean delete(Disposable disposable) {
        int i = ObjectHelper.$r8$clinit;
        if (disposable != null) {
            if (this.disposed) {
                return false;
            }
            synchronized (this) {
                if (this.disposed) {
                    return false;
                }
                List list = this.resources;
                if (list != null && list.remove(disposable)) {
                    return true;
                }
                return false;
            }
        }
        throw new NullPointerException("Disposable item is null");
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
            List list = this.resources;
            ArrayList arrayList = null;
            this.resources = null;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    try {
                        ((Disposable) it.next()).dispose();
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(th);
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
            ((ScheduledRunnable) disposable).dispose();
            return true;
        }
        return false;
    }

    public ListCompositeDisposable(Disposable... disposableArr) {
        int i = ObjectHelper.$r8$clinit;
        if (disposableArr != null) {
            this.resources = new LinkedList();
            for (Disposable disposable : disposableArr) {
                ObjectHelper.requireNonNull(disposable, "Disposable item is null");
                ((LinkedList) this.resources).add(disposable);
            }
            return;
        }
        throw new NullPointerException("resources is null");
    }

    public ListCompositeDisposable(Iterable<? extends Disposable> iterable) {
        int i = ObjectHelper.$r8$clinit;
        if (iterable != null) {
            this.resources = new LinkedList();
            for (Disposable disposable : iterable) {
                ObjectHelper.requireNonNull(disposable, "Disposable item is null");
                ((LinkedList) this.resources).add(disposable);
            }
            return;
        }
        throw new NullPointerException("resources is null");
    }
}
