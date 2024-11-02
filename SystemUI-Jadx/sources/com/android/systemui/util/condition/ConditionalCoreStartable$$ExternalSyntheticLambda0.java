package com.android.systemui.util.condition;

import com.android.systemui.shared.condition.Monitor;
import com.android.systemui.shared.condition.Monitor$$ExternalSyntheticLambda2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ConditionalCoreStartable$$ExternalSyntheticLambda0 implements Monitor.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ConditionalCoreStartable f$0;

    public /* synthetic */ ConditionalCoreStartable$$ExternalSyntheticLambda0(ConditionalCoreStartable conditionalCoreStartable, int i) {
        this.$r8$classId = i;
        this.f$0 = conditionalCoreStartable;
    }

    @Override // com.android.systemui.shared.condition.Monitor.Callback
    public final void onConditionsChanged(boolean z) {
        int i = this.$r8$classId;
        ConditionalCoreStartable conditionalCoreStartable = this.f$0;
        switch (i) {
            case 0:
                if (z) {
                    Monitor monitor = conditionalCoreStartable.mMonitor;
                    Monitor.Subscription.Token token = conditionalCoreStartable.mBootCompletedToken;
                    monitor.getClass();
                    monitor.mExecutor.execute(new Monitor$$ExternalSyntheticLambda2(0, monitor, token));
                    conditionalCoreStartable.mBootCompletedToken = null;
                    return;
                }
                conditionalCoreStartable.getClass();
                return;
            default:
                if (z) {
                    Monitor monitor2 = conditionalCoreStartable.mMonitor;
                    Monitor.Subscription.Token token2 = conditionalCoreStartable.mStartToken;
                    monitor2.getClass();
                    monitor2.mExecutor.execute(new Monitor$$ExternalSyntheticLambda2(0, monitor2, token2));
                    conditionalCoreStartable.mStartToken = null;
                    conditionalCoreStartable.onStart();
                    return;
                }
                conditionalCoreStartable.getClass();
                return;
        }
    }
}
