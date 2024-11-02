package com.android.systemui.bixby2.interactor;

import android.content.Context;
import com.android.systemui.bixby2.controller.AppController;
import com.android.systemui.bixby2.controller.MWBixbyController;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppControlActionInteractor_Factory implements Provider {
    private final Provider appControllerProvider;
    private final Provider contextProvider;
    private final Provider mwBixbyControllerProvider;

    public AppControlActionInteractor_Factory(Provider provider, Provider provider2, Provider provider3) {
        this.contextProvider = provider;
        this.appControllerProvider = provider2;
        this.mwBixbyControllerProvider = provider3;
    }

    public static AppControlActionInteractor_Factory create(Provider provider, Provider provider2, Provider provider3) {
        return new AppControlActionInteractor_Factory(provider, provider2, provider3);
    }

    public static AppControlActionInteractor newInstance(Context context, AppController appController, MWBixbyController mWBixbyController) {
        return new AppControlActionInteractor(context, appController, mWBixbyController);
    }

    @Override // javax.inject.Provider
    public AppControlActionInteractor get() {
        return newInstance((Context) this.contextProvider.get(), (AppController) this.appControllerProvider.get(), (MWBixbyController) this.mwBixbyControllerProvider.get());
    }
}
