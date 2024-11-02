package com.android.systemui.statusbar.pipeline.mobile.ui;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.view.View;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.pipeline.mobile.ui.MobileViewLogger;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.SignalIconModel;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VerboseMobileViewLogger {
    public final LogBuffer buffer;

    public VerboseMobileViewLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void logBinderReceivedNetworkTypeIcon(View view, int i, Icon.Resource resource) {
        boolean z;
        int i2;
        LogLevel logLevel = LogLevel.VERBOSE;
        VerboseMobileViewLogger$logBinderReceivedNetworkTypeIcon$2 verboseMobileViewLogger$logBinderReceivedNetworkTypeIcon$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.VerboseMobileViewLogger$logBinderReceivedNetworkTypeIcon$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str;
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                String str1 = logMessage.getStr1();
                if (logMessage.getBool1()) {
                    str = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("resId=", logMessage.getInt2());
                } else {
                    str = "null";
                }
                StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("Binder[subId=", int1, ", viewId=", str1, "] received new network type icon: ");
                m.append(str);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("VerboseMobileViewLogger", logLevel, verboseMobileViewLogger$logBinderReceivedNetworkTypeIcon$2, null);
        MobileViewLogger.Companion.getClass();
        obtain.setStr1(MobileViewLogger.Companion.getIdForLogging(view));
        obtain.setInt1(i);
        if (resource != null) {
            z = true;
        } else {
            z = false;
        }
        obtain.setBool1(z);
        if (resource != null) {
            i2 = resource.res;
        } else {
            i2 = -1;
        }
        obtain.setInt2(i2);
        logBuffer.commit(obtain);
    }

    public final void logBinderReceivedSignalIcon(View view, int i, SignalIconModel signalIconModel) {
        boolean z;
        LogLevel logLevel = LogLevel.VERBOSE;
        VerboseMobileViewLogger$logBinderReceivedSignalIcon$2 verboseMobileViewLogger$logBinderReceivedSignalIcon$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.VerboseMobileViewLogger$logBinderReceivedSignalIcon$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                String str1 = logMessage.getStr1();
                int int2 = logMessage.getInt2();
                boolean bool1 = logMessage.getBool1();
                StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("Binder[subId=", int1, ", viewId=", str1, "] received new signal icon: level=");
                m.append(int2);
                m.append(" showExclamation=");
                m.append(bool1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("VerboseMobileViewLogger", logLevel, verboseMobileViewLogger$logBinderReceivedSignalIcon$2, null);
        MobileViewLogger.Companion.getClass();
        obtain.setStr1(MobileViewLogger.Companion.getIdForLogging(view));
        obtain.setInt1(i);
        obtain.setInt2(signalIconModel.getLevel());
        if (signalIconModel instanceof SignalIconModel.Cellular) {
            z = ((SignalIconModel.Cellular) signalIconModel).showExclamationMark;
        } else {
            z = false;
        }
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }
}
