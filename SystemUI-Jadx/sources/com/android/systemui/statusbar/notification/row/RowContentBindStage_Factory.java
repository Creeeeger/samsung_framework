package com.android.systemui.statusbar.notification.row;

import android.os.PowerManager;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RowContentBindStage_Factory implements Provider {
    public final Provider binderProvider;
    public final Provider errorManagerProvider;
    public final Provider loggerProvider;
    public final Provider pmProvider;

    public RowContentBindStage_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.binderProvider = provider;
        this.errorManagerProvider = provider2;
        this.loggerProvider = provider3;
        this.pmProvider = provider4;
    }

    public static RowContentBindStage newInstance(NotificationRowContentBinder notificationRowContentBinder, NotifInflationErrorManager notifInflationErrorManager, RowContentBindStageLogger rowContentBindStageLogger, PowerManager powerManager) {
        return new RowContentBindStage(notificationRowContentBinder, notifInflationErrorManager, rowContentBindStageLogger, powerManager);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new RowContentBindStage((NotificationRowContentBinder) this.binderProvider.get(), (NotifInflationErrorManager) this.errorManagerProvider.get(), (RowContentBindStageLogger) this.loggerProvider.get(), (PowerManager) this.pmProvider.get());
    }
}
