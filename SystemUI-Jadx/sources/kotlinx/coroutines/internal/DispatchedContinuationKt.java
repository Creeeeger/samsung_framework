package kotlinx.coroutines.internal;

import com.samsung.android.knox.ex.peripheral.PeripheralBarcodeConstants;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CompletedWithCancellation;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class DispatchedContinuationKt {
    public static final Symbol UNDEFINED = new Symbol(PeripheralBarcodeConstants.Symbology.UNDEFINED);
    public static final Symbol REUSABLE_CLAIMED = new Symbol("REUSABLE_CLAIMED");

    /* JADX WARN: Finally extract failed */
    public static final void resumeCancellableWith(Continuation continuation, Object obj, Function1 function1) {
        Object completedExceptionally;
        UndispatchedCoroutine undispatchedCoroutine;
        if (continuation instanceof DispatchedContinuation) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            Throwable m2571exceptionOrNullimpl = Result.m2571exceptionOrNullimpl(obj);
            boolean z = false;
            if (m2571exceptionOrNullimpl == null) {
                if (function1 != null) {
                    completedExceptionally = new CompletedWithCancellation(obj, function1);
                } else {
                    completedExceptionally = obj;
                }
            } else {
                completedExceptionally = new CompletedExceptionally(m2571exceptionOrNullimpl, false, 2, null);
            }
            CoroutineDispatcher coroutineDispatcher = dispatchedContinuation.dispatcher;
            dispatchedContinuation.getContext();
            if (coroutineDispatcher.isDispatchNeeded()) {
                dispatchedContinuation._state = completedExceptionally;
                dispatchedContinuation.resumeMode = 1;
                dispatchedContinuation.dispatcher.dispatch(dispatchedContinuation.getContext(), dispatchedContinuation);
                return;
            }
            ThreadLocalEventLoop.INSTANCE.getClass();
            EventLoop eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines = ThreadLocalEventLoop.getEventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
            if (eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines.isUnconfinedLoopActive()) {
                dispatchedContinuation._state = completedExceptionally;
                dispatchedContinuation.resumeMode = 1;
                eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines.dispatchUnconfined(dispatchedContinuation);
                return;
            }
            eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines.incrementUseCount(true);
            try {
                Job job = (Job) dispatchedContinuation.getContext().get(Job.Key);
                if (job != null && !job.isActive()) {
                    CancellationException cancellationException = ((JobSupport) job).getCancellationException();
                    dispatchedContinuation.cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(completedExceptionally, cancellationException);
                    dispatchedContinuation.resumeWith(new Result.Failure(cancellationException));
                    z = true;
                }
                if (!z) {
                    Continuation continuation2 = dispatchedContinuation.continuation;
                    Object obj2 = dispatchedContinuation.countOrElement;
                    CoroutineContext context = continuation2.getContext();
                    Object updateThreadContext = ThreadContextKt.updateThreadContext(context, obj2);
                    if (updateThreadContext != ThreadContextKt.NO_THREAD_ELEMENTS) {
                        undispatchedCoroutine = CoroutineContextKt.updateUndispatchedCompletion(continuation2, context, updateThreadContext);
                    } else {
                        undispatchedCoroutine = null;
                    }
                    try {
                        dispatchedContinuation.continuation.resumeWith(obj);
                        Unit unit = Unit.INSTANCE;
                        if (undispatchedCoroutine == null || undispatchedCoroutine.clearThreadContext()) {
                            ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                        }
                    } catch (Throwable th) {
                        if (undispatchedCoroutine == null || undispatchedCoroutine.clearThreadContext()) {
                            ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                        }
                        throw th;
                    }
                }
                do {
                } while (eventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines.processUnconfinedEvent());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        continuation.resumeWith(obj);
    }
}
