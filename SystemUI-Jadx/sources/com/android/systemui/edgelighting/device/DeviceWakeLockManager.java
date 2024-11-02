package com.android.systemui.edgelighting.device;

import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DeviceWakeLockManager {
    public static DeviceWakeLockManager sInstance;
    public final HashMap mWakeLockMap = new HashMap();

    private DeviceWakeLockManager() {
    }

    public static synchronized DeviceWakeLockManager getInstance() {
        DeviceWakeLockManager deviceWakeLockManager;
        synchronized (DeviceWakeLockManager.class) {
            if (sInstance == null) {
                sInstance = new DeviceWakeLockManager();
            }
            deviceWakeLockManager = sInstance;
        }
        return deviceWakeLockManager;
    }
}
