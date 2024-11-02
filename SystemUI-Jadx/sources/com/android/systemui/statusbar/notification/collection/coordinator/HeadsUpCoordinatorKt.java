package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.statusbar.policy.HeadsUpManager;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class HeadsUpCoordinatorKt {
    public static final void access$modifyHuns(HeadsUpManager headsUpManager, Function1 function1) {
        HunMutatorImpl hunMutatorImpl = new HunMutatorImpl(headsUpManager);
        function1.invoke(hunMutatorImpl);
        ArrayList arrayList = (ArrayList) hunMutatorImpl.deferred;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            hunMutatorImpl.headsUpManager.removeNotification((String) pair.component1(), ((Boolean) pair.component2()).booleanValue());
        }
        arrayList.clear();
    }
}
