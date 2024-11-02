package com.android.systemui.log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ConstantStringsLoggerImpl implements ConstantStringsLogger {
    private final LogBuffer buffer;
    private final String tag;

    public ConstantStringsLoggerImpl(LogBuffer logBuffer, String str) {
        this.buffer = logBuffer;
        this.tag = str;
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public void d(String str) {
        LogBuffer.log$default(this.buffer, this.tag, LogLevel.DEBUG, str, null, 8, null);
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public void e(String str) {
        LogBuffer.log$default(this.buffer, this.tag, LogLevel.ERROR, str, null, 8, null);
    }

    public final LogBuffer getBuffer() {
        return this.buffer;
    }

    public final String getTag() {
        return this.tag;
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public void v(String str) {
        LogBuffer.log$default(this.buffer, this.tag, LogLevel.VERBOSE, str, null, 8, null);
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public void w(String str) {
        LogBuffer.log$default(this.buffer, this.tag, LogLevel.WARNING, str, null, 8, null);
    }
}
