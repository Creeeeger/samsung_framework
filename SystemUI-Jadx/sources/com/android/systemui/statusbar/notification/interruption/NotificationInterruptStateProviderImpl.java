package com.android.systemui.statusbar.notification.interruption;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.hardware.display.AmbientDisplayConfiguration;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.internal.logging.UiEventLogger;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import com.android.systemui.statusbar.notification.NotificationClicker$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.StatusBarNotificationPresenter;
import com.android.systemui.statusbar.policy.BatteryController;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationInterruptStateProviderImpl implements NotificationInterruptStateProvider {
    public final CommandQueue mCommandQueue;
    public final ContentResolver mContentResolver;
    public final Context mContext;
    public final NotifPipelineFlags mFlags;
    public final HeadsUpManager mHeadsUpManager;
    public final KeyguardNotificationVisibilityProvider mKeyguardNotificationVisibilityProvider;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final NotificationInterruptLogger mLogger;
    public final CommonNotifCollection mNotifCollection;
    public final PowerManager mPowerManager;
    public final StatusBarStateController mStatusBarStateController;
    public final UiEventLogger mUiEventLogger;
    public final List mSuppressors = new ArrayList();
    protected boolean mUseHeadsUp = false;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderImpl$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision;

        static {
            int[] iArr = new int[NotificationInterruptStateProvider.FullScreenIntentDecision.values().length];
            $SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision = iArr;
            try {
                iArr[NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FULL_SCREEN_INTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision[NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision[NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_SUPPRESSIVE_BUBBLE_METADATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision[NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_NO_HUN_OR_KEYGUARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum NotificationInterruptEvent implements UiEventLogger.UiEventEnum {
        FSI_SUPPRESSED_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR(1235),
        FSI_SUPPRESSED_SUPPRESSIVE_BUBBLE_METADATA(1353),
        FSI_SUPPRESSED_NO_HUN_OR_KEYGUARD(1236),
        HUN_SUPPRESSED_OLD_WHEN(1237),
        HUN_SNOOZE_BYPASSED_POTENTIALLY_SUPPRESSED_FSI(1269);

        private final int mId;

        NotificationInterruptEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    public NotificationInterruptStateProviderImpl(ContentResolver contentResolver, PowerManager powerManager, AmbientDisplayConfiguration ambientDisplayConfiguration, BatteryController batteryController, StatusBarStateController statusBarStateController, KeyguardStateController keyguardStateController, HeadsUpManager headsUpManager, NotificationInterruptLogger notificationInterruptLogger, Handler handler, NotifPipelineFlags notifPipelineFlags, KeyguardNotificationVisibilityProvider keyguardNotificationVisibilityProvider, UiEventLogger uiEventLogger, UserTracker userTracker, Context context, CommandQueue commandQueue, CommonNotifCollection commonNotifCollection) {
        this.mContentResolver = contentResolver;
        this.mPowerManager = powerManager;
        this.mStatusBarStateController = statusBarStateController;
        this.mKeyguardStateController = keyguardStateController;
        this.mHeadsUpManager = headsUpManager;
        this.mLogger = notificationInterruptLogger;
        this.mFlags = notifPipelineFlags;
        this.mKeyguardNotificationVisibilityProvider = keyguardNotificationVisibilityProvider;
        this.mUiEventLogger = uiEventLogger;
        this.mCommandQueue = commandQueue;
        this.mNotifCollection = commonNotifCollection;
        ContentObserver contentObserver = new ContentObserver(handler) { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderImpl.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z) {
                NotificationInterruptStateProviderImpl notificationInterruptStateProviderImpl = NotificationInterruptStateProviderImpl.this;
                boolean z2 = notificationInterruptStateProviderImpl.mUseHeadsUp;
                boolean z3 = false;
                if (Settings.Global.getInt(notificationInterruptStateProviderImpl.mContentResolver, "heads_up_notifications_enabled", 0) != 0) {
                    z3 = true;
                }
                notificationInterruptStateProviderImpl.mUseHeadsUp = z3;
                NotificationInterruptStateProviderImpl notificationInterruptStateProviderImpl2 = NotificationInterruptStateProviderImpl.this;
                NotificationInterruptLogger notificationInterruptLogger2 = notificationInterruptStateProviderImpl2.mLogger;
                boolean z4 = notificationInterruptStateProviderImpl2.mUseHeadsUp;
                notificationInterruptLogger2.getClass();
                LogLevel logLevel = LogLevel.INFO;
                NotificationInterruptLogger$logHeadsUpFeatureChanged$2 notificationInterruptLogger$logHeadsUpFeatureChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logHeadsUpFeatureChanged$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("heads up is enabled=", ((LogMessage) obj).getBool1());
                    }
                };
                LogBuffer logBuffer = notificationInterruptLogger2.buffer;
                LogMessage obtain = logBuffer.obtain("InterruptionStateProvider", logLevel, notificationInterruptLogger$logHeadsUpFeatureChanged$2, null);
                obtain.setBool1(z4);
                logBuffer.commit(obtain);
                NotificationInterruptStateProviderImpl notificationInterruptStateProviderImpl3 = NotificationInterruptStateProviderImpl.this;
                boolean z5 = notificationInterruptStateProviderImpl3.mUseHeadsUp;
                if (z2 != z5 && !z5) {
                    NotificationInterruptLogger notificationInterruptLogger3 = notificationInterruptStateProviderImpl3.mLogger;
                    notificationInterruptLogger3.getClass();
                    NotificationInterruptLogger$logWillDismissAll$2 notificationInterruptLogger$logWillDismissAll$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$logWillDismissAll$2
                        @Override // kotlin.jvm.functions.Function1
                        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            return "dismissing any existing heads up notification on disable event";
                        }
                    };
                    LogBuffer logBuffer2 = notificationInterruptLogger3.buffer;
                    logBuffer2.commit(logBuffer2.obtain("InterruptionStateProvider", logLevel, notificationInterruptLogger$logWillDismissAll$2, null));
                    NotificationInterruptStateProviderImpl.this.mHeadsUpManager.releaseAllImmediately();
                }
            }
        };
        contentResolver.registerContentObserver(Settings.Global.getUriFor("heads_up_notifications_enabled"), true, contentObserver);
        contentResolver.registerContentObserver(Settings.Global.getUriFor("ticker_gets_heads_up"), true, contentObserver);
        contentObserver.onChange(true);
        this.mContext = context;
        this.mKeyguardUpdateMonitor = (KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class);
    }

    public static NotificationInterruptStateProvider.FullScreenIntentDecision getDecisionGivenSuppression(NotificationInterruptStateProvider.FullScreenIntentDecision fullScreenIntentDecision, boolean z) {
        if (z) {
            if (fullScreenIntentDecision.shouldLaunch) {
                return NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_SUPPRESSED_ONLY_BY_DND;
            }
            return NotificationInterruptStateProvider.FullScreenIntentDecision.NO_FSI_SUPPRESSED_BY_DND;
        }
        return fullScreenIntentDecision;
    }

    public final boolean canAlertAwakeCommon(NotificationEntry notificationEntry, boolean z) {
        notificationEntry.getClass();
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.mSuppressors;
            if (i >= arrayList.size()) {
                return true;
            }
            if (StatusBarNotificationPresenter.this.mVrMode) {
                if (z) {
                    this.mLogger.logNoAlertingSuppressedBy(notificationEntry, true);
                }
                return false;
            }
            i++;
        }
    }

    public final boolean canAlertCommon(NotificationEntry notificationEntry, boolean z) {
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.mSuppressors;
            int size = arrayList.size();
            boolean z2 = true;
            NotificationInterruptLogger notificationInterruptLogger = this.mLogger;
            if (i < size) {
                if ((((CentralSurfacesImpl) StatusBarNotificationPresenter.this.mCentralSurfaces).mDisabled1 & 262144) == 0) {
                    z2 = false;
                }
                if (z2) {
                    if (z) {
                        notificationInterruptLogger.logNoAlertingSuppressedBy(notificationEntry, false);
                    }
                    return false;
                }
                i++;
            } else {
                if (!((KeyguardNotificationVisibilityProviderImpl) this.mKeyguardNotificationVisibilityProvider).shouldHideNotification(notificationEntry)) {
                    return true;
                }
                if (z) {
                    notificationInterruptLogger.getClass();
                    LogLevel logLevel = LogLevel.DEBUG;
                    NotificationInterruptLogger$keyguardHideNotification$2 notificationInterruptLogger$keyguardHideNotification$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.interruption.NotificationInterruptLogger$keyguardHideNotification$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return KeyAttributes$$ExternalSyntheticOutline0.m("Keyguard Hide Notification: ", ((LogMessage) obj).getStr1());
                        }
                    };
                    LogBuffer logBuffer = notificationInterruptLogger.buffer;
                    LogMessage obtain = logBuffer.obtain("InterruptionStateProvider", logLevel, notificationInterruptLogger$keyguardHideNotification$2, null);
                    NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
                }
                return false;
            }
        }
    }

    public final boolean canHeadsUpCommonForFrontCoverScreen(NotificationEntry notificationEntry) {
        if (notificationEntry.getImportance() < 4) {
            return false;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.mSuppressors;
            boolean z = true;
            if (i < arrayList.size()) {
                if ((((CentralSurfacesImpl) StatusBarNotificationPresenter.this.mCentralSurfaces).mDisabled1 & 262144) == 0) {
                    z = false;
                }
                if (z) {
                    return false;
                }
                i++;
            } else {
                if (!this.mUseHeadsUp || notificationEntry.shouldSuppressVisualEffect(16)) {
                    return false;
                }
                return true;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x037e, code lost:
    
        if (r5 != false) goto L169;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03b4 A[LOOP:0: B:143:0x033d->B:157:0x03b4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x038e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0236  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean checkHeadsUp(com.android.systemui.statusbar.notification.collection.NotificationEntry r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 1009
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderImpl.checkHeadsUp(com.android.systemui.statusbar.notification.collection.NotificationEntry, boolean):boolean");
    }
}
