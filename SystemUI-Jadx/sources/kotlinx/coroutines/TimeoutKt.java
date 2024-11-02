package kotlinx.coroutines;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class TimeoutKt {
    public static final Object setupTimeout(TimeoutCoroutine timeoutCoroutine, Function2 function2) {
        Object completedExceptionally;
        Object makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines;
        timeoutCoroutine.invokeOnCompletion(new DisposeOnCompletion(DelayKt.getDelay(timeoutCoroutine.uCont.getContext()).invokeOnTimeout(timeoutCoroutine.time, timeoutCoroutine, timeoutCoroutine.context)));
        boolean z = false;
        try {
            TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
            completedExceptionally = function2.invoke(timeoutCoroutine, timeoutCoroutine);
        } catch (Throwable th) {
            completedExceptionally = new CompletedExceptionally(th, false, 2, null);
        }
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (completedExceptionally != coroutineSingletons && (makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines = timeoutCoroutine.makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines(completedExceptionally)) != JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            if (makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally) {
                Throwable th2 = ((CompletedExceptionally) makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines).cause;
                if (!(th2 instanceof TimeoutCancellationException) || ((TimeoutCancellationException) th2).coroutine != timeoutCoroutine) {
                    z = true;
                }
                if (!z) {
                    if (completedExceptionally instanceof CompletedExceptionally) {
                        throw ((CompletedExceptionally) completedExceptionally).cause;
                    }
                } else {
                    throw th2;
                }
            } else {
                completedExceptionally = JobSupportKt.unboxState(makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
            }
            return completedExceptionally;
        }
        return coroutineSingletons;
    }
}
