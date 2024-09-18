package com.samsung.android.globalactions.util;

import android.app.admin.DevicePolicyManager;
import android.content.Context;

/* loaded from: classes5.dex */
public class DevicePolicyManagerWrapper {
    private final DevicePolicyManager mDevicePolicyManager;

    public DevicePolicyManagerWrapper(Context mContext) {
        this.mDevicePolicyManager = (DevicePolicyManager) mContext.getSystemService(Context.DEVICE_POLICY_SERVICE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEncryptionStatusActive() {
        return this.mDevicePolicyManager.getStorageEncryptionStatus() == 3 || this.mDevicePolicyManager.getStorageEncryptionStatus() == 5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isLogoutEnabled() {
        return this.mDevicePolicyManager.isLogoutEnabled();
    }
}
