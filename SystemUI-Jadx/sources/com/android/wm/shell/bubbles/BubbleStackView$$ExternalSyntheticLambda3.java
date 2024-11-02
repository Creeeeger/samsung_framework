package com.android.wm.shell.bubbles;

import android.graphics.PointF;
import com.android.wm.shell.animation.PhysicsAnimator;
import com.android.wm.shell.bubbles.BubbleStackView;
import com.android.wm.shell.bubbles.animation.AnimatableScaleMatrix;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.taskview.TaskView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleStackView$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ BubbleStackView$$ExternalSyntheticLambda3(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        int width;
        boolean z2;
        int indexOf;
        float f;
        TaskView taskView;
        boolean z3 = true;
        switch (this.$r8$classId) {
            case 0:
                ((BubbleStackView) this.f$0).animateFlyoutCollapsed(0.0f, true);
                return;
            case 1:
                BubbleStackView bubbleStackView = (BubbleStackView) this.f$0;
                if (bubbleStackView.mTemporarilyInvisible && bubbleStackView.mFlyout.getVisibility() != 0) {
                    if (bubbleStackView.mStackAnimationController.isStackOnLeftSide()) {
                        BubblePositioner bubblePositioner = bubbleStackView.mPositioner;
                        bubbleStackView.animate().translationX((-(bubbleStackView.mBubbleSize + (bubblePositioner.mPositionRect.left - bubblePositioner.mScreenRect.left))) - ((int) bubbleStackView.mStackAnimationController.mStackPosition.x)).start();
                        return;
                    } else {
                        BubblePositioner bubblePositioner2 = bubbleStackView.mPositioner;
                        bubbleStackView.animate().translationX((bubbleStackView.getWidth() - ((int) bubbleStackView.mStackAnimationController.mStackPosition.x)) + (bubbleStackView.mBubbleSize - (bubblePositioner2.mPositionRect.right - bubblePositioner2.mScreenRect.right))).start();
                        return;
                    }
                }
                bubbleStackView.animate().translationX(0.0f).start();
                return;
            case 2:
                BubbleStackView bubbleStackView2 = (BubbleStackView) this.f$0;
                if (bubbleStackView2.getBubbleCount() == 0) {
                    BubbleData bubbleData = bubbleStackView2.mBubbleData;
                    if (!bubbleData.mShowingOverflow || !bubbleData.mExpanded) {
                        z3 = false;
                    }
                    if (!z3) {
                        bubbleStackView2.mExpandedViewTemporarilyHidden = false;
                        bubbleStackView2.mBubbleController.onAllBubblesAnimatedOut();
                        return;
                    }
                    return;
                }
                return;
            case 3:
                BubbleStackView bubbleStackView3 = (BubbleStackView) this.f$0;
                int bubbleCount = bubbleStackView3.getBubbleCount();
                for (int i = 0; i < bubbleCount; i++) {
                    BadgedImageView badgedImageView = (BadgedImageView) bubbleStackView3.mBubbleContainer.getChildAt(i);
                    if (i < 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        badgedImageView.animate().translationZ(0.0f).start();
                    }
                }
                return;
            case 4:
                BubbleStackView bubbleStackView4 = (BubbleStackView) this.f$0;
                bubbleStackView4.getClass();
                BubbleStackView$$ExternalSyntheticLambda3 bubbleStackView$$ExternalSyntheticLambda3 = new BubbleStackView$$ExternalSyntheticLambda3(bubbleStackView4, 6);
                bubbleStackView4.mAnimateInFlyout = bubbleStackView$$ExternalSyntheticLambda3;
                bubbleStackView4.mFlyout.postDelayed(bubbleStackView$$ExternalSyntheticLambda3, 200L);
                return;
            case 5:
                BubbleStackView bubbleStackView5 = (BubbleStackView) this.f$0;
                bubbleStackView5.mIsExpansionAnimating = false;
                bubbleStackView5.updateExpandedView();
                bubbleStackView5.requestUpdate();
                bubbleStackView5.showManageMenu(false);
                return;
            case 6:
                BubbleStackView bubbleStackView6 = (BubbleStackView) this.f$0;
                bubbleStackView6.mFlyout.setVisibility(0);
                bubbleStackView6.updateTemporarilyInvisibleAnimation(false);
                if (bubbleStackView6.mStackAnimationController.isStackOnLeftSide()) {
                    width = -bubbleStackView6.mFlyout.getWidth();
                } else {
                    width = bubbleStackView6.mFlyout.getWidth();
                }
                bubbleStackView6.mFlyoutDragDeltaX = width;
                bubbleStackView6.animateFlyoutCollapsed(0.0f, false);
                bubbleStackView6.mFlyout.postDelayed(bubbleStackView6.mHideFlyout, 5000L);
                return;
            case 7:
                BubbleStackView bubbleStackView7 = (BubbleStackView) this.f$0;
                bubbleStackView7.getClass();
                bubbleStackView7.post(new BubbleStackView$$ExternalSyntheticLambda3(bubbleStackView7, 11));
                return;
            case 8:
                BubbleStackView bubbleStackView8 = (BubbleStackView) this.f$0;
                bubbleStackView8.mBubbleContainer.setActiveController(bubbleStackView8.mStackAnimationController);
                return;
            case 9:
                BubbleStackView bubbleStackView9 = (BubbleStackView) this.f$0;
                BubbleViewProvider bubbleViewProvider = bubbleStackView9.mExpandedBubble;
                bubbleStackView9.mIsExpansionAnimating = true;
                bubbleStackView9.hideFlyoutImmediate();
                bubbleStackView9.updateExpandedBubble();
                bubbleStackView9.updateExpandedView();
                ManageEducationView manageEducationView = bubbleStackView9.mManageEduView;
                if (manageEducationView != null) {
                    manageEducationView.hide();
                }
                bubbleStackView9.updateOverflowVisibility();
                bubbleStackView9.updateZOrder();
                bubbleStackView9.updateBadges(true);
                bubbleStackView9.mIsExpansionAnimating = false;
                bubbleStackView9.updateExpandedView();
                bubbleStackView9.requestUpdate();
                if (bubbleViewProvider != null) {
                    bubbleViewProvider.setTaskViewVisibility();
                    return;
                }
                return;
            case 10:
                BubbleStackView bubbleStackView10 = (BubbleStackView) this.f$0;
                if (bubbleStackView10.mIsExpanded) {
                    bubbleStackView10.mExpandedBubble.getExpandedView();
                    return;
                }
                return;
            case 11:
                BubbleStackView bubbleStackView11 = (BubbleStackView) this.f$0;
                if (!bubbleStackView11.mIsExpanded) {
                    bubbleStackView11.mIsBubbleSwitchAnimating = false;
                    return;
                }
                PhysicsAnimator.getInstance(bubbleStackView11.mAnimatingOutSurfaceContainer).cancel();
                bubbleStackView11.mAnimatingOutSurfaceAlphaAnimator.reverse();
                bubbleStackView11.mExpandedViewAlphaAnimator.start();
                BubbleViewProvider bubbleViewProvider2 = bubbleStackView11.mExpandedBubble;
                if (bubbleViewProvider2 != null && bubbleViewProvider2.getKey().equals("Overflow")) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                BubblePositioner bubblePositioner3 = bubbleStackView11.mPositioner;
                if (z2) {
                    indexOf = bubbleStackView11.mBubbleContainer.getChildCount() - 1;
                } else {
                    indexOf = bubbleStackView11.mBubbleData.getBubbles().indexOf(bubbleStackView11.mExpandedBubble);
                }
                PointF expandedBubbleXY = bubblePositioner3.getExpandedBubbleXY(indexOf, bubbleStackView11.getState());
                bubbleStackView11.mExpandedViewContainer.setAlpha(1.0f);
                bubbleStackView11.mExpandedViewContainer.setVisibility(0);
                if (bubbleStackView11.mPositioner.showBubblesVertically()) {
                    float f2 = expandedBubbleXY.y;
                    float f3 = bubbleStackView11.mBubbleSize;
                    float f4 = (f3 / 2.0f) + f2;
                    if (bubbleStackView11.mStackOnLeftOrWillBe) {
                        f = expandedBubbleXY.x + f3 + bubbleStackView11.mExpandedViewPadding;
                    } else {
                        f = expandedBubbleXY.x - bubbleStackView11.mExpandedViewPadding;
                    }
                    bubbleStackView11.mExpandedViewContainerMatrix.setScale(0.9f, 0.9f, f, f4);
                } else {
                    AnimatableScaleMatrix animatableScaleMatrix = bubbleStackView11.mExpandedViewContainerMatrix;
                    float f5 = expandedBubbleXY.x;
                    float f6 = bubbleStackView11.mBubbleSize;
                    animatableScaleMatrix.setScale(0.9f, 0.9f, (f6 / 2.0f) + f5, expandedBubbleXY.y + f6 + bubbleStackView11.mExpandedViewPadding);
                }
                bubbleStackView11.mExpandedViewContainer.setAnimationMatrix(bubbleStackView11.mExpandedViewContainerMatrix);
                ((HandlerExecutor) bubbleStackView11.mMainExecutor).executeDelayed(25L, new BubbleStackView$$ExternalSyntheticLambda3(bubbleStackView11, 13));
                return;
            case 12:
                BubbleStackView bubbleStackView12 = (BubbleStackView) this.f$0;
                bubbleStackView12.mExpandedViewContainer.setAnimationMatrix(null);
                bubbleStackView12.mIsExpansionAnimating = false;
                bubbleStackView12.updateExpandedView();
                bubbleStackView12.requestUpdate();
                BubbleViewProvider bubbleViewProvider3 = bubbleStackView12.mExpandedBubble;
                if (bubbleViewProvider3 != null && bubbleViewProvider3.getExpandedView() != null && (taskView = bubbleStackView12.mExpandedBubble.getExpandedView().mTaskView) != null) {
                    taskView.setZOrderedOnTop(true, true);
                    return;
                }
                return;
            case 13:
                BubbleStackView bubbleStackView13 = (BubbleStackView) this.f$0;
                if (!bubbleStackView13.mIsExpanded) {
                    bubbleStackView13.mIsBubbleSwitchAnimating = false;
                    return;
                }
                PhysicsAnimator.getInstance(bubbleStackView13.mExpandedViewContainerMatrix).cancel();
                PhysicsAnimator physicsAnimator = PhysicsAnimator.getInstance(bubbleStackView13.mExpandedViewContainerMatrix);
                physicsAnimator.spring(AnimatableScaleMatrix.SCALE_X, 499.99997f, 0.0f, bubbleStackView13.mScaleInSpringConfig);
                physicsAnimator.spring(AnimatableScaleMatrix.SCALE_Y, 499.99997f, 0.0f, bubbleStackView13.mScaleInSpringConfig);
                physicsAnimator.updateListeners.add(new BubbleStackView$$ExternalSyntheticLambda11(bubbleStackView13, 3));
                physicsAnimator.withEndActions(new BubbleStackView$$ExternalSyntheticLambda3(bubbleStackView13, 14));
                physicsAnimator.start();
                return;
            case 14:
                BubbleStackView bubbleStackView14 = (BubbleStackView) this.f$0;
                bubbleStackView14.mExpandedViewTemporarilyHidden = false;
                bubbleStackView14.mIsBubbleSwitchAnimating = false;
                bubbleStackView14.mExpandedViewContainer.setAnimationMatrix(null);
                return;
            case 15:
                BubbleStackView.m2449$$Nest$mdismissMagnetizedObject((BubbleStackView) this.f$0);
                return;
            default:
                BubbleStackView.AnonymousClass5 anonymousClass5 = (BubbleStackView.AnonymousClass5) this.f$0;
                anonymousClass5.getClass();
                PhysicsAnimator.SpringConfig springConfig = BubbleStackView.FLYOUT_IME_ANIMATION_SPRING_CONFIG;
                BubbleStackView bubbleStackView15 = BubbleStackView.this;
                bubbleStackView15.resetDismissAnimator();
                BubbleStackView.m2449$$Nest$mdismissMagnetizedObject(bubbleStackView15);
                return;
        }
    }
}
