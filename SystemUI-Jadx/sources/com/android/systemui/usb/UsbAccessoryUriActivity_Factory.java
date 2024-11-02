package com.android.systemui.usb;

import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UsbAccessoryUriActivity_Factory implements Provider {
    public final Provider deviceProvisionedControllerProvider;

    public UsbAccessoryUriActivity_Factory(Provider provider) {
        this.deviceProvisionedControllerProvider = provider;
    }

    public static UsbAccessoryUriActivity newInstance(DeviceProvisionedController deviceProvisionedController) {
        return new UsbAccessoryUriActivity(deviceProvisionedController);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new UsbAccessoryUriActivity((DeviceProvisionedController) this.deviceProvisionedControllerProvider.get());
    }
}
