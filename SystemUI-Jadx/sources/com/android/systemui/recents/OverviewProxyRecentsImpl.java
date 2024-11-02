package com.android.systemui.recents;

import android.os.Handler;
import com.android.systemui.plugins.ActivityStarter;
import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OverviewProxyRecentsImpl implements RecentsImplementation {
    public final ActivityStarter mActivityStarter;
    public final Lazy mCentralSurfacesOptionalLazy;
    public Handler mHandler;
    public final OverviewProxyService mOverviewProxyService;
    public boolean mThreeFingerKeyReleased = true;

    public OverviewProxyRecentsImpl(Lazy lazy, OverviewProxyService overviewProxyService, ActivityStarter activityStarter) {
        this.mCentralSurfacesOptionalLazy = lazy;
        this.mOverviewProxyService = overviewProxyService;
        this.mActivityStarter = activityStarter;
    }
}
