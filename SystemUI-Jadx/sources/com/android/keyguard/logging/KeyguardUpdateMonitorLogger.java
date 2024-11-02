package com.android.keyguard.logging;

import android.content.Intent;
import android.os.PowerManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import androidx.fragment.app.FragmentTransaction$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.ActiveUnlockConfig;
import com.android.keyguard.FaceAuthUiEvent;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardListenModel;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.TrustGrantFlags;
import com.android.settingslib.fuelgauge.BatteryStatus;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardUpdateMonitorLogger {
    public final LogBuffer logBuffer;

    public KeyguardUpdateMonitorLogger(LogBuffer logBuffer) {
        this.logBuffer = logBuffer;
    }

    public final void d(String str) {
        log(str, LogLevel.DEBUG);
    }

    public final void log(String str, LogLevel logLevel) {
        LogBuffer.log$default(this.logBuffer, "KeyguardUpdateMonitorLog", logLevel, str, null, 8, null);
    }

    public final void logActiveUnlockRequestSkippedForWakeReasonDueToFaceConfig(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logActiveUnlockRequestSkippedForWakeReasonDueToFaceConfig$2 keyguardUpdateMonitorLogger$logActiveUnlockRequestSkippedForWakeReasonDueToFaceConfig$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logActiveUnlockRequestSkippedForWakeReasonDueToFaceConfig$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("Skip requesting active unlock from wake reason that doesn't trigger face auth reason=", PowerManager.wakeReasonToString(((LogMessage) obj).getInt1()));
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("ActiveUnlock", logLevel, keyguardUpdateMonitorLogger$logActiveUnlockRequestSkippedForWakeReasonDueToFaceConfig$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logActiveUnlockTriggered(String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logActiveUnlockTriggered$2 keyguardUpdateMonitorLogger$logActiveUnlockTriggered$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logActiveUnlockTriggered$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("initiate active unlock triggerReason=", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("ActiveUnlock", logLevel, keyguardUpdateMonitorLogger$logActiveUnlockTriggered$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logAssistantVisible(boolean z) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logAssistantVisible$2 keyguardUpdateMonitorLogger$logAssistantVisible$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Updating mAssistantVisible to new value: ", ((LogMessage) obj).getBool1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logAssistantVisible$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logAuthInterruptDetected(boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logAuthInterruptDetected$2 keyguardUpdateMonitorLogger$logAuthInterruptDetected$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAuthInterruptDetected$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return "onAuthInterruptDetected(" + ((LogMessage) obj).getBool1() + ")";
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logAuthInterruptDetected$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logBroadcastReceived(String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logBroadcastReceived$2 keyguardUpdateMonitorLogger$logBroadcastReceived$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logBroadcastReceived$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("received broadcast ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logBroadcastReceived$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logDeviceProvisionedState(boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logDeviceProvisionedState$2 keyguardUpdateMonitorLogger$logDeviceProvisionedState$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logDeviceProvisionedState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("DEVICE_PROVISIONED state = ", ((LogMessage) obj).getBool1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logDeviceProvisionedState$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logException(final String str, Exception exc) {
        LogLevel logLevel = LogLevel.ERROR;
        Function1 function1 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logException$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return str;
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        logBuffer.commit(logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, function1, exc));
    }

    public final void logFaceAuthDisabledForUser(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceAuthDisabledForUser$2 keyguardUpdateMonitorLogger$logFaceAuthDisabledForUser$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceAuthDisabledForUser$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Face authentication disabled by DPM for userId: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceAuthDisabledForUser$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFaceAuthError(int i, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceAuthError$2 keyguardUpdateMonitorLogger$logFaceAuthError$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceAuthError$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Face error received: " + logMessage.getStr1() + " msgId= " + logMessage.getInt1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceAuthError$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFaceAuthForWrongUser(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceAuthForWrongUser$2 keyguardUpdateMonitorLogger$logFaceAuthForWrongUser$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceAuthForWrongUser$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Face authenticated for wrong user: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceAuthForWrongUser$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFaceAuthRequested(String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceAuthRequested$2 keyguardUpdateMonitorLogger$logFaceAuthRequested$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceAuthRequested$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("requestFaceAuth() reason=", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceAuthRequested$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logFaceAuthSuccess(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceAuthSuccess$2 keyguardUpdateMonitorLogger$logFaceAuthSuccess$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceAuthSuccess$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Face auth succeeded for user ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceAuthSuccess$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFaceDetected(int i, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceDetected$2 keyguardUpdateMonitorLogger$logFaceDetected$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceDetected$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Face detected: userId: " + logMessage.getInt1() + ", isStrongBiometric: " + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceDetected$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logFaceEnrolledUpdated(boolean z, boolean z2) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceEnrolledUpdated$2 keyguardUpdateMonitorLogger$logFaceEnrolledUpdated$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceEnrolledUpdated$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Face enrolled state changed: old: " + logMessage.getBool1() + ", new: " + logMessage.getBool2();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceEnrolledUpdated$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        logBuffer.commit(obtain);
    }

    public final void logFaceLockoutReset(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceLockoutReset$2 keyguardUpdateMonitorLogger$logFaceLockoutReset$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceLockoutReset$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("handleFaceLockoutReset: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceLockoutReset$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFaceRunningState(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceRunningState$2 keyguardUpdateMonitorLogger$logFaceRunningState$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceRunningState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("faceRunningState: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceRunningState$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFaceUnlockPossible(boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFaceUnlockPossible$2 keyguardUpdateMonitorLogger$logFaceUnlockPossible$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFaceUnlockPossible$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("isUnlockWithFacePossible: ", ((LogMessage) obj).getBool1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFaceUnlockPossible$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logFingerprintAuthForWrongUser(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFingerprintAuthForWrongUser$2 keyguardUpdateMonitorLogger$logFingerprintAuthForWrongUser$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFingerprintAuthForWrongUser$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Fingerprint authenticated for wrong user: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFingerprintAuthForWrongUser$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFingerprintDetected(int i, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFingerprintDetected$2 keyguardUpdateMonitorLogger$logFingerprintDetected$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFingerprintDetected$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Fingerprint detected: userId: " + logMessage.getInt1() + ", isStrongBiometric: " + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFingerprintDetected$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logFingerprintDisabledForUser(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFingerprintDisabledForUser$2 keyguardUpdateMonitorLogger$logFingerprintDisabledForUser$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFingerprintDisabledForUser$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Fingerprint disabled by DPM for userId: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFingerprintDisabledForUser$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFingerprintError(int i, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFingerprintError$2 keyguardUpdateMonitorLogger$logFingerprintError$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFingerprintError$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Fingerprint error received: " + logMessage.getStr1() + " msgId= " + logMessage.getInt1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFingerprintError$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFingerprintLockoutReset(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFingerprintLockoutReset$2 keyguardUpdateMonitorLogger$logFingerprintLockoutReset$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFingerprintLockoutReset$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("handleFingerprintLockoutReset: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFingerprintLockoutReset$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFingerprintRunningState(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFingerprintRunningState$2 keyguardUpdateMonitorLogger$logFingerprintRunningState$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFingerprintRunningState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("fingerprintRunningState: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFingerprintRunningState$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFingerprintSuccess(int i, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFingerprintSuccess$2 keyguardUpdateMonitorLogger$logFingerprintSuccess$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFingerprintSuccess$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Fingerprint auth successful: userId: " + logMessage.getInt1() + ", isStrongBiometric: " + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFingerprintSuccess$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logFpEnrolledUpdated(int i, boolean z, boolean z2) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logFpEnrolledUpdated$2 keyguardUpdateMonitorLogger$logFpEnrolledUpdated$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logFpEnrolledUpdated$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("Fp enrolled state changed for userId: ", int1, " old: ", bool1, ", new: ");
                m.append(bool2);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logFpEnrolledUpdated$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        logBuffer.commit(obtain);
    }

    public final void logHandleBatteryUpdate(BatteryStatus batteryStatus) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logHandleBatteryUpdate$2 keyguardUpdateMonitorLogger$logHandleBatteryUpdate$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logHandleBatteryUpdate$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                int int1 = logMessage.getInt1();
                long long1 = logMessage.getLong1();
                String str1 = logMessage.getStr1();
                int int2 = logMessage.getInt2();
                long long2 = logMessage.getLong2();
                StringBuilder m = KeyguardFMMViewController$$ExternalSyntheticOutline0.m("handleBatteryUpdate: isNotNull: ", bool1, " BatteryStatus{status= ", int1, ", level=");
                m.append(long1);
                m.append(", plugged=");
                m.append(str1);
                m.append(", chargingStatus=");
                m.append(int2);
                m.append(", maxChargingWattage= ");
                m.append(long2);
                m.append("}");
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logHandleBatteryUpdate$2, null);
        if (batteryStatus != null) {
            z = true;
        } else {
            z = false;
        }
        obtain.setBool1(z);
        int i5 = -1;
        if (batteryStatus != null) {
            i = batteryStatus.status;
        } else {
            i = -1;
        }
        obtain.setInt1(i);
        if (batteryStatus != null) {
            i2 = batteryStatus.chargingStatus;
        } else {
            i2 = -1;
        }
        obtain.setInt2(i2);
        if (batteryStatus != null) {
            i3 = batteryStatus.level;
        } else {
            i3 = -1;
        }
        obtain.setLong1(i3);
        if (batteryStatus != null) {
            i4 = batteryStatus.maxChargingWattage;
        } else {
            i4 = -1;
        }
        obtain.setLong2(i4);
        if (batteryStatus != null) {
            i5 = batteryStatus.plugged;
        }
        obtain.setStr1(String.valueOf(i5));
        logBuffer.commit(obtain);
    }

    public final void logHandlerHasAuthContinueMsgs(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logHandlerHasAuthContinueMsgs$2 keyguardUpdateMonitorLogger$logHandlerHasAuthContinueMsgs$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logHandlerHasAuthContinueMsgs$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("MSG_BIOMETRIC_AUTHENTICATION_CONTINUE already queued up, ignoring updating FP listening state to ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logHandlerHasAuthContinueMsgs$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logInvalidSubId(int i) {
        LogLevel logLevel = LogLevel.INFO;
        KeyguardUpdateMonitorLogger$logInvalidSubId$2 keyguardUpdateMonitorLogger$logInvalidSubId$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logInvalidSubId$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Previously active sub id ", ((LogMessage) obj).getInt1(), " is now invalid, will remove");
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logInvalidSubId$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logKeyguardListenerModel(KeyguardListenModel keyguardListenModel) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logKeyguardListenerModel$2 keyguardUpdateMonitorLogger$logKeyguardListenerModel$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logKeyguardListenerModel$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str1 = ((LogMessage) obj).getStr1();
                Intrinsics.checkNotNull(str1);
                return str1;
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logKeyguardListenerModel$2, null);
        obtain.setStr1(String.valueOf(keyguardListenModel));
        logBuffer.commit(obtain);
    }

    public final void logKeyguardShowingChanged(boolean z, boolean z2, boolean z3) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logKeyguardShowingChanged$2 keyguardUpdateMonitorLogger$logKeyguardShowingChanged$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logKeyguardShowingChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("keyguardShowingChanged(showing=", bool1, " occluded=", bool2, " visible="), logMessage.getBool3(), ")");
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logKeyguardShowingChanged$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setBool3(z3);
        logBuffer.commit(obtain);
    }

    public final void logKeyguardStateUpdate(boolean z, boolean z2, boolean z3, boolean z4) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logKeyguardStateUpdate$2 keyguardUpdateMonitorLogger$logKeyguardStateUpdate$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logKeyguardStateUpdate$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                return KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("#update secure=", bool1, " canDismissKeyguard=", bool2, " trusted="), logMessage.getBool3(), " trustManaged=", logMessage.getBool4());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardState", logLevel, keyguardUpdateMonitorLogger$logKeyguardStateUpdate$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setBool3(z3);
        obtain.setBool4(z4);
        logBuffer.commit(obtain);
    }

    public final void logMissingSupervisorAppError(int i) {
        LogLevel logLevel = LogLevel.ERROR;
        KeyguardUpdateMonitorLogger$logMissingSupervisorAppError$2 keyguardUpdateMonitorLogger$logMissingSupervisorAppError$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logMissingSupervisorAppError$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("No Profile Owner or Device Owner supervision app found for User ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logMissingSupervisorAppError$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logPhoneStateChanged(String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logPhoneStateChanged$2 keyguardUpdateMonitorLogger$logPhoneStateChanged$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logPhoneStateChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m("handlePhoneStateChanged(", ((LogMessage) obj).getStr1(), ")");
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logPhoneStateChanged$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logPrimaryKeyguardBouncerChanged(boolean z, boolean z2) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logPrimaryKeyguardBouncerChanged$2 keyguardUpdateMonitorLogger$logPrimaryKeyguardBouncerChanged$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logPrimaryKeyguardBouncerChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "handlePrimaryBouncerChanged primaryBouncerIsOrWillBeShowing=" + logMessage.getBool1() + " primaryBouncerFullyShown=" + logMessage.getBool2();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logPrimaryKeyguardBouncerChanged$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        logBuffer.commit(obtain);
    }

    public final void logRegisterCallback(KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logRegisterCallback$2 keyguardUpdateMonitorLogger$logRegisterCallback$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logRegisterCallback$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("*** register callback for ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logRegisterCallback$2, null);
        obtain.setStr1(String.valueOf(keyguardUpdateMonitorCallback));
        logBuffer.commit(obtain);
    }

    public final void logReportSuccessfulBiometricUnlock(int i, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logReportSuccessfulBiometricUnlock$2 keyguardUpdateMonitorLogger$logReportSuccessfulBiometricUnlock$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logReportSuccessfulBiometricUnlock$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "reporting successful biometric unlock: isStrongBiometric: " + logMessage.getBool1() + ", userId: " + logMessage.getInt1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logReportSuccessfulBiometricUnlock$2, null);
        obtain.setBool1(z);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logRetryAfterFpErrorWithDelay(int i, int i2, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logRetryAfterFpErrorWithDelay$2 keyguardUpdateMonitorLogger$logRetryAfterFpErrorWithDelay$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logRetryAfterFpErrorWithDelay$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int2 = logMessage.getInt2();
                int int1 = logMessage.getInt1();
                String str1 = logMessage.getStr1();
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("Fingerprint scheduling retry auth after ", int2, " ms due to(", int1, ") -> ");
                m.append(str1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logRetryAfterFpErrorWithDelay$2, null);
        obtain.setInt1(i);
        obtain.setInt2(i2);
        obtain.setStr1(String.valueOf(str));
        logBuffer.commit(obtain);
    }

    public final void logRetryAfterFpHwUnavailable(int i) {
        LogLevel logLevel = LogLevel.WARNING;
        KeyguardUpdateMonitorLogger$logRetryAfterFpHwUnavailable$2 keyguardUpdateMonitorLogger$logRetryAfterFpHwUnavailable$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logRetryAfterFpHwUnavailable$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Retrying fingerprint attempt: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logRetryAfterFpHwUnavailable$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logRetryingAfterFaceHwUnavailable(int i) {
        LogLevel logLevel = LogLevel.WARNING;
        KeyguardUpdateMonitorLogger$logRetryingAfterFaceHwUnavailable$2 keyguardUpdateMonitorLogger$logRetryingAfterFaceHwUnavailable$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logRetryingAfterFaceHwUnavailable$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Retrying face after HW unavailable, attempt ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logRetryingAfterFaceHwUnavailable$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logSendPrimaryBouncerChanged(boolean z, boolean z2) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logSendPrimaryBouncerChanged$2 keyguardUpdateMonitorLogger$logSendPrimaryBouncerChanged$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logSendPrimaryBouncerChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "sendPrimaryBouncerChanged primaryBouncerIsOrWillBeShowing=" + logMessage.getBool1() + " primaryBouncerFullyShown=" + logMessage.getBool2();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logSendPrimaryBouncerChanged$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        logBuffer.commit(obtain);
    }

    public final void logServiceProvidersUpdated(Intent intent) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logServiceProvidersUpdated$2 keyguardUpdateMonitorLogger$logServiceProvidersUpdated$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logServiceProvidersUpdated$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                int int2 = logMessage.getInt2();
                return FragmentTransaction$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("action SERVICE_PROVIDERS_UPDATED subId=", int1, " phoneId=", int2, " spn="), logMessage.getStr1(), " plmn=", logMessage.getStr2());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logServiceProvidersUpdated$2, null);
        obtain.setInt1(intent.getIntExtra("android.telephony.extra.SUBSCRIPTION_INDEX", -1));
        obtain.setInt2(intent.getIntExtra("phone", 0));
        obtain.setStr1(intent.getStringExtra("android.telephony.extra.SPN"));
        obtain.setStr2(intent.getStringExtra("android.telephony.extra.PLMN"));
        logBuffer.commit(obtain);
    }

    public final void logServiceStateChange(int i, ServiceState serviceState) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logServiceStateChange$2 keyguardUpdateMonitorLogger$logServiceStateChange$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logServiceStateChange$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "handleServiceStateChange(subId=" + logMessage.getInt1() + ", serviceState=" + logMessage.getStr1() + ")";
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logServiceStateChange$2, null);
        obtain.setInt1(i);
        obtain.setStr1(String.valueOf(serviceState));
        logBuffer.commit(obtain);
    }

    public final void logServiceStateIntent(String str, ServiceState serviceState, int i) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logServiceStateIntent$2 keyguardUpdateMonitorLogger$logServiceStateIntent$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logServiceStateIntent$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str2 = logMessage.getStr2();
                int int1 = logMessage.getInt1();
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("action ", str1, " serviceState=", str2, " subId=");
                m.append(int1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logServiceStateIntent$2, null);
        obtain.setStr1(str);
        obtain.setStr2(String.valueOf(serviceState));
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logSimState(int i, int i2, int i3) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logSimState$2 keyguardUpdateMonitorLogger$logSimState$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logSimState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                int int2 = logMessage.getInt2();
                long long1 = logMessage.getLong1();
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("handleSimStateChange(subId=", int1, ", slotId=", int2, ", state=");
                m.append(long1);
                m.append(")");
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logSimState$2, null);
        obtain.setInt1(i);
        obtain.setInt2(i2);
        obtain.setLong1(i3);
        logBuffer.commit(obtain);
    }

    public final void logSimStateFromIntent(int i, int i2, String str, String str2) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logSimStateFromIntent$2 keyguardUpdateMonitorLogger$logSimStateFromIntent$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logSimStateFromIntent$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str22 = logMessage.getStr2();
                int int1 = logMessage.getInt1();
                int int2 = logMessage.getInt2();
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("action ", str1, " state: ", str22, " slotId: ");
                m.append(int1);
                m.append(" subid: ");
                m.append(int2);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logSimStateFromIntent$2, null);
        obtain.setStr1(str);
        obtain.setStr2(str2);
        obtain.setInt1(i);
        obtain.setInt2(i2);
        logBuffer.commit(obtain);
    }

    public final void logSimUnlocked(int i) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logSimUnlocked$2 keyguardUpdateMonitorLogger$logSimUnlocked$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logSimUnlocked$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("reportSimUnlocked(subId=", ((LogMessage) obj).getInt1(), ")");
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logSimUnlocked$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logSkipUpdateFaceListeningOnWakeup(int i) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logSkipUpdateFaceListeningOnWakeup$2 keyguardUpdateMonitorLogger$logSkipUpdateFaceListeningOnWakeup$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logSkipUpdateFaceListeningOnWakeup$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("Skip updating face listening state on wakeup from ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logSkipUpdateFaceListeningOnWakeup$2, null);
        obtain.setStr1(PowerManager.wakeReasonToString(i));
        logBuffer.commit(obtain);
    }

    public final void logStartedListeningForFace(int i, FaceAuthUiEvent faceAuthUiEvent) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logStartedListeningForFace$2 keyguardUpdateMonitorLogger$logStartedListeningForFace$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logStartedListeningForFace$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                String str1 = logMessage.getStr1();
                String str2 = logMessage.getStr2();
                StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("startListeningForFace(): ", int1, ", reason: ", str1, " ");
                m.append(str2);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logStartedListeningForFace$2, null);
        obtain.setInt1(i);
        obtain.setStr1(faceAuthUiEvent.getReason());
        obtain.setStr2(faceAuthUiEvent.extraInfoToString());
        logBuffer.commit(obtain);
    }

    public final void logStoppedListeningForFace(int i, String str) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logStoppedListeningForFace$2 keyguardUpdateMonitorLogger$logStoppedListeningForFace$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logStoppedListeningForFace$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "stopListeningForFace(): currentFaceRunningState: " + logMessage.getInt1() + ", reason: " + logMessage.getStr1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logStoppedListeningForFace$2, null);
        obtain.setInt1(i);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logSubInfo(SubscriptionInfo subscriptionInfo) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logSubInfo$2 keyguardUpdateMonitorLogger$logSubInfo$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logSubInfo$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("SubInfo:", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logSubInfo$2, null);
        obtain.setStr1(String.valueOf(subscriptionInfo));
        logBuffer.commit(obtain);
    }

    public final void logTaskStackChangedForAssistant(boolean z) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logTaskStackChangedForAssistant$2 keyguardUpdateMonitorLogger$logTaskStackChangedForAssistant$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logTaskStackChangedForAssistant$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("TaskStackChanged for ACTIVITY_TYPE_ASSISTANT, assistant visible: ", ((LogMessage) obj).getBool1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logTaskStackChangedForAssistant$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logTimeFormatChanged(String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logTimeFormatChanged$2 keyguardUpdateMonitorLogger$logTimeFormatChanged$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logTimeFormatChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("handleTimeFormatUpdate timeFormat=", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logTimeFormatChanged$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logTrustChanged(int i, boolean z, boolean z2) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logTrustChanged$2 keyguardUpdateMonitorLogger$logTrustChanged$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logTrustChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("onTrustChanged[user=", int1, "] wasTrusted=", bool1, " isNowTrusted=");
                m.append(bool2);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logTrustChanged$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logTrustGrantedWithFlags(boolean z, String str, int i, int i2) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logTrustGrantedWithFlags$2 keyguardUpdateMonitorLogger$logTrustGrantedWithFlags$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logTrustGrantedWithFlags$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int2 = logMessage.getInt2();
                boolean bool1 = logMessage.getBool1();
                TrustGrantFlags trustGrantFlags = new TrustGrantFlags(logMessage.getInt1());
                String str1 = logMessage.getStr1();
                StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("trustGrantedWithFlags[user=", int2, "] newlyUnlocked=", bool1, " flags=");
                m.append(trustGrantFlags);
                m.append(" message=");
                m.append(str1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logTrustGrantedWithFlags$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        obtain.setInt2(i2);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logTrustUsuallyManagedUpdated(int i, final String str, boolean z, boolean z2) {
        LogLevel logLevel = LogLevel.DEBUG;
        Function1 function1 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logTrustUsuallyManagedUpdated$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                String str2 = str;
                StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("trustUsuallyManaged changed for userId: ", int1, " old: ", bool1, ", new: ");
                m.append(bool2);
                m.append(" context: ");
                m.append(str2);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, function1, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logUdfpsPointerDown(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logUdfpsPointerDown$2 keyguardUpdateMonitorLogger$logUdfpsPointerDown$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logUdfpsPointerDown$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onUdfpsPointerDown, sensorId: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logUdfpsPointerDown$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logUdfpsPointerUp(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logUdfpsPointerUp$2 keyguardUpdateMonitorLogger$logUdfpsPointerUp$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logUdfpsPointerUp$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onUdfpsPointerUp, sensorId: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logUdfpsPointerUp$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logUnexpectedFaceCancellationSignalState(int i, boolean z) {
        LogLevel logLevel = LogLevel.ERROR;
        KeyguardUpdateMonitorLogger$logUnexpectedFaceCancellationSignalState$2 keyguardUpdateMonitorLogger$logUnexpectedFaceCancellationSignalState$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logUnexpectedFaceCancellationSignalState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Cancellation signal is not null, high chance of bug in face auth lifecycle management. Face state: " + logMessage.getInt1() + ", unlockPossible: " + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logUnexpectedFaceCancellationSignalState$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logUnexpectedFpCancellationSignalState(int i, boolean z) {
        LogLevel logLevel = LogLevel.ERROR;
        KeyguardUpdateMonitorLogger$logUnexpectedFpCancellationSignalState$2 keyguardUpdateMonitorLogger$logUnexpectedFpCancellationSignalState$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logUnexpectedFpCancellationSignalState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Cancellation signal is not null, high chance of bug in fp auth lifecycle management. FP state: " + logMessage.getInt1() + ", unlockPossible: " + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logUnexpectedFpCancellationSignalState$2, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logUnregisterCallback(KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback) {
        LogLevel logLevel = LogLevel.VERBOSE;
        KeyguardUpdateMonitorLogger$logUnregisterCallback$2 keyguardUpdateMonitorLogger$logUnregisterCallback$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logUnregisterCallback$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("*** unregister callback for ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("KeyguardUpdateMonitorLog", logLevel, keyguardUpdateMonitorLogger$logUnregisterCallback$2, null);
        obtain.setStr1(String.valueOf(keyguardUpdateMonitorCallback));
        logBuffer.commit(obtain);
    }

    public final void logUserRequestedUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin activeUnlockRequestOrigin, String str, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        KeyguardUpdateMonitorLogger$logUserRequestedUnlock$2 keyguardUpdateMonitorLogger$logUserRequestedUnlock$2 = new Function1() { // from class: com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logUserRequestedUnlock$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str2 = logMessage.getStr2();
                boolean bool1 = logMessage.getBool1();
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("reportUserRequestedUnlock origin=", str1, " reason=", str2, " dismissKeyguard=");
                m.append(bool1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("ActiveUnlock", logLevel, keyguardUpdateMonitorLogger$logUserRequestedUnlock$2, null);
        obtain.setStr1(activeUnlockRequestOrigin.name());
        obtain.setStr2(str);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void v(String str) {
        log(str, LogLevel.VERBOSE);
    }
}
