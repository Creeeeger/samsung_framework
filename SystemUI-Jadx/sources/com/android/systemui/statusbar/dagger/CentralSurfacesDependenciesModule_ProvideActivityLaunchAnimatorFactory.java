package com.android.systemui.statusbar.dagger;

import com.android.systemui.animation.ActivityLaunchAnimator;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CentralSurfacesDependenciesModule_ProvideActivityLaunchAnimatorFactory implements Provider {
    public static ActivityLaunchAnimator provideActivityLaunchAnimator() {
        return new ActivityLaunchAnimator();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new ActivityLaunchAnimator();
    }
}
