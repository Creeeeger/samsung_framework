package com.android.systemui.tuner;

import androidx.preference.PreferenceFragment;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class OtherPrefs extends PreferenceFragment {
    @Override // androidx.preference.PreferenceFragment
    public final void onCreatePreferences(String str) {
        addPreferencesFromResource(R.xml.other_settings);
    }
}
