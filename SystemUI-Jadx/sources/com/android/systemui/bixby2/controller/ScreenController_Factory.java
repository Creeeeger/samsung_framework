package com.android.systemui.bixby2.controller;

import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.util.DesktopManager;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScreenController_Factory implements Provider {
    private final Provider broadcastDispatcherProvider;
    private final Provider desktopManagerProvider;
    private final Provider displayLifecycleProvider;
    private final Provider secBrightnessMirrorControllerProvider;

    public ScreenController_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.secBrightnessMirrorControllerProvider = provider;
        this.desktopManagerProvider = provider2;
        this.displayLifecycleProvider = provider3;
        this.broadcastDispatcherProvider = provider4;
    }

    public static ScreenController_Factory create(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        return new ScreenController_Factory(provider, provider2, provider3, provider4);
    }

    public static ScreenController newInstance(Lazy lazy, DesktopManager desktopManager, DisplayLifecycle displayLifecycle, BroadcastDispatcher broadcastDispatcher) {
        return new ScreenController(lazy, desktopManager, displayLifecycle, broadcastDispatcher);
    }

    @Override // javax.inject.Provider
    public ScreenController get() {
        return newInstance(DoubleCheck.lazy(this.secBrightnessMirrorControllerProvider), (DesktopManager) this.desktopManagerProvider.get(), (DisplayLifecycle) this.displayLifecycleProvider.get(), (BroadcastDispatcher) this.broadcastDispatcherProvider.get());
    }
}
