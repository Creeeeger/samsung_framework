package com.android.systemui.log;

import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.CarrierTextManagerLogger$$ExternalSyntheticOutline0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecPanelLogWriter {
    public final LogBuffer buffer;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public SecPanelLogWriter(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void logPanel(String str, String str2) {
        LogLevel logLevel = LogLevel.INFO;
        SecPanelLogWriter$logPanel$2 secPanelLogWriter$logPanel$2 = new Function1() { // from class: com.android.systemui.log.SecPanelLogWriter$logPanel$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("[", logMessage.getStr1(), "] ", logMessage.getStr2());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("SecPanelLog", logLevel, secPanelLogWriter$logPanel$2, null);
        CarrierTextManagerLogger$$ExternalSyntheticOutline0.m(obtain, str, str2, logBuffer, obtain);
    }
}
