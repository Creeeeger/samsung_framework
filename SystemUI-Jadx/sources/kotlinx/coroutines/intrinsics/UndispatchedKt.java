package kotlinx.coroutines.intrinsics;

import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.selects.SelectBuilderImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class UndispatchedKt {
    public static final void startCoroutineUnintercepted(SelectBuilderImpl selectBuilderImpl, Function2 function2, Object obj) {
        try {
            TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
            Object invoke = function2.invoke(obj, selectBuilderImpl);
            if (invoke != CoroutineSingletons.COROUTINE_SUSPENDED) {
                int i = Result.$r8$clinit;
                selectBuilderImpl.resumeWith(invoke);
            }
        } catch (Throwable th) {
            int i2 = Result.$r8$clinit;
            selectBuilderImpl.resumeWith(new Result.Failure(th));
        }
    }

    public static final Object startUndispatchedOrReturn(ScopeCoroutine scopeCoroutine, ScopeCoroutine scopeCoroutine2, Function2 function2) {
        Object completedExceptionally;
        Object makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines;
        try {
            TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
            completedExceptionally = function2.invoke(scopeCoroutine2, scopeCoroutine);
        } catch (Throwable th) {
            completedExceptionally = new CompletedExceptionally(th, false, 2, null);
        }
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (completedExceptionally != coroutineSingletons && (makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines = scopeCoroutine.makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines(completedExceptionally)) != JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            if (!(makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally)) {
                return JobSupportKt.unboxState(makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
            }
            throw ((CompletedExceptionally) makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines).cause;
        }
        return coroutineSingletons;
    }
}
