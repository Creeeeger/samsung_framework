package com.android.systemui.statusbar.notification.stack;

import com.android.systemui.dump.DumpManager;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationRoundnessManager_Factory implements Provider {
    public final Provider dumpManagerProvider;

    public NotificationRoundnessManager_Factory(Provider provider) {
        this.dumpManagerProvider = provider;
    }

    public static NotificationRoundnessManager newInstance(DumpManager dumpManager) {
        return new NotificationRoundnessManager(dumpManager);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new NotificationRoundnessManager((DumpManager) this.dumpManagerProvider.get());
    }
}
