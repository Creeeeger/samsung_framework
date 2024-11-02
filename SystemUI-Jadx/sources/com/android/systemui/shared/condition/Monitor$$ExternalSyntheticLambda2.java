package com.android.systemui.shared.condition;

import android.util.ArraySet;
import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.plugins.log.TableLogBufferBase;
import com.android.systemui.shared.condition.Monitor;
import java.util.HashMap;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class Monitor$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Monitor$$ExternalSyntheticLambda2(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        int i = 1;
        int i2 = 0;
        switch (this.$r8$classId) {
            case 0:
                Monitor monitor = (Monitor) this.f$0;
                Monitor.Subscription.Token token = (Monitor.Subscription.Token) this.f$1;
                boolean isLoggable = Log.isLoggable(monitor.mTag, 3);
                String str2 = monitor.mTag;
                if (isLoggable) {
                    Log.d(str2, "removing subscription");
                }
                HashMap hashMap = monitor.mSubscriptions;
                if (!hashMap.containsKey(token)) {
                    Log.e(str2, "subscription not present:" + token);
                    return;
                }
                Monitor.SubscriptionState subscriptionState = (Monitor.SubscriptionState) hashMap.remove(token);
                subscriptionState.mSubscription.mConditions.forEach(new Monitor$$ExternalSyntheticLambda3(monitor, token, i));
                if (subscriptionState.mActive) {
                    subscriptionState.mActive = false;
                    Monitor.Callback callback = subscriptionState.mSubscription.mCallback;
                }
                Monitor.Subscription.Token token2 = subscriptionState.mNestedSubscriptionToken;
                if (token2 != null) {
                    monitor.mExecutor.execute(new Monitor$$ExternalSyntheticLambda2(i2, monitor, token2));
                    subscriptionState.mNestedSubscriptionToken = null;
                    return;
                }
                return;
            default:
                Monitor.AnonymousClass1 anonymousClass1 = (Monitor.AnonymousClass1) this.f$0;
                Condition condition = (Condition) this.f$1;
                final Monitor monitor2 = anonymousClass1.this$0;
                TableLogBufferBase tableLogBufferBase = monitor2.mLogBuffer;
                if (tableLogBufferBase != null) {
                    String str3 = condition.mTag;
                    if (condition.mOverriding) {
                        str3 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str3, "[OVRD]");
                    }
                    Boolean bool = condition.mIsConditionMet;
                    if (bool == null) {
                        i = 0;
                    }
                    if (i == 0) {
                        str = "Invalid";
                    } else if (Boolean.TRUE.equals(bool)) {
                        str = "True";
                    } else {
                        str = "False";
                    }
                    tableLogBufferBase.logChange("", str3, str);
                }
                ArraySet arraySet = (ArraySet) monitor2.mConditions.get(condition);
                if (arraySet != null) {
                    arraySet.stream().forEach(new Consumer() { // from class: com.android.systemui.shared.condition.Monitor$$ExternalSyntheticLambda0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            Monitor monitor3 = Monitor.this;
                            ((Monitor.SubscriptionState) monitor3.mSubscriptions.get((Monitor.Subscription.Token) obj)).update(monitor3);
                        }
                    });
                    return;
                }
                return;
        }
    }
}
