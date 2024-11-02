package com.android.systemui.media.dagger;

import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.media.controls.util.MediaFlags;
import com.android.systemui.media.nearby.NearbyMediaDevicesManager;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaModule_ProvidesNearbyMediaDevicesManagerFactory implements Provider {
    public final Provider mediaFlagsProvider;
    public final Provider nearbyMediaDevicesManagerLazyProvider;

    public MediaModule_ProvidesNearbyMediaDevicesManagerFactory(Provider provider, Provider provider2) {
        this.mediaFlagsProvider = provider;
        this.nearbyMediaDevicesManagerLazyProvider = provider2;
    }

    public static Optional providesNearbyMediaDevicesManager(MediaFlags mediaFlags, Lazy lazy) {
        Optional of;
        mediaFlags.getClass();
        Flags.INSTANCE.getClass();
        if (!((FeatureFlagsRelease) mediaFlags.featureFlags).isEnabled(Flags.MEDIA_NEARBY_DEVICES)) {
            of = Optional.empty();
        } else {
            of = Optional.of((NearbyMediaDevicesManager) lazy.get());
        }
        Preconditions.checkNotNullFromProvides(of);
        return of;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesNearbyMediaDevicesManager((MediaFlags) this.mediaFlagsProvider.get(), DoubleCheck.lazy(this.nearbyMediaDevicesManagerLazyProvider));
    }
}
