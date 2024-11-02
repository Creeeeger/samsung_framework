package com.android.wm.shell.dagger;

import android.os.Handler;
import com.android.wm.shell.common.TaskStackListenerImpl;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProviderTaskStackListenerImplFactory implements Provider {
    public final Provider mainHandlerProvider;

    public WMShellBaseModule_ProviderTaskStackListenerImplFactory(Provider provider) {
        this.mainHandlerProvider = provider;
    }

    public static TaskStackListenerImpl providerTaskStackListenerImpl(Handler handler) {
        return new TaskStackListenerImpl(handler);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new TaskStackListenerImpl((Handler) this.mainHandlerProvider.get());
    }
}
