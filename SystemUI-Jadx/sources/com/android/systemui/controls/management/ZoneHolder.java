package com.android.systemui.controls.management;

import android.view.View;
import android.widget.TextView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ZoneHolder extends Holder {
    public final TextView zone;

    public ZoneHolder(View view) {
        super(view, null);
        this.zone = (TextView) this.itemView;
    }

    @Override // com.android.systemui.controls.management.Holder
    public final void bindData(ElementWrapper elementWrapper) {
        this.zone.setText(((ZoneNameWrapper) elementWrapper).zoneName);
    }
}
