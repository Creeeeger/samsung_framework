package com.android.wm.shell.dagger;

import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideBubblesFactory implements Provider {
    public final Provider bubbleControllerProvider;

    public WMShellBaseModule_ProvideBubblesFactory(Provider provider) {
        this.bubbleControllerProvider = provider;
    }

    public static Optional provideBubbles(Optional optional) {
        Optional map = optional.map(new WMShellBaseModule$$ExternalSyntheticLambda0(5));
        Preconditions.checkNotNullFromProvides(map);
        return map;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideBubbles((Optional) this.bubbleControllerProvider.get());
    }
}
