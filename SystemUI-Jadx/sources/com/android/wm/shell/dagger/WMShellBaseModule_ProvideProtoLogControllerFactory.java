package com.android.wm.shell.dagger;

import com.android.wm.shell.ProtoLogController;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellInit;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideProtoLogControllerFactory implements Provider {
    public final Provider shellCommandHandlerProvider;
    public final Provider shellInitProvider;

    public WMShellBaseModule_ProvideProtoLogControllerFactory(Provider provider, Provider provider2) {
        this.shellInitProvider = provider;
        this.shellCommandHandlerProvider = provider2;
    }

    public static ProtoLogController provideProtoLogController(ShellInit shellInit, ShellCommandHandler shellCommandHandler) {
        return new ProtoLogController(shellInit, shellCommandHandler);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new ProtoLogController((ShellInit) this.shellInitProvider.get(), (ShellCommandHandler) this.shellCommandHandlerProvider.get());
    }
}
