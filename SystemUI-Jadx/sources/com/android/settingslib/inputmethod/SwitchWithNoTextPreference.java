package com.android.settingslib.inputmethod;

import android.content.Context;
import androidx.preference.SwitchPreference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SwitchWithNoTextPreference extends SwitchPreference {
    public SwitchWithNoTextPreference(Context context) {
        super(context);
        this.mSwitchOn = "";
        notifyChanged();
        this.mSwitchOff = "";
        notifyChanged();
    }
}
