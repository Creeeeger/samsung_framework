package com.android.systemui.statusbar.notification;

import com.android.systemui.statusbar.notification.collection.NotificationEntry;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConversationNotificationManager$onEntryViewBound$1 {
    public final /* synthetic */ NotificationEntry $entry;
    public final /* synthetic */ ConversationNotificationManager this$0;

    public ConversationNotificationManager$onEntryViewBound$1(NotificationEntry notificationEntry, ConversationNotificationManager conversationNotificationManager) {
        this.$entry = notificationEntry;
        this.this$0 = conversationNotificationManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
    
        if (r1.isShown() == true) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onExpansionChanged(final boolean r4) {
        /*
            r3 = this;
            com.android.systemui.statusbar.notification.collection.NotificationEntry r0 = r3.$entry
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r1 = r0.row
            if (r1 == 0) goto Le
            boolean r1 = r1.isShown()
            r2 = 1
            if (r1 != r2) goto Le
            goto Lf
        Le:
            r2 = 0
        Lf:
            com.android.systemui.statusbar.notification.ConversationNotificationManager r3 = r3.this$0
            if (r2 == 0) goto L2f
            if (r4 == 0) goto L2f
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r1 = r0.row
            com.android.systemui.statusbar.notification.ConversationNotificationManager$onEntryViewBound$1$1 r2 = new com.android.systemui.statusbar.notification.ConversationNotificationManager$onEntryViewBound$1$1
            r2.<init>()
            r1.mOnIntrinsicHeightReachedRunnable = r2
            int r3 = r1.mActualHeight
            int r4 = r1.getIntrinsicHeight()
            if (r3 != r4) goto L32
            java.lang.Runnable r3 = r1.mOnIntrinsicHeightReachedRunnable
            r3.run()
            r3 = 0
            r1.mOnIntrinsicHeightReachedRunnable = r3
            goto L32
        L2f:
            com.android.systemui.statusbar.notification.ConversationNotificationManager.onEntryViewBound$updateCount(r4, r3, r0)
        L32:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.ConversationNotificationManager$onEntryViewBound$1.onExpansionChanged(boolean):void");
    }
}
