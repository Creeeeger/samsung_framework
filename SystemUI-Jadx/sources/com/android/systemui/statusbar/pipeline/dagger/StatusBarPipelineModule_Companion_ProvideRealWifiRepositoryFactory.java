package com.android.systemui.statusbar.pipeline.dagger;

import android.net.wifi.WifiManager;
import com.android.systemui.statusbar.pipeline.wifi.data.repository.RealWifiRepository;
import com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.DisabledWifiRepository;
import com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory implements Provider {
    public final Provider disabledWifiRepositoryProvider;
    public final Provider wifiManagerProvider;
    public final Provider wifiRepositoryImplFactoryProvider;

    public StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory(Provider provider, Provider provider2, Provider provider3) {
        this.wifiManagerProvider = provider;
        this.disabledWifiRepositoryProvider = provider2;
        this.wifiRepositoryImplFactoryProvider = provider3;
    }

    public static RealWifiRepository provideRealWifiRepository(WifiManager wifiManager, DisabledWifiRepository disabledWifiRepository, WifiRepositoryImpl.Factory factory) {
        StatusBarPipelineModule.Companion.getClass();
        if (wifiManager != null) {
            return new WifiRepositoryImpl(factory.broadcastDispatcher, factory.connectivityManager, factory.connectivityRepository, factory.logger, factory.wifiTableLogBuffer, factory.mainExecutor, factory.scope, wifiManager, factory.semWifiManager);
        }
        return disabledWifiRepository;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideRealWifiRepository((WifiManager) this.wifiManagerProvider.get(), (DisabledWifiRepository) this.disabledWifiRepositoryProvider.get(), (WifiRepositoryImpl.Factory) this.wifiRepositoryImplFactoryProvider.get());
    }
}
