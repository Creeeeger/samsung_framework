package com.android.systemui.media.controls.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import com.android.wm.shell.animation.PhysicsAnimator;
import com.android.wm.shell.animation.PhysicsAnimatorKt;
import java.util.WeakHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaScrollView extends HorizontalScrollView {
    public ViewGroup contentContainer;

    public MediaScrollView(Context context) {
        this(context, null, 0, 6, null);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.contentContainer = (ViewGroup) getChildAt(0);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!super.onInterceptTouchEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!super.onTouchEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public final boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        float translationX;
        boolean z2;
        ViewGroup viewGroup = this.contentContainer;
        ViewGroup viewGroup2 = null;
        if (viewGroup == null) {
            viewGroup = null;
        }
        WeakHashMap weakHashMap = PhysicsAnimatorKt.animators;
        PhysicsAnimator.Companion.getClass();
        if (PhysicsAnimator.Companion.getInstance(viewGroup).isRunning()) {
            translationX = 0.0f;
        } else {
            ViewGroup viewGroup3 = this.contentContainer;
            if (viewGroup3 != null) {
                viewGroup2 = viewGroup3;
            }
            translationX = viewGroup2.getTranslationX();
        }
        if (translationX == 0.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            return false;
        }
        return super.overScrollBy(i, i2, i3, i4, i5, i6, i7, i8, z);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final void scrollTo(int i, int i2) {
        int i3 = ((HorizontalScrollView) this).mScrollX;
        if (i3 != i || ((HorizontalScrollView) this).mScrollY != i2) {
            int i4 = ((HorizontalScrollView) this).mScrollY;
            ((HorizontalScrollView) this).mScrollX = i;
            ((HorizontalScrollView) this).mScrollY = i2;
            invalidateParentCaches();
            onScrollChanged(((HorizontalScrollView) this).mScrollX, ((HorizontalScrollView) this).mScrollY, i3, i4);
            if (!awakenScrollBars()) {
                postInvalidateOnAnimation();
            }
        }
    }

    public MediaScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ MediaScrollView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public MediaScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
