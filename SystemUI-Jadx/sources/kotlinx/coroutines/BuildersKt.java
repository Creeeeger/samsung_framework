package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class BuildersKt {
    public static final StandaloneCoroutine launch(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        boolean z;
        StandaloneCoroutine standaloneCoroutine;
        CoroutineContext newCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, coroutineContext);
        if (coroutineStart == CoroutineStart.LAZY) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            standaloneCoroutine = new LazyStandaloneCoroutine(newCoroutineContext, function2);
        } else {
            standaloneCoroutine = new StandaloneCoroutine(newCoroutineContext, true);
        }
        standaloneCoroutine.start(coroutineStart, standaloneCoroutine, function2);
        return standaloneCoroutine;
    }

    public static /* synthetic */ StandaloneCoroutine launch$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return launch(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    public static final Object runBlocking(CoroutineContext coroutineContext, Function2 function2) {
        EventLoop eventLoop;
        CoroutineContext newCoroutineContext;
        long j;
        CompletedExceptionally completedExceptionally;
        Thread currentThread = Thread.currentThread();
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key);
        if (continuationInterceptor == null) {
            ThreadLocalEventLoop.INSTANCE.getClass();
            eventLoop = ThreadLocalEventLoop.getEventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
            newCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext.plus(eventLoop));
        } else {
            if (continuationInterceptor instanceof EventLoop) {
            }
            ThreadLocalEventLoop.INSTANCE.getClass();
            eventLoop = (EventLoop) ThreadLocalEventLoop.ref.get();
            newCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext);
        }
        BlockingCoroutine blockingCoroutine = new BlockingCoroutine(newCoroutineContext, currentThread, eventLoop);
        blockingCoroutine.start(CoroutineStart.DEFAULT, blockingCoroutine, function2);
        EventLoop eventLoop2 = blockingCoroutine.eventLoop;
        if (eventLoop2 != null) {
            int i = EventLoop.$r8$clinit;
            eventLoop2.incrementUseCount(false);
        }
        while (!Thread.interrupted()) {
            try {
                if (eventLoop2 != null) {
                    j = eventLoop2.processNextEvent();
                } else {
                    j = Long.MAX_VALUE;
                }
                if (!(!(blockingCoroutine.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines() instanceof Incomplete))) {
                    LockSupport.parkNanos(blockingCoroutine, j);
                } else {
                    Object unboxState = JobSupportKt.unboxState(blockingCoroutine.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines());
                    if (unboxState instanceof CompletedExceptionally) {
                        completedExceptionally = (CompletedExceptionally) unboxState;
                    } else {
                        completedExceptionally = null;
                    }
                    if (completedExceptionally == null) {
                        return unboxState;
                    }
                    throw completedExceptionally.cause;
                }
            } finally {
                if (eventLoop2 != null) {
                    int i2 = EventLoop.$r8$clinit;
                    eventLoop2.decrementUseCount(false);
                }
            }
        }
        InterruptedException interruptedException = new InterruptedException();
        blockingCoroutine.cancelImpl$external__kotlinx_coroutines__android_common__kotlinx_coroutines(interruptedException);
        throw interruptedException;
    }

    public static final Object withContext(CoroutineContext coroutineContext, Function2 function2, Continuation continuation) {
        CoroutineContext foldCopies;
        Object unboxState;
        CoroutineContext context = continuation.getContext();
        boolean z = false;
        if (!((Boolean) coroutineContext.fold(Boolean.FALSE, CoroutineContextKt$hasCopyableElements$1.INSTANCE)).booleanValue()) {
            foldCopies = context.plus(coroutineContext);
        } else {
            foldCopies = CoroutineContextKt.foldCopies(context, coroutineContext, false);
        }
        JobKt.ensureActive(foldCopies);
        if (foldCopies == context) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(foldCopies, continuation);
            unboxState = UndispatchedKt.startUndispatchedOrReturn(scopeCoroutine, scopeCoroutine, function2);
        } else {
            ContinuationInterceptor.Key key = ContinuationInterceptor.Key;
            if (Intrinsics.areEqual(foldCopies.get(key), context.get(key))) {
                UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(foldCopies, continuation);
                Object updateThreadContext = ThreadContextKt.updateThreadContext(foldCopies, null);
                try {
                    Object startUndispatchedOrReturn = UndispatchedKt.startUndispatchedOrReturn(undispatchedCoroutine, undispatchedCoroutine, function2);
                    ThreadContextKt.restoreThreadContext(foldCopies, updateThreadContext);
                    unboxState = startUndispatchedOrReturn;
                } catch (Throwable th) {
                    ThreadContextKt.restoreThreadContext(foldCopies, updateThreadContext);
                    throw th;
                }
            } else {
                DispatchedCoroutine dispatchedCoroutine = new DispatchedCoroutine(foldCopies, continuation);
                try {
                    Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(dispatchedCoroutine, function2, dispatchedCoroutine));
                    int i = Result.$r8$clinit;
                    DispatchedContinuationKt.resumeCancellableWith(intercepted, Unit.INSTANCE, null);
                    AtomicInt atomicInt = dispatchedCoroutine._decision;
                    while (true) {
                        int i2 = atomicInt.value;
                        if (i2 != 0) {
                            if (i2 != 2) {
                                throw new IllegalStateException("Already suspended".toString());
                            }
                        } else if (dispatchedCoroutine._decision.compareAndSet(0, 1)) {
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                        unboxState = CoroutineSingletons.COROUTINE_SUSPENDED;
                    } else {
                        unboxState = JobSupportKt.unboxState(dispatchedCoroutine.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines());
                        if (unboxState instanceof CompletedExceptionally) {
                            throw ((CompletedExceptionally) unboxState).cause;
                        }
                    }
                } catch (Throwable th2) {
                    int i3 = Result.$r8$clinit;
                    dispatchedCoroutine.resumeWith(new Result.Failure(th2));
                    throw th2;
                }
            }
        }
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return unboxState;
    }
}
