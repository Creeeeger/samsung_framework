package com.samsung.android.knox;

import android.app.admin.IDevicePolicyManager;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.storage.StorageVolume;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface ExternalDependencyInjector {
    default Bundle getApplicationRestrictionsMDM(IDevicePolicyManager iDevicePolicyManager, ComponentName componentName, String str, int i) {
        return null;
    }

    default String storageVolumeGetSubSystem(StorageVolume storageVolume) {
        return null;
    }

    default void setApplicationRestrictionsMDM(IDevicePolicyManager iDevicePolicyManager, ComponentName componentName, String str, Bundle bundle, int i) {
    }
}
