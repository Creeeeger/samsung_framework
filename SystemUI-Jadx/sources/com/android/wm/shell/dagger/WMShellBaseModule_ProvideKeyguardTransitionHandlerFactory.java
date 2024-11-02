package com.android.wm.shell.dagger;

import android.os.Handler;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.keyguard.KeyguardTransitionHandler;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideKeyguardTransitionHandlerFactory implements Provider {
    public final Provider mainExecutorProvider;
    public final Provider mainHandlerProvider;
    public final Provider shellInitProvider;
    public final Provider transitionsProvider;

    public WMShellBaseModule_ProvideKeyguardTransitionHandlerFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.shellInitProvider = provider;
        this.transitionsProvider = provider2;
        this.mainHandlerProvider = provider3;
        this.mainExecutorProvider = provider4;
    }

    public static KeyguardTransitionHandler provideKeyguardTransitionHandler(ShellInit shellInit, Transitions transitions, Handler handler, ShellExecutor shellExecutor) {
        return new KeyguardTransitionHandler(shellInit, transitions, handler, shellExecutor);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new KeyguardTransitionHandler((ShellInit) this.shellInitProvider.get(), (Transitions) this.transitionsProvider.get(), (Handler) this.mainHandlerProvider.get(), (ShellExecutor) this.mainExecutorProvider.get());
    }
}
