package kotlinx.coroutines;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LazyStandaloneCoroutine extends StandaloneCoroutine {
    public final Continuation continuation;

    public LazyStandaloneCoroutine(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, false);
        this.continuation = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(this, function2, this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onStart() {
        try {
            Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(this.continuation);
            int i = Result.$r8$clinit;
            DispatchedContinuationKt.resumeCancellableWith(intercepted, Unit.INSTANCE, null);
        } catch (Throwable th) {
            int i2 = Result.$r8$clinit;
            resumeWith(new Result.Failure(th));
            throw th;
        }
    }
}
