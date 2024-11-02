package com.android.systemui.volume.util;

import com.android.systemui.Dependency;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DeviceProvisionedWrapper {
    public final DeviceProvisionedController deviceProvisionedController = (DeviceProvisionedController) Dependency.get(DeviceProvisionedController.class);
    public final LogWrapper logWrapper;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public DeviceProvisionedWrapper(LogWrapper logWrapper) {
        this.logWrapper = logWrapper;
    }

    public final boolean isDeviceProvisioned() {
        boolean isDeviceProvisioned = ((DeviceProvisionedControllerImpl) this.deviceProvisionedController).isDeviceProvisioned();
        this.logWrapper.d("DeviceProvisionedWrapper", "isDeviceProvisioned() : " + isDeviceProvisioned);
        return isDeviceProvisioned;
    }
}
