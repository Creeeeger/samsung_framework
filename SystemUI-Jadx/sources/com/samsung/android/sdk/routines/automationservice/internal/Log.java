package com.samsung.android.sdk.routines.automationservice.internal;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Log {
    public static final Log INSTANCE = new Log();

    private Log() {
    }

    public static void e(String str, String str2) {
        android.util.Log.e("Routine@AutomationService[1.0.1]: ".concat(str), str2);
    }
}
