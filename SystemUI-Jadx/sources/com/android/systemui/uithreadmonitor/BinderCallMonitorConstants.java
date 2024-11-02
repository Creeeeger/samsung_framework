package com.android.systemui.uithreadmonitor;

import android.os.Build;
import android.os.SystemProperties;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BinderCallMonitorConstants {
    public static final int MAX_BUF_COUNT;
    public static final long MAX_DURATION;
    public static final boolean STRICT_MODE_ENABLED;

    static {
        boolean z;
        int i = 0;
        if (!SystemProperties.getBoolean("persist.sysui.ipc_monitor.enabled", false) && (Build.IS_ENG || SystemProperties.getBoolean("persist.sysui.strictmode", false))) {
            z = true;
        } else {
            z = false;
        }
        STRICT_MODE_ENABLED = z;
        MAX_DURATION = SystemProperties.getInt("debug.sysui.ipc_monitor.dur", 30) * 1000000;
        int i2 = SystemProperties.getInt("debug.sysui.ipc_monitor.max", 50);
        if (i2 > 0 && i2 < 1000) {
            i = i2;
        }
        MAX_BUF_COUNT = i;
    }
}
