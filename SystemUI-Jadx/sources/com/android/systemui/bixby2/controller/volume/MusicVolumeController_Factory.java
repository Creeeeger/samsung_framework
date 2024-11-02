package com.android.systemui.bixby2.controller.volume;

import android.content.Context;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MusicVolumeController_Factory implements Provider {
    private final Provider contextProvider;

    public MusicVolumeController_Factory(Provider provider) {
        this.contextProvider = provider;
    }

    public static MusicVolumeController_Factory create(Provider provider) {
        return new MusicVolumeController_Factory(provider);
    }

    public static MusicVolumeController newInstance(Context context) {
        return new MusicVolumeController(context);
    }

    @Override // javax.inject.Provider
    public MusicVolumeController get() {
        return newInstance((Context) this.contextProvider.get());
    }
}
