package com.android.systemui.dreams;

import android.util.Log;
import com.android.systemui.CoreStartable;
import com.android.systemui.dreams.callbacks.AssistantAttentionCallback;
import com.android.systemui.dreams.conditions.AssistantAttentionCondition;
import com.android.systemui.shared.condition.Monitor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AssistantAttentionMonitor implements CoreStartable {
    public final AssistantAttentionCondition mAssistantAttentionCondition;
    public final AssistantAttentionCallback mCallback;
    public final Monitor mConditionMonitor;

    public AssistantAttentionMonitor(Monitor monitor, AssistantAttentionCondition assistantAttentionCondition, AssistantAttentionCallback assistantAttentionCallback) {
        this.mConditionMonitor = monitor;
        this.mAssistantAttentionCondition = assistantAttentionCondition;
        this.mCallback = assistantAttentionCallback;
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        if (Log.isLoggable("AssistAttentionMonitor", 3)) {
            Log.d("AssistAttentionMonitor", "started");
        }
        Monitor.Subscription.Builder builder = new Monitor.Subscription.Builder(this.mCallback);
        builder.mConditions.add(this.mAssistantAttentionCondition);
        Monitor.Subscription build = builder.build();
        Monitor monitor = this.mConditionMonitor;
        monitor.addSubscription(build, monitor.mPreconditions);
    }
}
