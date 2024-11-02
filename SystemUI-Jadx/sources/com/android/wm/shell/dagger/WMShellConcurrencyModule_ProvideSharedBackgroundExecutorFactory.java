package com.android.wm.shell.dagger;

import android.os.Handler;
import com.android.wm.shell.common.HandlerExecutor;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellConcurrencyModule_ProvideSharedBackgroundExecutorFactory implements Provider {
    public final Provider handlerProvider;

    public WMShellConcurrencyModule_ProvideSharedBackgroundExecutorFactory(Provider provider) {
        this.handlerProvider = provider;
    }

    public static HandlerExecutor provideSharedBackgroundExecutor(Handler handler) {
        return new HandlerExecutor(handler);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new HandlerExecutor((Handler) this.handlerProvider.get());
    }
}
