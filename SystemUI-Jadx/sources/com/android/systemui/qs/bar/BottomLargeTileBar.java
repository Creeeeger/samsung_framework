package com.android.systemui.qs.bar;

import android.content.Context;
import android.widget.LinearLayout;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BottomLargeTileBar extends LargeTileBar {
    public BottomLargeTileBar(Context context) {
        super(context);
        this.mContext = context;
    }

    @Override // com.android.systemui.qs.bar.LargeTileBar, com.android.systemui.qs.bar.BarItemImpl
    public final void updateHeightMargins() {
        super.updateHeightMargins();
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.bar_top_margin);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mBarRootView.getLayoutParams();
        layoutParams.topMargin = dimensionPixelSize;
        this.mBarRootView.setLayoutParams(layoutParams);
    }
}
