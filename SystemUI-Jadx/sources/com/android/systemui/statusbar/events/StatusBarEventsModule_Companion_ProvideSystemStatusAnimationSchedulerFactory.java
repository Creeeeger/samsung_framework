package com.android.systemui.statusbar.events;

import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.window.StatusBarWindowController;
import com.android.systemui.statusbar.window.StatusBarWindowStateController;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.time.SystemClock;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory implements Provider {
    public final Provider chipAnimationControllerProvider;
    public final Provider coordinatorProvider;
    public final Provider coroutineScopeProvider;
    public final Provider desktopManagerProvider;
    public final Provider dumpManagerProvider;
    public final Provider executorProvider;
    public final Provider featureFlagsProvider;
    public final Provider keyguardStateControllerProvider;
    public final Provider statusBarWindowControllerProvider;
    public final Provider statusBarWindowStateControllerProvider;
    public final Provider systemClockProvider;

    public StatusBarEventsModule_Companion_ProvideSystemStatusAnimationSchedulerFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7, Provider provider8, Provider provider9, Provider provider10, Provider provider11) {
        this.featureFlagsProvider = provider;
        this.coordinatorProvider = provider2;
        this.chipAnimationControllerProvider = provider3;
        this.statusBarWindowControllerProvider = provider4;
        this.dumpManagerProvider = provider5;
        this.systemClockProvider = provider6;
        this.coroutineScopeProvider = provider7;
        this.executorProvider = provider8;
        this.desktopManagerProvider = provider9;
        this.keyguardStateControllerProvider = provider10;
        this.statusBarWindowStateControllerProvider = provider11;
    }

    public static SystemStatusAnimationSchedulerImpl provideSystemStatusAnimationScheduler(FeatureFlags featureFlags, SystemEventCoordinator systemEventCoordinator, SystemEventChipAnimationController systemEventChipAnimationController, StatusBarWindowController statusBarWindowController, DumpManager dumpManager, SystemClock systemClock, CoroutineScope coroutineScope, DesktopManager desktopManager, KeyguardStateController keyguardStateController, StatusBarWindowStateController statusBarWindowStateController) {
        StatusBarEventsModule.Companion.getClass();
        Flags.INSTANCE.getClass();
        ((FeatureFlagsRelease) featureFlags).isEnabled(Flags.PLUG_IN_STATUS_BAR_CHIP);
        return new SystemStatusAnimationSchedulerImpl(systemEventCoordinator, systemEventChipAnimationController, statusBarWindowController, dumpManager, systemClock, coroutineScope, desktopManager, keyguardStateController, statusBarWindowStateController);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        FeatureFlags featureFlags = (FeatureFlags) this.featureFlagsProvider.get();
        SystemEventCoordinator systemEventCoordinator = (SystemEventCoordinator) this.coordinatorProvider.get();
        SystemEventChipAnimationController systemEventChipAnimationController = (SystemEventChipAnimationController) this.chipAnimationControllerProvider.get();
        StatusBarWindowController statusBarWindowController = (StatusBarWindowController) this.statusBarWindowControllerProvider.get();
        DumpManager dumpManager = (DumpManager) this.dumpManagerProvider.get();
        SystemClock systemClock = (SystemClock) this.systemClockProvider.get();
        CoroutineScope coroutineScope = (CoroutineScope) this.coroutineScopeProvider.get();
        return provideSystemStatusAnimationScheduler(featureFlags, systemEventCoordinator, systemEventChipAnimationController, statusBarWindowController, dumpManager, systemClock, coroutineScope, (DesktopManager) this.desktopManagerProvider.get(), (KeyguardStateController) this.keyguardStateControllerProvider.get(), (StatusBarWindowStateController) this.statusBarWindowStateControllerProvider.get());
    }
}
