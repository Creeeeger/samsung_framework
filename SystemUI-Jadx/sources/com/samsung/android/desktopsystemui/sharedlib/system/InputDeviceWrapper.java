package com.samsung.android.desktopsystemui.sharedlib.system;

import android.hardware.input.InputDeviceIdentifier;
import android.view.InputDevice;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class InputDeviceWrapper {
    private static final int PRODUCT_ID_POGO_KEYBOARD = 41013;
    private static final int VENDOR_ID_SAMSUNG = 1256;

    public static boolean isPogoKeyboardConnected(InputDevice inputDevice) {
        InputDeviceIdentifier identifier = inputDevice.getIdentifier();
        int vendorId = identifier.getVendorId();
        int productId = identifier.getProductId();
        if (vendorId == VENDOR_ID_SAMSUNG && productId == PRODUCT_ID_POGO_KEYBOARD) {
            return true;
        }
        return false;
    }
}
