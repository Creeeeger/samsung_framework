package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ExpandableIndicator extends ImageView {
    public boolean mExpanded;
    public final boolean mIsDefaultDirection;

    public ExpandableIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsDefaultDirection = true;
    }

    public final String getContentDescription(boolean z) {
        if (z) {
            return ((ImageView) this).mContext.getString(R.string.accessibility_quick_settings_collapse);
        }
        return ((ImageView) this).mContext.getString(R.string.accessibility_quick_settings_expand);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        boolean z = this.mExpanded;
        boolean z2 = this.mIsDefaultDirection;
        int i = R.drawable.ic_volume_expand_animation;
        if (!z2 ? !z : z) {
            i = R.drawable.ic_volume_collapse_animation;
        }
        setImageResource(i);
        setContentDescription(getContentDescription(this.mExpanded));
    }
}
