package com.android.systemui.statusbar.dagger;

import com.android.systemui.flags.FeatureFlags;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CentralSurfacesDependenciesModule_ProvideAnimationFeatureFlagsFactory implements Provider {
    public final Provider featureFlagsProvider;

    public CentralSurfacesDependenciesModule_ProvideAnimationFeatureFlagsFactory(Provider provider) {
        this.featureFlagsProvider = provider;
    }

    public static CentralSurfacesDependenciesModule$2 provideAnimationFeatureFlags(FeatureFlags featureFlags) {
        return new CentralSurfacesDependenciesModule$2(featureFlags);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new CentralSurfacesDependenciesModule$2((FeatureFlags) this.featureFlagsProvider.get());
    }
}
