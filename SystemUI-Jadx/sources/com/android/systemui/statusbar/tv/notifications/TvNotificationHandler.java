package com.android.systemui.statusbar.tv.notifications;

import android.app.Notification;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import android.util.SparseArray;
import com.android.systemui.CoreStartable;
import com.android.systemui.statusbar.NotificationListener;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvNotificationHandler implements CoreStartable, NotificationListener.NotificationHandler {
    public final NotificationListener mNotificationListener;
    public final SparseArray mNotifications = new SparseArray();
    public Listener mUpdateListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Listener {
    }

    public TvNotificationHandler(NotificationListener notificationListener) {
        this.mNotificationListener = notificationListener;
    }

    @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
    public final void onNotificationPosted(StatusBarNotification statusBarNotification, NotificationListenerService.RankingMap rankingMap) {
        if (!new Notification.TvExtender(statusBarNotification.getNotification()).isAvailableOnTv()) {
            return;
        }
        SparseArray sparseArray = this.mNotifications;
        sparseArray.put(statusBarNotification.getId(), statusBarNotification);
        Listener listener = this.mUpdateListener;
        if (listener != null) {
            ((TvNotificationPanelActivity) listener).notificationsUpdated(sparseArray);
        }
        Log.d("TvNotificationHandler", "Notification added");
    }

    @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
    public final void onNotificationRemoved(StatusBarNotification statusBarNotification, NotificationListenerService.RankingMap rankingMap, int i) {
        SparseArray sparseArray = this.mNotifications;
        if (sparseArray.contains(statusBarNotification.getId())) {
            sparseArray.remove(statusBarNotification.getId());
            Log.d("TvNotificationHandler", "Notification removed");
            Listener listener = this.mUpdateListener;
            if (listener != null) {
                ((TvNotificationPanelActivity) listener).notificationsUpdated(sparseArray);
            }
        }
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        NotificationListener notificationListener = this.mNotificationListener;
        notificationListener.addNotificationHandler(this);
        notificationListener.registerAsSystemService();
    }

    @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
    public final void onNotificationRankingUpdate(NotificationListenerService.RankingMap rankingMap) {
    }

    @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
    public final void onNotificationsInitialized() {
    }
}
