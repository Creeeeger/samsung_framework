package com.android.systemui.util.recycler;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HorizontalSpacerItemDecoration extends RecyclerView.ItemDecoration {
    public final int offset;

    public HorizontalSpacerItemDecoration(int i) {
        this.offset = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int i;
        int i2;
        recyclerView.getClass();
        int childAdapterPosition = RecyclerView.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = recyclerView.mAdapter;
        if (adapter != null) {
            i = adapter.getItemCount();
        } else {
            i = 0;
        }
        int i3 = this.offset;
        if (childAdapterPosition == 0) {
            i2 = i3 * 2;
        } else {
            i2 = i3;
        }
        if (childAdapterPosition == i - 1) {
            i3 *= 2;
        }
        rect.set(i2, 0, i3, 0);
    }
}
