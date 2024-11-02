package com.android.wm.shell.dagger;

import android.content.Context;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.PipDisplayLayoutState;
import com.android.wm.shell.pip.phone.PipSizeSpecHandler;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvidePipBoundsStateFactory implements Provider {
    public final Provider contextProvider;
    public final Provider pipDisplayLayoutStateProvider;
    public final Provider pipSizeSpecHandlerProvider;

    public WMShellModule_ProvidePipBoundsStateFactory(Provider provider, Provider provider2, Provider provider3) {
        this.contextProvider = provider;
        this.pipSizeSpecHandlerProvider = provider2;
        this.pipDisplayLayoutStateProvider = provider3;
    }

    public static PipBoundsState providePipBoundsState(Context context, PipSizeSpecHandler pipSizeSpecHandler, PipDisplayLayoutState pipDisplayLayoutState) {
        return new PipBoundsState(context, pipSizeSpecHandler, pipDisplayLayoutState);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new PipBoundsState((Context) this.contextProvider.get(), (PipSizeSpecHandler) this.pipSizeSpecHandlerProvider.get(), (PipDisplayLayoutState) this.pipDisplayLayoutStateProvider.get());
    }
}
