package com.android.systemui.unfold;

import com.android.systemui.unfold.config.ResourceUnfoldTransitionConfig;
import com.android.systemui.unfold.config.UnfoldTransitionConfig;
import com.android.systemui.unfold.util.ATraceLoggerTransitionProgressListener;
import com.android.systemui.unfold.util.ScaleAwareTransitionProgressProvider;
import java.util.ArrayList;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory implements Provider {
    public final Provider configProvider;
    public final Provider fixedTimingTransitionProgressProvider;
    public final UnfoldSharedInternalModule module;
    public final Provider physicsBasedUnfoldTransitionProgressProvider;
    public final Provider scaleAwareProviderFactoryProvider;
    public final Provider tracingListenerProvider;

    public UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory(UnfoldSharedInternalModule unfoldSharedInternalModule, Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5) {
        this.module = unfoldSharedInternalModule;
        this.configProvider = provider;
        this.scaleAwareProviderFactoryProvider = provider2;
        this.tracingListenerProvider = provider3;
        this.physicsBasedUnfoldTransitionProgressProvider = provider4;
        this.fixedTimingTransitionProgressProvider = provider5;
    }

    public static Optional unfoldTransitionProgressProvider(UnfoldSharedInternalModule unfoldSharedInternalModule, UnfoldTransitionConfig unfoldTransitionConfig, ScaleAwareTransitionProgressProvider.Factory factory, ATraceLoggerTransitionProgressListener aTraceLoggerTransitionProgressListener, Provider provider, Provider provider2) {
        Object obj;
        unfoldSharedInternalModule.getClass();
        ResourceUnfoldTransitionConfig resourceUnfoldTransitionConfig = (ResourceUnfoldTransitionConfig) unfoldTransitionConfig;
        if (!((Boolean) resourceUnfoldTransitionConfig.isEnabled$delegate.getValue()).booleanValue()) {
            return Optional.empty();
        }
        if (((Boolean) resourceUnfoldTransitionConfig.isHingeAngleEnabled$delegate.getValue()).booleanValue()) {
            obj = provider.get();
        } else {
            obj = provider2.get();
        }
        ScaleAwareTransitionProgressProvider wrap = factory.wrap((UnfoldTransitionProgressProvider) obj);
        ((ArrayList) wrap.scopedUnfoldTransitionProgressProvider.listeners).add(aTraceLoggerTransitionProgressListener);
        return Optional.of(wrap);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return unfoldTransitionProgressProvider(this.module, (UnfoldTransitionConfig) this.configProvider.get(), (ScaleAwareTransitionProgressProvider.Factory) this.scaleAwareProviderFactoryProvider.get(), (ATraceLoggerTransitionProgressListener) this.tracingListenerProvider.get(), this.physicsBasedUnfoldTransitionProgressProvider, this.fixedTimingTransitionProgressProvider);
    }
}
