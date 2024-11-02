package com.android.systemui.shade;

import com.android.systemui.log.ConstantStringsLogger;
import com.android.systemui.log.ConstantStringsLoggerImpl;
import com.android.systemui.log.LogBuffer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeWindowLogger implements ConstantStringsLogger {
    public final /* synthetic */ ConstantStringsLoggerImpl $$delegate_0;
    public final LogBuffer buffer;

    public ShadeWindowLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
        this.$$delegate_0 = new ConstantStringsLoggerImpl(logBuffer, "systemui.shadewindow");
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public final void d(String str) {
        this.$$delegate_0.d(str);
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public final void e(String str) {
        this.$$delegate_0.e(str);
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public final void v(String str) {
        this.$$delegate_0.v(str);
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public final void w(String str) {
        this.$$delegate_0.w(str);
    }
}
