package com.android.systemui.log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NoLogcatEchoTracker implements LogcatEchoTracker {
    @Override // com.android.systemui.log.LogcatEchoTracker
    public final boolean getLogInBackgroundThread() {
        return false;
    }

    @Override // com.android.systemui.log.LogcatEchoTracker
    public final boolean isBufferLoggable(String str, LogLevel logLevel) {
        return false;
    }

    @Override // com.android.systemui.log.LogcatEchoTracker
    public final boolean isTagLoggable(String str, LogLevel logLevel) {
        return false;
    }
}
