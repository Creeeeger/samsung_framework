package com.android.wm.shell.dagger;

import android.content.Context;
import com.android.wm.shell.common.DevicePostureController;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.sysui.ShellInit;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideDevicePostureControllerFactory implements Provider {
    public final Provider contextProvider;
    public final Provider mainExecutorProvider;
    public final Provider shellInitProvider;

    public WMShellBaseModule_ProvideDevicePostureControllerFactory(Provider provider, Provider provider2, Provider provider3) {
        this.contextProvider = provider;
        this.shellInitProvider = provider2;
        this.mainExecutorProvider = provider3;
    }

    public static DevicePostureController provideDevicePostureController(Context context, ShellInit shellInit, ShellExecutor shellExecutor) {
        return new DevicePostureController(context, shellInit, shellExecutor);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new DevicePostureController((Context) this.contextProvider.get(), (ShellInit) this.shellInitProvider.get(), (ShellExecutor) this.mainExecutorProvider.get());
    }
}
