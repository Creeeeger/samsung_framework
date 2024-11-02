package com.android.systemui.statusbar.notification.collection.coordinator;

import android.os.Trace;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.NotifSection;
import com.android.systemui.statusbar.notification.collection.listbuilder.OnAfterRenderListListener;
import com.android.systemui.statusbar.notification.collection.provider.SeenNotificationsProviderImpl;
import com.android.systemui.statusbar.notification.collection.render.GroupExpansionManagerImpl;
import com.android.systemui.statusbar.notification.collection.render.NotifStackController;
import com.android.systemui.statusbar.notification.collection.render.NotifStats;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.NotificationIconAreaController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StackCoordinator implements Coordinator {
    public final NotificationIconAreaController notificationIconAreaController;

    public StackCoordinator(GroupExpansionManagerImpl groupExpansionManagerImpl, NotificationIconAreaController notificationIconAreaController) {
        this.notificationIconAreaController = notificationIconAreaController;
    }

    public static NotifStats calculateNotifStats(List list) {
        boolean z;
        Iterator it = list.iterator();
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        while (it.hasNext()) {
            ListEntry listEntry = (ListEntry) it.next();
            NotifSection section = listEntry.getSection();
            if (section != null) {
                NotificationEntry representativeEntry = listEntry.getRepresentativeEntry();
                if (representativeEntry != null) {
                    if (section.bucket == 9) {
                        z = true;
                    } else {
                        z = false;
                    }
                    boolean isClearable = representativeEntry.isClearable();
                    if (z && isClearable) {
                        z5 = true;
                    } else if (z && !isClearable) {
                        z4 = true;
                    } else if (!z && isClearable) {
                        z3 = true;
                    } else if (!z && !isClearable) {
                        z2 = true;
                    }
                } else {
                    throw new IllegalStateException(KeyAttributes$$ExternalSyntheticOutline0.m("Null notif entry for ", listEntry.getKey()).toString());
                }
            } else {
                throw new IllegalStateException(KeyAttributes$$ExternalSyntheticOutline0.m("Null section for ", listEntry.getKey()).toString());
            }
        }
        return new NotifStats(list.size(), z2, z3, z4, z5);
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        ((ArrayList) notifPipeline.mRenderStageManager.onAfterRenderListListeners).add(new OnAfterRenderListListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.StackCoordinator$attach$1
            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.OnAfterRenderListListener
            public final void onAfterRenderList(List list, NotifStackController notifStackController) {
                StackCoordinator stackCoordinator = StackCoordinator.this;
                stackCoordinator.getClass();
                boolean isTagEnabled = Trace.isTagEnabled(4096L);
                NotificationIconAreaController notificationIconAreaController = stackCoordinator.notificationIconAreaController;
                if (isTagEnabled) {
                    Trace.traceBegin(4096L, "StackCoordinator.onAfterRenderList");
                    try {
                        NotifStats calculateNotifStats = StackCoordinator.calculateNotifStats(list);
                        NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                        notificationStackScrollLayoutController.mNotifStats = calculateNotifStats;
                        notificationStackScrollLayoutController.mView.mHasFilteredOutSeenNotifications = ((SeenNotificationsProviderImpl) notificationStackScrollLayoutController.mSeenNotificationsProvider).hasFilteredOutSeenNotifications;
                        notificationStackScrollLayoutController.updateFooter();
                        notificationStackScrollLayoutController.updateShowEmptyShadeView();
                        notificationStackScrollLayoutController.mShelfManager.updateClearAllOnShelf();
                        notificationIconAreaController.updateNotificationIcons(list);
                        Unit unit = Unit.INSTANCE;
                        return;
                    } finally {
                        Trace.traceEnd(4096L);
                    }
                }
                NotifStats calculateNotifStats2 = StackCoordinator.calculateNotifStats(list);
                NotificationStackScrollLayoutController notificationStackScrollLayoutController2 = NotificationStackScrollLayoutController.this;
                notificationStackScrollLayoutController2.mNotifStats = calculateNotifStats2;
                notificationStackScrollLayoutController2.mView.mHasFilteredOutSeenNotifications = ((SeenNotificationsProviderImpl) notificationStackScrollLayoutController2.mSeenNotificationsProvider).hasFilteredOutSeenNotifications;
                notificationStackScrollLayoutController2.updateFooter();
                notificationStackScrollLayoutController2.updateShowEmptyShadeView();
                notificationStackScrollLayoutController2.mShelfManager.updateClearAllOnShelf();
                notificationIconAreaController.updateNotificationIcons(list);
            }
        });
    }
}
