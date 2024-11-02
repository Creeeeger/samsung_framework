package com.android.systemui.statusbar.notification.logging;

import android.service.notification.StatusBarNotification;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.logging.nano.Notifications$Notification;
import com.android.systemui.statusbar.notification.logging.nano.Notifications$NotificationList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface NotificationPanelLogger {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum NotificationPanelEvent implements UiEventLogger.UiEventEnum {
        NOTIFICATION_PANEL_OPEN_STATUS_BAR(200),
        NOTIFICATION_PANEL_OPEN_LOCKSCREEN(201),
        NOTIFICATION_DRAG(1226);

        private final int mId;

        NotificationPanelEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    static Notifications$NotificationList toNotificationProto(List list) {
        Notifications$NotificationList notifications$NotificationList = new Notifications$NotificationList();
        if (list == null) {
            return notifications$NotificationList;
        }
        Notifications$Notification[] notifications$NotificationArr = new Notifications$Notification[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            NotificationEntry notificationEntry = (NotificationEntry) it.next();
            StatusBarNotification statusBarNotification = notificationEntry.mSbn;
            if (statusBarNotification != null) {
                Notifications$Notification notifications$Notification = new Notifications$Notification();
                notifications$Notification.uid = statusBarNotification.getUid();
                notifications$Notification.packageName = statusBarNotification.getPackageName();
                if (statusBarNotification.getInstanceId() != null) {
                    notifications$Notification.instanceId = statusBarNotification.getInstanceId().getId();
                }
                if (statusBarNotification.getNotification() != null) {
                    notifications$Notification.isGroupSummary = statusBarNotification.getNotification().isGroupSummary();
                }
                int i2 = notificationEntry.mBucket;
                int i3 = 1;
                if (i2 != 1) {
                    if (i2 != 4) {
                        i3 = 5;
                        if (i2 != 5) {
                            if (i2 != 7) {
                                if (i2 != 8) {
                                    if (i2 != 9) {
                                        i3 = 0;
                                    }
                                } else {
                                    i3 = 4;
                                }
                            } else {
                                i3 = 3;
                            }
                        } else {
                            i3 = 6;
                        }
                    }
                } else {
                    i3 = 2;
                }
                notifications$Notification.section = i3;
                notifications$NotificationArr[i] = notifications$Notification;
            }
            i++;
        }
        notifications$NotificationList.notifications = notifications$NotificationArr;
        return notifications$NotificationList;
    }
}
