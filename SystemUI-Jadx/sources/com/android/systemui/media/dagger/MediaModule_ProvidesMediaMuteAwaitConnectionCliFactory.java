package com.android.systemui.media.dagger;

import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.media.controls.util.MediaFlags;
import com.android.systemui.media.muteawait.MediaMuteAwaitConnectionCli;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaModule_ProvidesMediaMuteAwaitConnectionCliFactory implements Provider {
    public final Provider mediaFlagsProvider;
    public final Provider muteAwaitConnectionCliLazyProvider;

    public MediaModule_ProvidesMediaMuteAwaitConnectionCliFactory(Provider provider, Provider provider2) {
        this.mediaFlagsProvider = provider;
        this.muteAwaitConnectionCliLazyProvider = provider2;
    }

    public static Optional providesMediaMuteAwaitConnectionCli(MediaFlags mediaFlags, Lazy lazy) {
        Optional of;
        mediaFlags.getClass();
        Flags.INSTANCE.getClass();
        if (!((FeatureFlagsRelease) mediaFlags.featureFlags).isEnabled(Flags.MEDIA_MUTE_AWAIT)) {
            of = Optional.empty();
        } else {
            of = Optional.of((MediaMuteAwaitConnectionCli) lazy.get());
        }
        Preconditions.checkNotNullFromProvides(of);
        return of;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesMediaMuteAwaitConnectionCli((MediaFlags) this.mediaFlagsProvider.get(), DoubleCheck.lazy(this.muteAwaitConnectionCliLazyProvider));
    }
}
