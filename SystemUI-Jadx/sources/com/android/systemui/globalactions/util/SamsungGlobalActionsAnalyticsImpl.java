package com.android.systemui.globalactions.util;

import com.android.systemui.util.SystemUIAnalytics;
import com.samsung.android.globalactions.util.SamsungGlobalActionsAnalytics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungGlobalActionsAnalyticsImpl implements SamsungGlobalActionsAnalytics {
    public final void sendEventLog(String str, String str2) {
        SystemUIAnalytics.sendEventLog(str, str2);
    }

    public final void sendEventLog(String str, String str2, String str3, long j) {
        SystemUIAnalytics.sendEventLog(str, str2, str3, j);
    }
}
