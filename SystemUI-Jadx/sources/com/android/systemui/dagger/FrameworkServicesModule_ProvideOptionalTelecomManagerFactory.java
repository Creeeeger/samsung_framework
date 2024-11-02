package com.android.systemui.dagger;

import android.content.Context;
import android.telecom.TelecomManager;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FrameworkServicesModule_ProvideOptionalTelecomManagerFactory implements Provider {
    public final Provider contextProvider;

    public FrameworkServicesModule_ProvideOptionalTelecomManagerFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static Optional provideOptionalTelecomManager(Context context) {
        Optional ofNullable = Optional.ofNullable((TelecomManager) context.getSystemService(TelecomManager.class));
        Preconditions.checkNotNullFromProvides(ofNullable);
        return ofNullable;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideOptionalTelecomManager((Context) this.contextProvider.get());
    }
}
