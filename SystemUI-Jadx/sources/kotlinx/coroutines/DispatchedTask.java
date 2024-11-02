package kotlinx.coroutines;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.scheduling.Task;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class DispatchedTask extends Task {
    public int resumeMode;

    public DispatchedTask(int i) {
        this.resumeMode = i;
    }

    public abstract Continuation getDelegate$external__kotlinx_coroutines__android_common__kotlinx_coroutines();

    public Throwable getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Object obj) {
        CompletedExceptionally completedExceptionally;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally == null) {
            return null;
        }
        return completedExceptionally.cause;
    }

    public final void handleFatalException(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        Intrinsics.checkNotNull(th);
        CoroutineExceptionHandlerKt.handleCoroutineException(new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th), getDelegate$external__kotlinx_coroutines__android_common__kotlinx_coroutines().getContext());
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        r6 = (kotlinx.coroutines.Job) r6.get(kotlinx.coroutines.Job.Key);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r12 = this;
            kotlinx.coroutines.scheduling.TaskContext r0 = r12.taskContext
            kotlin.coroutines.Continuation r1 = r12.getDelegate$external__kotlinx_coroutines__android_common__kotlinx_coroutines()     // Catch: java.lang.Throwable -> La6
            kotlinx.coroutines.internal.DispatchedContinuation r1 = (kotlinx.coroutines.internal.DispatchedContinuation) r1     // Catch: java.lang.Throwable -> La6
            kotlin.coroutines.Continuation r2 = r1.continuation     // Catch: java.lang.Throwable -> La6
            java.lang.Object r1 = r1.countOrElement     // Catch: java.lang.Throwable -> La6
            kotlin.coroutines.CoroutineContext r3 = r2.getContext()     // Catch: java.lang.Throwable -> La6
            java.lang.Object r1 = kotlinx.coroutines.internal.ThreadContextKt.updateThreadContext(r3, r1)     // Catch: java.lang.Throwable -> La6
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.internal.ThreadContextKt.NO_THREAD_ELEMENTS     // Catch: java.lang.Throwable -> La6
            r5 = 0
            if (r1 == r4) goto L1e
            kotlinx.coroutines.UndispatchedCoroutine r4 = kotlinx.coroutines.CoroutineContextKt.updateUndispatchedCompletion(r2, r3, r1)     // Catch: java.lang.Throwable -> La6
            goto L1f
        L1e:
            r4 = r5
        L1f:
            kotlin.coroutines.CoroutineContext r6 = r2.getContext()     // Catch: java.lang.Throwable -> L99
            java.lang.Object r7 = r12.takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()     // Catch: java.lang.Throwable -> L99
            java.lang.Throwable r8 = r12.getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(r7)     // Catch: java.lang.Throwable -> L99
            if (r8 != 0) goto L42
            int r9 = r12.resumeMode     // Catch: java.lang.Throwable -> L99
            r10 = 1
            if (r9 == r10) goto L37
            r11 = 2
            if (r9 != r11) goto L36
            goto L37
        L36:
            r10 = 0
        L37:
            if (r10 == 0) goto L42
            kotlinx.coroutines.Job$Key r9 = kotlinx.coroutines.Job.Key     // Catch: java.lang.Throwable -> L99
            kotlin.coroutines.CoroutineContext$Element r6 = r6.get(r9)     // Catch: java.lang.Throwable -> L99
            kotlinx.coroutines.Job r6 = (kotlinx.coroutines.Job) r6     // Catch: java.lang.Throwable -> L99
            goto L43
        L42:
            r6 = r5
        L43:
            if (r6 == 0) goto L5f
            boolean r9 = r6.isActive()     // Catch: java.lang.Throwable -> L99
            if (r9 != 0) goto L5f
            kotlinx.coroutines.JobSupport r6 = (kotlinx.coroutines.JobSupport) r6     // Catch: java.lang.Throwable -> L99
            java.util.concurrent.CancellationException r6 = r6.getCancellationException()     // Catch: java.lang.Throwable -> L99
            r12.cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(r7, r6)     // Catch: java.lang.Throwable -> L99
            int r7 = kotlin.Result.$r8$clinit     // Catch: java.lang.Throwable -> L99
            kotlin.Result$Failure r7 = new kotlin.Result$Failure     // Catch: java.lang.Throwable -> L99
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L99
            r2.resumeWith(r7)     // Catch: java.lang.Throwable -> L99
            goto L75
        L5f:
            if (r8 == 0) goto L6c
            int r6 = kotlin.Result.$r8$clinit     // Catch: java.lang.Throwable -> L99
            kotlin.Result$Failure r6 = new kotlin.Result$Failure     // Catch: java.lang.Throwable -> L99
            r6.<init>(r8)     // Catch: java.lang.Throwable -> L99
            r2.resumeWith(r6)     // Catch: java.lang.Throwable -> L99
            goto L75
        L6c:
            int r6 = kotlin.Result.$r8$clinit     // Catch: java.lang.Throwable -> L99
            java.lang.Object r6 = r12.getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(r7)     // Catch: java.lang.Throwable -> L99
            r2.resumeWith(r6)     // Catch: java.lang.Throwable -> L99
        L75:
            kotlin.Unit r2 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L99
            if (r4 == 0) goto L7f
            boolean r2 = r4.clearThreadContext()     // Catch: java.lang.Throwable -> La6
            if (r2 == 0) goto L82
        L7f:
            kotlinx.coroutines.internal.ThreadContextKt.restoreThreadContext(r3, r1)     // Catch: java.lang.Throwable -> La6
        L82:
            r0.getClass()     // Catch: java.lang.Throwable -> L88
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L88
            goto L91
        L88:
            r0 = move-exception
            int r1 = kotlin.Result.$r8$clinit
            kotlin.Result$Failure r1 = new kotlin.Result$Failure
            r1.<init>(r0)
            r0 = r1
        L91:
            java.lang.Throwable r0 = kotlin.Result.m2571exceptionOrNullimpl(r0)
            r12.handleFatalException(r5, r0)
            goto Lbf
        L99:
            r2 = move-exception
            if (r4 == 0) goto La2
            boolean r4 = r4.clearThreadContext()     // Catch: java.lang.Throwable -> La6
            if (r4 == 0) goto La5
        La2:
            kotlinx.coroutines.internal.ThreadContextKt.restoreThreadContext(r3, r1)     // Catch: java.lang.Throwable -> La6
        La5:
            throw r2     // Catch: java.lang.Throwable -> La6
        La6:
            r1 = move-exception
            int r2 = kotlin.Result.$r8$clinit     // Catch: java.lang.Throwable -> Laf
            r0.getClass()     // Catch: java.lang.Throwable -> Laf
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Laf
            goto Lb8
        Laf:
            r0 = move-exception
            int r2 = kotlin.Result.$r8$clinit
            kotlin.Result$Failure r2 = new kotlin.Result$Failure
            r2.<init>(r0)
            r0 = r2
        Lb8:
            java.lang.Throwable r0 = kotlin.Result.m2571exceptionOrNullimpl(r0)
            r12.handleFatalException(r1, r0)
        Lbf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DispatchedTask.run():void");
    }

    public abstract Object takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();

    public Object getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Object obj) {
        return obj;
    }

    public void cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Object obj, Throwable th) {
    }
}
