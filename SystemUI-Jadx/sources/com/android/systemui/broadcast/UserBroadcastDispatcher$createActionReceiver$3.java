package com.android.systemui.broadcast;

import android.content.BroadcastReceiver;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class UserBroadcastDispatcher$createActionReceiver$3 extends FunctionReferenceImpl implements Function2 {
    public UserBroadcastDispatcher$createActionReceiver$3(Object obj) {
        super(2, obj, PendingRemovalStore.class, "isPendingRemoval", "isPendingRemoval(Landroid/content/BroadcastReceiver;I)Z", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean z;
        BroadcastReceiver broadcastReceiver = (BroadcastReceiver) obj;
        int intValue = ((Number) obj2).intValue();
        PendingRemovalStore pendingRemovalStore = (PendingRemovalStore) this.receiver;
        synchronized (pendingRemovalStore.pendingRemoval) {
            if (!pendingRemovalStore.pendingRemoval.contains(intValue, broadcastReceiver)) {
                if (!pendingRemovalStore.pendingRemoval.contains(-1, broadcastReceiver)) {
                    z = false;
                }
            }
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
