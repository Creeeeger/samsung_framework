package com.android.systemui.statusbar.pipeline.shared;

import android.net.Network;
import android.net.NetworkCapabilities;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LoggerHelper {
    public static final LoggerHelper INSTANCE = new LoggerHelper();

    private LoggerHelper() {
    }

    public static void logOnCapabilitiesChanged(LogBuffer logBuffer, String str, Network network, NetworkCapabilities networkCapabilities, boolean z) {
        LogMessage obtain = logBuffer.obtain(str, LogLevel.INFO, new Function1() { // from class: com.android.systemui.statusbar.pipeline.shared.LoggerHelper$logOnCapabilitiesChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str2;
                LogMessage logMessage = (LogMessage) obj;
                if (logMessage.getBool1()) {
                    str2 = "Default";
                } else {
                    str2 = "";
                }
                int int1 = logMessage.getInt1();
                String str1 = logMessage.getStr1();
                StringBuilder m = CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m("on", str2, "CapabilitiesChanged: net=", int1, " capabilities=");
                m.append(str1);
                return m.toString();
            }
        }, null);
        obtain.setBool1(z);
        obtain.setInt1(network.getNetId());
        obtain.setStr1(networkCapabilities.toString());
        logBuffer.commit(obtain);
    }

    public static void logOnLost(LogBuffer logBuffer, String str, Network network, boolean z) {
        LogMessage obtain = logBuffer.obtain(str, LogLevel.INFO, new Function1() { // from class: com.android.systemui.statusbar.pipeline.shared.LoggerHelper$logOnLost$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str2;
                LogMessage logMessage = (LogMessage) obj;
                if (logMessage.getBool1()) {
                    str2 = "Default";
                } else {
                    str2 = "";
                }
                return "on" + str2 + "Lost: net=" + logMessage.getInt1();
            }
        }, null);
        obtain.setInt1(network.getNetId());
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }
}
