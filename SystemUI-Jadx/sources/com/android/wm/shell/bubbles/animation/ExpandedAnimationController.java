package com.android.wm.shell.bubbles.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.systemui.R;
import com.android.wm.shell.animation.Interpolators;
import com.android.wm.shell.animation.PhysicsAnimator;
import com.android.wm.shell.bubbles.BubblePositioner;
import com.android.wm.shell.bubbles.BubbleStackView;
import com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout;
import com.google.android.collect.Sets;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ExpandedAnimationController extends PhysicsAnimationLayout.PhysicsAnimationController {
    public Runnable mAfterCollapse;
    public Runnable mAfterExpand;
    public float mBubbleSizePx;
    public final BubbleStackView mBubbleStackView;
    public PointF mCollapsePoint;
    public Runnable mLeadBubbleEndAction;
    public AnonymousClass1 mMagnetizedBubbleDraggingOut;
    public final Runnable mOnBubbleAnimatedOutAction;
    public final BubblePositioner mPositioner;
    public float mStackOffsetPx;
    public final PhysicsAnimator.SpringConfig mAnimateOutSpringConfig = new PhysicsAnimator.SpringConfig(400.0f, 1.0f);
    public boolean mAnimatingExpand = false;
    public boolean mPreparingToCollapse = false;
    public boolean mAnimatingCollapse = false;
    public boolean mSpringingBubbleToTouch = false;
    public boolean mBubbleDraggedOutEnough = false;

    public ExpandedAnimationController(BubblePositioner bubblePositioner, Runnable runnable, BubbleStackView bubbleStackView) {
        this.mPositioner = bubblePositioner;
        updateResources();
        this.mOnBubbleAnimatedOutAction = runnable;
        this.mCollapsePoint = bubblePositioner.getDefaultStartPosition();
        this.mBubbleStackView = bubbleStackView;
    }

    public final void expandFromStack(Runnable runnable) {
        this.mPreparingToCollapse = false;
        this.mAnimatingCollapse = false;
        this.mAnimatingExpand = true;
        this.mAfterExpand = runnable;
        this.mLeadBubbleEndAction = null;
        startOrUpdatePathAnimation(true);
    }

    @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController
    public final Set getAnimatedProperties() {
        return Sets.newHashSet(new DynamicAnimation.ViewProperty[]{DynamicAnimation.TRANSLATION_X, DynamicAnimation.TRANSLATION_Y, DynamicAnimation.SCALE_X, DynamicAnimation.SCALE_Y, DynamicAnimation.ALPHA});
    }

    @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController
    public final int getNextAnimationInChain(DynamicAnimation.ViewProperty viewProperty, int i) {
        return -1;
    }

    @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController
    public final float getOffsetForChainedPropertyAnimation(DynamicAnimation.ViewProperty viewProperty, int i) {
        return 0.0f;
    }

    @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController
    public final SpringForce getSpringForce() {
        SpringForce springForce = new SpringForce();
        springForce.setDampingRatio(0.65f);
        springForce.setStiffness(200.0f);
        return springForce;
    }

    @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController
    public final void onActiveControllerForLayout(PhysicsAnimationLayout physicsAnimationLayout) {
        updateResources();
        this.mLayout.setVisibility(0);
        animationsForChildrenFromIndex(new ExpandedAnimationController$$ExternalSyntheticLambda2()).startAll(new Runnable[0]);
    }

    @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController
    public final void onChildAdded(View view, int i) {
        float f;
        boolean z = true;
        if (this.mAnimatingExpand) {
            startOrUpdatePathAnimation(true);
            return;
        }
        if (this.mAnimatingCollapse) {
            startOrUpdatePathAnimation(false);
            return;
        }
        PointF pointF = this.mCollapsePoint;
        BubblePositioner bubblePositioner = this.mPositioner;
        if (pointF == null) {
            pointF = bubblePositioner.getRestingPosition();
        } else {
            bubblePositioner.getClass();
        }
        if ((bubblePositioner.mBubbleSize / 2) + ((int) pointF.x) >= bubblePositioner.mScreenRect.width() / 2) {
            z = false;
        }
        PointF expandedBubbleXY = bubblePositioner.getExpandedBubbleXY(i, this.mBubbleStackView.getState());
        if (bubblePositioner.showBubblesVertically()) {
            view.setTranslationY(expandedBubbleXY.y);
        } else {
            view.setTranslationX(expandedBubbleXY.x);
        }
        if (this.mPreparingToCollapse) {
            return;
        }
        if (bubblePositioner.showBubblesVertically()) {
            if (z) {
                f = expandedBubbleXY.x - (this.mBubbleSizePx * 4.0f);
            } else {
                f = expandedBubbleXY.x + (this.mBubbleSizePx * 4.0f);
            }
            PhysicsAnimationLayout.PhysicsPropertyAnimator animationForChild = animationForChild(view);
            Map map = animationForChild.mInitialPropertyValues;
            DynamicAnimation.AnonymousClass1 anonymousClass1 = DynamicAnimation.TRANSLATION_X;
            ((HashMap) map).put(anonymousClass1, Float.valueOf(f));
            animationForChild.mPathAnimator = null;
            animationForChild.property(anonymousClass1, expandedBubbleXY.y, new Runnable[0]);
            animationForChild.start(new Runnable[0]);
        } else {
            float f2 = expandedBubbleXY.y - (this.mBubbleSizePx * 4.0f);
            PhysicsAnimationLayout.PhysicsPropertyAnimator animationForChild2 = animationForChild(view);
            ((HashMap) animationForChild2.mInitialPropertyValues).put(DynamicAnimation.TRANSLATION_Y, Float.valueOf(f2));
            animationForChild2.translationY(expandedBubbleXY.y, new Runnable[0]);
            animationForChild2.start(new Runnable[0]);
        }
        updateBubblePositions();
    }

    @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController
    public final void onChildRemoved(View view, PhysicsAnimationLayout$$ExternalSyntheticLambda1 physicsAnimationLayout$$ExternalSyntheticLambda1) {
        View view2;
        AnonymousClass1 anonymousClass1 = this.mMagnetizedBubbleDraggingOut;
        if (anonymousClass1 == null) {
            view2 = null;
        } else {
            view2 = (View) anonymousClass1.underlyingObject;
        }
        boolean equals = view.equals(view2);
        Runnable runnable = this.mOnBubbleAnimatedOutAction;
        if (equals) {
            this.mMagnetizedBubbleDraggingOut = null;
            physicsAnimationLayout$$ExternalSyntheticLambda1.run();
            runnable.run();
        } else {
            PhysicsAnimator physicsAnimator = PhysicsAnimator.getInstance(view);
            physicsAnimator.spring(DynamicAnimation.ALPHA, 0.0f, 0.0f, physicsAnimator.defaultSpring);
            DynamicAnimation.AnonymousClass4 anonymousClass4 = DynamicAnimation.SCALE_X;
            PhysicsAnimator.SpringConfig springConfig = this.mAnimateOutSpringConfig;
            physicsAnimator.spring(anonymousClass4, 0.0f, 0.0f, springConfig);
            physicsAnimator.spring(DynamicAnimation.SCALE_Y, 0.0f, 0.0f, springConfig);
            physicsAnimator.withEndActions(physicsAnimationLayout$$ExternalSyntheticLambda1, runnable);
            physicsAnimator.start();
        }
        updateBubblePositions();
    }

    @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController
    public final void onChildReordered() {
        if (this.mPreparingToCollapse) {
            return;
        }
        if (this.mAnimatingCollapse) {
            startOrUpdatePathAnimation(false);
        } else {
            updateBubblePositions();
        }
    }

    public final void startOrUpdatePathAnimation(final boolean z) {
        ExpandedAnimationController$$ExternalSyntheticLambda0 expandedAnimationController$$ExternalSyntheticLambda0;
        final boolean z2 = false;
        if (z) {
            expandedAnimationController$$ExternalSyntheticLambda0 = new ExpandedAnimationController$$ExternalSyntheticLambda0(this, 0);
        } else {
            expandedAnimationController$$ExternalSyntheticLambda0 = new ExpandedAnimationController$$ExternalSyntheticLambda0(this, 1);
        }
        final boolean showBubblesVertically = this.mPositioner.showBubblesVertically();
        if (this.mLayout.getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
            z2 = true;
        }
        animationsForChildrenFromIndex(new PhysicsAnimationLayout.PhysicsAnimationController.ChildAnimationConfigurator() { // from class: com.android.wm.shell.bubbles.animation.ExpandedAnimationController$$ExternalSyntheticLambda1
            @Override // com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsAnimationController.ChildAnimationConfigurator
            public final void configureAnimationForChildAtIndex(int i, PhysicsAnimationLayout.PhysicsPropertyAnimator physicsPropertyAnimator) {
                boolean z3;
                int childCount;
                boolean z4;
                Interpolator interpolator;
                Runnable runnable;
                ExpandedAnimationController expandedAnimationController = ExpandedAnimationController.this;
                View childAt = expandedAnimationController.mLayout.getChildAt(i);
                Path path = new Path();
                path.moveTo(childAt.getTranslationX(), childAt.getTranslationY());
                PointF expandedBubbleXY = expandedAnimationController.mPositioner.getExpandedBubbleXY(i, expandedAnimationController.mBubbleStackView.getState());
                boolean z5 = z;
                if (z5) {
                    path.lineTo(childAt.getTranslationX(), expandedBubbleXY.y);
                    path.lineTo(expandedBubbleXY.x, expandedBubbleXY.y);
                } else {
                    float f = expandedAnimationController.mCollapsePoint.x;
                    path.lineTo(f, expandedBubbleXY.y);
                    path.lineTo(f, (Math.min(i, 1) * expandedAnimationController.mStackOffsetPx) + expandedAnimationController.mCollapsePoint.y);
                }
                if (showBubblesVertically || !z2 ? !((!z5 || expandedAnimationController.mLayout.isFirstChildXLeftOfCenter(childAt.getTranslationX())) && (z5 || !expandedAnimationController.mLayout.isFirstChildXLeftOfCenter(expandedAnimationController.mCollapsePoint.x))) : !((!z5 || !expandedAnimationController.mLayout.isFirstChildXLeftOfCenter(childAt.getTranslationX())) && (z5 || expandedAnimationController.mLayout.isFirstChildXLeftOfCenter(expandedAnimationController.mCollapsePoint.x)))) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    childCount = i * 10;
                } else {
                    childCount = (expandedAnimationController.mLayout.getChildCount() - i) * 10;
                }
                if ((z3 && i == 0) || (!z3 && i == expandedAnimationController.mLayout.getChildCount() - 1)) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z5) {
                    interpolator = Interpolators.EMPHASIZED_ACCELERATE;
                } else {
                    interpolator = Interpolators.EMPHASIZED_DECELERATE;
                }
                Runnable[] runnableArr = new Runnable[2];
                if (z4) {
                    runnable = expandedAnimationController.mLeadBubbleEndAction;
                } else {
                    runnable = null;
                }
                runnableArr[0] = runnable;
                runnableArr[1] = new ExpandedAnimationController$$ExternalSyntheticLambda0(expandedAnimationController, 2);
                ObjectAnimator objectAnimator = physicsPropertyAnimator.mPathAnimator;
                if (objectAnimator != null) {
                    objectAnimator.cancel();
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(physicsPropertyAnimator, physicsPropertyAnimator.mCurrentPointOnPathXProperty, physicsPropertyAnimator.mCurrentPointOnPathYProperty, path);
                physicsPropertyAnimator.mPathAnimator = ofFloat;
                ofFloat.addListener(new AnimatorListenerAdapter(physicsPropertyAnimator, runnableArr) { // from class: com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsPropertyAnimator.3
                    public final /* synthetic */ Runnable[] val$pathAnimEndActions;

                    public AnonymousClass3(PhysicsPropertyAnimator physicsPropertyAnimator2, Runnable[] runnableArr2) {
                        this.val$pathAnimEndActions = runnableArr2;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        for (Runnable runnable2 : this.val$pathAnimEndActions) {
                            if (runnable2 != null) {
                                runnable2.run();
                            }
                        }
                    }
                });
                physicsPropertyAnimator2.mPathAnimator.setDuration(175);
                physicsPropertyAnimator2.mPathAnimator.setInterpolator(interpolator);
                Map map = physicsPropertyAnimator2.mAnimatedProperties;
                DynamicAnimation.AnonymousClass1 anonymousClass1 = DynamicAnimation.TRANSLATION_X;
                HashMap hashMap = (HashMap) map;
                hashMap.remove(anonymousClass1);
                DynamicAnimation.AnonymousClass2 anonymousClass2 = DynamicAnimation.TRANSLATION_Y;
                hashMap.remove(anonymousClass2);
                HashMap hashMap2 = (HashMap) physicsPropertyAnimator2.mInitialPropertyValues;
                hashMap2.remove(anonymousClass1);
                hashMap2.remove(anonymousClass2);
                PhysicsAnimationLayout physicsAnimationLayout = PhysicsAnimationLayout.this;
                physicsAnimationLayout.mEndActionForProperty.remove(anonymousClass1);
                physicsAnimationLayout.mEndActionForProperty.remove(anonymousClass2);
                physicsPropertyAnimator2.mStartDelay = childCount;
                physicsPropertyAnimator2.mStiffness = 400.0f;
            }
        }).startAll(new Runnable[]{expandedAnimationController$$ExternalSyntheticLambda0});
    }

    public final void updateBubblePositions() {
        View view;
        if (!this.mAnimatingExpand && !this.mAnimatingCollapse) {
            for (int i = 0; i < this.mLayout.getChildCount(); i++) {
                View childAt = this.mLayout.getChildAt(i);
                AnonymousClass1 anonymousClass1 = this.mMagnetizedBubbleDraggingOut;
                if (anonymousClass1 == null) {
                    view = null;
                } else {
                    view = (View) anonymousClass1.underlyingObject;
                }
                if (childAt.equals(view)) {
                    return;
                }
                PointF expandedBubbleXY = this.mPositioner.getExpandedBubbleXY(i, this.mBubbleStackView.getState());
                PhysicsAnimationLayout.PhysicsPropertyAnimator animationForChild = animationForChild(childAt);
                animationForChild.mPathAnimator = null;
                animationForChild.property(DynamicAnimation.TRANSLATION_X, expandedBubbleXY.x, new Runnable[0]);
                animationForChild.translationY(expandedBubbleXY.y, new Runnable[0]);
                animationForChild.start(new Runnable[0]);
            }
        }
    }

    public final void updateResources() {
        if (this.mLayout == null) {
            return;
        }
        this.mStackOffsetPx = r0.getContext().getResources().getDimensionPixelSize(R.dimen.bubble_stack_offset);
        this.mBubbleSizePx = this.mPositioner.mBubbleSize;
    }
}
