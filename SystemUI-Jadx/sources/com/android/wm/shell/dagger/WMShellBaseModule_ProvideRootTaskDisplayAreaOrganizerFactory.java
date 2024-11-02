package com.android.wm.shell.dagger;

import android.content.Context;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;
import com.android.wm.shell.common.ShellExecutor;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory implements Provider {
    public final Provider contextProvider;
    public final Provider mainExecutorProvider;

    public WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory(Provider provider, Provider provider2) {
        this.mainExecutorProvider = provider;
        this.contextProvider = provider2;
    }

    public static RootTaskDisplayAreaOrganizer provideRootTaskDisplayAreaOrganizer(Context context, ShellExecutor shellExecutor) {
        return new RootTaskDisplayAreaOrganizer(shellExecutor, context);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new RootTaskDisplayAreaOrganizer((ShellExecutor) this.mainExecutorProvider.get(), (Context) this.contextProvider.get());
    }
}
