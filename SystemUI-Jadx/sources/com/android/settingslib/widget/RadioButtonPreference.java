package com.android.settingslib.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.preference.CheckBoxPreference;
import androidx.preference.PreferenceViewHolder;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class RadioButtonPreference extends CheckBoxPreference {
    public View mAppendix;
    public final int mAppendixVisibility;
    public ImageView mExtraWidget;
    public View mExtraWidgetContainer;
    public View.OnClickListener mExtraWidgetOnClickListener;

    public RadioButtonPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAppendixVisibility = -1;
        this.mWidgetLayoutResId = R.layout.preference_widget_radiobutton;
        this.mLayoutResId = R.layout.preference_radio;
        if (this.mIconSpaceReserved) {
            this.mIconSpaceReserved = false;
            notifyChanged();
        }
    }

    @Override // androidx.preference.CheckBoxPreference, androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        int i;
        int i2;
        super.onBindViewHolder(preferenceViewHolder);
        View findViewById = preferenceViewHolder.findViewById(R.id.summary_container);
        int i3 = 0;
        if (findViewById != null) {
            if (TextUtils.isEmpty(getSummary())) {
                i = 8;
            } else {
                i = 0;
            }
            findViewById.setVisibility(i);
            View findViewById2 = preferenceViewHolder.findViewById(R.id.appendix);
            this.mAppendix = findViewById2;
            if (findViewById2 != null && (i2 = this.mAppendixVisibility) != -1) {
                findViewById2.setVisibility(i2);
            }
        }
        this.mExtraWidget = (ImageView) preferenceViewHolder.findViewById(R.id.radio_extra_widget);
        View findViewById3 = preferenceViewHolder.findViewById(R.id.radio_extra_widget_container);
        this.mExtraWidgetContainer = findViewById3;
        View.OnClickListener onClickListener = this.mExtraWidgetOnClickListener;
        this.mExtraWidgetOnClickListener = onClickListener;
        ImageView imageView = this.mExtraWidget;
        if (imageView != null && findViewById3 != null) {
            imageView.setOnClickListener(onClickListener);
            View view = this.mExtraWidgetContainer;
            if (this.mExtraWidgetOnClickListener == null) {
                i3 = 8;
            }
            view.setVisibility(i3);
        }
    }

    public RadioButtonPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAppendixVisibility = -1;
        this.mWidgetLayoutResId = R.layout.preference_widget_radiobutton;
        this.mLayoutResId = R.layout.preference_radio;
        if (this.mIconSpaceReserved) {
            this.mIconSpaceReserved = false;
            notifyChanged();
        }
    }

    public RadioButtonPreference(Context context) {
        this(context, null);
    }

    @Override // androidx.preference.TwoStatePreference, androidx.preference.Preference
    public final void onClick() {
    }
}
