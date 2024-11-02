package com.android.systemui.statusbar.notification.interruption;

import android.app.Notification;
import android.service.notification.StatusBarNotification;
import android.util.EventLog;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.notification.NotificationUtilsKt;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderImpl;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationInterruptStateProviderWrapper implements VisualInterruptionDecisionProvider {
    public final NotificationInterruptStateProvider wrapped;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum DecisionImpl {
        SHOULD_INTERRUPT(true),
        SHOULD_NOT_INTERRUPT(false);

        public static final Companion Companion = new Companion(null);
        private final String logReason = "unknown";
        private final boolean shouldInterrupt;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        DecisionImpl(boolean z) {
            this.shouldInterrupt = z;
        }

        public final String getLogReason() {
            return this.logReason;
        }

        public final boolean getShouldInterrupt() {
            return this.shouldInterrupt;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FullScreenIntentDecisionImpl {
        public final String logReason;
        public final NotificationInterruptStateProvider.FullScreenIntentDecision originalDecision;
        public final NotificationEntry originalEntry;
        public final boolean shouldInterrupt;
        public final boolean wouldInterruptWithoutDnd;

        public FullScreenIntentDecisionImpl(NotificationEntry notificationEntry, NotificationInterruptStateProvider.FullScreenIntentDecision fullScreenIntentDecision) {
            boolean z;
            this.originalEntry = notificationEntry;
            this.originalDecision = fullScreenIntentDecision;
            this.shouldInterrupt = fullScreenIntentDecision.shouldLaunch;
            if (fullScreenIntentDecision == NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_SUPPRESSED_ONLY_BY_DND) {
                z = true;
            } else {
                z = false;
            }
            this.wouldInterruptWithoutDnd = z;
            this.logReason = fullScreenIntentDecision.name();
        }
    }

    public NotificationInterruptStateProviderWrapper(NotificationInterruptStateProvider notificationInterruptStateProvider) {
        this.wrapped = notificationInterruptStateProvider;
    }

    public final void logFullScreenIntentDecision(FullScreenIntentDecisionImpl fullScreenIntentDecisionImpl) {
        NotificationInterruptStateProviderImpl notificationInterruptStateProviderImpl = (NotificationInterruptStateProviderImpl) this.wrapped;
        notificationInterruptStateProviderImpl.getClass();
        NotificationEntry notificationEntry = fullScreenIntentDecisionImpl.originalEntry;
        int uid = notificationEntry.mSbn.getUid();
        String packageName = notificationEntry.mSbn.getPackageName();
        int[] iArr = NotificationInterruptStateProviderImpl.AnonymousClass2.$SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision;
        NotificationInterruptStateProvider.FullScreenIntentDecision fullScreenIntentDecision = fullScreenIntentDecisionImpl.originalDecision;
        int i = iArr[fullScreenIntentDecision.ordinal()];
        if (i != 1) {
            UiEventLogger uiEventLogger = notificationInterruptStateProviderImpl.mUiEventLogger;
            NotificationInterruptLogger notificationInterruptLogger = notificationInterruptStateProviderImpl.mLogger;
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (fullScreenIntentDecision.shouldLaunch) {
                            String name = fullScreenIntentDecision.name();
                            notificationInterruptLogger.getClass();
                            LogLevel logLevel = LogLevel.DEBUG;
                            NotificationInterruptLogger$logFullscreen$2 notificationInterruptLogger$logFullscreen$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logFullscreen$2
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    LogMessage logMessage = (LogMessage) obj;
                                    return FontProvider$$ExternalSyntheticOutline0.m("FullScreenIntent: ", logMessage.getStr2(), ": ", logMessage.getStr1());
                                }
                            };
                            LogBuffer logBuffer = notificationInterruptLogger.buffer;
                            LogMessage obtain = logBuffer.obtain("InterruptionStateProvider", logLevel, notificationInterruptLogger$logFullscreen$2, null);
                            obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
                            obtain.setStr2(name);
                            logBuffer.commit(obtain);
                            return;
                        }
                        String name2 = fullScreenIntentDecision.name();
                        notificationInterruptLogger.getClass();
                        LogLevel logLevel2 = LogLevel.DEBUG;
                        NotificationInterruptLogger$logNoFullscreen$2 notificationInterruptLogger$logNoFullscreen$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoFullscreen$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                LogMessage logMessage = (LogMessage) obj;
                                return FontProvider$$ExternalSyntheticOutline0.m("No FullScreenIntent: ", logMessage.getStr2(), ": ", logMessage.getStr1());
                            }
                        };
                        LogBuffer logBuffer2 = notificationInterruptLogger.buffer;
                        LogMessage obtain2 = logBuffer2.obtain("InterruptionStateProvider", logLevel2, notificationInterruptLogger$logNoFullscreen$2, null);
                        obtain2.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
                        obtain2.setStr2(name2);
                        logBuffer2.commit(obtain2);
                        return;
                    }
                    EventLog.writeEvent(1397638484, "231322873", Integer.valueOf(uid), "no hun or keyguard");
                    uiEventLogger.log(NotificationInterruptStateProviderImpl.NotificationInterruptEvent.FSI_SUPPRESSED_NO_HUN_OR_KEYGUARD, uid, packageName);
                    notificationInterruptLogger.logNoFullscreenWarning(notificationEntry, fullScreenIntentDecision + ": Expected not to HUN while not on keyguard");
                    return;
                }
                EventLog.writeEvent(1397638484, "274759612", Integer.valueOf(uid), "bubbleMetadata");
                uiEventLogger.log(NotificationInterruptStateProviderImpl.NotificationInterruptEvent.FSI_SUPPRESSED_SUPPRESSIVE_BUBBLE_METADATA, uid, packageName);
                notificationInterruptLogger.logNoFullscreenWarning(notificationEntry, fullScreenIntentDecision + ": BubbleMetadata may prevent HUN");
                return;
            }
            EventLog.writeEvent(1397638484, "231322873", Integer.valueOf(uid), "groupAlertBehavior");
            uiEventLogger.log(NotificationInterruptStateProviderImpl.NotificationInterruptEvent.FSI_SUPPRESSED_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR, uid, packageName);
            notificationInterruptLogger.logNoFullscreenWarning(notificationEntry, fullScreenIntentDecision + ": GroupAlertBehavior will prevent HUN");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007a, code lost:
    
        if (com.samsung.android.multiwindow.MultiWindowManager.getInstance().isMultiWindowBlockListApp(r0.getPackageName()) != false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper.DecisionImpl makeAndLogBubbleDecision(com.android.systemui.statusbar.notification.collection.NotificationEntry r6) {
        /*
            r5 = this;
            com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider r5 = r5.wrapped
            com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderImpl r5 = (com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderImpl) r5
            r5.getClass()
            java.lang.Class<com.android.systemui.util.DesktopManager> r0 = com.android.systemui.util.DesktopManager.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.util.DesktopManager r0 = (com.android.systemui.util.DesktopManager) r0
            com.android.systemui.util.DesktopManagerImpl r0 = (com.android.systemui.util.DesktopManagerImpl) r0
            boolean r0 = r0.isStandalone()
            if (r0 == 0) goto L19
            goto L8e
        L19:
            android.service.notification.StatusBarNotification r0 = r6.mSbn
            r1 = 1
            boolean r2 = r5.canAlertCommon(r6, r1)
            if (r2 != 0) goto L23
            goto L8e
        L23:
            boolean r2 = r5.canAlertAwakeCommon(r6, r1)
            if (r2 != 0) goto L2a
            goto L8e
        L2a:
            boolean r2 = r6.canBubble()
            com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger r3 = r5.mLogger
            if (r2 != 0) goto L36
            r3.getClass()
            goto L8e
        L36:
            android.app.Notification$BubbleMetadata r2 = r6.mBubbleMetadata
            java.lang.String r4 = "InterruptionStateProvider"
            if (r2 == 0) goto L7d
            java.lang.String r2 = r2.getShortcutId()
            if (r2 != 0) goto L4b
            android.app.Notification$BubbleMetadata r2 = r6.mBubbleMetadata
            android.app.PendingIntent r2 = r2.getIntent()
            if (r2 != 0) goto L4b
            goto L7d
        L4b:
            android.content.Context r5 = r5.mContext
            boolean r5 = android.app.ActivityTaskManager.supportsMultiWindow(r5)
            if (r5 != 0) goto L6e
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "No bubble up: notification: "
            r5.<init>(r6)
            java.lang.String r6 = r0.getKey()
            r5.append(r6)
            java.lang.String r6 = " doesn't mw"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            android.util.Log.d(r4, r5)
            goto L8e
        L6e:
            com.samsung.android.multiwindow.MultiWindowManager r5 = com.samsung.android.multiwindow.MultiWindowManager.getInstance()
            java.lang.String r6 = r0.getPackageName()
            boolean r5 = r5.isMultiWindowBlockListApp(r6)
            if (r5 == 0) goto L8f
            goto L8e
        L7d:
            r3.getClass()
            com.android.systemui.log.LogLevel r5 = com.android.systemui.log.LogLevel.DEBUG
            com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2 r0 = new kotlin.jvm.functions.Function1() { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2
                static {
                    /*
                        com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2 r0 = new com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2) com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2.INSTANCE com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public final java.lang.Object invoke(java.lang.Object r2) {
                    /*
                        r1 = this;
                        com.android.systemui.log.LogMessage r2 = (com.android.systemui.log.LogMessage) r2
                        java.lang.String r1 = r2.getStr1()
                        java.lang.String r2 = "No bubble up: notification: "
                        java.lang.String r0 = " doesn't have valid metadata"
                        java.lang.String r1 = androidx.core.graphics.PathParser$$ExternalSyntheticOutline0.m(r2, r1, r0)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logNoBubbleNoMetadata$2.invoke(java.lang.Object):java.lang.Object");
                }
            }
            com.android.systemui.log.LogBuffer r1 = r3.buffer
            r2 = 0
            com.android.systemui.log.LogMessage r5 = r1.obtain(r4, r5, r0, r2)
            com.android.systemui.statusbar.notification.NotificationClicker$$ExternalSyntheticOutline0.m(r6, r5, r1, r5)
        L8e:
            r1 = 0
        L8f:
            com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper$DecisionImpl$Companion r5 = com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper.DecisionImpl.Companion
            r5.getClass()
            if (r1 == 0) goto L99
            com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper$DecisionImpl r5 = com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper.DecisionImpl.SHOULD_INTERRUPT
            goto L9b
        L99:
            com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper$DecisionImpl r5 = com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper.DecisionImpl.SHOULD_NOT_INTERRUPT
        L9b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper.makeAndLogBubbleDecision(com.android.systemui.statusbar.notification.collection.NotificationEntry):com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper$DecisionImpl");
    }

    public final FullScreenIntentDecisionImpl makeUnloggedFullScreenIntentDecision(NotificationEntry notificationEntry) {
        NotificationInterruptStateProvider.FullScreenIntentDecision decisionGivenSuppression;
        NotificationInterruptStateProviderImpl notificationInterruptStateProviderImpl = (NotificationInterruptStateProviderImpl) this.wrapped;
        notificationInterruptStateProviderImpl.getClass();
        if (notificationEntry.mSbn.getNotification().fullScreenIntent == null) {
            if (notificationEntry.isStickyAndNotDemoted()) {
                decisionGivenSuppression = NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_SHOW_STICKY_HUN;
            } else {
                decisionGivenSuppression = NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FULL_SCREEN_INTENT;
            }
        } else {
            boolean shouldSuppressVisualEffect = notificationEntry.shouldSuppressVisualEffect(4);
            if (notificationEntry.getImportance() < 4) {
                decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_NOT_IMPORTANT_ENOUGH, shouldSuppressVisualEffect);
            } else {
                StatusBarNotification statusBarNotification = notificationEntry.mSbn;
                if (statusBarNotification.isGroup() && statusBarNotification.getNotification().suppressAlertingDueToGrouping()) {
                    decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR, shouldSuppressVisualEffect);
                } else {
                    Notification.BubbleMetadata bubbleMetadata = statusBarNotification.getNotification().getBubbleMetadata();
                    if (bubbleMetadata != null && bubbleMetadata.isNotificationSuppressed()) {
                        decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_SUPPRESSIVE_BUBBLE_METADATA, shouldSuppressVisualEffect);
                    } else if (notificationEntry.mRanking.isSuspended()) {
                        decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_SUSPENDED, shouldSuppressVisualEffect);
                    } else if (!notificationInterruptStateProviderImpl.mPowerManager.isInteractive()) {
                        decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.FSI_DEVICE_NOT_INTERACTIVE, shouldSuppressVisualEffect);
                    } else {
                        StatusBarStateController statusBarStateController = notificationInterruptStateProviderImpl.mStatusBarStateController;
                        if (statusBarStateController.isDreaming()) {
                            decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.FSI_DEVICE_IS_DREAMING, shouldSuppressVisualEffect);
                        } else {
                            boolean z = true;
                            if (statusBarStateController.getState() == 1) {
                                decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.FSI_KEYGUARD_SHOWING, shouldSuppressVisualEffect);
                            } else if (notificationInterruptStateProviderImpl.checkHeadsUp(notificationEntry, false)) {
                                decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_EXPECTED_TO_HUN, shouldSuppressVisualEffect);
                            } else if ((notificationEntry.mSbn.getNotification().semFlags & 8192) == 0 && (notificationEntry.mSbn.getNotification().semFlags & 16384) == 0) {
                                KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) notificationInterruptStateProviderImpl.mKeyguardStateController;
                                if (keyguardStateControllerImpl.mShowing) {
                                    if (!notificationInterruptStateProviderImpl.mCommandQueue.panelsEnabled()) {
                                        Iterator it = ((NotifPipeline) notificationInterruptStateProviderImpl.mNotifCollection).getAllNotifs().iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                NotificationEntry notificationEntry2 = (NotificationEntry) it.next();
                                                if (notificationEntry2 != null) {
                                                    StatusBarNotification statusBarNotification2 = notificationEntry2.mSbn;
                                                    if ("com.samsung.android.incallui".equals(statusBarNotification2.getPackageName()) && statusBarNotification2.getId() == 1 && statusBarNotification2.getTag() == null) {
                                                        break;
                                                    }
                                                }
                                            } else {
                                                z = false;
                                                break;
                                            }
                                        }
                                        if (z) {
                                            decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_NO_HUN_BY_PANEL_DISABLED, shouldSuppressVisualEffect);
                                        }
                                    }
                                    if (keyguardStateControllerImpl.mOccluded) {
                                        decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.FSI_KEYGUARD_OCCLUDED, shouldSuppressVisualEffect);
                                    } else {
                                        decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.FSI_LOCKED_SHADE, shouldSuppressVisualEffect);
                                    }
                                } else {
                                    decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_NO_HUN_OR_KEYGUARD, shouldSuppressVisualEffect);
                                }
                            } else {
                                decisionGivenSuppression = NotificationInterruptStateProviderImpl.getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_EXPECTED_TO_BRIEF, shouldSuppressVisualEffect);
                            }
                        }
                    }
                }
            }
        }
        return new FullScreenIntentDecisionImpl(notificationEntry, decisionGivenSuppression);
    }
}
