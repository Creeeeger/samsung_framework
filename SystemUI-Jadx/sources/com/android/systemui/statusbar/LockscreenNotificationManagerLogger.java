package com.android.systemui.statusbar;

import com.android.systemui.log.LogBuffer;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LockscreenNotificationManagerLogger {
    public final boolean DEBUG = DeviceType.isEngOrUTBinary();
    public final LogBuffer buffer;

    public LockscreenNotificationManagerLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }
}
