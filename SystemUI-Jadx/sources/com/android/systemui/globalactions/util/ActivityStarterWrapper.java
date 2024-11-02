package com.android.systemui.globalactions.util;

import android.content.Context;
import com.android.systemui.Dependency;
import com.android.systemui.plugins.ActivityStarter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ActivityStarterWrapper {
    public final ActivityStarter mActivityStarter = (ActivityStarter) Dependency.get(ActivityStarter.class);

    public ActivityStarterWrapper(Context context) {
    }
}
