package com.android.systemui.settings.dagger;

import android.hardware.display.DisplayManager;
import android.os.Handler;
import com.android.systemui.settings.DisplayTrackerImpl;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultiUserUtilsModule_ProvideDisplayTrackerFactory implements Provider {
    public final Provider displayManagerProvider;
    public final Provider handlerProvider;

    public MultiUserUtilsModule_ProvideDisplayTrackerFactory(Provider provider, Provider provider2) {
        this.displayManagerProvider = provider;
        this.handlerProvider = provider2;
    }

    public static DisplayTrackerImpl provideDisplayTracker(DisplayManager displayManager, Handler handler) {
        return new DisplayTrackerImpl(displayManager, handler);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new DisplayTrackerImpl((DisplayManager) this.displayManagerProvider.get(), (Handler) this.handlerProvider.get());
    }
}
