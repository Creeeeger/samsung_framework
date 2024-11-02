package com.android.systemui.statusbar.notification.collection.render;

import android.view.View;
import com.android.systemui.NotiRune;
import com.android.systemui.statusbar.notification.collection.PipelineDumpable;
import com.android.systemui.statusbar.notification.collection.PipelineDumper;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.notification.stack.NotificationListContainer;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.util.Assert;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RootNodeController implements NodeController, PipelineDumpable {
    public final NotificationListContainer listContainer;
    public final String nodeLabel = "<root>";
    public final View view;

    public RootNodeController(NotificationListContainer notificationListContainer, View view) {
        this.listContainer = notificationListContainer;
        this.view = view;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void addChildAt(NodeController nodeController, int i) {
        ExpandableNotificationRow expandableNotificationRow;
        boolean z;
        View view = nodeController.getView();
        NotificationListContainer notificationListContainer = this.listContainer;
        NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayoutController.this.mView;
        notificationStackScrollLayout.getClass();
        Assert.isMainThread();
        if (view.getParent() != null && (view instanceof ExpandableView)) {
            ((ExpandableView) view).removeFromTransientContainerForAdditionTo(notificationStackScrollLayout);
        }
        notificationStackScrollLayout.addView(view, i);
        if (view instanceof ExpandableNotificationRow) {
            NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayout.mController.mView;
            notificationStackScrollLayout2.getClass();
            if (NotiRune.NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW) {
                z = false;
            } else {
                z = notificationStackScrollLayout2.mEmptyShadeView.mIsVisible;
            }
            if (z) {
                notificationStackScrollLayout.mController.updateShowEmptyShadeView();
                notificationStackScrollLayout.updateFooter();
                notificationStackScrollLayout.mController.updateImportantForAccessibility();
            }
        }
        notificationStackScrollLayout.mSpeedBumpIndexDirty = true;
        notificationListContainer.getClass();
        View view2 = nodeController.getView();
        if (view2 instanceof ExpandableNotificationRow) {
            expandableNotificationRow = (ExpandableNotificationRow) view2;
        } else {
            expandableNotificationRow = null;
        }
        if (expandableNotificationRow != null) {
            expandableNotificationRow.mChangingPosition = false;
        }
    }

    @Override // com.android.systemui.statusbar.notification.collection.PipelineDumpable
    public final void dumpPipeline(PipelineDumper pipelineDumper) {
        pipelineDumper.dump(this.listContainer, "listContainer");
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final View getChildAt(int i) {
        return NotificationStackScrollLayoutController.this.mView.getChildAt(i);
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final int getChildCount() {
        return NotificationStackScrollLayoutController.this.mView.getChildCount();
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final String getNodeLabel() {
        return this.nodeLabel;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final View getView() {
        return this.view;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void moveChildTo(NodeController nodeController, int i) {
        NotificationStackScrollLayoutController.this.mView.changeViewPosition((ExpandableView) nodeController.getView(), i);
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final boolean offerToKeepInParentForAnimation() {
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void removeChild(NodeController nodeController, boolean z) {
        boolean z2;
        ExpandableNotificationRow expandableNotificationRow;
        NotificationListContainer notificationListContainer = this.listContainer;
        if (z) {
            NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayoutController.this.mView;
            notificationStackScrollLayout.getClass();
            Assert.isMainThread();
            notificationStackScrollLayout.mChildTransferInProgress = true;
            View view = nodeController.getView();
            if (view instanceof ExpandableNotificationRow) {
                expandableNotificationRow = (ExpandableNotificationRow) view;
            } else {
                expandableNotificationRow = null;
            }
            if (expandableNotificationRow != null) {
                expandableNotificationRow.mChangingPosition = true;
            }
        }
        View view2 = nodeController.getView();
        NotificationStackScrollLayoutController.NotificationListContainerImpl notificationListContainerImpl = (NotificationStackScrollLayoutController.NotificationListContainerImpl) notificationListContainer;
        NotificationStackScrollLayout notificationStackScrollLayout2 = NotificationStackScrollLayoutController.this.mView;
        notificationStackScrollLayout2.getClass();
        Assert.isMainThread();
        notificationStackScrollLayout2.removeView(view2);
        if (view2 instanceof ExpandableNotificationRow) {
            NotificationStackScrollLayout notificationStackScrollLayout3 = notificationStackScrollLayout2.mController.mView;
            notificationStackScrollLayout3.getClass();
            if (NotiRune.NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW) {
                z2 = false;
            } else {
                z2 = notificationStackScrollLayout3.mEmptyShadeView.mIsVisible;
            }
            if (!z2) {
                notificationStackScrollLayout2.mController.updateShowEmptyShadeView();
                notificationStackScrollLayout2.updateFooter();
                notificationStackScrollLayout2.mController.updateImportantForAccessibility();
            }
        }
        notificationStackScrollLayout2.mSpeedBumpIndexDirty = true;
        if (z) {
            NotificationStackScrollLayout notificationStackScrollLayout4 = NotificationStackScrollLayoutController.this.mView;
            notificationStackScrollLayout4.getClass();
            Assert.isMainThread();
            notificationStackScrollLayout4.mChildTransferInProgress = false;
        }
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final boolean removeFromParentIfKeptForAnimation() {
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void onViewAdded() {
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void onViewMoved() {
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void onViewRemoved() {
    }

    @Override // com.android.systemui.statusbar.notification.collection.render.NodeController
    public final void resetKeepInParentForAnimation() {
    }
}
