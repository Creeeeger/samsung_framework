package com.android.systemui.statusbar.phone.dagger;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.systemui.R;
import com.android.systemui.statusbar.NotificationShelf;
import com.android.systemui.statusbar.NotificationShelfManager;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarViewModule_ProvidesNotificationShelfFactory implements Provider {
    public final Provider layoutInflaterProvider;
    public final Provider notificationShelfManagerProvider;
    public final Provider notificationStackScrollLayoutProvider;

    public StatusBarViewModule_ProvidesNotificationShelfFactory(Provider provider, Provider provider2, Provider provider3) {
        this.layoutInflaterProvider = provider;
        this.notificationStackScrollLayoutProvider = provider2;
        this.notificationShelfManagerProvider = provider3;
    }

    public static NotificationShelf providesNotificationShelf(LayoutInflater layoutInflater, NotificationStackScrollLayout notificationStackScrollLayout, NotificationShelfManager notificationShelfManager) {
        notificationShelfManager.getClass();
        NotificationShelf notificationShelf = (NotificationShelf) layoutInflater.inflate(R.layout.sec_status_bar_notification_shelf, (ViewGroup) notificationStackScrollLayout, false);
        if (notificationShelf != null) {
            return notificationShelf;
        }
        throw new IllegalStateException("R.layout.status_bar_notification_shelf could not be properly inflated");
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesNotificationShelf((LayoutInflater) this.layoutInflaterProvider.get(), (NotificationStackScrollLayout) this.notificationStackScrollLayoutProvider.get(), (NotificationShelfManager) this.notificationShelfManagerProvider.get());
    }
}
