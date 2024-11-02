package com.android.systemui.controls.management;

import android.view.View;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DividerHolder extends Holder {
    public final View divider;
    public final View frame;

    public DividerHolder(View view) {
        super(view, null);
        this.frame = this.itemView.requireViewById(R.id.frame);
        this.divider = this.itemView.requireViewById(R.id.divider);
    }

    @Override // com.android.systemui.controls.management.Holder
    public final void bindData(ElementWrapper elementWrapper) {
        int i;
        DividerWrapper dividerWrapper = (DividerWrapper) elementWrapper;
        int i2 = 0;
        if (dividerWrapper.showNone) {
            i = 0;
        } else {
            i = 8;
        }
        this.frame.setVisibility(i);
        if (!dividerWrapper.showDivider) {
            i2 = 8;
        }
        this.divider.setVisibility(i2);
    }
}
