package com.android.systemui.bixby2.interactor;

import android.content.Context;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MusicControlActionInteractor_Factory implements Provider {
    private final Provider contextProvider;

    public MusicControlActionInteractor_Factory(Provider provider) {
        this.contextProvider = provider;
    }

    public static MusicControlActionInteractor_Factory create(Provider provider) {
        return new MusicControlActionInteractor_Factory(provider);
    }

    public static MusicControlActionInteractor newInstance(Context context) {
        return new MusicControlActionInteractor(context);
    }

    @Override // javax.inject.Provider
    public MusicControlActionInteractor get() {
        return newInstance((Context) this.contextProvider.get());
    }
}
