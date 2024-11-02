package com.android.systemui.controls.management;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MarginItemDecorator extends RecyclerView.ItemDecoration {
    public final int sideMargins;
    public final int topMargin;

    public MarginItemDecorator(int i, int i2) {
        this.topMargin = i;
        this.sideMargins = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        Integer num;
        recyclerView.getClass();
        int childAdapterPosition = RecyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == -1) {
            return;
        }
        RecyclerView.Adapter adapter = recyclerView.mAdapter;
        if (adapter != null) {
            num = Integer.valueOf(adapter.getItemViewType(childAdapterPosition));
        } else {
            num = null;
        }
        if (num != null && num.intValue() == 1) {
            rect.top = this.topMargin * 2;
            int i = this.sideMargins;
            rect.left = i;
            rect.right = i;
            rect.bottom = 0;
            return;
        }
        if (num != null && num.intValue() == 0 && childAdapterPosition == 0) {
            rect.top = -((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin;
            rect.left = 0;
            rect.right = 0;
            rect.bottom = 0;
        }
    }
}
