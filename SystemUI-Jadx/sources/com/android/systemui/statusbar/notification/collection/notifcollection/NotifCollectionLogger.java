package com.android.systemui.statusbar.notification.collection.notifcollection;

import android.os.RemoteException;
import android.service.notification.StatusBarNotification;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.CarrierTextManagerLogger$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.notification.NotificationClicker$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.NotificationUtilsKt;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifCollectionLogger {
    public final LogBuffer buffer;

    public NotifCollectionLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void logAlreadyDismissedNotification(String str) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logAlreadyDismissedNotification$2 notifCollectionLogger$logAlreadyDismissedNotification$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logAlreadyDismissedNotification$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("MAYBE ALREADY_REMOVED_ENTRY but new posted: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logAlreadyDismissedNotification$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logCanceledNotification(String str) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logCanceledNotification$2 notifCollectionLogger$logCanceledNotification$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logCanceledNotification$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("ENTER CANCELED_ENTRY: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logCanceledNotification$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logChildDismissed(NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.DEBUG;
        NotifCollectionLogger$logChildDismissed$2 notifCollectionLogger$logChildDismissed$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logChildDismissed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("CHILD DISMISSED (inferred): ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logChildDismissed$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
    }

    public final void logDismissAll(int i) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logDismissAll$2 notifCollectionLogger$logDismissAll$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logDismissAll$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("DISMISS ALL notifications for user ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logDismissAll$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logDismissOnAlreadyCanceledEntry(NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.DEBUG;
        NotifCollectionLogger$logDismissOnAlreadyCanceledEntry$2 notifCollectionLogger$logDismissOnAlreadyCanceledEntry$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logDismissOnAlreadyCanceledEntry$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m("Dismiss on ", ((LogMessage) obj).getStr1(), ", which was already canceled. Trying to remove...");
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logDismissOnAlreadyCanceledEntry$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
    }

    public final void logEntryBeingExtendedNotInCollection(NotificationEntry notificationEntry, NotifLifetimeExtender notifLifetimeExtender, String str) {
        LogLevel logLevel = LogLevel.WARNING;
        NotifCollectionLogger$logEntryBeingExtendedNotInCollection$2 notifCollectionLogger$logEntryBeingExtendedNotInCollection$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logEntryBeingExtendedNotInCollection$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str2 = logMessage.getStr2();
                String str1 = logMessage.getStr1();
                String str3 = logMessage.getStr3();
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("While ending lifetime extension by ", str2, " of ", str1, ", entry in collection is ");
                m.append(str3);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logEntryBeingExtendedNotInCollection$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setStr2(notifLifetimeExtender.getName());
        obtain.setStr3(str);
        logBuffer.commit(obtain);
    }

    public final void logFutureDismissalAlreadyCancelledByServer(NotifCollection.FutureDismissal futureDismissal) {
        LogLevel logLevel = LogLevel.DEBUG;
        NotifCollectionLogger$logFutureDismissalAlreadyCancelledByServer$2 notifCollectionLogger$logFutureDismissalAlreadyCancelledByServer$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logFutureDismissalAlreadyCancelledByServer$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("Ignoring: entry already cancelled by server: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logFutureDismissalAlreadyCancelledByServer$2, null);
        obtain.setStr1(futureDismissal.mLabel);
        logBuffer.commit(obtain);
    }

    public final void logFutureDismissalDismissing(NotifCollection.FutureDismissal futureDismissal, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        NotifCollectionLogger$logFutureDismissalDismissing$2 notifCollectionLogger$logFutureDismissalDismissing$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logFutureDismissalDismissing$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("Dismissing ", logMessage.getStr2(), " for: ", logMessage.getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logFutureDismissalDismissing$2, null);
        CarrierTextManagerLogger$$ExternalSyntheticOutline0.m(obtain, futureDismissal.mLabel, str, logBuffer, obtain);
    }

    public final void logFutureDismissalDoubleCancelledByServer(NotifCollection.FutureDismissal futureDismissal) {
        LogLevel logLevel = LogLevel.WARNING;
        NotifCollectionLogger$logFutureDismissalDoubleCancelledByServer$2 notifCollectionLogger$logFutureDismissalDoubleCancelledByServer$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logFutureDismissalDoubleCancelledByServer$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("System server double cancelled: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logFutureDismissalDoubleCancelledByServer$2, null);
        obtain.setStr1(futureDismissal.mLabel);
        logBuffer.commit(obtain);
    }

    public final void logFutureDismissalDoubleRun(NotifCollection.FutureDismissal futureDismissal) {
        LogLevel logLevel = LogLevel.WARNING;
        NotifCollectionLogger$logFutureDismissalDoubleRun$2 notifCollectionLogger$logFutureDismissalDoubleRun$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logFutureDismissalDoubleRun$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("Double run: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logFutureDismissalDoubleRun$2, null);
        obtain.setStr1(futureDismissal.mLabel);
        logBuffer.commit(obtain);
    }

    public final void logFutureDismissalGotSystemServerCancel(NotifCollection.FutureDismissal futureDismissal, int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        NotifCollectionLogger$logFutureDismissalGotSystemServerCancel$2 notifCollectionLogger$logFutureDismissalGotSystemServerCancel$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logFutureDismissalGotSystemServerCancel$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("SystemServer cancelled: ", logMessage.getStr1(), " reason=", NotifCollectionLoggerKt.cancellationReasonDebugString(logMessage.getInt1()));
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logFutureDismissalGotSystemServerCancel$2, null);
        obtain.setStr1(futureDismissal.mLabel);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logFutureDismissalMismatchedEntry(NotifCollection.FutureDismissal futureDismissal, String str, NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.WARNING;
        NotifCollectionLogger$logFutureDismissalMismatchedEntry$2 notifCollectionLogger$logFutureDismissalMismatchedEntry$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logFutureDismissalMismatchedEntry$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str2 = logMessage.getStr2();
                String str3 = logMessage.getStr3();
                String str1 = logMessage.getStr1();
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Mismatch: current ", str2, " is ", str3, " for: ");
                m.append(str1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logFutureDismissalMismatchedEntry$2, null);
        obtain.setStr1(futureDismissal.mLabel);
        obtain.setStr2(str);
        obtain.setStr3(NotificationUtilsKt.getLogKey(notificationEntry));
        logBuffer.commit(obtain);
    }

    public final void logFutureDismissalRegistered(NotifCollection.FutureDismissal futureDismissal) {
        LogLevel logLevel = LogLevel.DEBUG;
        NotifCollectionLogger$logFutureDismissalRegistered$2 notifCollectionLogger$logFutureDismissalRegistered$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logFutureDismissalRegistered$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("Registered: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logFutureDismissalRegistered$2, null);
        obtain.setStr1(futureDismissal.mLabel);
        logBuffer.commit(obtain);
    }

    public final void logFutureDismissalReused(NotifCollection.FutureDismissal futureDismissal) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logFutureDismissalReused$2 notifCollectionLogger$logFutureDismissalReused$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logFutureDismissalReused$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("Reusing existing registration: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logFutureDismissalReused$2, null);
        obtain.setStr1(futureDismissal.mLabel);
        logBuffer.commit(obtain);
    }

    public final void logLifetimeExtended(NotificationEntry notificationEntry, NotifLifetimeExtender notifLifetimeExtender) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logLifetimeExtended$2 notifCollectionLogger$logLifetimeExtended$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logLifetimeExtended$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("LIFETIME EXTENDED: ", logMessage.getStr1(), " by ", logMessage.getStr2());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logLifetimeExtended$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setStr2(notifLifetimeExtender.getName());
        logBuffer.commit(obtain);
    }

    public final void logLifetimeExtensionEnded(NotificationEntry notificationEntry, NotifLifetimeExtender notifLifetimeExtender, int i) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logLifetimeExtensionEnded$2 notifCollectionLogger$logLifetimeExtensionEnded$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logLifetimeExtensionEnded$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str2 = logMessage.getStr2();
                return ConstraintWidget$$ExternalSyntheticOutline0.m(KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("LIFETIME EXTENSION ENDED for ", str1, " by '", str2, "'; "), logMessage.getInt1(), " remaining extensions");
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logLifetimeExtensionEnded$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setStr2(notifLifetimeExtender.getName());
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logNoNotificationToRemoveWithKey(StatusBarNotification statusBarNotification, int i) {
        String key;
        LogLevel logLevel = LogLevel.ERROR;
        NotifCollectionLogger$logNoNotificationToRemoveWithKey$2 notifCollectionLogger$logNoNotificationToRemoveWithKey$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNoNotificationToRemoveWithKey$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("No notification to remove with key ", logMessage.getStr1(), " reason=", NotifCollectionLoggerKt.cancellationReasonDebugString(logMessage.getInt1()));
            }
        };
        LogBuffer logBuffer = this.buffer;
        String str = null;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNoNotificationToRemoveWithKey$2, null);
        if (statusBarNotification != null && (key = statusBarNotification.getKey()) != null) {
            str = NotificationUtils.logKey(key);
        }
        obtain.setStr1(str);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logNonExistentNotifDismissed(NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNonExistentNotifDismissed$2 notifCollectionLogger$logNonExistentNotifDismissed$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNonExistentNotifDismissed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("DISMISSED Non Existent ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNonExistentNotifDismissed$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
    }

    public final void logNotifClearAllDismissalIntercepted(NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifClearAllDismissalIntercepted$2 notifCollectionLogger$logNotifClearAllDismissalIntercepted$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifClearAllDismissalIntercepted$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("CLEAR ALL DISMISSAL INTERCEPTED ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifClearAllDismissalIntercepted$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
    }

    public final void logNotifDismissState(String str) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifDismissState$2 notifCollectionLogger$logNotifDismissState$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifDismissState$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("ALREADY DISMISS STATE ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifDismissState$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logNotifDismissed(NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifDismissed$2 notifCollectionLogger$logNotifDismissed$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifDismissed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("DISMISSED ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifDismissed$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
    }

    public final void logNotifDismissedIntercepted(NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifDismissedIntercepted$2 notifCollectionLogger$logNotifDismissedIntercepted$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifDismissedIntercepted$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("DISMISS INTERCEPTED ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifDismissedIntercepted$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
    }

    public final void logNotifGroupPosted(int i, String str) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifGroupPosted$2 notifCollectionLogger$logNotifGroupPosted$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifGroupPosted$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "POSTED GROUP " + logMessage.getStr1() + " (" + logMessage.getInt1() + " events)";
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifGroupPosted$2, null);
        obtain.setStr1(NotificationUtils.logKey(str));
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logNotifInternalUpdate(NotificationEntry notificationEntry, String str, String str2) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifInternalUpdate$2 notifCollectionLogger$logNotifInternalUpdate$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifInternalUpdate$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str22 = logMessage.getStr2();
                String str3 = logMessage.getStr3();
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("UPDATED INTERNALLY ", str1, " BY ", str22, " BECAUSE ");
                m.append(str3);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifInternalUpdate$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setStr2(str);
        obtain.setStr3(str2);
        logBuffer.commit(obtain);
    }

    public final void logNotifInternalUpdateFailed(StatusBarNotification statusBarNotification, String str, String str2) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifInternalUpdateFailed$2 notifCollectionLogger$logNotifInternalUpdateFailed$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifInternalUpdateFailed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str22 = logMessage.getStr2();
                String str3 = logMessage.getStr3();
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("FAILED INTERNAL UPDATE ", str1, " BY ", str22, " BECAUSE ");
                m.append(str3);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        String str3 = null;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifInternalUpdateFailed$2, null);
        String key = statusBarNotification.getKey();
        if (key != null) {
            str3 = NotificationUtils.logKey(key);
        }
        obtain.setStr1(str3);
        obtain.setStr2(str);
        obtain.setStr3(str2);
        logBuffer.commit(obtain);
    }

    public final void logNotifPosted(NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifPosted$2 notifCollectionLogger$logNotifPosted$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifPosted$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("POSTED ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifPosted$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
    }

    public final void logNotifReleased(NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifReleased$2 notifCollectionLogger$logNotifReleased$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifReleased$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("RELEASED ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifReleased$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
    }

    public final void logNotifRemoved(StatusBarNotification statusBarNotification, int i) {
        String key;
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifRemoved$2 notifCollectionLogger$logNotifRemoved$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifRemoved$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("REMOVED ", logMessage.getStr1(), " reason=", NotifCollectionLoggerKt.cancellationReasonDebugString(logMessage.getInt1()));
            }
        };
        LogBuffer logBuffer = this.buffer;
        String str = null;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifRemoved$2, null);
        if (statusBarNotification != null && (key = statusBarNotification.getKey()) != null) {
            str = NotificationUtils.logKey(key);
        }
        obtain.setStr1(str);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logNotifUpdated(NotificationEntry notificationEntry) {
        LogLevel logLevel = LogLevel.INFO;
        NotifCollectionLogger$logNotifUpdated$2 notifCollectionLogger$logNotifUpdated$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logNotifUpdated$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("UPDATED ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logNotifUpdated$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
    }

    public final void logRemoteExceptionOnClearAllNotifications(RemoteException remoteException) {
        LogLevel logLevel = LogLevel.WTF;
        NotifCollectionLogger$logRemoteExceptionOnClearAllNotifications$2 notifCollectionLogger$logRemoteExceptionOnClearAllNotifications$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logRemoteExceptionOnClearAllNotifications$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("RemoteException while attempting to clear all notifications:\n", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logRemoteExceptionOnClearAllNotifications$2, null);
        obtain.setStr1(remoteException.toString());
        logBuffer.commit(obtain);
    }

    public final void logRemoteExceptionOnNotificationClear(NotificationEntry notificationEntry, RemoteException remoteException) {
        LogLevel logLevel = LogLevel.WTF;
        NotifCollectionLogger$logRemoteExceptionOnNotificationClear$2 notifCollectionLogger$logRemoteExceptionOnNotificationClear$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger$logRemoteExceptionOnNotificationClear$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("RemoteException while attempting to clear ", logMessage.getStr1(), ":\n", logMessage.getStr2());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("NotifCollection", logLevel, notifCollectionLogger$logRemoteExceptionOnNotificationClear$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setStr2(remoteException.toString());
        logBuffer.commit(obtain);
    }
}
