package com.android.systemui.statusbar.notification;

import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class NotificationClicker$$ExternalSyntheticOutline0 {
    public static void m(NotificationEntry notificationEntry, LogMessage logMessage, LogBuffer logBuffer, LogMessage logMessage2) {
        logMessage.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        logBuffer.commit(logMessage2);
    }
}
