package com.android.wm.shell.dagger;

import android.content.Context;
import com.android.wm.shell.freeform.FreeformComponents;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideFreeformComponentsFactory implements Provider {
    public final Provider contextProvider;
    public final Provider freeformComponentsProvider;

    public WMShellBaseModule_ProvideFreeformComponentsFactory(Provider provider, Provider provider2) {
        this.freeformComponentsProvider = provider;
        this.contextProvider = provider2;
    }

    public static Optional provideFreeformComponents(Context context, Optional optional) {
        if (!FreeformComponents.isFreeformEnabled(context)) {
            optional = Optional.empty();
        }
        Preconditions.checkNotNullFromProvides(optional);
        return optional;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideFreeformComponents((Context) this.contextProvider.get(), (Optional) this.freeformComponentsProvider.get());
    }
}
