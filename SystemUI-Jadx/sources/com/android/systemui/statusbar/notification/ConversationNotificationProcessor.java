package com.android.systemui.statusbar.notification;

import android.app.Notification;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import com.android.systemui.statusbar.notification.ConversationNotificationManager;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConversationNotificationProcessor {
    public final ConversationNotificationManager conversationNotificationManager;
    public final LauncherApps launcherApps;

    public ConversationNotificationProcessor(LauncherApps launcherApps, ConversationNotificationManager conversationNotificationManager) {
        this.launcherApps = launcherApps;
        this.conversationNotificationManager = conversationNotificationManager;
    }

    public final void processNotification(NotificationEntry notificationEntry, Notification.Builder builder) {
        Notification.MessagingStyle messagingStyle;
        int i;
        Notification.Style style = builder.getStyle();
        if (style instanceof Notification.MessagingStyle) {
            messagingStyle = (Notification.MessagingStyle) style;
        } else {
            messagingStyle = null;
        }
        if (messagingStyle == null) {
            return;
        }
        if (notificationEntry.mRanking.getChannel().isImportantConversation()) {
            i = 2;
        } else {
            i = 1;
        }
        messagingStyle.setConversationType(i);
        ShortcutInfo conversationShortcutInfo = notificationEntry.mRanking.getConversationShortcutInfo();
        if (conversationShortcutInfo != null) {
            messagingStyle.setShortcutIcon(this.launcherApps.getShortcutIcon(conversationShortcutInfo));
            CharSequence label = conversationShortcutInfo.getLabel();
            if (label != null) {
                messagingStyle.setConversationTitle(label);
            }
        }
        ConversationNotificationManager conversationNotificationManager = this.conversationNotificationManager;
        Object compute = conversationNotificationManager.states.compute(notificationEntry.mKey, new ConversationNotificationManager$getUnreadCount$1(notificationEntry, conversationNotificationManager, builder));
        Intrinsics.checkNotNull(compute);
        messagingStyle.setUnreadMessageCount(((ConversationNotificationManager.ConversationState) compute).unreadCount);
    }
}
