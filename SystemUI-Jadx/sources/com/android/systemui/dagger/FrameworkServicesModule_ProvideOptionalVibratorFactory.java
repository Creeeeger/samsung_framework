package com.android.systemui.dagger;

import android.content.Context;
import android.os.Vibrator;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FrameworkServicesModule_ProvideOptionalVibratorFactory implements Provider {
    public final Provider contextProvider;

    public FrameworkServicesModule_ProvideOptionalVibratorFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static Optional provideOptionalVibrator(Context context) {
        Optional ofNullable = Optional.ofNullable((Vibrator) context.getSystemService(Vibrator.class));
        Preconditions.checkNotNullFromProvides(ofNullable);
        return ofNullable;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideOptionalVibrator((Context) this.contextProvider.get());
    }
}
