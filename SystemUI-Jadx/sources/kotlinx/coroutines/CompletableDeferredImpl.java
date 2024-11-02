package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.selects.SelectBuilderImpl;
import kotlinx.coroutines.selects.SelectClause1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CompletableDeferredImpl extends JobSupport implements CompletableDeferred, SelectClause1 {
    public CompletableDeferredImpl(Job job) {
        super(true);
        initParentJob(job);
    }

    public final Object await(Continuation continuation) {
        Object unboxState;
        while (true) {
            Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
            if (!(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Incomplete)) {
                if (!(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally)) {
                    unboxState = JobSupportKt.unboxState(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
                } else {
                    throw ((CompletedExceptionally) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).cause;
                }
            } else if (startInternal(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines) >= 0) {
                JobSupport.AwaitContinuation awaitContinuation = new JobSupport.AwaitContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), this);
                awaitContinuation.initCancellability();
                awaitContinuation.invokeOnCancellation(new DisposeOnCancel(invokeOnCompletion(new ResumeAwaitOnCompletion(awaitContinuation))));
                unboxState = awaitContinuation.getResult();
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                break;
            }
        }
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        return unboxState;
    }

    @Override // kotlinx.coroutines.selects.SelectClause1
    public final void registerSelectClause1(SelectBuilderImpl selectBuilderImpl, Function2 function2) {
        Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines;
        do {
            state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
            if (!selectBuilderImpl.isSelected()) {
                if (!(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Incomplete)) {
                    if (selectBuilderImpl.trySelect()) {
                        if (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally) {
                            selectBuilderImpl.resumeSelectWithException(((CompletedExceptionally) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).cause);
                            return;
                        } else {
                            UndispatchedKt.startCoroutineUnintercepted(selectBuilderImpl, function2, JobSupportKt.unboxState(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines));
                            return;
                        }
                    }
                    return;
                }
            } else {
                return;
            }
        } while (startInternal(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines) != 0);
        selectBuilderImpl.disposeOnSelect(invokeOnCompletion(new SelectAwaitOnCompletion(selectBuilderImpl, function2)));
    }
}
