package com.android.systemui.statusbar.notification.interruption;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.notification.NotificationUtilsKt;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationInterruptLogger {
    public final LogBuffer buffer;

    public NotificationInterruptLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void logMaybeHeadsUpDespiteOldWhen(NotificationEntry notificationEntry, long j, long j2, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        NotificationInterruptLogger$logMaybeHeadsUpDespiteOldWhen$2 notificationInterruptLogger$logMaybeHeadsUpDespiteOldWhen$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logMaybeHeadsUpDespiteOldWhen$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                long long1 = logMessage.getLong1();
                long long2 = logMessage.getLong2();
                String str2 = logMessage.getStr2();
                String str1 = logMessage.getStr1();
                StringBuilder m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m("Maybe heads up: old when ", long1, " (age=");
                m.append(long2);
                m.append(" ms) but ");
                m.append(str2);
                return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m, ": ", str1);
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("InterruptionStateProvider", logLevel, notificationInterruptLogger$logMaybeHeadsUpDespiteOldWhen$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setStr2(str);
        obtain.setLong1(j);
        obtain.setLong2(j2);
        logBuffer.commit(obtain);
    }

    public final void logNoAlertingSuppressedBy(NotificationEntry notificationEntry, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        NotificationInterruptLogger$logNoAlertingSuppressedBy$2 notificationInterruptLogger$logNoAlertingSuppressedBy$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoAlertingSuppressedBy$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "No alerting: aborted by suppressor: " + logMessage.getStr2() + " awake=" + logMessage.getBool1() + " sbnKey=" + logMessage.getStr1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("InterruptionStateProvider", logLevel, notificationInterruptLogger$logNoAlertingSuppressedBy$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setStr2("StatusBarNotificationPresenter");
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logNoFullscreenWarning(NotificationEntry notificationEntry, String str) {
        LogLevel logLevel = LogLevel.WARNING;
        NotificationInterruptLogger$logNoFullscreenWarning$2 notificationInterruptLogger$logNoFullscreenWarning$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoFullscreenWarning$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("No FullScreenIntent: WARNING: ", logMessage.getStr2(), ": ", logMessage.getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("InterruptionStateProvider", logLevel, notificationInterruptLogger$logNoFullscreenWarning$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setStr2(str);
        logBuffer.commit(obtain);
    }
}
