package com.android.systemui.statusbar.notification.collection.render;

import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda5;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class GroupExpansionManagerImpl implements GroupExpansionManager, Dumpable {
    public final GroupMembershipManager mGroupMembershipManager;
    public final Set mOnGroupChangeListeners = new HashSet();
    public final Set mExpandedGroups = new HashSet();

    public GroupExpansionManagerImpl(DumpManager dumpManager, GroupMembershipManager groupMembershipManager) {
        this.mGroupMembershipManager = groupMembershipManager;
    }

    public final void collapseGroups() {
        Iterator it = new ArrayList(this.mExpandedGroups).iterator();
        while (it.hasNext()) {
            setGroupExpanded((NotificationEntry) it.next(), false);
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "NotificationEntryExpansion state:", "  mExpandedGroups: ");
        Set set = this.mExpandedGroups;
        m.append(((HashSet) set).size());
        printWriter.println(m.toString());
        Iterator it = ((HashSet) set).iterator();
        while (it.hasNext()) {
            KeyboardUI$$ExternalSyntheticOutline0.m(new StringBuilder("  * "), ((NotificationEntry) it.next()).mKey, printWriter);
        }
    }

    public final boolean isGroupExpanded(NotificationEntry notificationEntry) {
        return ((HashSet) this.mExpandedGroups).contains(((GroupMembershipManagerImpl) this.mGroupMembershipManager).getGroupSummary(notificationEntry));
    }

    public final void setGroupExpanded(NotificationEntry notificationEntry, boolean z) {
        boolean z2;
        ExpandableNotificationRow expandableNotificationRow;
        NotificationChildrenContainer notificationChildrenContainer;
        if (notificationEntry == null) {
            return;
        }
        NotificationEntry groupSummary = ((GroupMembershipManagerImpl) this.mGroupMembershipManager).getGroupSummary(notificationEntry);
        Set set = this.mExpandedGroups;
        if (z) {
            ((HashSet) set).add(groupSummary);
        } else {
            HashSet hashSet = (HashSet) set;
            hashSet.remove(groupSummary);
            hashSet.remove(notificationEntry);
        }
        if (notificationEntry.isChildInGroup() && groupSummary != null && (expandableNotificationRow = groupSummary.row) != null && (notificationChildrenContainer = expandableNotificationRow.mChildrenContainer) != null) {
            notificationChildrenContainer.setChildrenExpanded$1(z);
            notificationChildrenContainer.updateHeaderForExpansion(z);
        }
        Iterator it = ((HashSet) this.mOnGroupChangeListeners).iterator();
        while (it.hasNext()) {
            NotificationStackScrollLayoutController$$ExternalSyntheticLambda5 notificationStackScrollLayoutController$$ExternalSyntheticLambda5 = (NotificationStackScrollLayoutController$$ExternalSyntheticLambda5) it.next();
            ExpandableNotificationRow expandableNotificationRow2 = notificationEntry.row;
            NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController$$ExternalSyntheticLambda5.f$0.mView;
            if (notificationStackScrollLayout.mAnimationsEnabled && (notificationStackScrollLayout.mIsExpanded || expandableNotificationRow2.mIsPinned)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                notificationStackScrollLayout.mExpandedGroupView = expandableNotificationRow2;
                notificationStackScrollLayout.mNeedsAnimation = true;
            }
            expandableNotificationRow2.setChildrenExpanded(z);
            notificationStackScrollLayout.onChildHeightChanged(expandableNotificationRow2, false);
            notificationStackScrollLayout.mAnimationFinishedRunnables.add(new Runnable(notificationStackScrollLayout, expandableNotificationRow2) { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.16
                public final /* synthetic */ ExpandableNotificationRow val$changedRow;

                {
                    this.val$changedRow = expandableNotificationRow2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ExpandableNotificationRow expandableNotificationRow3 = this.val$changedRow;
                    expandableNotificationRow3.mGroupExpansionChanging = false;
                    expandableNotificationRow3.updateBackgroundForGroupState();
                }
            });
        }
    }
}
