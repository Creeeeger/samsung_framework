package com.android.wm.shell.dagger;

import android.os.SystemProperties;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvidesOneHandedControllerFactory implements Provider {
    public final Provider oneHandedControllerProvider;

    public WMShellBaseModule_ProvidesOneHandedControllerFactory(Provider provider) {
        this.oneHandedControllerProvider = provider;
    }

    public static Optional providesOneHandedController(Optional optional) {
        if (!SystemProperties.getBoolean("ro.support_one_handed_mode", false)) {
            optional = Optional.empty();
        }
        Preconditions.checkNotNullFromProvides(optional);
        return optional;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesOneHandedController((Optional) this.oneHandedControllerProvider.get());
    }
}
