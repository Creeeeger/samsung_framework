package com.android.systemui.unfold;

import com.android.systemui.unfold.config.ResourceUnfoldTransitionConfig;
import com.android.systemui.unfold.config.UnfoldTransitionConfig;
import com.android.systemui.unfold.updates.hinge.EmptyHingeAngleProvider;
import com.android.systemui.unfold.updates.hinge.HingeAngleProvider;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldSharedInternalModule_HingeAngleProviderFactory implements Provider {
    public final Provider configProvider;
    public final Provider hingeAngleSensorProvider;
    public final UnfoldSharedInternalModule module;

    public UnfoldSharedInternalModule_HingeAngleProviderFactory(UnfoldSharedInternalModule unfoldSharedInternalModule, Provider provider, Provider provider2) {
        this.module = unfoldSharedInternalModule;
        this.configProvider = provider;
        this.hingeAngleSensorProvider = provider2;
    }

    public static HingeAngleProvider hingeAngleProvider(UnfoldSharedInternalModule unfoldSharedInternalModule, UnfoldTransitionConfig unfoldTransitionConfig, Provider provider) {
        HingeAngleProvider hingeAngleProvider;
        unfoldSharedInternalModule.getClass();
        if (((Boolean) ((ResourceUnfoldTransitionConfig) unfoldTransitionConfig).isHingeAngleEnabled$delegate.getValue()).booleanValue()) {
            hingeAngleProvider = (HingeAngleProvider) provider.get();
        } else {
            hingeAngleProvider = EmptyHingeAngleProvider.INSTANCE;
        }
        Preconditions.checkNotNullFromProvides(hingeAngleProvider);
        return hingeAngleProvider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return hingeAngleProvider(this.module, (UnfoldTransitionConfig) this.configProvider.get(), this.hingeAngleSensorProvider);
    }
}
