package com.android.systemui.uithreadmonitor;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecVendorServices_Factory implements Provider {
    public final Provider binderCallMonitorProvider;
    public final Provider looperSlowLogControllerProvider;
    public final Provider uiThreadMonitorProvider;

    public SecVendorServices_Factory(Provider provider, Provider provider2, Provider provider3) {
        this.binderCallMonitorProvider = provider;
        this.uiThreadMonitorProvider = provider2;
        this.looperSlowLogControllerProvider = provider3;
    }

    public static SecVendorServices newInstance() {
        return new SecVendorServices();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        SecVendorServices secVendorServices = new SecVendorServices();
        secVendorServices.binderCallMonitor = (BinderCallMonitor) this.binderCallMonitorProvider.get();
        secVendorServices.uiThreadMonitor = (UiThreadMonitor) this.uiThreadMonitorProvider.get();
        secVendorServices.looperSlowLogController = (LooperSlowLogController) this.looperSlowLogControllerProvider.get();
        return secVendorServices;
    }
}
