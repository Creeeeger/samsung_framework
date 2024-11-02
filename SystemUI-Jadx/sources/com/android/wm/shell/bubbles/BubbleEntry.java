package com.android.wm.shell.bubbles;

import android.app.Notification;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubbleEntry {
    public final boolean mIsDismissable;
    public final NotificationListenerService.Ranking mRanking;
    public final StatusBarNotification mSbn;
    public final boolean mShouldSuppressNotificationDot;
    public final boolean mShouldSuppressNotificationList;
    public final boolean mShouldSuppressPeek;

    public BubbleEntry(StatusBarNotification statusBarNotification, NotificationListenerService.Ranking ranking, boolean z, boolean z2, boolean z3, boolean z4) {
        this.mSbn = statusBarNotification;
        this.mRanking = ranking;
        this.mIsDismissable = z;
        this.mShouldSuppressNotificationDot = z2;
        this.mShouldSuppressNotificationList = z3;
        this.mShouldSuppressPeek = z4;
    }

    public final Notification.BubbleMetadata getBubbleMetadata() {
        return this.mSbn.getNotification().getBubbleMetadata();
    }

    public final String getKey() {
        return this.mSbn.getKey();
    }

    public final boolean isBubble() {
        if ((this.mSbn.getNotification().flags & 4096) != 0) {
            return true;
        }
        return false;
    }

    public final void setFlagBubble(boolean z) {
        isBubble();
        StatusBarNotification statusBarNotification = this.mSbn;
        if (!z) {
            statusBarNotification.getNotification().flags &= -4097;
        } else if (getBubbleMetadata() != null && this.mRanking.canBubble()) {
            statusBarNotification.getNotification().flags |= 4096;
        }
        isBubble();
    }
}
