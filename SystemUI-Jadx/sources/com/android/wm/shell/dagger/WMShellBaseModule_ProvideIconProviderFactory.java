package com.android.wm.shell.dagger;

import android.content.Context;
import com.android.launcher3.icons.IconProvider;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideIconProviderFactory implements Provider {
    public final Provider contextProvider;

    public WMShellBaseModule_ProvideIconProviderFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static IconProvider provideIconProvider(Context context) {
        return new IconProvider(context);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new IconProvider((Context) this.contextProvider.get());
    }
}
