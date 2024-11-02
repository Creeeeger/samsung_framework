package com.android.systemui.dagger;

import android.content.Context;
import com.android.systemui.searcle.SearcleManager;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungServicesModule_ProvideSearcleManagerFactory implements Provider {
    public final Provider contextProvider;

    public SamsungServicesModule_ProvideSearcleManagerFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static SearcleManager provideSearcleManager(Context context) {
        return new SearcleManager(context);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SearcleManager((Context) this.contextProvider.get());
    }
}
