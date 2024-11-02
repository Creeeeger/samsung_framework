package com.android.systemui.shade;

import com.android.keyguard.KeyguardUnfoldTransition;
import com.android.systemui.R;
import com.android.systemui.keyguard.shared.model.TransitionState;
import com.android.systemui.keyguard.shared.model.TransitionStep;
import com.android.systemui.shared.animation.UnfoldConstantTranslateAnimator;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationPanelViewController$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ NotificationPanelViewController$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                KeyguardUnfoldTransition keyguardUnfoldTransition = (KeyguardUnfoldTransition) obj;
                NotificationPanelView notificationPanelView = ((NotificationPanelViewController) this.f$0).mView;
                float dimensionPixelSize = keyguardUnfoldTransition.context.getResources().getDimensionPixelSize(R.dimen.keyguard_unfold_translation_x);
                UnfoldConstantTranslateAnimator unfoldConstantTranslateAnimator = (UnfoldConstantTranslateAnimator) keyguardUnfoldTransition.translateAnimator$delegate.getValue();
                unfoldConstantTranslateAnimator.rootView = notificationPanelView;
                unfoldConstantTranslateAnimator.translationMax = dimensionPixelSize;
                unfoldConstantTranslateAnimator.progressProvider.addCallback(unfoldConstantTranslateAnimator);
                return;
            case 1:
                ((NotificationPanelUnfoldAnimationController) obj).setup(((NotificationPanelViewController) this.f$0).mView);
                return;
            case 2:
                NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) this.f$0;
                notificationPanelViewController.getClass();
                if (((TransitionStep) obj).transitionState != TransitionState.RUNNING) {
                    z = false;
                }
                notificationPanelViewController.mIsOcclusionTransitionRunning = z;
                return;
            case 3:
                NotificationPanelViewController notificationPanelViewController2 = (NotificationPanelViewController) this.f$0;
                notificationPanelViewController2.getClass();
                if (((TransitionStep) obj).transitionState != TransitionState.RUNNING) {
                    z = false;
                }
                notificationPanelViewController2.mIsOcclusionTransitionRunning = z;
                return;
            case 4:
                NotificationPanelViewController notificationPanelViewController3 = (NotificationPanelViewController) this.f$0;
                notificationPanelViewController3.getClass();
                if (((TransitionStep) obj).transitionState != TransitionState.RUNNING) {
                    z = false;
                }
                notificationPanelViewController3.mIsOcclusionTransitionRunning = z;
                return;
            case 5:
                NotificationPanelViewController notificationPanelViewController4 = (NotificationPanelViewController) this.f$0;
                notificationPanelViewController4.getClass();
                if (((TransitionStep) obj).transitionState != TransitionState.RUNNING) {
                    z = false;
                }
                notificationPanelViewController4.mIsOcclusionTransitionRunning = z;
                return;
            case 6:
                NotificationPanelViewController notificationPanelViewController5 = (NotificationPanelViewController) this.f$0;
                notificationPanelViewController5.getClass();
                if (((TransitionStep) obj).transitionState != TransitionState.RUNNING) {
                    z = false;
                }
                notificationPanelViewController5.mIsOcclusionTransitionRunning = z;
                return;
            case 7:
                ((NotificationPanelViewController) this.f$0).onTrackingStopped(((Boolean) obj).booleanValue());
                return;
            case 8:
                Runnable runnable = ((NotificationPanelViewController) this.f$0).mPanelAlphaEndAction;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            case 9:
                NotificationPanelViewController notificationPanelViewController6 = (NotificationPanelViewController) this.f$0;
                notificationPanelViewController6.getClass();
                notificationPanelViewController6.mIsAnyMultiShadeExpanded = ((Boolean) obj).booleanValue();
                return;
            case 10:
                KeyguardUnfoldTransition keyguardUnfoldTransition2 = (KeyguardUnfoldTransition) obj;
                NotificationPanelView notificationPanelView2 = ((NotificationPanelViewController) this.f$0).mView;
                float dimensionPixelSize2 = keyguardUnfoldTransition2.context.getResources().getDimensionPixelSize(R.dimen.keyguard_unfold_translation_x);
                UnfoldConstantTranslateAnimator unfoldConstantTranslateAnimator2 = (UnfoldConstantTranslateAnimator) keyguardUnfoldTransition2.translateAnimator$delegate.getValue();
                unfoldConstantTranslateAnimator2.rootView = notificationPanelView2;
                unfoldConstantTranslateAnimator2.translationMax = dimensionPixelSize2;
                unfoldConstantTranslateAnimator2.progressProvider.addCallback(unfoldConstantTranslateAnimator2);
                return;
            case 11:
                ((NotificationPanelUnfoldAnimationController) obj).setup(((NotificationPanelViewController) this.f$0).mNotificationContainerParent);
                return;
            default:
                ((NotificationStackScrollLayoutController) this.f$0).mView.mAmbientState.mTrackedHeadsUpRow = (ExpandableNotificationRow) obj;
                return;
        }
    }
}
