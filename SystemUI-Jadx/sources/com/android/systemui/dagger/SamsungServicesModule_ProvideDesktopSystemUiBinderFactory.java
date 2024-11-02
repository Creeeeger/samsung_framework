package com.android.systemui.dagger;

import android.content.Context;
import com.samsung.android.desktopsystemui.sharedlib.common.DesktopSystemUiBinder;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungServicesModule_ProvideDesktopSystemUiBinderFactory implements Provider {
    public final Provider contextProvider;

    public SamsungServicesModule_ProvideDesktopSystemUiBinderFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static DesktopSystemUiBinder provideDesktopSystemUiBinder(Context context) {
        return new DesktopSystemUiBinder(context);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new DesktopSystemUiBinder((Context) this.contextProvider.get());
    }
}
