package com.android.systemui.statusbar.notification.row;

import android.widget.FrameLayout;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.GutsCoordinator$mGutsListener$1;
import com.android.systemui.statusbar.notification.row.NotificationGuts;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.StatusBarNotificationPresenter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationGutsManager$$ExternalSyntheticLambda1 {
    public final /* synthetic */ NotificationGutsManager f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ FrameLayout f$2;

    public /* synthetic */ NotificationGutsManager$$ExternalSyntheticLambda1(NotificationGutsManager notificationGutsManager, FrameLayout frameLayout, Object obj) {
        this.f$0 = notificationGutsManager;
        this.f$2 = frameLayout;
        this.f$1 = obj;
    }

    public final void onGutsClosed(NotificationGuts notificationGuts) {
        boolean z;
        ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) this.f$2;
        NotificationEntry notificationEntry = (NotificationEntry) this.f$1;
        NotificationGutsManager notificationGutsManager = this.f$0;
        notificationGutsManager.getClass();
        expandableNotificationRow.updateContentAccessibilityImportanceForGuts(true);
        expandableNotificationRow.mIsSnoozed = false;
        NotificationGuts.GutsContent gutsContent = notificationGuts.mGutsContent;
        if (gutsContent != null) {
            z = gutsContent.willBeRemoved();
        } else {
            z = false;
        }
        if (!z) {
            ((NotificationStackScrollLayoutController.NotificationListContainerImpl) notificationGutsManager.mListContainer).onHeightChanged(expandableNotificationRow, true ^ ((StatusBarNotificationPresenter) notificationGutsManager.mPresenter).isPresenterFullyCollapsed());
        }
        if (notificationGutsManager.mNotificationGutsExposed == notificationGuts) {
            notificationGutsManager.mNotificationGutsExposed = null;
            notificationGutsManager.mGutsMenuItem = null;
        }
        GutsCoordinator$mGutsListener$1 gutsCoordinator$mGutsListener$1 = notificationGutsManager.mGutsListener;
        if (gutsCoordinator$mGutsListener$1 != null) {
            gutsCoordinator$mGutsListener$1.onGutsClose(notificationEntry);
        }
        notificationGutsManager.mHeadsUpManagerPhone.setGutsShown(expandableNotificationRow.mEntry, false);
    }
}
