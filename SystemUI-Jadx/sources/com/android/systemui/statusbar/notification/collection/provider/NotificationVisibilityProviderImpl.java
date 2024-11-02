package com.android.systemui.statusbar.notification.collection.provider;

import com.android.internal.statusbar.NotificationVisibility;
import com.android.systemui.statusbar.notification.collection.NotifLiveDataStore;
import com.android.systemui.statusbar.notification.collection.NotifLiveDataStoreImpl;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.logging.NotificationLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationVisibilityProviderImpl implements NotificationVisibilityProvider {
    public final CommonNotifCollection notifCollection;
    public final NotifLiveDataStore notifDataStore;

    public NotificationVisibilityProviderImpl(NotifLiveDataStore notifLiveDataStore, CommonNotifCollection commonNotifCollection) {
        this.notifDataStore = notifLiveDataStore;
        this.notifCollection = commonNotifCollection;
    }

    public final NotificationVisibility obtain(NotificationEntry notificationEntry) {
        boolean z;
        int intValue = ((Number) ((NotifLiveDataStoreImpl) this.notifDataStore).activeNotifCount.getValue()).intValue();
        int rank = notificationEntry.mRanking.getRank();
        boolean z2 = true;
        if (notificationEntry.row != null) {
            z = true;
        } else {
            z = false;
        }
        NotificationVisibility.NotificationLocation notificationLocation = NotificationLogger.getNotificationLocation(notificationEntry);
        if (!z) {
            z2 = false;
        }
        return NotificationVisibility.obtain(notificationEntry.mKey, rank, intValue, z2, notificationLocation);
    }
}
