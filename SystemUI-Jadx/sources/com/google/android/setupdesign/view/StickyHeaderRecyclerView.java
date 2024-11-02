package com.google.android.setupdesign.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class StickyHeaderRecyclerView extends HeaderRecyclerView {
    public int statusBarInset;
    public View sticky;
    public final RectF stickyRect;

    public StickyHeaderRecyclerView(Context context) {
        super(context);
        this.statusBarInset = 0;
        this.stickyRect = new RectF();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.stickyRect.contains(motionEvent.getX(), motionEvent.getY())) {
            RectF rectF = this.stickyRect;
            motionEvent.offsetLocation(-rectF.left, -rectF.top);
            return this.header.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void draw(Canvas canvas) {
        View view;
        int i;
        super.draw(canvas);
        if (this.sticky != null) {
            View view2 = this.header;
            int save = canvas.save();
            if (view2 != null) {
                view = view2;
            } else {
                view = this.sticky;
            }
            if (view2 != null) {
                i = this.sticky.getTop();
            } else {
                i = 0;
            }
            if (view.getTop() + i >= this.statusBarInset && view.isShown()) {
                this.stickyRect.setEmpty();
            } else {
                this.stickyRect.set(0.0f, (-i) + this.statusBarInset, view.getWidth(), (view.getHeight() - i) + this.statusBarInset);
                canvas.translate(0.0f, this.stickyRect.top);
                canvas.clipRect(0, 0, view.getWidth(), view.getHeight());
                view.draw(canvas);
            }
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (getFitsSystemWindows()) {
            this.statusBarInset = windowInsets.getSystemWindowInsetTop();
            windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return windowInsets;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        View view2;
        super.onLayout(z, i, i2, i3, i4);
        if (this.sticky == null && (view2 = this.header) != null) {
            this.sticky = view2.findViewWithTag("sticky");
        }
        if (this.sticky != null && (view = this.header) != null && view.getHeight() == 0) {
            view.layout(0, -view.getMeasuredHeight(), view.getMeasuredWidth(), 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.sticky != null) {
            measureChild(this.header, i, i2);
        }
    }

    public StickyHeaderRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.statusBarInset = 0;
        this.stickyRect = new RectF();
    }

    public StickyHeaderRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.statusBarInset = 0;
        this.stickyRect = new RectF();
    }
}
