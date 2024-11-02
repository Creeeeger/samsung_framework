package com.android.systemui.qs.customize;

import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;
import com.android.systemui.plugins.qs.QSIconView;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.tileimpl.QSTileViewImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CustomizeTileView extends QSTileViewImpl {
    public boolean showAppLabel;
    public boolean showSideView;

    public CustomizeTileView(Context context, QSIconView qSIconView) {
        super(context, qSIconView, false);
        this.showSideView = true;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileViewImpl
    public final boolean animationsEnabled() {
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileViewImpl
    public final void handleStateChanged(QSTile.State state) {
        super.handleStateChanged(state);
        int i = 0;
        this.showRippleEffect = false;
        TextView secondaryLabel = getSecondaryLabel();
        CharSequence charSequence = state.secondaryLabel;
        if (!this.showAppLabel || TextUtils.isEmpty(charSequence)) {
            i = 8;
        }
        secondaryLabel.setVisibility(i);
        if (!this.showSideView) {
            getSideView().setVisibility(8);
        }
    }

    @Override // android.view.View
    public final boolean isLongClickable() {
        return false;
    }
}
