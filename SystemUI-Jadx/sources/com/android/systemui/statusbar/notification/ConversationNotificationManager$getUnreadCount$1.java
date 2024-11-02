package com.android.systemui.statusbar.notification;

import android.app.Notification;
import com.android.systemui.statusbar.notification.ConversationNotificationManager;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import java.util.function.BiFunction;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConversationNotificationManager$getUnreadCount$1 implements BiFunction {
    public final /* synthetic */ NotificationEntry $entry;
    public final /* synthetic */ Notification.Builder $recoveredBuilder;
    public final /* synthetic */ ConversationNotificationManager this$0;

    public ConversationNotificationManager$getUnreadCount$1(NotificationEntry notificationEntry, ConversationNotificationManager conversationNotificationManager, Notification.Builder builder) {
        this.$entry = notificationEntry;
        this.this$0 = conversationNotificationManager;
        this.$recoveredBuilder = builder;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        int i;
        boolean areStyledNotificationsVisiblyDifferent;
        ConversationNotificationManager.ConversationState conversationState = (ConversationNotificationManager.ConversationState) obj2;
        if (conversationState != null) {
            ConversationNotificationManager conversationNotificationManager = this.this$0;
            Notification.Builder builder = this.$recoveredBuilder;
            int i2 = ConversationNotificationManager.$r8$clinit;
            conversationNotificationManager.getClass();
            Notification notification2 = conversationState.f14notification;
            if ((notification2.flags & 8) != 0) {
                areStyledNotificationsVisiblyDifferent = false;
            } else {
                areStyledNotificationsVisiblyDifferent = Notification.areStyledNotificationsVisiblyDifferent(Notification.Builder.recoverBuilder(conversationNotificationManager.context, notification2), builder);
            }
            i = conversationState.unreadCount;
            if (areStyledNotificationsVisiblyDifferent) {
                i++;
            }
        } else {
            i = 1;
        }
        return new ConversationNotificationManager.ConversationState(i, this.$entry.mSbn.getNotification());
    }
}
