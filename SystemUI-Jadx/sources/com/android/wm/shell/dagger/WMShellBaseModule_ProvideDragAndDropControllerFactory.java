package com.android.wm.shell.dagger;

import android.content.Context;
import com.android.internal.logging.UiEventLogger;
import com.android.launcher3.icons.IconProvider;
import com.android.systemui.R;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.draganddrop.DragAndDropController;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideDragAndDropControllerFactory implements Provider {
    public final Provider contextProvider;
    public final Provider displayControllerProvider;
    public final Provider iconProvider;
    public final Provider mainExecutorProvider;
    public final Provider shellCommandHandlerProvider;
    public final Provider shellControllerProvider;
    public final Provider shellInitProvider;
    public final Provider uiEventLoggerProvider;

    public WMShellBaseModule_ProvideDragAndDropControllerFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7, Provider provider8) {
        this.contextProvider = provider;
        this.shellInitProvider = provider2;
        this.shellControllerProvider = provider3;
        this.shellCommandHandlerProvider = provider4;
        this.displayControllerProvider = provider5;
        this.uiEventLoggerProvider = provider6;
        this.iconProvider = provider7;
        this.mainExecutorProvider = provider8;
    }

    public static Optional provideDragAndDropController(Context context, ShellInit shellInit, ShellController shellController, ShellCommandHandler shellCommandHandler, DisplayController displayController, UiEventLogger uiEventLogger, IconProvider iconProvider, ShellExecutor shellExecutor) {
        DragAndDropController dragAndDropController;
        int i = DragAndDropController.$r8$clinit;
        if (!context.getResources().getBoolean(R.bool.config_enableShellDragDrop)) {
            dragAndDropController = null;
        } else {
            dragAndDropController = new DragAndDropController(context, shellInit, shellController, shellCommandHandler, displayController, uiEventLogger, iconProvider, shellExecutor);
        }
        Optional ofNullable = Optional.ofNullable(dragAndDropController);
        Preconditions.checkNotNullFromProvides(ofNullable);
        return ofNullable;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideDragAndDropController((Context) this.contextProvider.get(), (ShellInit) this.shellInitProvider.get(), (ShellController) this.shellControllerProvider.get(), (ShellCommandHandler) this.shellCommandHandlerProvider.get(), (DisplayController) this.displayControllerProvider.get(), (UiEventLogger) this.uiEventLoggerProvider.get(), (IconProvider) this.iconProvider.get(), (ShellExecutor) this.mainExecutorProvider.get());
    }
}
