package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NavigationRailMenuView extends NavigationBarMenuView {
    public int itemMinimumHeight;
    public final FrameLayout.LayoutParams layoutParams;

    public NavigationRailMenuView(Context context) {
        super(context);
        this.itemMinimumHeight = -1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.layoutParams = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.activeIndicatorResizeable = true;
            }
        }
    }

    public final int makeSharedHeightSpec(int i, int i2, int i3) {
        int max = i2 / Math.max(1, i3);
        int i4 = this.itemMinimumHeight;
        if (i4 == -1) {
            i4 = View.MeasureSpec.getSize(i);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(i4, max), 0);
    }

    public final int measureSharedChildHeights(View view, int i, int i2, int i3) {
        int makeMeasureSpec;
        int i4;
        makeSharedHeightSpec(i, i2, i3);
        if (view == null) {
            makeMeasureSpec = makeSharedHeightSpec(i, i2, i3);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        }
        int childCount = getChildCount();
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt != view) {
                if (childAt.getVisibility() != 8) {
                    childAt.measure(i, makeMeasureSpec);
                    i4 = childAt.getMeasuredHeight();
                } else {
                    i4 = 0;
                }
                i5 += i4;
            }
        }
        return i5;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i6;
                childAt.layout(0, i6, i5, measuredHeight);
                i6 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int measureSharedChildHeights;
        int i3;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.menu.getVisibleItems().size();
        boolean z = true;
        if (size2 > 1) {
            if (this.labelVisibilityMode != 0) {
                z = false;
            }
            if (z) {
                View childAt = getChildAt(this.selectedItemPosition);
                if (childAt != null) {
                    int makeSharedHeightSpec = makeSharedHeightSpec(i, size, size2);
                    if (childAt.getVisibility() != 8) {
                        childAt.measure(i, makeSharedHeightSpec);
                        i3 = childAt.getMeasuredHeight();
                    } else {
                        i3 = 0;
                    }
                    size -= i3;
                    size2--;
                } else {
                    i3 = 0;
                }
                measureSharedChildHeights = measureSharedChildHeights(childAt, i, size, size2) + i3;
                setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i), i, 0), View.resolveSizeAndState(measureSharedChildHeights, i2, 0));
            }
        }
        measureSharedChildHeights = measureSharedChildHeights(null, i, size, size2);
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i), i, 0), View.resolveSizeAndState(measureSharedChildHeights, i2, 0));
    }
}
