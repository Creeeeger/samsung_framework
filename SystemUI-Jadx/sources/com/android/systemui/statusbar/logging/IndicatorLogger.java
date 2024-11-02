package com.android.systemui.statusbar.logging;

import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.CarrierTextManagerLogger$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicatorLogger {
    public final LogBuffer buffer;

    public IndicatorLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void log(String str) {
        LogLevel logLevel = LogLevel.INFO;
        IndicatorLogger$log$2 indicatorLogger$log$2 = new Function1() { // from class: com.android.systemui.statusbar.logging.IndicatorLogger$log$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("[", logMessage.getStr1(), "] ", logMessage.getStr2());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("IndicatorLog", logLevel, indicatorLogger$log$2, null);
        CarrierTextManagerLogger$$ExternalSyntheticOutline0.m(obtain, "DesktopManager", str, logBuffer, obtain);
    }
}
