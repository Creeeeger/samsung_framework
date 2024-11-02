package com.android.wm.shell.dagger;

import android.content.Context;
import android.os.Handler;
import com.android.systemui.R;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideTransitionsFactory implements Provider {
    public final Provider animExecutorProvider;
    public final Provider contextProvider;
    public final Provider displayControllerProvider;
    public final Provider mainExecutorProvider;
    public final Provider mainHandlerProvider;
    public final Provider organizerProvider;
    public final Provider poolProvider;
    public final Provider rootTaskDisplayAreaOrganizerProvider;
    public final Provider shellCommandHandlerProvider;
    public final Provider shellControllerProvider;
    public final Provider shellInitProvider;

    public WMShellBaseModule_ProvideTransitionsFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7, Provider provider8, Provider provider9, Provider provider10, Provider provider11) {
        this.contextProvider = provider;
        this.shellInitProvider = provider2;
        this.shellControllerProvider = provider3;
        this.organizerProvider = provider4;
        this.poolProvider = provider5;
        this.displayControllerProvider = provider6;
        this.mainExecutorProvider = provider7;
        this.mainHandlerProvider = provider8;
        this.animExecutorProvider = provider9;
        this.shellCommandHandlerProvider = provider10;
        this.rootTaskDisplayAreaOrganizerProvider = provider11;
    }

    public static Transitions provideTransitions(Context context, ShellInit shellInit, ShellController shellController, ShellTaskOrganizer shellTaskOrganizer, TransactionPool transactionPool, DisplayController displayController, ShellExecutor shellExecutor, Handler handler, ShellExecutor shellExecutor2, ShellCommandHandler shellCommandHandler, RootTaskDisplayAreaOrganizer rootTaskDisplayAreaOrganizer) {
        ShellInit shellInit2;
        if (!context.getResources().getBoolean(R.bool.config_registerShellTransitionsOnInit)) {
            shellInit2 = new ShellInit(shellExecutor);
        } else {
            shellInit2 = shellInit;
        }
        return new Transitions(context, shellInit2, shellController, shellTaskOrganizer, transactionPool, displayController, shellExecutor, handler, shellExecutor2, shellCommandHandler, rootTaskDisplayAreaOrganizer);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideTransitions((Context) this.contextProvider.get(), (ShellInit) this.shellInitProvider.get(), (ShellController) this.shellControllerProvider.get(), (ShellTaskOrganizer) this.organizerProvider.get(), (TransactionPool) this.poolProvider.get(), (DisplayController) this.displayControllerProvider.get(), (ShellExecutor) this.mainExecutorProvider.get(), (Handler) this.mainHandlerProvider.get(), (ShellExecutor) this.animExecutorProvider.get(), (ShellCommandHandler) this.shellCommandHandlerProvider.get(), (RootTaskDisplayAreaOrganizer) this.rootTaskDisplayAreaOrganizerProvider.get());
    }
}
