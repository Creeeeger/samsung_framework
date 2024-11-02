package com.android.systemui.tuner;

import com.android.systemui.demomode.DemoModeController;
import com.android.systemui.util.settings.GlobalSettings;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TunerActivity_Factory implements Provider {
    public final Provider demoModeControllerProvider;
    public final Provider globalSettingsProvider;
    public final Provider tunerServiceProvider;

    public TunerActivity_Factory(Provider provider, Provider provider2, Provider provider3) {
        this.demoModeControllerProvider = provider;
        this.tunerServiceProvider = provider2;
        this.globalSettingsProvider = provider3;
    }

    public static TunerActivity newInstance(DemoModeController demoModeController, TunerService tunerService, GlobalSettings globalSettings) {
        return new TunerActivity(demoModeController, tunerService, globalSettings);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new TunerActivity((DemoModeController) this.demoModeControllerProvider.get(), (TunerService) this.tunerServiceProvider.get(), (GlobalSettings) this.globalSettingsProvider.get());
    }
}
