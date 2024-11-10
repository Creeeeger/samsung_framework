package com.android.internal.util.jobs;

import android.os.RemoteException;
import android.util.ExceptionUtils;
import com.android.internal.util.jobs.FunctionalUtils;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class FunctionalUtils {

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingChecked2Consumer {
        void accept(Object obj);
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingCheckedConsumer {
        void accept(Object obj);
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingCheckedFunction {
        Object apply(Object obj);
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingCheckedSupplier {
        Object get();
    }

    public static Consumer ignoreRemoteException(RemoteExceptionIgnoringConsumer remoteExceptionIgnoringConsumer) {
        return remoteExceptionIgnoringConsumer;
    }

    public static Runnable uncheckExceptions(ThrowingRunnable throwingRunnable) {
        return throwingRunnable;
    }

    public static BiConsumer uncheckExceptions(ThrowingBiConsumer throwingBiConsumer) {
        return throwingBiConsumer;
    }

    public static Consumer uncheckExceptions(ThrowingConsumer throwingConsumer) {
        return throwingConsumer;
    }

    public static Function uncheckExceptions(ThrowingFunction throwingFunction) {
        return throwingFunction;
    }

    public static Supplier uncheckExceptions(ThrowingSupplier throwingSupplier) {
        return throwingSupplier;
    }

    public static Runnable handleExceptions(final ThrowingRunnable throwingRunnable, final Consumer consumer) {
        return new Runnable() { // from class: com.android.internal.util.jobs.FunctionalUtils$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FunctionalUtils.lambda$handleExceptions$0(FunctionalUtils.ThrowingRunnable.this, consumer);
            }
        };
    }

    public static /* synthetic */ void lambda$handleExceptions$0(ThrowingRunnable throwingRunnable, Consumer consumer) {
        try {
            throwingRunnable.run();
        } catch (Throwable th) {
            consumer.accept(th);
        }
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingRunnable extends Runnable {
        void runOrThrow();

        @Override // java.lang.Runnable
        default void run() {
            try {
                runOrThrow();
            } catch (Exception e) {
                throw ExceptionUtils.propagate(e);
            }
        }
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingSupplier extends Supplier {
        Object getOrThrow();

        @Override // java.util.function.Supplier
        default Object get() {
            try {
                return getOrThrow();
            } catch (Exception e) {
                throw ExceptionUtils.propagate(e);
            }
        }
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingConsumer extends Consumer {
        void acceptOrThrow(Object obj);

        @Override // java.util.function.Consumer
        default void accept(Object obj) {
            try {
                acceptOrThrow(obj);
            } catch (Exception e) {
                throw ExceptionUtils.propagate(e);
            }
        }
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface RemoteExceptionIgnoringConsumer extends Consumer {
        void acceptOrThrow(Object obj);

        @Override // java.util.function.Consumer
        default void accept(Object obj) {
            try {
                acceptOrThrow(obj);
            } catch (RemoteException unused) {
            }
        }
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingFunction extends Function {
        Object applyOrThrow(Object obj);

        @Override // java.util.function.Function
        default Object apply(Object obj) {
            try {
                return applyOrThrow(obj);
            } catch (Exception e) {
                throw ExceptionUtils.propagate(e);
            }
        }
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingBiFunction extends BiFunction {
        Object applyOrThrow(Object obj, Object obj2);

        @Override // java.util.function.BiFunction
        default Object apply(Object obj, Object obj2) {
            try {
                return applyOrThrow(obj, obj2);
            } catch (Exception e) {
                throw ExceptionUtils.propagate(e);
            }
        }
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ThrowingBiConsumer extends BiConsumer {
        void acceptOrThrow(Object obj, Object obj2);

        @Override // java.util.function.BiConsumer
        default void accept(Object obj, Object obj2) {
            try {
                acceptOrThrow(obj, obj2);
            } catch (Exception e) {
                throw ExceptionUtils.propagate(e);
            }
        }
    }

    public static String getLambdaName(Object obj) {
        int indexOf;
        String obj2 = obj.toString();
        int indexOf2 = obj2.indexOf("-$$");
        if (indexOf2 == -1 || (indexOf = obj2.indexOf(36, indexOf2 + 3)) == -1) {
            return obj2;
        }
        int i = indexOf + 1;
        int indexOf3 = obj2.indexOf(36, i);
        if (indexOf3 == -1) {
            return obj2.substring(0, indexOf2 - 1) + "$Lambda";
        }
        return obj2.substring(0, indexOf2) + obj2.substring(i, indexOf3) + "$Lambda";
    }
}
