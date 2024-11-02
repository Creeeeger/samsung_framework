package com.android.systemui.coverlauncher.utils.badge;

import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BadgeItem {
    public final String mInfo;
    public final List mNotificationItems = new ArrayList();
    public int mTotalCount;

    public BadgeItem(String str) {
        this.mInfo = str;
    }

    public final boolean addOrUpdateNotificationItem(NotificationItem notificationItem) {
        NotificationItem notificationItem2;
        ArrayList arrayList = (ArrayList) this.mNotificationItems;
        int indexOf = arrayList.indexOf(notificationItem);
        if (indexOf == -1) {
            notificationItem2 = null;
        } else {
            notificationItem2 = (NotificationItem) arrayList.get(indexOf);
        }
        if (notificationItem2 != null) {
            int i = notificationItem2.count;
            int i2 = notificationItem.count;
            if (i == i2) {
                return false;
            }
            this.mTotalCount = (this.mTotalCount - i) + i2;
            notificationItem2.count = i2;
            return true;
        }
        boolean add = arrayList.add(notificationItem);
        if (add) {
            this.mTotalCount += notificationItem.count;
        }
        return add;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BadgeItem)) {
            return false;
        }
        return this.mInfo.equals(((BadgeItem) obj).mInfo);
    }

    public final String toString() {
        return "info=" + this.mInfo + ", count=" + this.mTotalCount;
    }
}
