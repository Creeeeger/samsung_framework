package com.android.keyguard.logging;

import android.hardware.biometrics.BiometricSourceType;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BiometricUnlockLogger {
    public final LogBuffer logBuffer;

    public BiometricUnlockLogger(LogBuffer logBuffer) {
        this.logBuffer = logBuffer;
    }

    public final void deferringAuthenticationDueToSleep(int i, BiometricSourceType biometricSourceType, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        BiometricUnlockLogger$deferringAuthenticationDueToSleep$2 biometricUnlockLogger$deferringAuthenticationDueToSleep$2 = new Function1() { // from class: com.android.keyguard.logging.BiometricUnlockLogger$deferringAuthenticationDueToSleep$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                String str1 = logMessage.getStr1();
                boolean bool2 = logMessage.getBool2();
                StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("onBiometricAuthenticated, deferring auth: userId: ", int1, ", biometricSourceType: ", str1, ", goingToSleep: true, mPendingAuthentication != null: ");
                m.append(bool2);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("BiometricUnlockLogger", logLevel, biometricUnlockLogger$deferringAuthenticationDueToSleep$2, null);
        obtain.setInt1(i);
        obtain.setStr1(biometricSourceType.name());
        obtain.setBool2(z);
        logBuffer.commit(obtain);
    }

    public final void logCalculateModeForFingerprintUnlockingAllowed(boolean z, boolean z2, boolean z3) {
        LogLevel logLevel = LogLevel.DEBUG;
        BiometricUnlockLogger$logCalculateModeForFingerprintUnlockingAllowed$2 biometricUnlockLogger$logCalculateModeForFingerprintUnlockingAllowed$2 = new Function1() { // from class: com.android.keyguard.logging.BiometricUnlockLogger$logCalculateModeForFingerprintUnlockingAllowed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                boolean bool3 = logMessage.getBool3();
                StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("calculateModeForFingerprint unlockingAllowed=true deviceInteractive=", bool1, " isKeyguardShowing=", bool2, " deviceDreaming=");
                m.append(bool3);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("BiometricUnlockLogger", logLevel, biometricUnlockLogger$logCalculateModeForFingerprintUnlockingAllowed$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setBool3(z3);
        logBuffer.commit(obtain);
    }

    public final void logCalculateModeForFingerprintUnlockingNotAllowed(int i, boolean z, boolean z2, boolean z3, boolean z4) {
        LogLevel logLevel = LogLevel.DEBUG;
        BiometricUnlockLogger$logCalculateModeForFingerprintUnlockingNotAllowed$2 biometricUnlockLogger$logCalculateModeForFingerprintUnlockingNotAllowed$2 = new Function1() { // from class: com.android.keyguard.logging.BiometricUnlockLogger$logCalculateModeForFingerprintUnlockingNotAllowed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                int int1 = logMessage.getInt1();
                boolean bool2 = logMessage.getBool2();
                boolean bool3 = logMessage.getBool3();
                boolean bool4 = logMessage.getBool4();
                StringBuilder m = KeyguardFMMViewController$$ExternalSyntheticOutline0.m("calculateModeForFingerprint unlockingAllowed=false strongBiometric=", bool1, " strongAuthFlags=", int1, " nonStrongBiometricAllowed=");
                KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, bool2, " deviceInteractive=", bool3, " isKeyguardShowing=");
                m.append(bool4);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("BiometricUnlockLogger", logLevel, biometricUnlockLogger$logCalculateModeForFingerprintUnlockingNotAllowed$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setBool3(z3);
        obtain.setBool4(z4);
        logBuffer.commit(obtain);
    }

    public final void logCalculateModeForPassiveAuthUnlockingAllowed(boolean z, boolean z2, boolean z3, boolean z4) {
        LogLevel logLevel = LogLevel.DEBUG;
        BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingAllowed$2 biometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingAllowed$2 = new Function1() { // from class: com.android.keyguard.logging.BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingAllowed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                return KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("calculateModeForPassiveAuth unlockingAllowed=true deviceInteractive=", bool1, " isKeyguardShowing=", bool2, " deviceDreaming="), logMessage.getBool3(), " bypass=", logMessage.getBool4());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("BiometricUnlockLogger", logLevel, biometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingAllowed$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setBool3(z3);
        obtain.setBool4(z4);
        logBuffer.commit(obtain);
    }

    public final void logCalculateModeForPassiveAuthUnlockingNotAllowed(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        int i2;
        LogLevel logLevel = LogLevel.DEBUG;
        BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2 biometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2 = new Function1() { // from class: com.android.keyguard.logging.BiometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean z6 = true;
                if (logMessage.getInt1() != 1) {
                    z6 = false;
                }
                int int2 = logMessage.getInt2();
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                boolean bool3 = logMessage.getBool3();
                boolean bool4 = logMessage.getBool4();
                StringBuilder m = KeyguardFMMViewController$$ExternalSyntheticOutline0.m("calculateModeForPassiveAuth unlockingAllowed=false strongBiometric=", z6, " strongAuthFlags=", int2, " nonStrongBiometricAllowed=");
                KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, bool1, " deviceInteractive=", bool2, " isKeyguardShowing=");
                return KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(m, bool3, " bypass=", bool4);
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("BiometricUnlockLogger", logLevel, biometricUnlockLogger$logCalculateModeForPassiveAuthUnlockingNotAllowed$2, null);
        if (z) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        obtain.setInt1(i2);
        obtain.setInt2(i);
        obtain.setBool1(z2);
        obtain.setBool2(z3);
        obtain.setBool3(z4);
        obtain.setBool4(z5);
        logBuffer.commit(obtain);
    }

    public final void logUdfpsAttemptThresholdMet(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        BiometricUnlockLogger$logUdfpsAttemptThresholdMet$2 biometricUnlockLogger$logUdfpsAttemptThresholdMet$2 = new Function1() { // from class: com.android.keyguard.logging.BiometricUnlockLogger$logUdfpsAttemptThresholdMet$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("udfpsAttemptThresholdMet consecutiveFailedAttempts=", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("BiometricUnlockLogger", logLevel, biometricUnlockLogger$logUdfpsAttemptThresholdMet$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }
}
