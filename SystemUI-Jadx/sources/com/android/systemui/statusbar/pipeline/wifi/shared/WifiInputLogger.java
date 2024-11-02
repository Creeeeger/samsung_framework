package com.android.systemui.statusbar.pipeline.wifi.shared;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiInputLogger {
    public final LogBuffer buffer;

    public WifiInputLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void logActivity(String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        WifiInputLogger$logActivity$2 wifiInputLogger$logActivity$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.wifi.shared.WifiInputLogger$logActivity$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("Activity: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("WifiInputLog", logLevel, wifiInputLogger$logActivity$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logHideDuringMobileSwitching(boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        WifiInputLogger$logHideDuringMobileSwitching$2 wifiInputLogger$logHideDuringMobileSwitching$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.wifi.shared.WifiInputLogger$logHideDuringMobileSwitching$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("hideDuringSwitching: ", ((LogMessage) obj).getBool1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("WifiInputLog", logLevel, wifiInputLogger$logHideDuringMobileSwitching$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logIntent() {
        LogLevel logLevel = LogLevel.DEBUG;
        WifiInputLogger$logIntent$2 wifiInputLogger$logIntent$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.wifi.shared.WifiInputLogger$logIntent$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("Intent received: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("WifiInputLog", logLevel, wifiInputLogger$logIntent$2, null);
        obtain.setStr1("WIFI_STATE_CHANGED_ACTION");
        logBuffer.commit(obtain);
    }

    public final void logReceivedInetCondition(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        WifiInputLogger$logReceivedInetCondition$2 wifiInputLogger$logReceivedInetCondition$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.wifi.shared.WifiInputLogger$logReceivedInetCondition$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("ReceivedInetCondition: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("WifiInputLog", logLevel, wifiInputLogger$logReceivedInetCondition$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logTestReported(boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        WifiInputLogger$logTestReported$2 wifiInputLogger$logTestReported$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.wifi.shared.WifiInputLogger$logTestReported$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("testReported: ", ((LogMessage) obj).getBool1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("WifiInputLog", logLevel, wifiInputLogger$logTestReported$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }
}
