package com.android.systemui.globalactions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ListGridLayout extends LinearLayout {
    public final int[][] mConfigs;
    public int mCurrentCount;
    public int mExpectedCount;
    public boolean mReverseItems;
    public boolean mReverseSublists;
    public boolean mSwapRowsAndColumns;

    public ListGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentCount = 0;
        this.mConfigs = new int[][]{new int[]{0, 0}, new int[]{1, 1}, new int[]{1, 2}, new int[]{1, 3}, new int[]{2, 2}, new int[]{2, 3}, new int[]{2, 3}, new int[]{3, 3}, new int[]{3, 3}, new int[]{3, 3}};
    }

    public ViewGroup getParentView(int i, boolean z, boolean z2) {
        int i2;
        if (getRowCount() != 0 && i >= 0) {
            int min = Math.min(i, (this.mConfigs.length - 1) - 1);
            int rowCount = getRowCount();
            if (z2) {
                i2 = (int) Math.floor(min / rowCount);
            } else {
                i2 = min % rowCount;
            }
            if (z) {
                i2 = getChildCount() - (i2 + 1);
            }
            return getSublist(i2);
        }
        return null;
    }

    public final int getRowCount() {
        int[] iArr;
        int i = this.mExpectedCount;
        if (i < 0) {
            iArr = this.mConfigs[0];
        } else {
            iArr = this.mConfigs[Math.min(this.mConfigs.length - 1, i)];
        }
        return iArr[0];
    }

    public ViewGroup getSublist(int i) {
        return (ViewGroup) getChildAt(i);
    }
}
