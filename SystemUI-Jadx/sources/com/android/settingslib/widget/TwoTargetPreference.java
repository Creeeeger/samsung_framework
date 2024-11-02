package com.android.settingslib.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class TwoTargetPreference extends Preference {
    public TwoTargetPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    public int getSecondTargetResId() {
        return 0;
    }

    public final void init(Context context) {
        this.mLayoutResId = R.layout.preference_two_target;
        context.getResources().getDimensionPixelSize(R.dimen.two_target_pref_small_icon_size);
        context.getResources().getDimensionPixelSize(R.dimen.two_target_pref_medium_icon_size);
        int secondTargetResId = getSecondTargetResId();
        if (secondTargetResId != 0) {
            this.mWidgetLayoutResId = secondTargetResId;
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        int i;
        super.onBindViewHolder(preferenceViewHolder);
        View findViewById = preferenceViewHolder.findViewById(R.id.two_target_divider);
        View findViewById2 = preferenceViewHolder.findViewById(android.R.id.widget_frame);
        boolean shouldHideSecondTarget = shouldHideSecondTarget();
        int i2 = 8;
        if (findViewById != null) {
            if (shouldHideSecondTarget) {
                i = 8;
            } else {
                i = 0;
            }
            findViewById.setVisibility(i);
        }
        if (findViewById2 != null) {
            if (!shouldHideSecondTarget) {
                i2 = 0;
            }
            findViewById2.setVisibility(i2);
        }
    }

    public boolean shouldHideSecondTarget() {
        if (getSecondTargetResId() == 0) {
            return true;
        }
        return false;
    }

    public TwoTargetPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public TwoTargetPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public TwoTargetPreference(Context context) {
        super(context);
        init(context);
    }
}
