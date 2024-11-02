package com.android.systemui.media.taptotransfer.common;

import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaTttLoggerUtils {
    public static final MediaTttLoggerUtils INSTANCE = new MediaTttLoggerUtils();

    private MediaTttLoggerUtils() {
    }

    public static void logPackageNotFound(LogBuffer logBuffer, String str, String str2) {
        LogMessage obtain = logBuffer.obtain(str, LogLevel.DEBUG, new Function1() { // from class: com.android.systemui.media.taptotransfer.common.MediaTttLoggerUtils$logPackageNotFound$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m("Package ", ((LogMessage) obj).getStr1(), " could not be found");
            }
        }, null);
        obtain.setStr1(str2);
        logBuffer.commit(obtain);
    }

    public static void logStateChange(LogBuffer logBuffer, String str, String str2, String str3, String str4) {
        LogMessage obtain = logBuffer.obtain(str, LogLevel.DEBUG, new Function1() { // from class: com.android.systemui.media.taptotransfer.common.MediaTttLoggerUtils$logStateChange$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str22 = logMessage.getStr2();
                String str32 = logMessage.getStr3();
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("State changed to ", str1, " for ID=", str22, " package=");
                m.append(str32);
                return m.toString();
            }
        }, null);
        obtain.setStr1(str2);
        obtain.setStr2(str3);
        obtain.setStr3(str4);
        logBuffer.commit(obtain);
    }

    public static void logStateChangeError(LogBuffer logBuffer, String str, int i) {
        LogMessage obtain = logBuffer.obtain(str, LogLevel.ERROR, new Function1() { // from class: com.android.systemui.media.taptotransfer.common.MediaTttLoggerUtils$logStateChangeError$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Cannot display state=", ((LogMessage) obj).getInt1(), "; aborting");
            }
        }, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }
}
