package com.android.systemui.controls.management.adapter;

import android.view.View;
import com.android.systemui.controls.management.model.CustomElementWrapper;
import com.android.systemui.controls.management.model.VerticalPaddingWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PaddingCustomHolder extends CustomHolder {
    public final View paddingView;

    public PaddingCustomHolder(View view) {
        super(view, null);
        this.paddingView = this.itemView;
    }

    @Override // com.android.systemui.controls.management.adapter.CustomHolder
    public final void bindData(CustomElementWrapper customElementWrapper) {
        this.paddingView.getLayoutParams().height = ((VerticalPaddingWrapper) customElementWrapper).padding;
    }
}
