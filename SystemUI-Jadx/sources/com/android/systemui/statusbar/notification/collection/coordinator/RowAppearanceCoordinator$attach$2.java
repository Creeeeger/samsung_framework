package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.statusbar.notification.AssistantFeedbackController;
import com.android.systemui.statusbar.notification.FeedbackIcon;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.render.NotifViewController;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRowController;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationHeaderViewWrapper;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class RowAppearanceCoordinator$attach$2 {
    public final /* synthetic */ RowAppearanceCoordinator $tmp0;

    public RowAppearanceCoordinator$attach$2(RowAppearanceCoordinator rowAppearanceCoordinator) {
        this.$tmp0 = rowAppearanceCoordinator;
    }

    public final void onAfterRenderEntry(NotificationEntry notificationEntry, NotifViewController notifViewController) {
        boolean z;
        RowAppearanceCoordinator rowAppearanceCoordinator = this.$tmp0;
        if (!rowAppearanceCoordinator.mAlwaysExpandNonGroupedNotification) {
            Intrinsics.areEqual(notificationEntry, rowAppearanceCoordinator.entryToExpand);
        }
        AssistantFeedbackController assistantFeedbackController = rowAppearanceCoordinator.mAssistantFeedbackController;
        FeedbackIcon feedbackIcon = (FeedbackIcon) assistantFeedbackController.mIcons.get(assistantFeedbackController.getFeedbackStatus(notificationEntry));
        ExpandableNotificationRow expandableNotificationRow = ((ExpandableNotificationRowController) notifViewController).mView;
        if (expandableNotificationRow.mIsSummaryWithChildren) {
            NotificationChildrenContainer notificationChildrenContainer = expandableNotificationRow.mChildrenContainer;
            NotificationHeaderViewWrapper notificationHeaderViewWrapper = notificationChildrenContainer.mNotificationHeaderWrapper;
            if (notificationHeaderViewWrapper != null) {
                notificationHeaderViewWrapper.setFeedbackIcon(feedbackIcon);
            }
            NotificationHeaderViewWrapper notificationHeaderViewWrapper2 = notificationChildrenContainer.mNotificationHeaderWrapperLowPriority;
            if (notificationHeaderViewWrapper2 != null) {
                notificationHeaderViewWrapper2.setFeedbackIcon(feedbackIcon);
            }
            NotificationHeaderViewWrapper notificationHeaderViewWrapper3 = notificationChildrenContainer.mNotificationHeaderWrapperExpanded;
            if (notificationHeaderViewWrapper3 != null) {
                notificationHeaderViewWrapper3.setFeedbackIcon(feedbackIcon);
            }
        }
        NotificationContentView notificationContentView = expandableNotificationRow.mPrivateLayout;
        if (notificationContentView.mContractedChild != null) {
            notificationContentView.mContractedWrapper.setFeedbackIcon(feedbackIcon);
        }
        if (notificationContentView.mExpandedChild != null) {
            notificationContentView.mExpandedWrapper.setFeedbackIcon(feedbackIcon);
        }
        if (notificationContentView.mHeadsUpChild != null) {
            notificationContentView.mHeadsUpWrapper.setFeedbackIcon(feedbackIcon);
        }
        NotificationContentView notificationContentView2 = expandableNotificationRow.mPublicLayout;
        if (notificationContentView2.mContractedChild != null) {
            notificationContentView2.mContractedWrapper.setFeedbackIcon(feedbackIcon);
        }
        if (notificationContentView2.mExpandedChild != null) {
            notificationContentView2.mExpandedWrapper.setFeedbackIcon(feedbackIcon);
        }
        if (notificationContentView2.mHeadsUpChild != null) {
            notificationContentView2.mHeadsUpWrapper.setFeedbackIcon(feedbackIcon);
        }
        long currentTimeMillis = System.currentTimeMillis() - notificationEntry.mRanking.getLastAudiblyAlertedMillis();
        long j = ExpandableNotificationRow.RECENTLY_ALERTED_THRESHOLD_MS;
        if (currentTimeMillis < j) {
            z = true;
        } else {
            z = false;
        }
        expandableNotificationRow.applyAudiblyAlertedRecently(z);
        expandableNotificationRow.removeCallbacks(expandableNotificationRow.mExpireRecentlyAlertedFlag);
        if (z) {
            expandableNotificationRow.postDelayed(expandableNotificationRow.mExpireRecentlyAlertedFlag, j - currentTimeMillis);
        }
    }
}
