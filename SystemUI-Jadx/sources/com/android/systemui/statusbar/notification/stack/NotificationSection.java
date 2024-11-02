package com.android.systemui.statusbar.notification.stack;

import android.animation.ObjectAnimator;
import android.graphics.Rect;
import android.view.View;
import com.android.systemui.statusbar.notification.row.ExpandableView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationSection {
    public final int mBucket;
    public ExpandableView mFirstVisibleChild;
    public ExpandableView mLastVisibleChild;
    public final View mOwningView;
    public final Rect mBounds = new Rect();
    public final Rect mCurrentBounds = new Rect(-1, -1, -1, -1);
    public final Rect mStartAnimationRect = new Rect();
    public final Rect mEndAnimationRect = new Rect();
    public ObjectAnimator mTopAnimator = null;
    public ObjectAnimator mBottomAnimator = null;

    public NotificationSection(View view, int i) {
        this.mOwningView = view;
        this.mBucket = i;
    }

    public final int updateBounds(int i, int i2, boolean z) {
        int i3;
        boolean z2;
        int ceil;
        ExpandableView expandableView = this.mFirstVisibleChild;
        boolean z3 = true;
        Rect rect = this.mEndAnimationRect;
        Rect rect2 = this.mCurrentBounds;
        Rect rect3 = this.mBounds;
        if (expandableView != null) {
            int ceil2 = (int) Math.ceil(ViewState.getFinalTranslationY(expandableView));
            ObjectAnimator objectAnimator = this.mTopAnimator;
            if ((objectAnimator == null && rect2.top == ceil2) || (objectAnimator != null && rect.top == ceil2)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                ceil = ceil2;
            } else {
                ceil = (int) Math.ceil(expandableView.getTranslationY());
            }
            i3 = Math.max(ceil, i);
            if (expandableView.showingPulsing()) {
                i = Math.max(i, ExpandableViewState.getFinalActualHeight(expandableView) + ceil2);
                if (z) {
                    rect3.left = (int) (Math.max(expandableView.getTranslation(), 0.0f) + rect3.left);
                    rect3.right = (int) (Math.min(expandableView.getTranslation(), 0.0f) + rect3.right);
                }
            }
        } else {
            i3 = i;
        }
        ExpandableView expandableView2 = this.mLastVisibleChild;
        if (expandableView2 != null) {
            int floor = (int) Math.floor((ViewState.getFinalTranslationY(expandableView2) + ExpandableViewState.getFinalActualHeight(expandableView2)) - expandableView2.mClipBottomAmount);
            ObjectAnimator objectAnimator2 = this.mBottomAnimator;
            if ((objectAnimator2 != null || rect2.bottom != floor) && (objectAnimator2 == null || rect.bottom != floor)) {
                z3 = false;
            }
            if (!z3) {
                floor = (int) ((expandableView2.getTranslationY() + expandableView2.mActualHeight) - expandableView2.mClipBottomAmount);
                i2 = (int) Math.min(expandableView2.getTranslationY() + expandableView2.mActualHeight, i2);
            }
            i = Math.max(i, Math.max(floor, i2));
        }
        int max = Math.max(i3, i);
        rect3.top = i3;
        rect3.bottom = max;
        return max;
    }
}
