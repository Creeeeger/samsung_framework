package com.android.wm.shell.dagger;

import com.android.wm.shell.pip.PipAnimationController;
import com.android.wm.shell.pip.PipSurfaceTransactionHelper;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvidePipAnimationControllerFactory implements Provider {
    public final Provider pipSurfaceTransactionHelperProvider;

    public WMShellModule_ProvidePipAnimationControllerFactory(Provider provider) {
        this.pipSurfaceTransactionHelperProvider = provider;
    }

    public static PipAnimationController providePipAnimationController(PipSurfaceTransactionHelper pipSurfaceTransactionHelper) {
        return new PipAnimationController(pipSurfaceTransactionHelper);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new PipAnimationController((PipSurfaceTransactionHelper) this.pipSurfaceTransactionHelperProvider.get());
    }
}
