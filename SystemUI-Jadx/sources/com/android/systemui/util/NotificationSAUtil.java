package com.android.systemui.util;

import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationSAUtil {
    public static void sendCancelLog(NotificationEntry notificationEntry, String str) {
        String str2;
        boolean isMediaNotification;
        String str3;
        String str4;
        if (notificationEntry.mSbn.getNotification().category == null) {
            str2 = "null";
        } else {
            str2 = notificationEntry.mSbn.getNotification().category;
        }
        String str5 = notificationEntry.mSbn.getPackageName() + " ; " + notificationEntry.mSbn.getId() + " ; " + notificationEntry.getChannel().getId() + " ; " + str2 + " ; " + notificationEntry.getImportance();
        if (notificationEntry.mRanking.isConversation()) {
            str3 = "conversation";
        } else {
            ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
            if (expandableNotificationRow == null) {
                isMediaNotification = false;
            } else {
                isMediaNotification = expandableNotificationRow.mEntry.mSbn.getNotification().isMediaNotification();
            }
            if (isMediaNotification) {
                str3 = "media";
            } else {
                str3 = "normal";
            }
        }
        String str6 = str3;
        if (notificationEntry.getChannel() != null && notificationEntry.getChannel().isImportantConversation()) {
            str4 = "priority";
        } else if (notificationEntry.getImportance() >= 3) {
            str4 = "alert";
        } else if (notificationEntry.getImportance() < 3) {
            str4 = "silent";
        } else {
            str4 = "";
        }
        SystemUIAnalytics.sendEventCDLog("QPN001", str, "type", str6, "priority", str4, "information", str5);
    }
}
