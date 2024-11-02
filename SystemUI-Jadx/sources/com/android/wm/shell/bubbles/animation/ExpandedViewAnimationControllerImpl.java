package com.android.wm.shell.bubbles.animation;

import android.content.Context;
import android.view.ViewConfiguration;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import com.android.wm.shell.animation.FlingAnimationUtils;
import com.android.wm.shell.bubbles.BubblePositioner;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ExpandedViewAnimationControllerImpl {
    public static final AnonymousClass1 COLLAPSE_HEIGHT_PROPERTY = new FloatPropertyCompat("CollapseSpring") { // from class: com.android.wm.shell.bubbles.animation.ExpandedViewAnimationControllerImpl.1
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float getValue(Object obj) {
            return ((ExpandedViewAnimationControllerImpl) obj).mCollapsedAmount;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void setValue(Object obj, float f) {
            ExpandedViewAnimationControllerImpl expandedViewAnimationControllerImpl = (ExpandedViewAnimationControllerImpl) obj;
            AnonymousClass1 anonymousClass1 = ExpandedViewAnimationControllerImpl.COLLAPSE_HEIGHT_PROPERTY;
            if (expandedViewAnimationControllerImpl.mCollapsedAmount != f) {
                expandedViewAnimationControllerImpl.mCollapsedAmount = f;
            }
        }
    };
    public float mCollapsedAmount;
    public final int mMinFlingVelocity;
    public float mSwipeDownVelocity;
    public float mSwipeUpVelocity;

    public ExpandedViewAnimationControllerImpl(Context context, BubblePositioner bubblePositioner) {
        new FlingAnimationUtils(context.getResources().getDisplayMetrics(), 0.35f);
        this.mMinFlingVelocity = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
    }
}
