package kotlinx.coroutines;

import kotlin.Result;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ResumeAwaitOnCompletion extends JobNode {
    public final CancellableContinuationImpl continuation;

    public ResumeAwaitOnCompletion(CancellableContinuationImpl cancellableContinuationImpl) {
        this.continuation = cancellableContinuationImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    public final void invoke(Throwable th) {
        Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = getJob().getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
        boolean z = state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally;
        CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
        if (z) {
            int i = Result.$r8$clinit;
            cancellableContinuationImpl.resumeWith(new Result.Failure(((CompletedExceptionally) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).cause));
        } else {
            int i2 = Result.$r8$clinit;
            cancellableContinuationImpl.resumeWith(JobSupportKt.unboxState(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines));
        }
    }
}
