package com.android.systemui.wallet.ui;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DotIndicatorDecoration extends RecyclerView.ItemDecoration {
    public WalletCardCarousel mCardCarousel;
    public final int mDotMargin;
    public final Paint mPaint = new Paint(1);
    public final int mSelectedColor;
    public final int mSelectedRadius;
    public final int mUnselectedColor;
    public final int mUnselectedRadius;

    public DotIndicatorDecoration(Context context) {
        this.mUnselectedRadius = context.getResources().getDimensionPixelSize(R.dimen.card_carousel_dot_unselected_radius);
        this.mSelectedRadius = context.getResources().getDimensionPixelSize(R.dimen.card_carousel_dot_selected_radius);
        this.mDotMargin = context.getResources().getDimensionPixelSize(R.dimen.card_carousel_dot_margin);
        this.mUnselectedColor = context.getColor(R.color.material_dynamic_neutral70);
        this.mSelectedColor = context.getColor(R.color.material_dynamic_neutral100);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        if (recyclerView.mAdapter.getItemCount() > 1) {
            rect.bottom = view.getResources().getDimensionPixelSize(R.dimen.card_carousel_dot_offset);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b7, code lost:
    
        if (r13.mEdgeToCenterDistance >= 0.0f) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00dc, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c1, code lost:
    
        if (r13.mEdgeToCenterDistance < 0.0f) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d0, code lost:
    
        if (r10.mEdgeToCenterDistance >= 0.0f) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00da, code lost:
    
        if (r10.mEdgeToCenterDistance < 0.0f) goto L48;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onDrawOver(android.graphics.Canvas r18, androidx.recyclerview.widget.RecyclerView r19) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallet.ui.DotIndicatorDecoration.onDrawOver(android.graphics.Canvas, androidx.recyclerview.widget.RecyclerView):void");
    }
}
