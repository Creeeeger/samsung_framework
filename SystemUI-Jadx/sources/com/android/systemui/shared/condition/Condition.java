package com.android.systemui.shared.condition;

import android.util.Log;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.shared.condition.Monitor;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class Condition {
    public final ArrayList mCallbacks;
    public Boolean mIsConditionMet;
    public final boolean mOverriding;
    public boolean mStarted;
    public final String mTag;

    public Condition(CoroutineScope coroutineScope) {
        this(coroutineScope, Boolean.FALSE, false);
    }

    public abstract void start();

    public abstract void stop();

    public final void updateCondition(boolean z) {
        Boolean bool = this.mIsConditionMet;
        if (bool != null && bool.booleanValue() == z) {
            return;
        }
        String str = this.mTag;
        if (Log.isLoggable(str, 3)) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("updating condition to ", z, str);
        }
        this.mIsConditionMet = Boolean.valueOf(z);
        Iterator it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            Monitor.AnonymousClass1 anonymousClass1 = (Monitor.AnonymousClass1) ((WeakReference) it.next()).get();
            if (anonymousClass1 == null) {
                it.remove();
            } else {
                Monitor.this.mExecutor.execute(new Monitor$$ExternalSyntheticLambda2(1, anonymousClass1, this));
            }
        }
    }

    public Condition(CoroutineScope coroutineScope, Boolean bool, boolean z) {
        this.mTag = getClass().getSimpleName();
        this.mCallbacks = new ArrayList();
        this.mStarted = false;
        this.mIsConditionMet = bool;
        this.mOverriding = z;
    }
}
