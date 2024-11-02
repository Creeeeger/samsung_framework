package com.android.keyguard.logging;

import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.shared.model.ActiveUnlockModel;
import com.android.systemui.keyguard.shared.model.TrustManagedModel;
import com.android.systemui.keyguard.shared.model.TrustModel;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TrustRepositoryLogger {
    public final LogBuffer logBuffer;

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

    public TrustRepositoryLogger(LogBuffer logBuffer) {
        this.logBuffer = logBuffer;
    }

    public final void activeUnlockModelEmitted(ActiveUnlockModel activeUnlockModel) {
        LogLevel logLevel = LogLevel.DEBUG;
        TrustRepositoryLogger$activeUnlockModelEmitted$2 trustRepositoryLogger$activeUnlockModelEmitted$2 = new Function1() { // from class: com.android.keyguard.logging.TrustRepositoryLogger$activeUnlockModelEmitted$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "activeUnlockModel emitted: userId: " + logMessage.getInt1() + " isRunning: " + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("TrustRepositoryLog", logLevel, trustRepositoryLogger$activeUnlockModelEmitted$2, null);
        obtain.setInt1(activeUnlockModel.userId);
        obtain.setBool1(activeUnlockModel.isRunning);
        logBuffer.commit(obtain);
    }

    public final void isCurrentUserActiveUnlockRunning(boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        TrustRepositoryLogger$isCurrentUserActiveUnlockRunning$2 trustRepositoryLogger$isCurrentUserActiveUnlockRunning$2 = new Function1() { // from class: com.android.keyguard.logging.TrustRepositoryLogger$isCurrentUserActiveUnlockRunning$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("isCurrentUserActiveUnlockRunning emitted: ", ((LogMessage) obj).getBool1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("TrustRepositoryLog", logLevel, trustRepositoryLogger$isCurrentUserActiveUnlockRunning$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void isCurrentUserTrustManaged(boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        TrustRepositoryLogger$isCurrentUserTrustManaged$2 trustRepositoryLogger$isCurrentUserTrustManaged$2 = new Function1() { // from class: com.android.keyguard.logging.TrustRepositoryLogger$isCurrentUserTrustManaged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("isTrustManaged emitted: ", ((LogMessage) obj).getBool1());
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("TrustRepositoryLog", logLevel, trustRepositoryLogger$isCurrentUserTrustManaged$2, null);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void onTrustChanged(boolean z, boolean z2, int i, int i2, List list) {
        LogLevel logLevel = LogLevel.DEBUG;
        TrustRepositoryLogger$onTrustChanged$2 trustRepositoryLogger$onTrustChanged$2 = new Function1() { // from class: com.android.keyguard.logging.TrustRepositoryLogger$onTrustChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                int int1 = logMessage.getInt1();
                int int2 = logMessage.getInt2();
                String str1 = logMessage.getStr1();
                StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("onTrustChanged enabled: ", bool1, ", newlyUnlocked: ", bool2, ", userId: ");
                AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, int1, ", flags: ", int2, ", grantMessages: ");
                m.append(str1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        String str = null;
        LogMessage obtain = logBuffer.obtain("TrustRepositoryLog", logLevel, trustRepositoryLogger$onTrustChanged$2, null);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        obtain.setInt1(i);
        obtain.setInt2(i2);
        if (list != null) {
            str = CollectionsKt___CollectionsKt.joinToString$default(list, null, null, null, null, 63);
        }
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void onTrustManagedChanged(boolean z, int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        TrustRepositoryLogger$onTrustManagedChanged$2 trustRepositoryLogger$onTrustManagedChanged$2 = new Function1() { // from class: com.android.keyguard.logging.TrustRepositoryLogger$onTrustManagedChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "onTrustManagedChanged isTrustManaged: " + logMessage.getBool1() + " for user: " + logMessage.getInt1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("TrustRepositoryLog", logLevel, trustRepositoryLogger$onTrustManagedChanged$2, null);
        obtain.setBool1(z);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void trustManagedModelEmitted(TrustManagedModel trustManagedModel) {
        LogLevel logLevel = LogLevel.DEBUG;
        TrustRepositoryLogger$trustManagedModelEmitted$2 trustRepositoryLogger$trustManagedModelEmitted$2 = new Function1() { // from class: com.android.keyguard.logging.TrustRepositoryLogger$trustManagedModelEmitted$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "trustManagedModel emitted: userId: " + logMessage.getInt1() + ", isTrustManaged: " + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("TrustRepositoryLog", logLevel, trustRepositoryLogger$trustManagedModelEmitted$2, null);
        obtain.setBool1(trustManagedModel.isTrustManaged);
        obtain.setInt1(trustManagedModel.userId);
        logBuffer.commit(obtain);
    }

    public final void trustModelEmitted(TrustModel trustModel) {
        LogLevel logLevel = LogLevel.DEBUG;
        TrustRepositoryLogger$trustModelEmitted$2 trustRepositoryLogger$trustModelEmitted$2 = new Function1() { // from class: com.android.keyguard.logging.TrustRepositoryLogger$trustModelEmitted$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "trustModel emitted: userId: " + logMessage.getInt1() + " isTrusted: " + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.logBuffer;
        LogMessage obtain = logBuffer.obtain("TrustRepositoryLog", logLevel, trustRepositoryLogger$trustModelEmitted$2, null);
        obtain.setInt1(trustModel.userId);
        obtain.setBool1(trustModel.isTrusted);
        logBuffer.commit(obtain);
    }
}
