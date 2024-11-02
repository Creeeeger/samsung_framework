package com.android.systemui.statusbar.notification.collection.provider;

import com.android.systemui.statusbar.notification.collection.render.GroupMembershipManager;
import com.android.systemui.statusbar.notification.people.PeopleNotificationIdentifier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HighPriorityProvider {
    public final GroupMembershipManager mGroupMembershipManager;
    public final PeopleNotificationIdentifier mPeopleNotificationIdentifier;

    public HighPriorityProvider(PeopleNotificationIdentifier peopleNotificationIdentifier, GroupMembershipManager groupMembershipManager) {
        this.mPeopleNotificationIdentifier = peopleNotificationIdentifier;
        this.mGroupMembershipManager = groupMembershipManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
    
        if (r1.mSbn.getNotification().isStyle(android.app.Notification.MessagingStyle.class) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005c, code lost:
    
        if (r2 != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006e, code lost:
    
        if (((com.android.systemui.statusbar.notification.collection.render.GroupMembershipManagerImpl) r3).isGroupSummary((com.android.systemui.statusbar.notification.collection.NotificationEntry) r7) == false) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isHighPriority(com.android.systemui.statusbar.notification.collection.ListEntry r7, boolean r8) {
        /*
            r6 = this;
            r0 = 0
            if (r7 != 0) goto L4
            return r0
        L4:
            com.android.systemui.statusbar.notification.collection.NotificationEntry r1 = r7.getRepresentativeEntry()
            if (r1 != 0) goto Lb
            return r0
        Lb:
            android.service.notification.NotificationListenerService$Ranking r2 = r1.mRanking
            int r2 = r2.getImportance()
            r3 = 3
            r4 = 1
            if (r2 >= r3) goto La0
            if (r8 == 0) goto L5e
            android.service.notification.NotificationListenerService$Ranking r2 = r1.mRanking
            android.app.NotificationChannel r2 = r2.getChannel()
            if (r2 == 0) goto L2d
            android.service.notification.NotificationListenerService$Ranking r2 = r1.mRanking
            android.app.NotificationChannel r2 = r2.getChannel()
            boolean r2 = r2.hasUserSetImportance()
            if (r2 == 0) goto L2d
            r2 = r4
            goto L2e
        L2d:
            r2 = r0
        L2e:
            if (r2 != 0) goto L5b
            android.service.notification.StatusBarNotification r2 = r1.mSbn
            android.app.Notification r2 = r2.getNotification()
            boolean r2 = r2.isMediaNotification()
            if (r2 != 0) goto L59
            com.android.systemui.statusbar.notification.people.PeopleNotificationIdentifier r2 = r6.mPeopleNotificationIdentifier
            com.android.systemui.statusbar.notification.people.PeopleNotificationIdentifierImpl r2 = (com.android.systemui.statusbar.notification.people.PeopleNotificationIdentifierImpl) r2
            int r2 = r2.getPeopleNotificationType(r1)
            if (r2 == 0) goto L48
            r2 = r4
            goto L49
        L48:
            r2 = r0
        L49:
            if (r2 != 0) goto L59
            android.service.notification.StatusBarNotification r2 = r1.mSbn
            android.app.Notification r2 = r2.getNotification()
            java.lang.Class<android.app.Notification$MessagingStyle> r3 = android.app.Notification.MessagingStyle.class
            boolean r2 = r2.isStyle(r3)
            if (r2 == 0) goto L5b
        L59:
            r2 = r4
            goto L5c
        L5b:
            r2 = r0
        L5c:
            if (r2 != 0) goto La0
        L5e:
            boolean r2 = r7 instanceof com.android.systemui.statusbar.notification.collection.NotificationEntry
            com.android.systemui.statusbar.notification.collection.render.GroupMembershipManager r3 = r6.mGroupMembershipManager
            if (r2 == 0) goto L71
            r2 = r7
            com.android.systemui.statusbar.notification.collection.NotificationEntry r2 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r2
            r5 = r3
            com.android.systemui.statusbar.notification.collection.render.GroupMembershipManagerImpl r5 = (com.android.systemui.statusbar.notification.collection.render.GroupMembershipManagerImpl) r5
            boolean r2 = r5.isGroupSummary(r2)
            if (r2 != 0) goto L71
            goto L93
        L71:
            com.android.systemui.statusbar.notification.collection.render.GroupMembershipManagerImpl r3 = (com.android.systemui.statusbar.notification.collection.render.GroupMembershipManagerImpl) r3
            java.util.List r2 = r3.getChildren(r7)
            if (r2 == 0) goto L93
            java.util.Iterator r2 = r2.iterator()
        L7d:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L93
            java.lang.Object r3 = r2.next()
            com.android.systemui.statusbar.notification.collection.NotificationEntry r3 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r3
            if (r3 == r7) goto L7d
            boolean r3 = r6.isHighPriority(r3, r8)
            if (r3 == 0) goto L7d
            r6 = r4
            goto L94
        L93:
            r6 = r0
        L94:
            if (r6 != 0) goto La0
            android.service.notification.StatusBarNotification r6 = r1.mSbn
            android.app.Notification r6 = r6.getNotification()
            int r6 = r6.semPriority
            if (r6 <= 0) goto La1
        La0:
            r0 = r4
        La1:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.provider.HighPriorityProvider.isHighPriority(com.android.systemui.statusbar.notification.collection.ListEntry, boolean):boolean");
    }
}
