package kotlinx.coroutines;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.selects.SelectBuilderImpl;
import kotlinx.coroutines.selects.SelectInstance;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SelectAwaitOnCompletion extends JobNode {
    public final Function2 block;
    public final SelectInstance select;

    public SelectAwaitOnCompletion(SelectInstance selectInstance, Function2 function2) {
        this.select = selectInstance;
        this.block = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    public final void invoke(Throwable th) {
        SelectBuilderImpl selectBuilderImpl = (SelectBuilderImpl) this.select;
        if (selectBuilderImpl.trySelect()) {
            JobSupport job = getJob();
            Function2 function2 = this.block;
            Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = job.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
            if (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally) {
                selectBuilderImpl.resumeSelectWithException(((CompletedExceptionally) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).cause);
                return;
            }
            try {
                Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(selectBuilderImpl, function2, JobSupportKt.unboxState(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines)));
                int i = Result.$r8$clinit;
                DispatchedContinuationKt.resumeCancellableWith(intercepted, Unit.INSTANCE, null);
            } catch (Throwable th2) {
                int i2 = Result.$r8$clinit;
                selectBuilderImpl.resumeWith(new Result.Failure(th2));
                throw th2;
            }
        }
    }
}
