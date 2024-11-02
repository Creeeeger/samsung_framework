package kotlinx.coroutines;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.atomicfu.TraceBase;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class JobSupport implements Job, ChildJob {
    public final AtomicRef _parentHandle;
    public final AtomicRef _state;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class AwaitContinuation extends CancellableContinuationImpl {
        public final JobSupport job;

        public AwaitContinuation(Continuation<Object> continuation, JobSupport jobSupport) {
            super(continuation, 1);
            this.job = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public final Throwable getContinuationCancellationCause(JobSupport jobSupport) {
            Throwable rootCause;
            Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = this.job.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
            if ((state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Finishing) && (rootCause = ((Finishing) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).getRootCause()) != null) {
                return rootCause;
            }
            if (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally) {
                return ((CompletedExceptionally) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).cause;
            }
            return jobSupport.getCancellationException();
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public final String nameString() {
            return "AwaitContinuation";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Finishing implements Incomplete {
        public final AtomicRef _exceptionsHolder = AtomicFU.atomic((Object) null);
        public final AtomicBoolean _isCompleting;
        public final AtomicRef _rootCause;
        public final NodeList list;

        public Finishing(NodeList nodeList, boolean z, Throwable th) {
            this.list = nodeList;
            this._isCompleting = AtomicFU.atomic(z);
            this._rootCause = AtomicFU.atomic(th);
        }

        public final void addExceptionLocked(Throwable th) {
            Throwable rootCause = getRootCause();
            if (rootCause == null) {
                this._rootCause.setValue(th);
                return;
            }
            if (th == rootCause) {
                return;
            }
            Object obj = this._exceptionsHolder.value;
            if (obj == null) {
                this._exceptionsHolder.setValue(th);
                return;
            }
            if (obj instanceof Throwable) {
                if (th == obj) {
                    return;
                }
                ArrayList arrayList = new ArrayList(4);
                arrayList.add(obj);
                arrayList.add(th);
                this._exceptionsHolder.setValue(arrayList);
                return;
            }
            if (obj instanceof ArrayList) {
                ((ArrayList) obj).add(th);
            } else {
                throw new IllegalStateException(("State is " + obj).toString());
            }
        }

        @Override // kotlinx.coroutines.Incomplete
        public final NodeList getList() {
            return this.list;
        }

        public final Throwable getRootCause() {
            return (Throwable) this._rootCause.value;
        }

        @Override // kotlinx.coroutines.Incomplete
        public final boolean isActive() {
            if (getRootCause() == null) {
                return true;
            }
            return false;
        }

        public final boolean isCancelling() {
            if (getRootCause() != null) {
                return true;
            }
            return false;
        }

        public final List sealLocked(Throwable th) {
            ArrayList arrayList;
            Object obj = this._exceptionsHolder.value;
            if (obj == null) {
                arrayList = new ArrayList(4);
            } else if (obj instanceof Throwable) {
                ArrayList arrayList2 = new ArrayList(4);
                arrayList2.add(obj);
                arrayList = arrayList2;
            } else if (obj instanceof ArrayList) {
                arrayList = (ArrayList) obj;
            } else {
                throw new IllegalStateException(("State is " + obj).toString());
            }
            Throwable rootCause = getRootCause();
            if (rootCause != null) {
                arrayList.add(0, rootCause);
            }
            if (th != null && !Intrinsics.areEqual(th, rootCause)) {
                arrayList.add(th);
            }
            this._exceptionsHolder.setValue(JobSupportKt.SEALED);
            return arrayList;
        }

        public final String toString() {
            boolean z;
            boolean isCancelling = isCancelling();
            if (this._isCompleting._value != 0) {
                z = true;
            } else {
                z = false;
            }
            Throwable rootCause = getRootCause();
            Object obj = this._exceptionsHolder.value;
            NodeList nodeList = this.list;
            StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("Finishing[cancelling=", isCancelling, ", completing=", z, ", rootCause=");
            m.append(rootCause);
            m.append(", exceptions=");
            m.append(obj);
            m.append(", list=");
            m.append(nodeList);
            m.append("]");
            return m.toString();
        }
    }

    public JobSupport(boolean z) {
        Empty empty;
        if (z) {
            empty = JobSupportKt.EMPTY_ACTIVE;
        } else {
            empty = JobSupportKt.EMPTY_NEW;
        }
        this._state = AtomicFU.atomic(empty);
        this._parentHandle = AtomicFU.atomic((Object) null);
    }

    public static ChildHandleNode nextChild(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getPrevNode();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode();
            if (!lockFreeLinkedListNode.isRemoved()) {
                if (lockFreeLinkedListNode instanceof ChildHandleNode) {
                    return (ChildHandleNode) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    public static String stateString(Object obj) {
        boolean z;
        if (obj instanceof Finishing) {
            Finishing finishing = (Finishing) obj;
            if (finishing.isCancelling()) {
                return "Cancelling";
            }
            if (finishing._isCompleting._value != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return "Completing";
            }
        } else if (obj instanceof Incomplete) {
            if (!((Incomplete) obj).isActive()) {
                return "New";
            }
        } else {
            if (obj instanceof CompletedExceptionally) {
                return "Cancelled";
            }
            return "Completed";
        }
        return "Active";
    }

    public void afterResume(Object obj) {
        afterCompletion(obj);
    }

    @Override // kotlinx.coroutines.Job
    public void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
    
        if (r1 == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        r0 = kotlinx.coroutines.JobSupportKt.COMPLETING_ALREADY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.COMPLETING_WAITING_CHILDREN) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0027, code lost:
    
        r0 = tryMakeCompleting(r0, new kotlinx.coroutines.CompletedExceptionally(createCauseException(r10), r4, r3, r2 == true ? 1 : 0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        if (r0 == kotlinx.coroutines.JobSupportKt.COMPLETING_RETRY) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0042, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.COMPLETING_ALREADY) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0044, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0045, code lost:
    
        r1 = getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004b, code lost:
    
        if ((r1 instanceof kotlinx.coroutines.JobSupport.Finishing) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0098, code lost:
    
        if ((r1 instanceof kotlinx.coroutines.Incomplete) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000a, code lost:
    
        if (getOnCancelComplete$external__kotlinx_coroutines__android_common__kotlinx_coroutines() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009a, code lost:
    
        if (r0 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009c, code lost:
    
        r0 = createCauseException(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a0, code lost:
    
        r6 = (kotlinx.coroutines.Incomplete) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a7, code lost:
    
        if (r6.isActive() == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c8, code lost:
    
        r6 = tryMakeCompleting(r1, new kotlinx.coroutines.CompletedExceptionally(r0, r4, r3, r2 == true ? 1 : 0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d3, code lost:
    
        if (r6 == kotlinx.coroutines.JobSupportKt.COMPLETING_ALREADY) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d7, code lost:
    
        if (r6 == kotlinx.coroutines.JobSupportKt.COMPLETING_RETRY) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000c, code lost:
    
        r0 = getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d9, code lost:
    
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f2, code lost:
    
        throw new java.lang.IllegalStateException(("Cannot happen in " + r1).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a9, code lost:
    
        r1 = getOrPromoteCancellingList(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ad, code lost:
    
        if (r1 != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.Incomplete) == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bb, code lost:
    
        if (r9._state.compareAndSet(r6, new kotlinx.coroutines.JobSupport.Finishing(r1, false, r0)) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bf, code lost:
    
        notifyCancelling(r1, r0);
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c3, code lost:
    
        if (r1 == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c5, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.COMPLETING_ALREADY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f5, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00bd, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f3, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.TOO_LATE_TO_CANCEL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x004d, code lost:
    
        monitor-enter(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0057, code lost:
    
        if (((kotlinx.coroutines.JobSupport.Finishing) r1)._exceptionsHolder.value != kotlinx.coroutines.JobSupportKt.SEALED) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0059, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x005c, code lost:
    
        if (r3 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x005e, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.TOO_LATE_TO_CANCEL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0060, code lost:
    
        monitor-exit(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0063, code lost:
    
        r3 = ((kotlinx.coroutines.JobSupport.Finishing) r1).isCancelling();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.JobSupport.Finishing) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x006a, code lost:
    
        if (r10 != null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x006c, code lost:
    
        if (r3 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x007a, code lost:
    
        r10 = ((kotlinx.coroutines.JobSupport.Finishing) r1).getRootCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0083, code lost:
    
        if ((!r3) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0085, code lost:
    
        r2 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0086, code lost:
    
        monitor-exit(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0087, code lost:
    
        if (r2 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0089, code lost:
    
        notifyCancelling(((kotlinx.coroutines.JobSupport.Finishing) r1).list, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0090, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.COMPLETING_ALREADY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x006e, code lost:
    
        if (r0 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0070, code lost:
    
        r0 = createCauseException(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0074, code lost:
    
        ((kotlinx.coroutines.JobSupport.Finishing) r1).addExceptionLocked(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x005b, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00f8, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.COMPLETING_ALREADY) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00fd, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.COMPLETING_WAITING_CHILDREN) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
    
        if (((kotlinx.coroutines.JobSupport.Finishing) r0)._isCompleting._value == 0) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0102, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.TOO_LATE_TO_CANCEL) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0105, code lost:
    
        afterCompletion(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0109, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean cancelImpl$external__kotlinx_coroutines__android_common__kotlinx_coroutines(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.cancelImpl$external__kotlinx_coroutines__android_common__kotlinx_coroutines(java.lang.Object):boolean");
    }

    public void cancelInternal(Throwable th) {
        cancelImpl$external__kotlinx_coroutines__android_common__kotlinx_coroutines(th);
    }

    public final boolean cancelParent(Throwable th) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        ChildHandle childHandle = (ChildHandle) this._parentHandle.value;
        if (childHandle != null && childHandle != NonDisposableHandle.INSTANCE) {
            if (childHandle.childCancelled(th) || z) {
                return true;
            }
            return false;
        }
        return z;
    }

    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    public boolean childCancelled(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        if (cancelImpl$external__kotlinx_coroutines__android_common__kotlinx_coroutines(th) && getHandlesException$external__kotlinx_coroutines__android_common__kotlinx_coroutines()) {
            return true;
        }
        return false;
    }

    public final void completeStateFinalization(Incomplete incomplete, Object obj) {
        CompletedExceptionally completedExceptionally;
        Throwable th;
        ChildHandle childHandle = (ChildHandle) this._parentHandle.value;
        if (childHandle != null) {
            childHandle.dispose();
            this._parentHandle.setValue(NonDisposableHandle.INSTANCE);
        }
        CompletionHandlerException completionHandlerException = null;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally != null) {
            th = completedExceptionally.cause;
        } else {
            th = null;
        }
        if (incomplete instanceof JobNode) {
            try {
                ((JobNode) incomplete).invoke(th);
                return;
            } catch (Throwable th2) {
                handleOnCompletionException$external__kotlinx_coroutines__android_common__kotlinx_coroutines(new CompletionHandlerException("Exception in completion handler " + incomplete + " for " + this, th2));
                return;
            }
        }
        NodeList list = incomplete.getList();
        if (list != null) {
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) list.getNext(); !Intrinsics.areEqual(lockFreeLinkedListNode, list); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
                if (lockFreeLinkedListNode instanceof JobNode) {
                    JobNode jobNode = (JobNode) lockFreeLinkedListNode;
                    try {
                        jobNode.invoke(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != null) {
                            ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th3);
                        } else {
                            completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th3);
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                }
            }
            if (completionHandlerException != null) {
                handleOnCompletionException$external__kotlinx_coroutines__android_common__kotlinx_coroutines(completionHandlerException);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Throwable] */
    public final Throwable createCauseException(Object obj) {
        boolean z;
        CancellationException cancellationException;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof Throwable;
        }
        CancellationException cancellationException2 = null;
        if (z) {
            Throwable th = (Throwable) obj;
            if (th == null) {
                return new JobCancellationException(cancellationExceptionMessage(), null, this);
            }
            return th;
        }
        JobSupport jobSupport = (JobSupport) obj;
        Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = jobSupport.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
        if (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Finishing) {
            cancellationException = ((Finishing) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).getRootCause();
        } else if (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally) {
            cancellationException = ((CompletedExceptionally) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).cause;
        } else if (!(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Incomplete)) {
            cancellationException = null;
        } else {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).toString());
        }
        if (cancellationException instanceof CancellationException) {
            cancellationException2 = cancellationException;
        }
        if (cancellationException2 == null) {
            cancellationException2 = new JobCancellationException("Parent job is ".concat(stateString(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines)), cancellationException, jobSupport);
        }
        return cancellationException2;
    }

    public final Object finalizeFinishingState(Finishing finishing, Object obj) {
        CompletedExceptionally completedExceptionally;
        Throwable th;
        Throwable finalRootCause;
        boolean z;
        Object obj2;
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally != null) {
            th = completedExceptionally.cause;
        } else {
            th = null;
        }
        synchronized (finishing) {
            finishing.isCancelling();
            List<Throwable> sealLocked = finishing.sealLocked(th);
            finalRootCause = getFinalRootCause(finishing, sealLocked);
            z = true;
            if (finalRootCause != null && sealLocked.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(sealLocked.size()));
                for (Throwable th2 : sealLocked) {
                    if (th2 != finalRootCause && th2 != finalRootCause && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(finalRootCause, th2);
                    }
                }
            }
        }
        boolean z2 = false;
        if (finalRootCause != null && finalRootCause != th) {
            obj = new CompletedExceptionally(finalRootCause, z2, 2, defaultConstructorMarker);
        }
        if (finalRootCause != null) {
            if (!cancelParent(finalRootCause) && !handleJobException(finalRootCause)) {
                z = false;
            }
            if (z) {
                ((CompletedExceptionally) obj)._handled.compareAndSet();
            }
        }
        onCompletionInternal(obj);
        AtomicRef atomicRef = this._state;
        if (obj instanceof Incomplete) {
            obj2 = new IncompleteStateBox((Incomplete) obj);
        } else {
            obj2 = obj;
        }
        atomicRef.compareAndSet(finishing, obj2);
        completeStateFinalization(finishing, obj);
        return obj;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        if (!Intrinsics.areEqual(getKey(), key)) {
            return null;
        }
        return this;
    }

    public final CancellationException getCancellationException() {
        Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
        CancellationException cancellationException = null;
        if (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Finishing) {
            Throwable rootCause = ((Finishing) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).getRootCause();
            if (rootCause != null) {
                String concat = DebugStringsKt.getClassSimpleName(this).concat(" is cancelling");
                if (rootCause instanceof CancellationException) {
                    cancellationException = (CancellationException) rootCause;
                }
                if (cancellationException == null) {
                    if (concat == null) {
                        concat = cancellationExceptionMessage();
                    }
                    return new JobCancellationException(concat, rootCause, this);
                }
                return cancellationException;
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (!(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Incomplete)) {
            if (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally) {
                Throwable th = ((CompletedExceptionally) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).cause;
                if (th instanceof CancellationException) {
                    cancellationException = (CancellationException) th;
                }
                if (cancellationException == null) {
                    return new JobCancellationException(cancellationExceptionMessage(), th, this);
                }
                return cancellationException;
            }
            return new JobCancellationException(DebugStringsKt.getClassSimpleName(this).concat(" has completed normally"), null, this);
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    public final Throwable getFinalRootCause(Finishing finishing, List list) {
        Object obj;
        boolean z;
        Object obj2 = null;
        if (list.isEmpty()) {
            if (!finishing.isCancelling()) {
                return null;
            }
            return new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        Iterator it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (!(((Throwable) obj) instanceof CancellationException)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                Throwable th3 = (Throwable) next;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public boolean getHandlesException$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return Job.Key;
    }

    public boolean getOnCancelComplete$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        return this instanceof CompletableDeferredImpl;
    }

    public final NodeList getOrPromoteCancellingList(Incomplete incomplete) {
        NodeList list = incomplete.getList();
        if (list == null) {
            if (incomplete instanceof Empty) {
                return new NodeList();
            }
            if (incomplete instanceof JobNode) {
                promoteSingleToNodeList((JobNode) incomplete);
                return null;
            }
            throw new IllegalStateException(("State should have list: " + incomplete).toString());
        }
        return list;
    }

    public final Object getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        AtomicRef atomicRef = this._state;
        while (true) {
            Object obj = atomicRef.value;
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).perform(this);
        }
    }

    public boolean handleJobException(Throwable th) {
        return false;
    }

    public final void initParentJob(Job job) {
        int startInternal;
        AtomicRef atomicRef = this._parentHandle;
        if (job == null) {
            atomicRef.setValue(NonDisposableHandle.INSTANCE);
            return;
        }
        JobSupport jobSupport = (JobSupport) job;
        do {
            startInternal = jobSupport.startInternal(jobSupport.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines());
            if (startInternal == 0) {
                break;
            }
        } while (startInternal != 1);
        ChildHandle childHandle = (ChildHandle) Job.DefaultImpls.invokeOnCompletion$default(jobSupport, true, new ChildHandleNode(this), 2);
        atomicRef.setValue(childHandle);
        if (!(getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines() instanceof Incomplete)) {
            childHandle.dispose();
            atomicRef.setValue(NonDisposableHandle.INSTANCE);
        }
    }

    public final DisposableHandle invokeOnCompletion(Function1 function1) {
        return invokeOnCompletion(false, true, function1);
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
        if ((state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Incomplete) && ((Incomplete) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).isActive()) {
            return true;
        }
        return false;
    }

    public boolean isScopedCoroutine() {
        return this instanceof BlockingCoroutine;
    }

    public final Object join(Continuation continuation) {
        boolean z;
        while (true) {
            Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
            if (!(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Incomplete)) {
                z = false;
                break;
            }
            if (startInternal(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines) >= 0) {
                z = true;
                break;
            }
        }
        if (!z) {
            JobKt.ensureActive(continuation.getContext());
            return Unit.INSTANCE;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new DisposeOnCancel(invokeOnCompletion(new ResumeOnCompletion(cancellableContinuationImpl))));
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (result != coroutineSingletons) {
            result = Unit.INSTANCE;
        }
        if (result == coroutineSingletons) {
            return result;
        }
        return Unit.INSTANCE;
    }

    public final Object makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Object obj) {
        Object tryMakeCompleting;
        CompletedExceptionally completedExceptionally;
        do {
            tryMakeCompleting = tryMakeCompleting(getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines(), obj);
            if (tryMakeCompleting == JobSupportKt.COMPLETING_ALREADY) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                Throwable th = null;
                if (obj instanceof CompletedExceptionally) {
                    completedExceptionally = (CompletedExceptionally) obj;
                } else {
                    completedExceptionally = null;
                }
                if (completedExceptionally != null) {
                    th = completedExceptionally.cause;
                }
                throw new IllegalStateException(str, th);
            }
        } while (tryMakeCompleting == JobSupportKt.COMPLETING_RETRY);
        return tryMakeCompleting;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        if (Intrinsics.areEqual(getKey(), key)) {
            return EmptyCoroutineContext.INSTANCE;
        }
        return this;
    }

    public String nameString$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        return DebugStringsKt.getClassSimpleName(this);
    }

    public final void notifyCancelling(NodeList nodeList, Throwable th) {
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) nodeList.getNext(); !Intrinsics.areEqual(lockFreeLinkedListNode, nodeList); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            if (lockFreeLinkedListNode instanceof JobCancellingNode) {
                JobNode jobNode = (JobNode) lockFreeLinkedListNode;
                try {
                    jobNode.invoke(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$external__kotlinx_coroutines__android_common__kotlinx_coroutines(completionHandlerException);
        }
        cancelParent(th);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.DefaultImpls.plus(this, coroutineContext);
    }

    public final void promoteSingleToNodeList(JobNode jobNode) {
        NodeList nodeList = new NodeList();
        jobNode.getClass();
        nodeList._prev.lazySet(jobNode);
        nodeList._next.lazySet(jobNode);
        while (true) {
            if (jobNode.getNext() != jobNode) {
                break;
            } else if (jobNode._next.compareAndSet(jobNode, nodeList)) {
                nodeList.finishAdd(jobNode);
                break;
            }
        }
        this._state.compareAndSet(jobNode, jobNode.getNextNode());
    }

    public final int startInternal(Object obj) {
        boolean z = obj instanceof Empty;
        AtomicRef atomicRef = this._state;
        if (z) {
            if (((Empty) obj).isActive) {
                return 0;
            }
            if (!atomicRef.compareAndSet(obj, JobSupportKt.EMPTY_ACTIVE)) {
                return -1;
            }
            onStart();
            return 1;
        }
        if (!(obj instanceof InactiveNodeList)) {
            return 0;
        }
        if (!atomicRef.compareAndSet(obj, ((InactiveNodeList) obj).list)) {
            return -1;
        }
        onStart();
        return 1;
    }

    public final String toString() {
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(nameString$external__kotlinx_coroutines__android_common__kotlinx_coroutines() + "{" + stateString(getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()) + "}", "@", DebugStringsKt.getHexAddress(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.Throwable, T] */
    public final Object tryMakeCompleting(Object obj, Object obj2) {
        Object obj3;
        Finishing finishing;
        CompletedExceptionally completedExceptionally;
        ChildHandleNode childHandleNode;
        if (!(obj instanceof Incomplete)) {
            return JobSupportKt.COMPLETING_ALREADY;
        }
        boolean z = false;
        if (((obj instanceof Empty) || (obj instanceof JobNode)) && !(obj instanceof ChildHandleNode) && !(obj2 instanceof CompletedExceptionally)) {
            Incomplete incomplete = (Incomplete) obj;
            AtomicRef atomicRef = this._state;
            Symbol symbol = JobSupportKt.COMPLETING_ALREADY;
            if (obj2 instanceof Incomplete) {
                obj3 = new IncompleteStateBox((Incomplete) obj2);
            } else {
                obj3 = obj2;
            }
            if (atomicRef.compareAndSet(incomplete, obj3)) {
                onCompletionInternal(obj2);
                completeStateFinalization(incomplete, obj2);
                z = true;
            }
            if (z) {
                return obj2;
            }
            return JobSupportKt.COMPLETING_RETRY;
        }
        Incomplete incomplete2 = (Incomplete) obj;
        NodeList orPromoteCancellingList = getOrPromoteCancellingList(incomplete2);
        if (orPromoteCancellingList == null) {
            return JobSupportKt.COMPLETING_RETRY;
        }
        ChildHandleNode childHandleNode2 = null;
        if (incomplete2 instanceof Finishing) {
            finishing = (Finishing) incomplete2;
        } else {
            finishing = null;
        }
        if (finishing == null) {
            finishing = new Finishing(orPromoteCancellingList, false, null);
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (finishing) {
            if (finishing._isCompleting._value != 0) {
                z = true;
            }
            if (z) {
                return JobSupportKt.COMPLETING_ALREADY;
            }
            AtomicBoolean atomicBoolean = finishing._isCompleting;
            atomicBoolean._value = 1;
            TraceBase traceBase = atomicBoolean.trace;
            if (traceBase != TraceBase.None.INSTANCE) {
                traceBase.getClass();
            }
            if (finishing != incomplete2 && !this._state.compareAndSet(incomplete2, finishing)) {
                return JobSupportKt.COMPLETING_RETRY;
            }
            boolean isCancelling = finishing.isCancelling();
            if (obj2 instanceof CompletedExceptionally) {
                completedExceptionally = (CompletedExceptionally) obj2;
            } else {
                completedExceptionally = null;
            }
            if (completedExceptionally != null) {
                finishing.addExceptionLocked(completedExceptionally.cause);
            }
            ?? rootCause = Boolean.valueOf(isCancelling ^ true).booleanValue() ? finishing.getRootCause() : 0;
            ref$ObjectRef.element = rootCause;
            Unit unit = Unit.INSTANCE;
            if (rootCause != 0) {
                notifyCancelling(orPromoteCancellingList, rootCause);
            }
            if (incomplete2 instanceof ChildHandleNode) {
                childHandleNode = (ChildHandleNode) incomplete2;
            } else {
                childHandleNode = null;
            }
            if (childHandleNode == null) {
                NodeList list = incomplete2.getList();
                if (list != null) {
                    childHandleNode2 = nextChild(list);
                }
            } else {
                childHandleNode2 = childHandleNode;
            }
            if (childHandleNode2 != null && tryWaitForChild(finishing, childHandleNode2, obj2)) {
                return JobSupportKt.COMPLETING_WAITING_CHILDREN;
            }
            return finalizeFinishingState(finishing, obj2);
        }
    }

    public final boolean tryWaitForChild(Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        while (Job.DefaultImpls.invokeOnCompletion$default(childHandleNode.childJob, false, new ChildCompletion(this, finishing, childHandleNode, obj), 1) == NonDisposableHandle.INSTANCE) {
            childHandleNode = nextChild(childHandleNode);
            if (childHandleNode == null) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [kotlinx.coroutines.InactiveNodeList] */
    public final DisposableHandle invokeOnCompletion(boolean z, boolean z2, Function1 function1) {
        final JobNode jobNode;
        Throwable th;
        boolean z3;
        if (z) {
            jobNode = function1 instanceof JobCancellingNode ? (JobCancellingNode) function1 : null;
            if (jobNode == null) {
                jobNode = new InvokeOnCancelling(function1);
            }
        } else {
            jobNode = function1 instanceof JobNode ? (JobNode) function1 : null;
            if (jobNode == null) {
                jobNode = new InvokeOnCompletion(function1);
            }
        }
        jobNode.job = this;
        while (true) {
            final Object state$external__kotlinx_coroutines__android_common__kotlinx_coroutines = getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines();
            if (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Empty) {
                Empty empty = (Empty) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines;
                if (empty.isActive) {
                    if (this._state.compareAndSet(state$external__kotlinx_coroutines__android_common__kotlinx_coroutines, jobNode)) {
                        return jobNode;
                    }
                } else {
                    NodeList nodeList = new NodeList();
                    if (!empty.isActive) {
                        nodeList = new InactiveNodeList(nodeList);
                    }
                    this._state.compareAndSet(empty, nodeList);
                }
            } else if (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Incomplete) {
                NodeList list = ((Incomplete) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).getList();
                if (list == null) {
                    promoteSingleToNodeList((JobNode) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines);
                } else {
                    DisposableHandle disposableHandle = NonDisposableHandle.INSTANCE;
                    boolean z4 = false;
                    if (z && (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof Finishing)) {
                        synchronized (state$external__kotlinx_coroutines__android_common__kotlinx_coroutines) {
                            th = ((Finishing) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines).getRootCause();
                            if (th != null) {
                                if (function1 instanceof ChildHandleNode) {
                                    if (((Finishing) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines)._isCompleting._value != 0) {
                                    }
                                }
                                Unit unit = Unit.INSTANCE;
                            }
                            LockFreeLinkedListNode.CondAddOp condAddOp = new LockFreeLinkedListNode.CondAddOp(jobNode) { // from class: kotlinx.coroutines.JobSupport$addLastAtomic$$inlined$addLastIf$1
                                @Override // kotlinx.coroutines.internal.AtomicOp
                                public final Object prepare(Object obj) {
                                    boolean z5;
                                    if (this.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines() == state$external__kotlinx_coroutines__android_common__kotlinx_coroutines) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z5) {
                                        return null;
                                    }
                                    return LockFreeLinkedListKt.CONDITION_FALSE;
                                }
                            };
                            while (true) {
                                int tryCondAddNext = list.getPrevNode().tryCondAddNext(jobNode, list, condAddOp);
                                if (tryCondAddNext == 1) {
                                    z3 = true;
                                    break;
                                }
                                if (tryCondAddNext == 2) {
                                    z3 = false;
                                    break;
                                }
                            }
                            if (z3) {
                                if (th == null) {
                                    return jobNode;
                                }
                                disposableHandle = jobNode;
                                Unit unit2 = Unit.INSTANCE;
                            }
                        }
                    } else {
                        th = null;
                    }
                    if (th != null) {
                        if (z2) {
                            function1.invoke(th);
                        }
                        return disposableHandle;
                    }
                    LockFreeLinkedListNode.CondAddOp condAddOp2 = new LockFreeLinkedListNode.CondAddOp(jobNode) { // from class: kotlinx.coroutines.JobSupport$addLastAtomic$$inlined$addLastIf$1
                        @Override // kotlinx.coroutines.internal.AtomicOp
                        public final Object prepare(Object obj) {
                            boolean z5;
                            if (this.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines() == state$external__kotlinx_coroutines__android_common__kotlinx_coroutines) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (z5) {
                                return null;
                            }
                            return LockFreeLinkedListKt.CONDITION_FALSE;
                        }
                    };
                    while (true) {
                        int tryCondAddNext2 = list.getPrevNode().tryCondAddNext(jobNode, list, condAddOp2);
                        if (tryCondAddNext2 == 1) {
                            z4 = true;
                            break;
                        }
                        if (tryCondAddNext2 == 2) {
                            break;
                        }
                    }
                    if (z4) {
                        return jobNode;
                    }
                }
            } else {
                if (z2) {
                    CompletedExceptionally completedExceptionally = state$external__kotlinx_coroutines__android_common__kotlinx_coroutines instanceof CompletedExceptionally ? (CompletedExceptionally) state$external__kotlinx_coroutines__android_common__kotlinx_coroutines : null;
                    function1.invoke(completedExceptionally != null ? completedExceptionally.cause : null);
                }
                return NonDisposableHandle.INSTANCE;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ChildCompletion extends JobNode {
        public final ChildHandleNode child;
        public final JobSupport parent;
        public final Object proposedUpdate;
        public final Finishing state;

        public ChildCompletion(JobSupport jobSupport, Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
            this.parent = jobSupport;
            this.state = finishing;
            this.child = childHandleNode;
            this.proposedUpdate = obj;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        public final void invoke(Throwable th) {
            JobSupport jobSupport = this.parent;
            jobSupport.getClass();
            ChildHandleNode nextChild = JobSupport.nextChild(this.child);
            Finishing finishing = this.state;
            Object obj = this.proposedUpdate;
            if (nextChild == null || !jobSupport.tryWaitForChild(finishing, nextChild, obj)) {
                jobSupport.afterCompletion(jobSupport.finalizeFinishingState(finishing, obj));
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Throwable) obj);
            return Unit.INSTANCE;
        }
    }

    public void onStart() {
    }

    public void afterCompletion(Object obj) {
    }

    public void handleOnCompletionException$external__kotlinx_coroutines__android_common__kotlinx_coroutines(CompletionHandlerException completionHandlerException) {
        throw completionHandlerException;
    }

    public void onCompletionInternal(Object obj) {
    }
}
