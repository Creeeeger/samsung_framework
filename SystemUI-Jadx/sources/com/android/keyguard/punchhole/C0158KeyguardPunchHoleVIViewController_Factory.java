package com.android.keyguard.punchhole;

import android.os.Handler;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.SecRotationWatcher;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.KeyguardEditModeController;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.lockstar.PluginLockStarManager;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.SettingsHelper;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* renamed from: com.android.keyguard.punchhole.KeyguardPunchHoleVIViewController_Factory, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0158KeyguardPunchHoleVIViewController_Factory implements Provider {
    public final Provider configurationControllerProvider;
    public final Provider displayLifecycleProvider;
    public final Provider handlerProvider;
    public final Provider keyguardEditModeControllerProvider;
    public final Provider keyguardUpdateMonitorProvider;
    public final Provider pluginLockStarManagerProvider;
    public final Provider rotationWatcherProvider;
    public final Provider settingsHelperProvider;
    public final Provider viewProvider;
    public final Provider wakefulnessLifecycleProvider;

    public C0158KeyguardPunchHoleVIViewController_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7, Provider provider8, Provider provider9, Provider provider10) {
        this.viewProvider = provider;
        this.handlerProvider = provider2;
        this.keyguardUpdateMonitorProvider = provider3;
        this.wakefulnessLifecycleProvider = provider4;
        this.settingsHelperProvider = provider5;
        this.displayLifecycleProvider = provider6;
        this.rotationWatcherProvider = provider7;
        this.configurationControllerProvider = provider8;
        this.keyguardEditModeControllerProvider = provider9;
        this.pluginLockStarManagerProvider = provider10;
    }

    public static KeyguardPunchHoleVIViewController newInstance(KeyguardPunchHoleVIView keyguardPunchHoleVIView, Handler handler, KeyguardUpdateMonitor keyguardUpdateMonitor, WakefulnessLifecycle wakefulnessLifecycle, SettingsHelper settingsHelper, DisplayLifecycle displayLifecycle, SecRotationWatcher secRotationWatcher, ConfigurationController configurationController, KeyguardEditModeController keyguardEditModeController, PluginLockStarManager pluginLockStarManager) {
        return new KeyguardPunchHoleVIViewController(keyguardPunchHoleVIView, handler, keyguardUpdateMonitor, wakefulnessLifecycle, settingsHelper, displayLifecycle, secRotationWatcher, configurationController, keyguardEditModeController, pluginLockStarManager);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return newInstance((KeyguardPunchHoleVIView) this.viewProvider.get(), (Handler) this.handlerProvider.get(), (KeyguardUpdateMonitor) this.keyguardUpdateMonitorProvider.get(), (WakefulnessLifecycle) this.wakefulnessLifecycleProvider.get(), (SettingsHelper) this.settingsHelperProvider.get(), (DisplayLifecycle) this.displayLifecycleProvider.get(), (SecRotationWatcher) this.rotationWatcherProvider.get(), (ConfigurationController) this.configurationControllerProvider.get(), (KeyguardEditModeController) this.keyguardEditModeControllerProvider.get(), (PluginLockStarManager) this.pluginLockStarManagerProvider.get());
    }
}
