package com.android.systemui.util.condition;

import com.android.systemui.CoreStartable;
import com.android.systemui.shared.condition.Condition;
import com.android.systemui.shared.condition.Monitor;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ConditionalCoreStartable implements CoreStartable {
    public Monitor.Subscription.Token mBootCompletedToken;
    public final Set mConditionSet;
    public final Monitor mMonitor;
    public Monitor.Subscription.Token mStartToken;

    public ConditionalCoreStartable(Monitor monitor) {
        this(monitor, null);
    }

    @Override // com.android.systemui.CoreStartable
    public final void onBootCompleted() {
        Monitor.Subscription.Builder builder = new Monitor.Subscription.Builder(new ConditionalCoreStartable$$ExternalSyntheticLambda0(this, 0));
        Set set = this.mConditionSet;
        if (set != null) {
            builder.mConditions.addAll(set);
        }
        Monitor.Subscription build = builder.build();
        Monitor monitor = this.mMonitor;
        this.mBootCompletedToken = monitor.addSubscription(build, monitor.mPreconditions);
    }

    public abstract void onStart();

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        Monitor.Subscription.Builder builder = new Monitor.Subscription.Builder(new ConditionalCoreStartable$$ExternalSyntheticLambda0(this, 1));
        Set set = this.mConditionSet;
        if (set != null) {
            builder.mConditions.addAll(set);
        }
        Monitor.Subscription build = builder.build();
        Monitor monitor = this.mMonitor;
        this.mStartToken = monitor.addSubscription(build, monitor.mPreconditions);
    }

    public ConditionalCoreStartable(Monitor monitor, Set<Condition> set) {
        this.mMonitor = monitor;
        this.mConditionSet = set;
    }
}
