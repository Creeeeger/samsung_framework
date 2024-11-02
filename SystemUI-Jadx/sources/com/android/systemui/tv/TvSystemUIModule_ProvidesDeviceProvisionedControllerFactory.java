package com.android.systemui.tv;

import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvSystemUIModule_ProvidesDeviceProvisionedControllerFactory implements Provider {
    public final Provider deviceProvisionedControllerProvider;

    public TvSystemUIModule_ProvidesDeviceProvisionedControllerFactory(Provider provider) {
        this.deviceProvisionedControllerProvider = provider;
    }

    public static void providesDeviceProvisionedController(DeviceProvisionedControllerImpl deviceProvisionedControllerImpl) {
        deviceProvisionedControllerImpl.init();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        DeviceProvisionedControllerImpl deviceProvisionedControllerImpl = (DeviceProvisionedControllerImpl) this.deviceProvisionedControllerProvider.get();
        deviceProvisionedControllerImpl.init();
        return deviceProvisionedControllerImpl;
    }
}
