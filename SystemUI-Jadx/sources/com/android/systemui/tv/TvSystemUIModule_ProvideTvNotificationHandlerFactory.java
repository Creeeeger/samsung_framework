package com.android.systemui.tv;

import com.android.systemui.statusbar.NotificationListener;
import com.android.systemui.statusbar.tv.notifications.TvNotificationHandler;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvSystemUIModule_ProvideTvNotificationHandlerFactory implements Provider {
    public final Provider notificationListenerProvider;

    public TvSystemUIModule_ProvideTvNotificationHandlerFactory(Provider provider) {
        this.notificationListenerProvider = provider;
    }

    public static TvNotificationHandler provideTvNotificationHandler(NotificationListener notificationListener) {
        return new TvNotificationHandler(notificationListener);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new TvNotificationHandler((NotificationListener) this.notificationListenerProvider.get());
    }
}
