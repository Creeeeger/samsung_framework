package com.android.systemui.keyguard;

import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardFoldControllerConfigImpl implements KeyguardFoldControllerConfig {
    public final boolean isDebug() {
        if (DeviceType.getDebugLevel() == 1 || !DeviceType.isShipBuild()) {
            return true;
        }
        return false;
    }
}
