package com.android.systemui.people.widget;

import android.app.people.ConversationChannel;
import android.service.notification.ConversationChannelWrapper;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PeopleSpaceWidgetManager$$ExternalSyntheticLambda4 implements Function {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return new PeopleTileKey((NotificationEntry) obj);
            case 1:
                return ((ConversationChannelWrapper) obj).getShortcutInfo();
            case 2:
                return ((ConversationChannelWrapper) obj).getShortcutInfo();
            case 3:
                return ((ConversationChannel) obj).getShortcutInfo();
            default:
                return Integer.valueOf(Integer.parseInt((String) obj));
        }
    }
}
