package com.android.wm.shell.dagger;

import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.unfold.ShellUnfoldProgressProvider;
import com.android.wm.shell.unfold.UnfoldAnimationController;
import com.android.wm.shell.unfold.animation.FullscreenUnfoldTaskAnimator;
import com.android.wm.shell.unfold.animation.SplitTaskUnfoldAnimator;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import java.util.ArrayList;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvideUnfoldAnimationControllerFactory implements Provider {
    public final Provider fullscreenAnimatorProvider;
    public final Provider mainExecutorProvider;
    public final Provider progressProvider;
    public final Provider shellInitProvider;
    public final Provider splitAnimatorProvider;
    public final Provider transactionPoolProvider;
    public final Provider unfoldTransitionHandlerProvider;

    public WMShellModule_ProvideUnfoldAnimationControllerFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7) {
        this.progressProvider = provider;
        this.transactionPoolProvider = provider2;
        this.splitAnimatorProvider = provider3;
        this.fullscreenAnimatorProvider = provider4;
        this.unfoldTransitionHandlerProvider = provider5;
        this.shellInitProvider = provider6;
        this.mainExecutorProvider = provider7;
    }

    public static UnfoldAnimationController provideUnfoldAnimationController(Optional optional, TransactionPool transactionPool, SplitTaskUnfoldAnimator splitTaskUnfoldAnimator, FullscreenUnfoldTaskAnimator fullscreenUnfoldTaskAnimator, Lazy lazy, ShellInit shellInit, ShellExecutor shellExecutor) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(splitTaskUnfoldAnimator);
        arrayList.add(fullscreenUnfoldTaskAnimator);
        return new UnfoldAnimationController(shellInit, transactionPool, (ShellUnfoldProgressProvider) optional.get(), arrayList, lazy, shellExecutor);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideUnfoldAnimationController((Optional) this.progressProvider.get(), (TransactionPool) this.transactionPoolProvider.get(), (SplitTaskUnfoldAnimator) this.splitAnimatorProvider.get(), (FullscreenUnfoldTaskAnimator) this.fullscreenAnimatorProvider.get(), DoubleCheck.lazy(this.unfoldTransitionHandlerProvider), (ShellInit) this.shellInitProvider.get(), (ShellExecutor) this.mainExecutorProvider.get());
    }
}
