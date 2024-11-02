package com.android.systemui.statusbar.notification.collection.render;

import com.android.systemui.statusbar.notification.collection.GroupEntry;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class GroupMembershipManagerImpl implements GroupMembershipManager {
    public final List getChildren(ListEntry listEntry) {
        if (listEntry instanceof GroupEntry) {
            return ((GroupEntry) listEntry).mUnmodifiableChildren;
        }
        if (isGroupSummary(listEntry.getRepresentativeEntry())) {
            return listEntry.getRepresentativeEntry().getParent().mUnmodifiableChildren;
        }
        return null;
    }

    public final NotificationEntry getGroupSummary(NotificationEntry notificationEntry) {
        boolean z;
        if (notificationEntry != null) {
            if (notificationEntry.getParent() == GroupEntry.ROOT_ENTRY) {
                z = true;
            } else {
                z = false;
            }
            if (!z && notificationEntry.getParent() != null) {
                return notificationEntry.getParent().mSummary;
            }
            return null;
        }
        return null;
    }

    public final boolean isGroupSummary(NotificationEntry notificationEntry) {
        if (getGroupSummary(notificationEntry) == notificationEntry) {
            return true;
        }
        return false;
    }
}
