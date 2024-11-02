package kotlinx.coroutines;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.ThreadContextKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class DispatchedTaskKt {
    public static final void resume(DispatchedTask dispatchedTask, Continuation continuation, boolean z) {
        Object successfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines;
        UndispatchedCoroutine undispatchedCoroutine;
        boolean clearThreadContext;
        Object takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines = dispatchedTask.takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
        Throwable exceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines = dispatchedTask.getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
        if (exceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines != null) {
            int i = Result.$r8$clinit;
            successfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines = new Result.Failure(exceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
        } else {
            int i2 = Result.$r8$clinit;
            successfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines = dispatchedTask.getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
        }
        if (z) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            Continuation continuation2 = dispatchedContinuation.continuation;
            Object obj = dispatchedContinuation.countOrElement;
            CoroutineContext context = continuation2.getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context, obj);
            if (updateThreadContext != ThreadContextKt.NO_THREAD_ELEMENTS) {
                undispatchedCoroutine = CoroutineContextKt.updateUndispatchedCompletion(continuation2, context, updateThreadContext);
            } else {
                undispatchedCoroutine = null;
            }
            try {
                dispatchedContinuation.continuation.resumeWith(successfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
                Unit unit = Unit.INSTANCE;
                if (undispatchedCoroutine != null) {
                    if (!clearThreadContext) {
                        return;
                    }
                }
                return;
            } finally {
                if (undispatchedCoroutine == null || undispatchedCoroutine.clearThreadContext()) {
                    ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                }
            }
        }
        continuation.resumeWith(successfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
    }
}
