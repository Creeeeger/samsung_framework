package com.android.keyguard.logging;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.KeyguardIndicationRotateTextViewController;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardLogger {
    public final LogBuffer buffer;

    public KeyguardLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void log(String str, LogLevel logLevel, String str2, Object obj) {
        KeyguardLogger$log$2 keyguardLogger$log$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardLogger$log$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                LogMessage logMessage = (LogMessage) obj2;
                return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(logMessage.getStr1(), ": ", logMessage.getStr2());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain(str, logLevel, keyguardLogger$log$2, null);
        obtain.setStr1(str2);
        obtain.setStr2(obj.toString());
        logBuffer.commit(obtain);
    }

    public final void logBiometricMessage(String str, Integer num, String str2) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardLogger$logBiometricMessage$2 keyguardLogger$logBiometricMessage$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardLogger$logBiometricMessage$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return logMessage.getStr1() + " msgId: " + logMessage.getStr2() + " msg: " + logMessage.getStr3();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("KeyguardLog", logLevel, keyguardLogger$logBiometricMessage$2, null);
        obtain.setStr1(str);
        obtain.setStr2(String.valueOf(num));
        obtain.setStr3(str2);
        logBuffer.commit(obtain);
    }

    public final void logKeyguardSwitchIndication(int i, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        Function1 function1 = new Function1() { // from class: com.android.keyguard.logging.KeyguardLogger$logKeyguardSwitchIndication$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String m;
                LogMessage logMessage = (LogMessage) obj;
                KeyguardLogger keyguardLogger = KeyguardLogger.this;
                int int1 = logMessage.getInt1();
                String str1 = logMessage.getStr1();
                keyguardLogger.getClass();
                if (int1 == 3) {
                    m = FontProvider$$ExternalSyntheticOutline0.m("type=", KeyguardIndicationRotateTextViewController.indicationTypeToString(int1), " message=", str1);
                } else {
                    m = KeyAttributes$$ExternalSyntheticOutline0.m("type=", KeyguardIndicationRotateTextViewController.indicationTypeToString(int1));
                }
                return KeyAttributes$$ExternalSyntheticOutline0.m("keyguardSwitchIndication ", m);
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("KeyguardIndication", logLevel, function1, null);
        obtain.setInt1(i);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logRefreshBatteryInfo(boolean z, int i, boolean z2, boolean z3) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardLogger$logRefreshBatteryInfo$2 keyguardLogger$logRefreshBatteryInfo$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardLogger$logRefreshBatteryInfo$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                boolean bool3 = logMessage.getBool3();
                int int1 = logMessage.getInt1();
                StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("refreshBatteryInfo isChargingOrFull:", bool1, " powerPluggedIn:", bool2, " batteryOverheated:");
                m.append(bool3);
                m.append(" batteryLevel:");
                m.append(int1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("KeyguardIndication", logLevel, keyguardLogger$logRefreshBatteryInfo$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setBool3(z3);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void notShowingUnlockRipple(boolean z, boolean z2) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardLogger$notShowingUnlockRipple$2 keyguardLogger$notShowingUnlockRipple$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardLogger$notShowingUnlockRipple$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Not showing unlock ripple: keyguardNotShowing: " + logMessage.getBool1() + ", unlockNotAllowed: " + logMessage.getBool2();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("AuthRippleController", logLevel, keyguardLogger$notShowingUnlockRipple$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        logBuffer.commit(obtain);
    }

    public final void showingUnlockRippleAt(int i, int i2, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardLogger$showingUnlockRippleAt$2 keyguardLogger$showingUnlockRippleAt$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardLogger$showingUnlockRippleAt$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                int int2 = logMessage.getInt2();
                String str1 = logMessage.getStr1();
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("Showing unlock ripple with center (x, y): (", int1, ", ", int2, "), context: ");
                m.append(str1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("AuthRippleController", logLevel, keyguardLogger$showingUnlockRippleAt$2, null);
        obtain.setInt1(i);
        obtain.setInt2(i2);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }
}
