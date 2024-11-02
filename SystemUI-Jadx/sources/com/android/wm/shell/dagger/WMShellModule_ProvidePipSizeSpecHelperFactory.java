package com.android.wm.shell.dagger;

import android.content.Context;
import com.android.wm.shell.pip.PipDisplayLayoutState;
import com.android.wm.shell.pip.phone.PipSizeSpecHandler;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvidePipSizeSpecHelperFactory implements Provider {
    public final Provider contextProvider;
    public final Provider pipDisplayLayoutStateProvider;

    public WMShellModule_ProvidePipSizeSpecHelperFactory(Provider provider, Provider provider2) {
        this.contextProvider = provider;
        this.pipDisplayLayoutStateProvider = provider2;
    }

    public static PipSizeSpecHandler providePipSizeSpecHelper(Context context, PipDisplayLayoutState pipDisplayLayoutState) {
        return new PipSizeSpecHandler(context, pipDisplayLayoutState);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new PipSizeSpecHandler((Context) this.contextProvider.get(), (PipDisplayLayoutState) this.pipDisplayLayoutStateProvider.get());
    }
}
