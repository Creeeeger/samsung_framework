package com.samsung.systemui.splugins;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SPluginEnablerImpl implements SPluginEnabler {
    private static final String CRASH_DISABLED_PLUGINS_PREF_FILE = "auto_disabled_splugins_prefs";
    private final SharedPreferences mAutoDisabledPrefs;
    private PackageManager mPm;

    public SPluginEnablerImpl(Context context) {
        this(context, context.getPackageManager());
    }

    @Override // com.samsung.systemui.splugins.SPluginEnabler
    public int getDisableReason(ComponentName componentName) {
        if (isEnabled(componentName)) {
            return 0;
        }
        return this.mAutoDisabledPrefs.getInt(componentName.flattenToString(), 1);
    }

    @Override // com.samsung.systemui.splugins.SPluginEnabler
    public boolean isEnabled(ComponentName componentName) {
        if (this.mPm.getComponentEnabledSetting(componentName) != 2) {
            return true;
        }
        return false;
    }

    @Override // com.samsung.systemui.splugins.SPluginEnabler
    public void setDisabled(ComponentName componentName, int i) {
        boolean z;
        int i2;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i2 = 1;
        } else {
            i2 = 2;
        }
        this.mPm.setComponentEnabledSetting(componentName, i2, 1);
        if (z) {
            this.mAutoDisabledPrefs.edit().remove(componentName.flattenToString()).apply();
        } else {
            this.mAutoDisabledPrefs.edit().putInt(componentName.flattenToString(), i).apply();
        }
    }

    @Override // com.samsung.systemui.splugins.SPluginEnabler
    public void setEnabled(ComponentName componentName) {
        setDisabled(componentName, 0);
    }

    public SPluginEnablerImpl(Context context, PackageManager packageManager) {
        this.mAutoDisabledPrefs = context.getSharedPreferences(CRASH_DISABLED_PLUGINS_PREF_FILE, 0);
        this.mPm = packageManager;
    }
}
