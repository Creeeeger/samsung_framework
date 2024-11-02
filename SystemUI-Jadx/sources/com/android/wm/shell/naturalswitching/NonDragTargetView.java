package com.android.wm.shell.naturalswitching;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.util.InterpolatorUtils;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class NonDragTargetView extends FrameLayout {
    public final Rect mContainingBounds;
    public int mCornerRadius;
    public View mDimView;
    public final Rect mDisplayBounds;
    public int mDividerSize;
    public final Rect mDragTargetBounds;
    public int mDragTargetWindowingMode;
    public int mDropSide;
    public NonDragTarget mDropTarget;
    public int mHalfTarget;
    public boolean mIsFloatingDragTarget;
    public boolean mIsInitialExpanded;
    public ViewGroup mMainView;
    public int mNaturalSwitchingMode;
    public final SparseArray mNonTargets;
    public Runnable mOnDrawCallback;
    public final NonDragTargetView$$ExternalSyntheticLambda0 mOnDrawListener;
    public int mPushRegion;
    public final SparseArray mPushRegions;
    public boolean mPushed;
    public final ArraySet mPushedNonTargets;
    public int mQuarterTarget;
    public int mScaleDeltaSize;
    public NonDragTarget mShrunkTarget;
    public SplitScreenController mSplitScreenController;
    public final Rect mStableRect;
    public NonDragTarget mSwapTarget;
    public TaskVisibility mTaskVisibility;
    public final Rect mTmpRect;
    public WindowManager mWm;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.wm.shell.naturalswitching.NonDragTargetView$$ExternalSyntheticLambda0] */
    public NonDragTargetView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDropSide = 1;
        this.mIsInitialExpanded = false;
        this.mQuarterTarget = 0;
        this.mHalfTarget = 0;
        this.mContainingBounds = new Rect();
        this.mStableRect = new Rect();
        this.mDisplayBounds = new Rect();
        this.mDragTargetBounds = new Rect();
        this.mTmpRect = new Rect();
        this.mDropTarget = null;
        this.mShrunkTarget = null;
        this.mSwapTarget = null;
        this.mPushRegions = new SparseArray();
        this.mPushedNonTargets = new ArraySet();
        this.mPushed = false;
        this.mPushRegion = 0;
        this.mOnDrawCallback = null;
        this.mOnDrawListener = new ViewTreeObserver.OnDrawListener() { // from class: com.android.wm.shell.naturalswitching.NonDragTargetView$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                NonDragTargetView nonDragTargetView = NonDragTargetView.this;
                Runnable runnable = nonDragTargetView.mOnDrawCallback;
                if (runnable != null) {
                    runnable.run();
                    nonDragTargetView.mOnDrawCallback = null;
                }
            }
        };
        this.mNonTargets = new SparseArray();
    }

    public final NonDragTarget createNonDragTarget() {
        NonDragTarget nonDragTarget = (NonDragTarget) LayoutInflater.from(((FrameLayout) this).mContext).inflate(R.layout.ns_non_drag_target, (ViewGroup) null);
        this.mMainView.addView(nonDragTarget);
        return nonDragTarget;
    }

    public final Rect getCenterFreeformBounds() {
        int dimensionPixelSize = ((FrameLayout) this).mContext.getResources().getDimensionPixelSize(R.dimen.ns_drop_freeform_width);
        int dimensionPixelSize2 = ((FrameLayout) this).mContext.getResources().getDimensionPixelSize(R.dimen.ns_drop_freeform_height);
        Rect rect = new Rect();
        int width = ((this.mDisplayBounds.width() - dimensionPixelSize) / 2) + rect.left;
        int height = (this.mDisplayBounds.height() - dimensionPixelSize2) / 2;
        rect.set(width, height, dimensionPixelSize + width, dimensionPixelSize2 + height);
        return rect;
    }

    public final ArrayList getPolygonTouchRegion(int i, Rect rect) {
        if (CoreRune.MW_NATURAL_SWITCHING_PIP && this.mDragTargetWindowingMode == 2) {
            ArrayList arrayList = new ArrayList();
            PointF pointF = new PointF(this.mDisplayBounds.width() / 2, this.mDisplayBounds.height() / 2);
            if (i == 16) {
                arrayList.add(new PointF(rect.left, rect.top));
                arrayList.add(new PointF(rect.right, rect.top));
                arrayList.add(pointF);
                arrayList.add(pointF);
            } else if (i == 32) {
                arrayList.add(pointF);
                arrayList.add(new PointF(rect.right, rect.top));
                arrayList.add(new PointF(rect.right, rect.bottom));
                arrayList.add(pointF);
            } else if (i == 8) {
                arrayList.add(new PointF(rect.left, rect.top));
                arrayList.add(pointF);
                arrayList.add(pointF);
                arrayList.add(new PointF(rect.left, rect.bottom));
            } else if (i == 64) {
                arrayList.add(pointF);
                arrayList.add(pointF);
                arrayList.add(new PointF(rect.right, rect.bottom));
                arrayList.add(new PointF(rect.left, rect.bottom));
            }
            return arrayList;
        }
        Rect centerFreeformBounds = getCenterFreeformBounds();
        ArrayList arrayList2 = new ArrayList();
        if (i == 16) {
            arrayList2.add(new PointF(rect.left, rect.top));
            arrayList2.add(new PointF(rect.right, rect.top));
            arrayList2.add(new PointF(centerFreeformBounds.right, centerFreeformBounds.top));
            arrayList2.add(new PointF(centerFreeformBounds.left, centerFreeformBounds.top));
        } else if (i == 32) {
            arrayList2.add(new PointF(centerFreeformBounds.right, centerFreeformBounds.top));
            arrayList2.add(new PointF(rect.right, rect.top));
            arrayList2.add(new PointF(rect.right, rect.bottom));
            arrayList2.add(new PointF(centerFreeformBounds.right, centerFreeformBounds.bottom));
        } else if (i == 8) {
            arrayList2.add(new PointF(rect.left, rect.top));
            arrayList2.add(new PointF(centerFreeformBounds.left, centerFreeformBounds.top));
            arrayList2.add(new PointF(centerFreeformBounds.left, centerFreeformBounds.bottom));
            arrayList2.add(new PointF(rect.left, rect.bottom));
        } else if (i == 64) {
            arrayList2.add(new PointF(centerFreeformBounds.left, rect.top));
            arrayList2.add(new PointF(centerFreeformBounds.right, rect.top));
            arrayList2.add(new PointF(rect.right, rect.bottom));
            arrayList2.add(new PointF(rect.left, rect.bottom));
        }
        return arrayList2;
    }

    public final int getReverseWindowingMode(int i, boolean z) {
        if (this.mTaskVisibility.isTwoUp()) {
            if (i == 3) {
                return 4;
            }
            if (i == 4) {
                return 3;
            }
            return 0;
        }
        if (this.mTaskVisibility.isMultiSplit() && isQuarter(i)) {
            if (z) {
                return this.mQuarterTarget;
            }
            return this.mHalfTarget;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Rect getShrinkBounds(com.android.wm.shell.naturalswitching.NonDragTarget r7) {
        /*
            r6 = this;
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            android.animation.ValueAnimator r1 = r7.mAnimator
            if (r1 == 0) goto Lf
            android.graphics.Rect r7 = r7.mEndBounds
            r0.set(r7)
            goto L12
        Lf:
            r7.getCurrentLayoutBounds(r0)
        L12:
            boolean r7 = r6.mIsFloatingDragTarget
            r1 = 4
            r2 = 16
            r3 = 1
            if (r7 != 0) goto L51
            android.graphics.Rect r7 = r6.mDragTargetBounds
            boolean r7 = r7.isEmpty()
            if (r7 != 0) goto L51
            com.android.wm.shell.naturalswitching.TaskVisibility r7 = r6.mTaskVisibility
            boolean r7 = r7.isMultiSplit()
            if (r7 == 0) goto L32
            int r7 = r6.mDragTargetWindowingMode
            boolean r7 = r6.isQuarter(r7)
            r7 = r7 ^ r3
            goto L52
        L32:
            com.android.wm.shell.naturalswitching.TaskVisibility r7 = r6.mTaskVisibility
            boolean r7 = r7.isTwoUp()
            if (r7 == 0) goto L51
            com.android.wm.shell.splitscreen.SplitScreenController r7 = r6.mSplitScreenController
            boolean r7 = r7.isVerticalDivision()
            if (r7 != 0) goto L49
            int r7 = r6.mDropSide
            if (r7 == r1) goto L50
            if (r7 == r2) goto L50
            goto L51
        L49:
            int r7 = r6.mDropSide
            if (r7 == r1) goto L51
            if (r7 != r2) goto L50
            goto L51
        L50:
            r3 = 0
        L51:
            r7 = r3
        L52:
            r3 = 2
            if (r7 == 0) goto L6c
            android.graphics.Rect r7 = r6.mContainingBounds
            int r7 = r7.width()
            int r4 = r6.mDividerSize
            int r7 = androidx.appcompat.widget.AbsActionBarView$$ExternalSyntheticOutline0.m(r7, r4, r3, r4)
            android.graphics.Rect r4 = r6.mContainingBounds
            int r4 = r4.height()
            int r5 = r6.mDividerSize
            int r4 = r4 - r5
            int r4 = r4 / r3
            goto L7d
        L6c:
            android.graphics.Rect r7 = r6.mDragTargetBounds
            int r7 = r7.width()
            int r4 = r6.mDividerSize
            int r7 = r7 + r4
            android.graphics.Rect r4 = r6.mDragTargetBounds
            int r4 = r4.height()
            int r5 = r6.mDividerSize
        L7d:
            int r4 = r4 + r5
            int r5 = r6.mDropSide
            if (r5 == r3) goto La3
            if (r5 == r1) goto L9b
            r1 = 8
            if (r5 == r1) goto L93
            if (r5 == r2) goto L8b
            goto Laa
        L8b:
            android.graphics.Rect r6 = r6.mContainingBounds
            int r6 = r6.bottom
            int r6 = r6 - r4
            r0.bottom = r6
            goto Laa
        L93:
            android.graphics.Rect r6 = r6.mContainingBounds
            int r6 = r6.right
            int r6 = r6 - r7
            r0.right = r6
            goto Laa
        L9b:
            android.graphics.Rect r6 = r6.mContainingBounds
            int r6 = r6.top
            int r6 = r6 + r4
            r0.top = r6
            goto Laa
        La3:
            android.graphics.Rect r6 = r6.mContainingBounds
            int r6 = r6.left
            int r6 = r6 + r7
            r0.left = r6
        Laa:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.naturalswitching.NonDragTargetView.getShrinkBounds(com.android.wm.shell.naturalswitching.NonDragTarget):android.graphics.Rect");
    }

    public final NonDragTarget getTargetUnderPoint(int i, int i2) {
        boolean z;
        if (this.mDropSide == 16) {
            i2 = this.mStableRect.bottom - 1;
        }
        int size = this.mNonTargets.size();
        while (true) {
            size--;
            if (size >= 0) {
                NonDragTarget nonDragTarget = (NonDragTarget) this.mNonTargets.valueAt(size);
                if (nonDragTarget.mAnimator == null) {
                    if (this.mPushed) {
                        if (nonDragTarget.mBaseBounds.contains(i, i2)) {
                            return nonDragTarget;
                        }
                    } else {
                        ArrayList arrayList = nonDragTarget.mPolygon;
                        int i3 = 0;
                        boolean z2 = true;
                        if (arrayList != null && arrayList.size() >= 4) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            ArrayList arrayList2 = nonDragTarget.mPolygon;
                            if (arrayList2 == null || arrayList2.size() < 4) {
                                z2 = false;
                            }
                            if (z2) {
                                int size2 = nonDragTarget.mPolygon.size();
                                int i4 = size2 - 1;
                                int i5 = 0;
                                while (i3 < size2) {
                                    PointF pointF = (PointF) nonDragTarget.mPolygon.get(i3);
                                    PointF pointF2 = (PointF) nonDragTarget.mPolygon.get(i4);
                                    float f = pointF.y;
                                    float f2 = i2;
                                    if ((f < f2 && pointF2.y >= f2) || (pointF2.y < f2 && f >= f2)) {
                                        float f3 = pointF.x;
                                        if (DependencyGraph$$ExternalSyntheticOutline0.m(pointF2.x, f3, (f2 - f) / (pointF2.y - f), f3) <= i) {
                                            i5 ^= 1;
                                        }
                                    }
                                    int i6 = i3;
                                    i3++;
                                    i4 = i6;
                                }
                                i3 = i5;
                            }
                            if (i3 != 0) {
                                return nonDragTarget;
                            }
                        } else {
                            nonDragTarget.getCurrentLayoutBounds(this.mTmpRect);
                            if (this.mTmpRect.contains(i, i2)) {
                                return nonDragTarget;
                            }
                        }
                    }
                }
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0144, code lost:
    
        if (r12 != false) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void init(int r12, int r13, com.android.wm.shell.naturalswitching.TaskVisibility r14, com.android.wm.shell.splitscreen.SplitScreenController r15) {
        /*
            Method dump skipped, instructions count: 782
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.naturalswitching.NonDragTargetView.init(int, int, com.android.wm.shell.naturalswitching.TaskVisibility, com.android.wm.shell.splitscreen.SplitScreenController):void");
    }

    public final void initPushRegion(Rect rect) {
        Rect dividerBounds;
        int i = (int) ((((FrameLayout) this).mContext.getResources().getDisplayMetrics().density * 45.0f) + 0.5f);
        if (!isQuarter(this.mDragTargetWindowingMode) && !this.mIsFloatingDragTarget) {
            dividerBounds = this.mSplitScreenController.getCellDividerBounds();
        } else {
            dividerBounds = this.mSplitScreenController.getDividerBounds();
        }
        if (isNonTargetsHorizontal()) {
            if (this.mDragTargetBounds.width() < rect.width()) {
                rect = this.mDragTargetBounds;
            }
            int width = rect.width() / 2;
            int i2 = dividerBounds.top - i;
            int i3 = dividerBounds.bottom + i;
            this.mPushRegions.put(1, new Rect(this.mDisplayBounds.left, i2, this.mStableRect.left + width, i3));
            this.mPushRegions.put(3, new Rect(this.mStableRect.right - width, i2, this.mDisplayBounds.right, i3));
            return;
        }
        if (this.mDragTargetBounds.height() < rect.height()) {
            rect = this.mDragTargetBounds;
        }
        int height = rect.height();
        int i4 = dividerBounds.left - i;
        int i5 = dividerBounds.right + i;
        this.mPushRegions.put(2, new Rect(i4, this.mDisplayBounds.top, i5, this.mStableRect.top + 120));
        this.mPushRegions.put(4, new Rect(i4, this.mStableRect.bottom - height, i5, this.mDisplayBounds.bottom));
    }

    public final boolean isNonTargetsHorizontal() {
        if (this.mIsFloatingDragTarget) {
            return !this.mSplitScreenController.isVerticalDivision();
        }
        if (!this.mTaskVisibility.isMultiSplit()) {
            return false;
        }
        if (!this.mSplitScreenController.isVerticalDivision()) {
            return isQuarter(this.mDragTargetWindowingMode);
        }
        if (this.mDragTargetWindowingMode == this.mHalfTarget) {
            return true;
        }
        return false;
    }

    public final boolean isQuarter(int i) {
        if (this.mIsFloatingDragTarget) {
            return false;
        }
        if (i == 12) {
            return true;
        }
        if ((i != 3 || this.mSplitScreenController.getCellHostStageType() != 0) && (i != 4 || this.mSplitScreenController.getCellHostStageType() != 1)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
    }

    public final void startTransition(boolean z) {
        final float f;
        if (this.mNaturalSwitchingMode == 1) {
            for (int size = this.mNonTargets.size() - 1; size >= 0; size--) {
                final NonDragTarget nonDragTarget = (NonDragTarget) this.mNonTargets.valueAt(size);
                ValueAnimator valueAnimator = nonDragTarget.mTransitAnimator;
                if (valueAnimator != null) {
                    valueAnimator.end();
                }
                if (z) {
                    nonDragTarget.startOutlineInsetsAnimationIfNeeded();
                } else {
                    nonDragTarget.mAnimatingExit = true;
                }
                nonDragTarget.mTransitAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
                final float scaleX = nonDragTarget.mView.getScaleX();
                final float scaleY = nonDragTarget.mView.getScaleY();
                float f2 = 1.0f;
                if (z) {
                    f = nonDragTarget.mDownScale.x;
                } else {
                    f = 1.0f;
                }
                if (z) {
                    f2 = nonDragTarget.mDownScale.y;
                }
                final float f3 = f2;
                nonDragTarget.mTransitAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.naturalswitching.NonDragTarget.8
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        float f4 = scaleX;
                        float m = DependencyGraph$$ExternalSyntheticOutline0.m(f, f4, floatValue, f4);
                        float f5 = scaleY;
                        float m2 = DependencyGraph$$ExternalSyntheticOutline0.m(f3, f5, floatValue, f5);
                        NonDragTarget.this.mView.setScaleX(m);
                        NonDragTarget.this.mView.setScaleY(m2);
                        NonDragTarget.this.mBlurView.setScaleX(m);
                        NonDragTarget.this.mBlurView.setScaleY(m2);
                        NonDragTarget.this.mView.invalidateOutline();
                        NonDragTarget.this.mBlurView.invalidateOutline();
                    }
                });
                nonDragTarget.mTransitAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.naturalswitching.NonDragTarget.9
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        NonDragTarget nonDragTarget2 = NonDragTarget.this;
                        nonDragTarget2.mTransitAnimator = null;
                        if (nonDragTarget2.mAnimatingExit) {
                            nonDragTarget2.mAnimatingExit = false;
                        }
                    }
                });
                nonDragTarget.mTransitAnimator.setInterpolator(InterpolatorUtils.SINE_OUT_60);
                nonDragTarget.mTransitAnimator.setDuration(150L);
                nonDragTarget.mTransitAnimator.start();
            }
        }
    }

    public final void swapOrShrinkNonTarget(int i, int i2, int i3) {
        undoNonTarget();
        NonDragTarget targetUnderPoint = getTargetUnderPoint(i, i2);
        if (this.mPushedNonTargets.contains(targetUnderPoint)) {
            this.mPushedNonTargets.remove(targetUnderPoint);
            this.mPushed = false;
        }
        if (targetUnderPoint != null) {
            if (this.mTaskVisibility.isMultiSplit()) {
                if (isQuarter(this.mDragTargetWindowingMode)) {
                    if (isQuarter(targetUnderPoint.mNsWindowingMode)) {
                        Rect shrinkBounds = getShrinkBounds(targetUnderPoint);
                        this.mShrunkTarget = targetUnderPoint;
                        targetUnderPoint.animate(shrinkBounds);
                        return;
                    }
                    if ((!this.mSplitScreenController.isVerticalDivision() && (i3 == 2 || i3 == 8)) || (this.mSplitScreenController.isVerticalDivision() && (i3 == 4 || i3 == 16))) {
                        this.mShrunkTarget = targetUnderPoint;
                        targetUnderPoint.animate(getShrinkBounds(targetUnderPoint));
                        return;
                    }
                    this.mSwapTarget = targetUnderPoint;
                    targetUnderPoint.animate(this.mDragTargetBounds);
                    targetUnderPoint.bringToFront();
                    NonDragTarget nonDragTarget = (NonDragTarget) this.mNonTargets.get(getReverseWindowingMode(this.mDragTargetWindowingMode, true));
                    if (nonDragTarget != null) {
                        nonDragTarget.animate(this.mTaskVisibility.getTaskBounds(nonDragTarget.mNsWindowingMode));
                        if (this.mPushedNonTargets.contains(nonDragTarget)) {
                            this.mPushedNonTargets.remove(nonDragTarget);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i3 != 32) {
                    this.mSwapTarget = targetUnderPoint;
                    targetUnderPoint.bringToFront();
                    targetUnderPoint.animate(this.mDragTargetBounds);
                    return;
                }
                return;
            }
            Rect shrinkBounds2 = getShrinkBounds(targetUnderPoint);
            this.mShrunkTarget = targetUnderPoint;
            targetUnderPoint.animate(shrinkBounds2);
        }
    }

    public final void undoNonTarget() {
        NonDragTarget nonDragTarget;
        NonDragTarget nonDragTarget2 = this.mSwapTarget;
        if (nonDragTarget2 != null) {
            nonDragTarget2.animate(nonDragTarget2.mBaseBounds);
            if (isQuarter(this.mDragTargetWindowingMode) && this.mSwapTarget.mNsWindowingMode == this.mHalfTarget && (nonDragTarget = (NonDragTarget) this.mNonTargets.get(getReverseWindowingMode(this.mDragTargetWindowingMode, true))) != null) {
                nonDragTarget.animate(nonDragTarget.mBaseBounds);
                if (this.mPushedNonTargets.contains(nonDragTarget)) {
                    this.mPushedNonTargets.remove(nonDragTarget);
                }
            }
            this.mSwapTarget = null;
            return;
        }
        NonDragTarget nonDragTarget3 = this.mShrunkTarget;
        if (nonDragTarget3 != null) {
            nonDragTarget3.animate(nonDragTarget3.mBaseBounds);
            this.mShrunkTarget = null;
        }
    }
}
