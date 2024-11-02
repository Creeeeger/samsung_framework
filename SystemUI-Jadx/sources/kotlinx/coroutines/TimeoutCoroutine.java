package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class TimeoutCoroutine extends ScopeCoroutine implements Runnable {
    public final long time;

    public TimeoutCoroutine(long j, Continuation<Object> continuation) {
        super(continuation.getContext(), continuation);
        this.time = j;
    }

    @Override // kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.JobSupport
    public final String nameString$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        return DebugStringsKt.getClassSimpleName(this) + "(timeMillis=" + this.time + ")";
    }

    @Override // java.lang.Runnable
    public final void run() {
        cancelImpl$external__kotlinx_coroutines__android_common__kotlinx_coroutines(new TimeoutCancellationException("Timed out waiting for " + this.time + " ms", this));
    }
}
