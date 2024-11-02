package com.android.systemui.dagger;

import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ReferenceSystemUIModule_BindDeviceProvisionedControllerFactory implements Provider {
    public final Provider deviceProvisionedControllerProvider;

    public ReferenceSystemUIModule_BindDeviceProvisionedControllerFactory(Provider provider) {
        this.deviceProvisionedControllerProvider = provider;
    }

    public static void bindDeviceProvisionedController(DeviceProvisionedControllerImpl deviceProvisionedControllerImpl) {
        deviceProvisionedControllerImpl.init();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        DeviceProvisionedControllerImpl deviceProvisionedControllerImpl = (DeviceProvisionedControllerImpl) this.deviceProvisionedControllerProvider.get();
        deviceProvisionedControllerImpl.init();
        return deviceProvisionedControllerImpl;
    }
}
