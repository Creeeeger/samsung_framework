package com.android.systemui.keyguard;

import com.android.systemui.log.LogLevel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Slog {
    public static void w(String str, Throwable th) {
        android.util.Slog.w("KeyguardViewMediator", str, th);
        KeyguardDumpLog.log("KeyguardViewMediator", LogLevel.WARNING, str, th);
    }
}
