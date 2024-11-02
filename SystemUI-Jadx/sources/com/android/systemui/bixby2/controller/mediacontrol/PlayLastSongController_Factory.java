package com.android.systemui.bixby2.controller.mediacontrol;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PlayLastSongController_Factory implements Provider {
    private final Provider modeProvider;

    public PlayLastSongController_Factory(Provider provider) {
        this.modeProvider = provider;
    }

    public static PlayLastSongController_Factory create(Provider provider) {
        return new PlayLastSongController_Factory(provider);
    }

    public static PlayLastSongController newInstance(int i) {
        return new PlayLastSongController(i);
    }

    @Override // javax.inject.Provider
    public PlayLastSongController get() {
        return newInstance(((Integer) this.modeProvider.get()).intValue());
    }
}
