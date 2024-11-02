package com.android.systemui;

import android.util.ArrayMap;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ForegroundServicesUserState {
    public String[] mRunning = null;
    public long mServiceStartTime = 0;
    public final ArrayMap mImportantNotifications = new ArrayMap(1);
    public final ArrayMap mStandardLayoutNotifications = new ArrayMap(1);
    public final ArrayMap mAppOps = new ArrayMap(1);

    public final String toString() {
        return "UserServices{mRunning=" + Arrays.toString(this.mRunning) + ", mServiceStartTime=" + this.mServiceStartTime + ", mImportantNotifications=" + this.mImportantNotifications + ", mStandardLayoutNotifications=" + this.mStandardLayoutNotifications + '}';
    }
}
