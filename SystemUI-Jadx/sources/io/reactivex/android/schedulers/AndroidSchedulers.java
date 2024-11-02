package io.reactivex.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import io.reactivex.Scheduler;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AndroidSchedulers {
    public static final Scheduler MAIN_THREAD;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class MainHolder {
        public static final HandlerScheduler DEFAULT = new HandlerScheduler(new Handler(Looper.getMainLooper()), false);

        private MainHolder() {
        }
    }

    static {
        try {
            Scheduler scheduler = (Scheduler) new Callable() { // from class: io.reactivex.android.schedulers.AndroidSchedulers.1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return MainHolder.DEFAULT;
                }
            }.call();
            if (scheduler != null) {
                MAIN_THREAD = scheduler;
                return;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    private AndroidSchedulers() {
        throw new AssertionError("No instances.");
    }

    public static Scheduler mainThread() {
        Scheduler scheduler = MAIN_THREAD;
        if (scheduler != null) {
            return scheduler;
        }
        throw new NullPointerException("scheduler == null");
    }
}
