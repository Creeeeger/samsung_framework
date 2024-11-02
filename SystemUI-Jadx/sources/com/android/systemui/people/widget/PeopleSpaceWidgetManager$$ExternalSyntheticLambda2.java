package com.android.systemui.people.widget;

import android.service.notification.ConversationChannelWrapper;
import android.text.TextUtils;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PeopleSpaceWidgetManager$$ExternalSyntheticLambda2 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return !TextUtils.isEmpty((String) obj);
            case 1:
                ConversationChannelWrapper conversationChannelWrapper = (ConversationChannelWrapper) obj;
                if (conversationChannelWrapper.getNotificationChannel() == null || !conversationChannelWrapper.getNotificationChannel().isImportantConversation()) {
                    return false;
                }
                return true;
            default:
                ConversationChannelWrapper conversationChannelWrapper2 = (ConversationChannelWrapper) obj;
                if (conversationChannelWrapper2.getNotificationChannel() != null && conversationChannelWrapper2.getNotificationChannel().isImportantConversation()) {
                    return false;
                }
                return true;
        }
    }
}
