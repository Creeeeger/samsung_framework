package com.android.wm.shell.dagger;

import android.content.Context;
import android.os.Handler;
import com.android.wm.shell.back.BackAnimationBackground;
import com.android.wm.shell.back.BackAnimationController;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideBackAnimationControllerFactory implements Provider {
    public final Provider backAnimationBackgroundProvider;
    public final Provider backgroundHandlerProvider;
    public final Provider contextProvider;
    public final Provider shellControllerProvider;
    public final Provider shellExecutorProvider;
    public final Provider shellInitProvider;

    public WMShellBaseModule_ProvideBackAnimationControllerFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6) {
        this.contextProvider = provider;
        this.shellInitProvider = provider2;
        this.shellControllerProvider = provider3;
        this.shellExecutorProvider = provider4;
        this.backgroundHandlerProvider = provider5;
        this.backAnimationBackgroundProvider = provider6;
    }

    public static Optional provideBackAnimationController(ShellInit shellInit, ShellController shellController, ShellExecutor shellExecutor, Handler handler, Context context, BackAnimationBackground backAnimationBackground) {
        Optional empty;
        if (BackAnimationController.IS_ENABLED) {
            empty = Optional.of(new BackAnimationController(shellInit, shellController, shellExecutor, handler, context, backAnimationBackground));
        } else {
            empty = Optional.empty();
        }
        Preconditions.checkNotNullFromProvides(empty);
        return empty;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideBackAnimationController((ShellInit) this.shellInitProvider.get(), (ShellController) this.shellControllerProvider.get(), (ShellExecutor) this.shellExecutorProvider.get(), (Handler) this.backgroundHandlerProvider.get(), (Context) this.contextProvider.get(), (BackAnimationBackground) this.backAnimationBackgroundProvider.get());
    }
}
