package com.android.wm.shell.dagger;

import android.view.IWindowManager;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.SystemWindows;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideSystemWindowsFactory implements Provider {
    public final Provider displayControllerProvider;
    public final Provider wmServiceProvider;

    public WMShellBaseModule_ProvideSystemWindowsFactory(Provider provider, Provider provider2) {
        this.displayControllerProvider = provider;
        this.wmServiceProvider = provider2;
    }

    public static SystemWindows provideSystemWindows(DisplayController displayController, IWindowManager iWindowManager) {
        return new SystemWindows(displayController, iWindowManager);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SystemWindows((DisplayController) this.displayControllerProvider.get(), (IWindowManager) this.wmServiceProvider.get());
    }
}
