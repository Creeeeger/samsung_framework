package com.android.systemui.statusbar;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyboardShortcutKeysLayout extends ViewGroup {
    public final Context mContext;
    public int mLineHeight;

    public KeyboardShortcutKeysLayout(Context context) {
        super(context);
        this.mContext = context;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        int applyDimension = (int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
        return new LayoutParams(applyDimension, applyDimension);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        int applyDimension = (int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
        return new LayoutParams(applyDimension, applyDimension, layoutParams);
    }

    public final boolean isRTL() {
        if (MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(this.mContext) == 1) {
            return true;
        }
        return false;
    }

    public final void layoutChildrenOnRow(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        if (!isRTL()) {
            i4 = ((getPaddingLeft() + i3) - i4) + i6;
        }
        for (int i8 = i; i8 < i2; i8++) {
            View childAt = getChildAt(i8);
            int measuredWidth = childAt.getMeasuredWidth();
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (isRTL() && i8 == i) {
                i4 = (((i3 - i4) - getPaddingRight()) - measuredWidth) - layoutParams.mHorizontalSpacing;
            }
            childAt.layout(i4, i5, i4 + measuredWidth, childAt.getMeasuredHeight() + i5);
            if (isRTL()) {
                if (i8 < i2 - 1) {
                    i7 = getChildAt(i8 + 1).getMeasuredWidth();
                } else {
                    i7 = 0;
                }
                i4 -= i7 + layoutParams.mHorizontalSpacing;
            } else {
                i4 = measuredWidth + layoutParams.mHorizontalSpacing + i4;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft;
        int paddingLeft2;
        int childCount = getChildCount();
        int i5 = i3 - i;
        if (isRTL()) {
            paddingLeft = i5 - getPaddingRight();
        } else {
            paddingLeft = getPaddingLeft();
        }
        int paddingTop = getPaddingTop();
        int i6 = paddingLeft;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                boolean z2 = true;
                if (!isRTL() ? i6 + measuredWidth <= i5 : (i6 - getPaddingLeft()) - measuredWidth >= 0) {
                    z2 = false;
                }
                if (z2) {
                    layoutChildrenOnRow(i7, i9, i5, i6, paddingTop, i8);
                    if (isRTL()) {
                        paddingLeft2 = i5 - getPaddingRight();
                    } else {
                        paddingLeft2 = getPaddingLeft();
                    }
                    i6 = paddingLeft2;
                    paddingTop += this.mLineHeight;
                    i7 = i9;
                }
                if (isRTL()) {
                    i6 = (i6 - measuredWidth) - layoutParams.mHorizontalSpacing;
                } else {
                    i6 = i6 + measuredWidth + layoutParams.mHorizontalSpacing;
                }
                i8 = layoutParams.mHorizontalSpacing;
            }
        }
        if (i7 < childCount) {
            layoutChildrenOnRow(i7, childCount, i5, i6, paddingTop, i8);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int makeMeasureSpec;
        int i3;
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        int size2 = (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size2, VideoPlayer.MEDIA_ERROR_SYSTEM);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        int i4 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, VideoPlayer.MEDIA_ERROR_SYSTEM), makeMeasureSpec);
                int measuredWidth = childAt.getMeasuredWidth();
                i4 = Math.max(i4, childAt.getMeasuredHeight() + layoutParams.mVerticalSpacing);
                if (paddingLeft + measuredWidth > size) {
                    paddingLeft = getPaddingLeft();
                    paddingTop += i4;
                }
                paddingLeft = measuredWidth + layoutParams.mHorizontalSpacing + paddingLeft;
            }
        }
        this.mLineHeight = i4;
        if (View.MeasureSpec.getMode(i2) == 0) {
            size2 = paddingTop + i4;
        } else if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && (i3 = paddingTop + i4) < size2) {
            size2 = i3;
        }
        setMeasuredDimension(size, size2);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LayoutParams extends ViewGroup.LayoutParams {
        public final int mHorizontalSpacing;
        public final int mVerticalSpacing;

        public LayoutParams(int i, int i2, ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mHorizontalSpacing = i;
            this.mVerticalSpacing = i2;
        }

        public LayoutParams(int i, int i2) {
            super(0, 0);
            this.mHorizontalSpacing = i;
            this.mVerticalSpacing = i2;
        }
    }

    public KeyboardShortcutKeysLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
    }
}
