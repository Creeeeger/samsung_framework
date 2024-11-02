package com.android.settingslib.applications;

import android.content.res.Configuration;
import android.content.res.Resources;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class InterestingConfigChanges {
    public static String mCachedAppIconPkg;
    public final int mFlags;
    public final Configuration mLastConfiguration;
    public int mLastDensity;

    public InterestingConfigChanges() {
        this(-2147474940);
    }

    public final boolean applyNewConfig(Resources resources) {
        boolean z;
        Configuration configuration = resources.getConfiguration();
        Configuration configuration2 = this.mLastConfiguration;
        int updateFrom = configuration2.updateFrom(Configuration.generateDelta(configuration2, configuration));
        if (this.mLastDensity != resources.getDisplayMetrics().densityDpi) {
            z = true;
        } else {
            z = false;
        }
        if (!z && (updateFrom & this.mFlags) == 0) {
            return false;
        }
        this.mLastDensity = resources.getDisplayMetrics().densityDpi;
        return true;
    }

    public InterestingConfigChanges(int i) {
        this.mLastConfiguration = new Configuration();
        this.mFlags = i;
    }
}
