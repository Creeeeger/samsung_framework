package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.statusbar.policy.HeadsUpManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HunMutatorImpl {
    public final List deferred = new ArrayList();
    public final HeadsUpManager headsUpManager;

    public HunMutatorImpl(HeadsUpManager headsUpManager) {
        this.headsUpManager = headsUpManager;
    }
}
