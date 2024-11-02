package com.android.systemui.controls.management.adapter;

import android.view.View;
import com.android.systemui.controls.management.model.PaddingWrapper;
import com.android.systemui.controls.management.model.StructureElementWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StructureControlPaddingHolder extends CustomStructureHolder {
    public final View paddingView;

    public StructureControlPaddingHolder(View view) {
        super(view, null);
        this.paddingView = this.itemView;
    }

    @Override // com.android.systemui.controls.management.adapter.CustomStructureHolder
    public final void bindData(StructureElementWrapper structureElementWrapper) {
        this.paddingView.getLayoutParams().height = ((PaddingWrapper) structureElementWrapper).padding;
    }
}
