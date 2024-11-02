package com.android.wm.shell.bubbles.bar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import com.android.internal.policy.ScreenDecorationsUtils;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BubbleBarExpandedView extends FrameLayout {
    public int mBackgroundColor;
    public float mCornerRadius;
    public boolean mIsContentVisible;
    public int mMenuHeight;
    public HandleView mMenuView;

    public BubbleBarExpandedView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        float f;
        super.onFinishInflate();
        Context context = getContext();
        setElevation(getResources().getDimensionPixelSize(R.dimen.bubble_elevation));
        this.mMenuHeight = context.getResources().getDimensionPixelSize(R.dimen.bubblebar_expanded_view_menu_size);
        HandleView handleView = new HandleView(context);
        this.mMenuView = handleView;
        addView(handleView);
        boolean supportsRoundedCornersOnWindows = ScreenDecorationsUtils.supportsRoundedCornersOnWindows(((FrameLayout) this).mContext.getResources());
        TypedArray obtainStyledAttributes = ((FrameLayout) this).mContext.obtainStyledAttributes(new int[]{android.R.attr.dialogCornerRadius, android.R.attr.colorBackgroundFloating});
        if (supportsRoundedCornersOnWindows) {
            f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        } else {
            f = 0.0f;
        }
        this.mCornerRadius = f / 2.0f;
        this.mBackgroundColor = obtainStyledAttributes.getColor(1, -1);
        obtainStyledAttributes.recycle();
        HandleView handleView2 = this.mMenuView;
        handleView2.setPadding(handleView2.getPaddingLeft(), handleView2.getPaddingTop(), handleView2.getPaddingRight(), (int) this.mCornerRadius);
        this.mMenuHeight = getResources().getDimensionPixelSize(R.dimen.bubblebar_expanded_view_menu_size);
        setClipToOutline(true);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.wm.shell.bubbles.bar.BubbleBarExpandedView.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), BubbleBarExpandedView.this.mCornerRadius);
            }
        });
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mMenuView.layout(i, i2, i3, this.mMenuView.getMeasuredHeight() + i2);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        measureChild(this.mMenuView, i, View.MeasureSpec.makeMeasureSpec(Math.min((int) (this.mMenuHeight + this.mCornerRadius), View.MeasureSpec.getSize(i2)), View.MeasureSpec.getMode(i2)));
    }

    public BubbleBarExpandedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleBarExpandedView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public BubbleBarExpandedView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mCornerRadius = 0.0f;
        this.mIsContentVisible = false;
    }
}
