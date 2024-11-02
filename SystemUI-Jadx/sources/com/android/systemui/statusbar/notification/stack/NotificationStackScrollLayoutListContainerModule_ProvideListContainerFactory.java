package com.android.systemui.statusbar.notification.stack;

import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationStackScrollLayoutListContainerModule_ProvideListContainerFactory implements Provider {
    public final Provider nsslControllerProvider;

    public NotificationStackScrollLayoutListContainerModule_ProvideListContainerFactory(Provider provider) {
        this.nsslControllerProvider = provider;
    }

    public static NotificationListContainer provideListContainer(NotificationStackScrollLayoutController notificationStackScrollLayoutController) {
        NotificationStackScrollLayoutController.NotificationListContainerImpl notificationListContainerImpl = notificationStackScrollLayoutController.mNotificationListContainer;
        Preconditions.checkNotNullFromProvides(notificationListContainerImpl);
        return notificationListContainerImpl;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        NotificationStackScrollLayoutController.NotificationListContainerImpl notificationListContainerImpl = ((NotificationStackScrollLayoutController) this.nsslControllerProvider.get()).mNotificationListContainer;
        Preconditions.checkNotNullFromProvides(notificationListContainerImpl);
        return notificationListContainerImpl;
    }
}
