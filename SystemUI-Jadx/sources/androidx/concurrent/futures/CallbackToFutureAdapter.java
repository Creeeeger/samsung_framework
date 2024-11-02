package androidx.concurrent.futures;

import androidx.concurrent.futures.AbstractResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CallbackToFutureAdapter {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Completer {
        public boolean attemptedSetting;
        public ResolvableFuture cancellationFuture = ResolvableFuture.create();
        public SafeFuture future;
        public Object tag;

        public final void finalize() {
            ResolvableFuture resolvableFuture;
            SafeFuture safeFuture = this.future;
            if (safeFuture != null && !safeFuture.isDone()) {
                FutureGarbageCollectedException futureGarbageCollectedException = new FutureGarbageCollectedException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.tag);
                SafeFuture.AnonymousClass1 anonymousClass1 = safeFuture.delegate;
                anonymousClass1.getClass();
                if (AbstractResolvableFuture.ATOMIC_HELPER.casValue(anonymousClass1, null, new AbstractResolvableFuture.Failure(futureGarbageCollectedException))) {
                    AbstractResolvableFuture.complete(anonymousClass1);
                }
            }
            if (!this.attemptedSetting && (resolvableFuture = this.cancellationFuture) != null) {
                resolvableFuture.set(null);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        
            if (r6 != false) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void set(java.lang.Object r6) {
            /*
                r5 = this;
                r0 = 1
                r5.attemptedSetting = r0
                androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r1 = r5.future
                r2 = 0
                r3 = 0
                if (r1 == 0) goto L23
                androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture$1 r1 = r1.delegate
                r1.getClass()
                if (r6 != 0) goto L12
                java.lang.Object r6 = androidx.concurrent.futures.AbstractResolvableFuture.NULL
            L12:
                androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper r4 = androidx.concurrent.futures.AbstractResolvableFuture.ATOMIC_HELPER
                boolean r6 = r4.casValue(r1, r2, r6)
                if (r6 == 0) goto L1f
                androidx.concurrent.futures.AbstractResolvableFuture.complete(r1)
                r6 = r0
                goto L20
            L1f:
                r6 = r3
            L20:
                if (r6 == 0) goto L23
                goto L24
            L23:
                r0 = r3
            L24:
                if (r0 == 0) goto L2c
                r5.tag = r2
                r5.future = r2
                r5.cancellationFuture = r2
            L2c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.concurrent.futures.CallbackToFutureAdapter.Completer.set(java.lang.Object):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
        
            if (r6 != false) goto L11;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void setException(java.lang.Throwable r6) {
            /*
                r5 = this;
                r0 = 1
                r5.attemptedSetting = r0
                androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r1 = r5.future
                r2 = 0
                r3 = 0
                if (r1 == 0) goto L24
                androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture$1 r1 = r1.delegate
                r1.getClass()
                androidx.concurrent.futures.AbstractResolvableFuture$Failure r4 = new androidx.concurrent.futures.AbstractResolvableFuture$Failure
                r4.<init>(r6)
                androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper r6 = androidx.concurrent.futures.AbstractResolvableFuture.ATOMIC_HELPER
                boolean r6 = r6.casValue(r1, r2, r4)
                if (r6 == 0) goto L20
                androidx.concurrent.futures.AbstractResolvableFuture.complete(r1)
                r6 = r0
                goto L21
            L20:
                r6 = r3
            L21:
                if (r6 == 0) goto L24
                goto L25
            L24:
                r0 = r3
            L25:
                if (r0 == 0) goto L2d
                r5.tag = r2
                r5.future = r2
                r5.cancellationFuture = r2
            L2d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.concurrent.futures.CallbackToFutureAdapter.Completer.setException(java.lang.Throwable):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    final class FutureGarbageCollectedException extends Throwable {
        public FutureGarbageCollectedException(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Resolver {
        Object attachCompleter(Completer completer);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SafeFuture implements ListenableFuture {
        public final WeakReference completerWeakReference;
        public final AnonymousClass1 delegate = new AbstractResolvableFuture() { // from class: androidx.concurrent.futures.CallbackToFutureAdapter.SafeFuture.1
            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            public final String pendingToString() {
                Completer completer = (Completer) SafeFuture.this.completerWeakReference.get();
                if (completer == null) {
                    return "Completer object has been garbage collected, future will fail soon";
                }
                return "tag=[" + completer.tag + "]";
            }
        };

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture$1] */
        public SafeFuture(Completer completer) {
            this.completerWeakReference = new WeakReference(completer);
        }

        @Override // java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            Completer completer = (Completer) this.completerWeakReference.get();
            boolean cancel = cancel(z);
            if (cancel && completer != null) {
                completer.tag = null;
                completer.future = null;
                completer.cancellationFuture.set(null);
            }
            return cancel;
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            return get();
        }

        @Override // java.util.concurrent.Future
        public final boolean isCancelled() {
            return this.delegate.value instanceof AbstractResolvableFuture.Cancellation;
        }

        @Override // java.util.concurrent.Future
        public final boolean isDone() {
            return isDone();
        }

        public final String toString() {
            return toString();
        }

        @Override // java.util.concurrent.Future
        public final Object get(long j, TimeUnit timeUnit) {
            return get(j, timeUnit);
        }
    }

    private CallbackToFutureAdapter() {
    }

    public static SafeFuture getFuture(Resolver resolver) {
        Completer completer = new Completer();
        SafeFuture safeFuture = new SafeFuture(completer);
        completer.future = safeFuture;
        completer.tag = resolver.getClass();
        try {
            Object attachCompleter = resolver.attachCompleter(completer);
            if (attachCompleter != null) {
                completer.tag = attachCompleter;
            }
        } catch (Exception e) {
            SafeFuture.AnonymousClass1 anonymousClass1 = safeFuture.delegate;
            anonymousClass1.getClass();
            if (AbstractResolvableFuture.ATOMIC_HELPER.casValue(anonymousClass1, null, new AbstractResolvableFuture.Failure(e))) {
                AbstractResolvableFuture.complete(anonymousClass1);
            }
        }
        return safeFuture;
    }
}
