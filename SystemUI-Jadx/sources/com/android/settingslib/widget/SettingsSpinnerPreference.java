package com.android.settingslib.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SettingsSpinnerPreference extends Preference implements Preference.OnPreferenceClickListener {
    public final AnonymousClass1 mOnSelectedListener;
    public int mPosition;
    public boolean mShouldPerformClick;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.settingslib.widget.SettingsSpinnerPreference$1] */
    public SettingsSpinnerPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mOnSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: com.android.settingslib.widget.SettingsSpinnerPreference.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onItemSelected(AdapterView adapterView, View view, int i2, long j) {
                SettingsSpinnerPreference settingsSpinnerPreference = SettingsSpinnerPreference.this;
                if (settingsSpinnerPreference.mPosition == i2) {
                    return;
                }
                settingsSpinnerPreference.mPosition = i2;
                settingsSpinnerPreference.getClass();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onNothingSelected(AdapterView adapterView) {
                SettingsSpinnerPreference.this.getClass();
            }
        };
        this.mLayoutResId = R.layout.settings_spinner_preference;
        this.mOnClickListener = this;
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        Spinner spinner = (Spinner) preferenceViewHolder.findViewById(R.id.spinner);
        spinner.setAdapter((SpinnerAdapter) null);
        spinner.setSelection(this.mPosition);
        spinner.setOnItemSelectedListener(this.mOnSelectedListener);
        if (this.mShouldPerformClick) {
            this.mShouldPerformClick = false;
            spinner.performClick();
        }
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public final void onPreferenceClick(Preference preference) {
        this.mShouldPerformClick = true;
        notifyChanged();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.settingslib.widget.SettingsSpinnerPreference$1] */
    public SettingsSpinnerPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOnSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: com.android.settingslib.widget.SettingsSpinnerPreference.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onItemSelected(AdapterView adapterView, View view, int i2, long j) {
                SettingsSpinnerPreference settingsSpinnerPreference = SettingsSpinnerPreference.this;
                if (settingsSpinnerPreference.mPosition == i2) {
                    return;
                }
                settingsSpinnerPreference.mPosition = i2;
                settingsSpinnerPreference.getClass();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onNothingSelected(AdapterView adapterView) {
                SettingsSpinnerPreference.this.getClass();
            }
        };
        this.mLayoutResId = R.layout.settings_spinner_preference;
        this.mOnClickListener = this;
    }

    public SettingsSpinnerPreference(Context context) {
        this(context, null);
    }
}
