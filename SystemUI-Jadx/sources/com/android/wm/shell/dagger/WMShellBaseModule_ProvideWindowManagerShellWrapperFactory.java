package com.android.wm.shell.dagger;

import com.android.wm.shell.WindowManagerShellWrapper;
import com.android.wm.shell.common.ShellExecutor;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideWindowManagerShellWrapperFactory implements Provider {
    public final Provider mainExecutorProvider;

    public WMShellBaseModule_ProvideWindowManagerShellWrapperFactory(Provider provider) {
        this.mainExecutorProvider = provider;
    }

    public static WindowManagerShellWrapper provideWindowManagerShellWrapper(ShellExecutor shellExecutor) {
        return new WindowManagerShellWrapper(shellExecutor);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new WindowManagerShellWrapper((ShellExecutor) this.mainExecutorProvider.get());
    }
}
