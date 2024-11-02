package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicatorGardenMaxWidthFrameLayout extends FrameLayout implements IndicatorGardenContainer {
    public int gardenMaxWidth;

    public IndicatorGardenMaxWidthFrameLayout(Context context) {
        super(context);
        this.gardenMaxWidth = -1;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenContainer
    public final int getGardenWidth() {
        int paddingEnd = getPaddingEnd() + getPaddingStart();
        int measuredWidth = getMeasuredWidth();
        int width = getWidth();
        if (measuredWidth < width) {
            measuredWidth = width;
        }
        return measuredWidth + paddingEnd;
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenContainer
    public final boolean isGardenVisible() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int i3 = this.gardenMaxWidth;
        boolean z = false;
        if (1 <= i3 && i3 < size) {
            z = true;
        }
        if (z) {
            i = View.MeasureSpec.makeMeasureSpec(i3, View.MeasureSpec.getMode(i));
        }
        super.onMeasure(i, i2);
    }

    @Override // com.android.systemui.statusbar.phone.IndicatorGardenContainer
    public final void setGardenMaxWidth(int i) {
        if (this.gardenMaxWidth == i) {
            return;
        }
        this.gardenMaxWidth = i;
        requestLayout();
    }

    public IndicatorGardenMaxWidthFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.gardenMaxWidth = -1;
    }

    public IndicatorGardenMaxWidthFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.gardenMaxWidth = -1;
    }
}
