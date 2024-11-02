package kotlinx.coroutines;

import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.ThreadContextKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class AbstractCoroutine extends JobSupport implements Continuation, CoroutineScope {
    public final CoroutineContext context;

    public AbstractCoroutine(CoroutineContext coroutineContext, boolean z, boolean z2) {
        super(z2);
        if (z) {
            initParentJob((Job) coroutineContext.get(Job.Key));
        }
        this.context = coroutineContext.plus(this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final String cancellationExceptionMessage() {
        return DebugStringsKt.getClassSimpleName(this).concat(" was cancelled");
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void handleOnCompletionException$external__kotlinx_coroutines__android_common__kotlinx_coroutines(CompletionHandlerException completionHandlerException) {
        CoroutineExceptionHandlerKt.handleCoroutineException(completionHandlerException, this.context);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.JobSupport
    public String nameString$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        return DebugStringsKt.getClassSimpleName(this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onCompletionInternal(Object obj) {
        boolean z;
        if (obj instanceof CompletedExceptionally) {
            CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
            Throwable th = completedExceptionally.cause;
            if (completedExceptionally._handled._value != 0) {
                z = true;
            } else {
                z = false;
            }
            onCancelled(th, z);
            return;
        }
        onCompleted(obj);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable m2571exceptionOrNullimpl = Result.m2571exceptionOrNullimpl(obj);
        if (m2571exceptionOrNullimpl != null) {
            obj = new CompletedExceptionally(m2571exceptionOrNullimpl, false, 2, null);
        }
        Object makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines = makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines(obj);
        if (makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            return;
        }
        afterResume(makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
    }

    public final void start(CoroutineStart coroutineStart, AbstractCoroutine abstractCoroutine, Function2 function2) {
        int i = CoroutineStart.WhenMappings.$EnumSwitchMapping$0[coroutineStart.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    return;
                }
                try {
                    CoroutineContext coroutineContext = this.context;
                    Object updateThreadContext = ThreadContextKt.updateThreadContext(coroutineContext, null);
                    try {
                        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
                        Object invoke = function2.invoke(abstractCoroutine, this);
                        if (invoke != CoroutineSingletons.COROUTINE_SUSPENDED) {
                            int i2 = Result.$r8$clinit;
                            resumeWith(invoke);
                            return;
                        }
                        return;
                    } finally {
                        ThreadContextKt.restoreThreadContext(coroutineContext, updateThreadContext);
                    }
                } catch (Throwable th) {
                    return;
                }
            }
            Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(this, function2, abstractCoroutine));
            int i3 = Result.$r8$clinit;
            intercepted.resumeWith(Unit.INSTANCE);
            return;
        }
        try {
            Continuation intercepted2 = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(this, function2, abstractCoroutine));
            int i4 = Result.$r8$clinit;
            DispatchedContinuationKt.resumeCancellableWith(intercepted2, Unit.INSTANCE, null);
        } finally {
            int i5 = Result.$r8$clinit;
            resumeWith(new Result.Failure(th));
        }
    }

    public void onCompleted(Object obj) {
    }

    public void onCancelled(Throwable th, boolean z) {
    }
}
