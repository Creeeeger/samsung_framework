package com.android.systemui.flags;

import com.android.systemui.flags.ConditionalRestarter;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScreenIdleCondition implements ConditionalRestarter.Condition {
    public boolean listenersAdded;
    public final ScreenIdleCondition$observer$1 observer = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.flags.ScreenIdleCondition$observer$1
        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onFinishedGoingToSleep() {
            Function0 function0 = ScreenIdleCondition.this.retryFn;
            if (function0 != null) {
                function0.invoke();
            }
        }
    };
    public Function0 retryFn;
    public final WakefulnessLifecycle wakefulnessLifecycle;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.flags.ScreenIdleCondition$observer$1] */
    public ScreenIdleCondition(WakefulnessLifecycle wakefulnessLifecycle) {
        this.wakefulnessLifecycle = wakefulnessLifecycle;
    }

    @Override // com.android.systemui.flags.ConditionalRestarter.Condition
    public final boolean canRestartNow(Function0 function0) {
        boolean z = this.listenersAdded;
        WakefulnessLifecycle wakefulnessLifecycle = this.wakefulnessLifecycle;
        if (!z) {
            this.listenersAdded = true;
            wakefulnessLifecycle.addObserver(this.observer);
        }
        this.retryFn = function0;
        if (wakefulnessLifecycle.mWakefulness == 0) {
            return true;
        }
        return false;
    }
}
