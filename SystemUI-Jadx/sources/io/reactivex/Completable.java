package io.reactivex;

import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.CallbackCompletableObserver;
import io.reactivex.internal.operators.completable.CompletableTimer;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class Completable {
    public static CompletableTimer timer(long j, TimeUnit timeUnit, Scheduler scheduler) {
        int i = ObjectHelper.$r8$clinit;
        if (timeUnit != null) {
            return new CompletableTimer(j, timeUnit, scheduler);
        }
        throw new NullPointerException("unit is null");
    }

    public final void subscribe(Action action) {
        int i = ObjectHelper.$r8$clinit;
        try {
            subscribeActual(new CallbackCompletableObserver(action));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void subscribeActual(CallbackCompletableObserver callbackCompletableObserver);
}
