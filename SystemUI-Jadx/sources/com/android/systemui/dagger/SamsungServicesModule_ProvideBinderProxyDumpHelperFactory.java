package com.android.systemui.dagger;

import com.android.systemui.BinderProxyDumpHelper;
import com.android.systemui.dump.DumpManager;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungServicesModule_ProvideBinderProxyDumpHelperFactory implements Provider {
    public final Provider dumpManagerProvider;

    public SamsungServicesModule_ProvideBinderProxyDumpHelperFactory(Provider provider) {
        this.dumpManagerProvider = provider;
    }

    public static BinderProxyDumpHelper provideBinderProxyDumpHelper(DumpManager dumpManager) {
        return new BinderProxyDumpHelper(dumpManager);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new BinderProxyDumpHelper((DumpManager) this.dumpManagerProvider.get());
    }
}
