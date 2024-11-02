package com.android.systemui.log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LogcatEchoTrackerProd implements LogcatEchoTracker {
    private final boolean logInBackgroundThread;

    @Override // com.android.systemui.log.LogcatEchoTracker
    public boolean getLogInBackgroundThread() {
        return this.logInBackgroundThread;
    }

    @Override // com.android.systemui.log.LogcatEchoTracker
    public boolean isBufferLoggable(String str, LogLevel logLevel) {
        if (logLevel.compareTo(LogLevel.WARNING) >= 0) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.log.LogcatEchoTracker
    public boolean isTagLoggable(String str, LogLevel logLevel) {
        if (logLevel.compareTo(LogLevel.WARNING) >= 0) {
            return true;
        }
        return false;
    }
}
