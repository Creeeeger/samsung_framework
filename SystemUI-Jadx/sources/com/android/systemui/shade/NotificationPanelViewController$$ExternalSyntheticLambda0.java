package com.android.systemui.shade;

import android.animation.ValueAnimator;
import com.android.systemui.Dependency;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.keyguard.Log;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationPanelViewController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NotificationPanelViewController f$0;

    public /* synthetic */ NotificationPanelViewController$$ExternalSyntheticLambda0(NotificationPanelViewController notificationPanelViewController, int i) {
        this.$r8$classId = i;
        this.f$0 = notificationPanelViewController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.setListening(false);
                return;
            case 1:
                NotificationPanelView notificationPanelView = this.f$0.mView;
                notificationPanelView.getParent().invalidateChild(notificationPanelView, NotificationPanelViewController.M_DUMMY_DIRTY_RECT);
                return;
            case 2:
                this.f$0.closeQsIfPossible();
                return;
            case 3:
                this.f$0.instantCollapse();
                return;
            case 4:
                this.f$0.updateResources();
                return;
            case 5:
                NotificationPanelViewController notificationPanelViewController = this.f$0;
                ValueAnimator valueAnimator = notificationPanelViewController.mQsController.mExpansionAnimator;
                if (valueAnimator != null) {
                    valueAnimator.end();
                }
                notificationPanelViewController.collapse(1.0f, false);
                return;
            case 6:
                NotificationPanelViewController notificationPanelViewController2 = this.f$0;
                notificationPanelViewController2.fling(0.0f, false, notificationPanelViewController2.mNextCollapseSpeedUpFactor);
                return;
            case 7:
                this.f$0.mKeyguardBottomArea.setVisibility(8);
                return;
            case 8:
                NotificationPanelViewController notificationPanelViewController3 = this.f$0;
                notificationPanelViewController3.mHeadsUpAnimatingAway = false;
                NotificationStackScrollLayout notificationStackScrollLayout = notificationPanelViewController3.mNotificationStackScrollLayoutController.mView;
                notificationStackScrollLayout.mHeadsUpAnimatingAway = false;
                notificationStackScrollLayout.updateClipping();
                notificationPanelViewController3.updateVisibility();
                notificationPanelViewController3.updateExpansionAndVisibility();
                return;
            case 9:
                NotificationPanelViewController notificationPanelViewController4 = this.f$0;
                if (notificationPanelViewController4.mExpandedFraction == 0.0f) {
                    notificationPanelViewController4.mView.post(notificationPanelViewController4.mHideExpandedRunnable);
                    return;
                } else {
                    Log.d("KeyguardVisible", "makeExpandedInvisible is not called. fraction=" + notificationPanelViewController4.mExpandedFraction);
                    ((KeyguardFastBioUnlockController) Dependency.get(KeyguardFastBioUnlockController.class)).reset();
                    return;
                }
            case 10:
                NotificationPanelViewController notificationPanelViewController5 = this.f$0;
                notificationPanelViewController5.notifyExpandingFinished();
                notificationPanelViewController5.onUnlockHintFinished();
                notificationPanelViewController5.mHintAnimationRunning = false;
                return;
            case 11:
                NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) this.f$0.mNotificationShadeWindowController;
                NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
                notificationShadeWindowState.forceWindowCollapsed = false;
                notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
                return;
            default:
                this.f$0.mLatencyTracker.onActionEnd(0);
                return;
        }
    }
}
