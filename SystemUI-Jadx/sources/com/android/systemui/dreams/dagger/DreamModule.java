package com.android.systemui.dreams.dagger;

import android.content.res.Resources;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface DreamModule {
    static boolean providesDreamOnlyEnabledForDockUser(Resources resources) {
        return resources.getBoolean(17891643);
    }

    static boolean providesDreamSupported(Resources resources) {
        return resources.getBoolean(17891645);
    }
}
