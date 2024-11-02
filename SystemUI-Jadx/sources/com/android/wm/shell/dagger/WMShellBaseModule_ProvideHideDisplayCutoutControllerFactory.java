package com.android.wm.shell.dagger;

import android.content.Context;
import android.os.SystemProperties;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.hidedisplaycutout.HideDisplayCutoutController;
import com.android.wm.shell.hidedisplaycutout.HideDisplayCutoutOrganizer;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideHideDisplayCutoutControllerFactory implements Provider {
    public final Provider contextProvider;
    public final Provider displayControllerProvider;
    public final Provider mainExecutorProvider;
    public final Provider shellCommandHandlerProvider;
    public final Provider shellControllerProvider;
    public final Provider shellInitProvider;

    public WMShellBaseModule_ProvideHideDisplayCutoutControllerFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6) {
        this.contextProvider = provider;
        this.shellInitProvider = provider2;
        this.shellCommandHandlerProvider = provider3;
        this.shellControllerProvider = provider4;
        this.displayControllerProvider = provider5;
        this.mainExecutorProvider = provider6;
    }

    public static Optional provideHideDisplayCutoutController(Context context, ShellInit shellInit, ShellCommandHandler shellCommandHandler, ShellController shellController, DisplayController displayController, ShellExecutor shellExecutor) {
        HideDisplayCutoutController hideDisplayCutoutController;
        if (!SystemProperties.getBoolean("ro.support_hide_display_cutout", false)) {
            hideDisplayCutoutController = null;
        } else {
            hideDisplayCutoutController = new HideDisplayCutoutController(context, shellInit, shellCommandHandler, shellController, new HideDisplayCutoutOrganizer(context, displayController, shellExecutor));
        }
        Optional ofNullable = Optional.ofNullable(hideDisplayCutoutController);
        Preconditions.checkNotNullFromProvides(ofNullable);
        return ofNullable;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideHideDisplayCutoutController((Context) this.contextProvider.get(), (ShellInit) this.shellInitProvider.get(), (ShellCommandHandler) this.shellCommandHandlerProvider.get(), (ShellController) this.shellControllerProvider.get(), (DisplayController) this.displayControllerProvider.get(), (ShellExecutor) this.mainExecutorProvider.get());
    }
}
