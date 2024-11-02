package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 implements LifecycleEventObserver {
    public final /* synthetic */ Function0 $block;
    public final /* synthetic */ CancellableContinuation $co;
    public final /* synthetic */ Lifecycle.State $state;
    public final /* synthetic */ Lifecycle $this_suspendWithStateAtLeastUnchecked;

    public WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1(Lifecycle.State state, Lifecycle lifecycle, CancellableContinuation cancellableContinuation, Function0 function0) {
        this.$state = state;
        this.$this_suspendWithStateAtLeastUnchecked = lifecycle;
        this.$co = cancellableContinuation;
        this.$block = function0;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Lifecycle.Event event2;
        Object failure;
        Lifecycle.Event event3 = Lifecycle.Event.ON_CREATE;
        int i = Lifecycle.AnonymousClass1.$SwitchMap$androidx$lifecycle$Lifecycle$State[this.$state.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    event2 = null;
                } else {
                    event2 = Lifecycle.Event.ON_RESUME;
                }
            } else {
                event2 = Lifecycle.Event.ON_START;
            }
        } else {
            event2 = Lifecycle.Event.ON_CREATE;
        }
        CancellableContinuation cancellableContinuation = this.$co;
        Lifecycle lifecycle = this.$this_suspendWithStateAtLeastUnchecked;
        if (event == event2) {
            lifecycle.removeObserver(this);
            Function0 function0 = this.$block;
            try {
                int i2 = Result.$r8$clinit;
                failure = function0.invoke();
            } catch (Throwable th) {
                int i3 = Result.$r8$clinit;
                failure = new Result.Failure(th);
            }
            ((CancellableContinuationImpl) cancellableContinuation).resumeWith(failure);
            return;
        }
        if (event == Lifecycle.Event.ON_DESTROY) {
            lifecycle.removeObserver(this);
            int i4 = Result.$r8$clinit;
            ((CancellableContinuationImpl) cancellableContinuation).resumeWith(new Result.Failure(new LifecycleDestroyedException()));
        }
    }
}
