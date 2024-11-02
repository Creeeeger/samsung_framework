package com.android.systemui.devicepolicy;

import android.app.admin.DevicePolicyManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class DevicePolicyManagerExtKt {
    public static boolean areKeyguardShortcutsDisabled$default(DevicePolicyManager devicePolicyManager, int i) {
        int keyguardDisabledFeatures = devicePolicyManager.getKeyguardDisabledFeatures(null, i);
        if ((keyguardDisabledFeatures & 512) != 512 && (keyguardDisabledFeatures & Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return false;
        }
        return true;
    }
}
