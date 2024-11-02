package com.android.systemui.statusbar.policy;

import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.service.notification.StatusBarNotification;
import android.util.ArrayMap;
import android.util.EventLog;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.UiEventLogger;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.AlertingNotificationManager;
import com.android.systemui.statusbar.notification.NotificationClicker$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.notification.NotificationUtilsKt;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.NotificationBackgroundView;
import com.android.systemui.util.ListenerSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class HeadsUpManager extends AlertingNotificationManager {
    public final AccessibilityManagerWrapper mAccessibilityMgr;
    public final List mCallbacks;
    public final Context mContext;
    public boolean mHasPinnedNotification;
    public final ListenerSet mListeners;
    public int mSnoozeLengthMs;
    public final ArrayMap mSnoozedPackages;
    public final int mTouchAcceptanceDelay;
    public final UiEventLogger mUiEventLogger;
    public int mUser;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class HeadsUpEntry extends AlertingNotificationManager.AlertEntry {
        public boolean expanded;
        public boolean remoteInputActive;
        public boolean userActionMayIndirectlyRemove;
        public boolean wasUnpinned;

        public HeadsUpEntry() {
            super();
        }

        @Override // com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry
        public long calculateFinishTime() {
            int i;
            if (this.mEntry.isStickyAndNotDemoted()) {
                i = HeadsUpManager.this.mStickyDisplayTime;
            } else {
                i = HeadsUpManager.this.mAutoDismissNotificationDecay;
            }
            return this.mPostTime + HeadsUpManager.this.mAccessibilityMgr.getRecommendedTimeoutMillis(i, 7);
        }

        @Override // com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry
        public final long calculatePostTime() {
            return super.calculatePostTime() + HeadsUpManager.this.mTouchAcceptanceDelay;
        }

        @Override // com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry
        public boolean isSticky() {
            if ((!this.mEntry.isRowPinned() || !this.expanded) && !this.remoteInputActive) {
                HeadsUpManager headsUpManager = HeadsUpManager.this;
                NotificationEntry notificationEntry = this.mEntry;
                headsUpManager.getClass();
                if (!HeadsUpManager.hasFullScreenIntent(notificationEntry)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry
        public void reset() {
            super.reset();
            this.expanded = false;
            this.remoteInputActive = false;
        }

        public void setExpanded(boolean z) {
            this.expanded = z;
        }

        @Override // com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry, java.lang.Comparable
        public final int compareTo(AlertingNotificationManager.AlertEntry alertEntry) {
            HeadsUpEntry headsUpEntry = (HeadsUpEntry) alertEntry;
            boolean isRowPinned = this.mEntry.isRowPinned();
            boolean isRowPinned2 = headsUpEntry.mEntry.isRowPinned();
            if (isRowPinned && !isRowPinned2) {
                return -1;
            }
            if (!isRowPinned && isRowPinned2) {
                return 1;
            }
            HeadsUpManager headsUpManager = HeadsUpManager.this;
            NotificationEntry notificationEntry = this.mEntry;
            headsUpManager.getClass();
            boolean hasFullScreenIntent = HeadsUpManager.hasFullScreenIntent(notificationEntry);
            HeadsUpManager headsUpManager2 = HeadsUpManager.this;
            NotificationEntry notificationEntry2 = headsUpEntry.mEntry;
            headsUpManager2.getClass();
            boolean hasFullScreenIntent2 = HeadsUpManager.hasFullScreenIntent(notificationEntry2);
            if (hasFullScreenIntent && !hasFullScreenIntent2) {
                return -1;
            }
            if (!hasFullScreenIntent && hasFullScreenIntent2) {
                return 1;
            }
            boolean m1432$$Nest$smisCriticalCallNotif = HeadsUpManager.m1432$$Nest$smisCriticalCallNotif(this.mEntry);
            boolean m1432$$Nest$smisCriticalCallNotif2 = HeadsUpManager.m1432$$Nest$smisCriticalCallNotif(headsUpEntry.mEntry);
            if (m1432$$Nest$smisCriticalCallNotif && !m1432$$Nest$smisCriticalCallNotif2) {
                return -1;
            }
            if (!m1432$$Nest$smisCriticalCallNotif && m1432$$Nest$smisCriticalCallNotif2) {
                return 1;
            }
            boolean z = this.remoteInputActive;
            if (z && !headsUpEntry.remoteInputActive) {
                return -1;
            }
            if (z || !headsUpEntry.remoteInputActive) {
                return super.compareTo((AlertingNotificationManager.AlertEntry) headsUpEntry);
            }
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum NotificationPeekEvent implements UiEventLogger.UiEventEnum {
        NOTIFICATION_PEEK(801);

        private final int mId;

        NotificationPeekEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    /* renamed from: -$$Nest$smisCriticalCallNotif, reason: not valid java name */
    public static boolean m1432$$Nest$smisCriticalCallNotif(NotificationEntry notificationEntry) {
        boolean z;
        Notification notification2 = notificationEntry.mSbn.getNotification();
        if (notification2.isStyle(Notification.CallStyle.class) && notification2.extras.getInt("android.callType") == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z && (!notificationEntry.mSbn.isOngoing() || !"call".equals(notification2.category))) {
            return false;
        }
        return true;
    }

    public HeadsUpManager(final Context context, HeadsUpManagerLogger headsUpManagerLogger, Handler handler, AccessibilityManagerWrapper accessibilityManagerWrapper, UiEventLogger uiEventLogger) {
        super(headsUpManagerLogger, handler);
        this.mListeners = new ListenerSet();
        this.mCallbacks = new ArrayList();
        this.mContext = context;
        this.mAccessibilityMgr = accessibilityManagerWrapper;
        this.mUiEventLogger = uiEventLogger;
        Resources resources = context.getResources();
        this.mMinimumDisplayTime = resources.getInteger(R.integer.heads_up_notification_minimum_time);
        this.mStickyDisplayTime = resources.getInteger(R.integer.sticky_heads_up_notification_time);
        this.mAutoDismissNotificationDecay = resources.getInteger(R.integer.heads_up_notification_decay);
        this.mTouchAcceptanceDelay = resources.getInteger(R.integer.touch_acceptance_delay);
        this.mSnoozedPackages = new ArrayMap();
        this.mSnoozeLengthMs = Settings.Global.getInt(context.getContentResolver(), "heads_up_snooze_length_ms", resources.getInteger(R.integer.heads_up_default_snooze_length_ms));
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("heads_up_snooze_length_ms"), false, new ContentObserver(handler) { // from class: com.android.systemui.statusbar.policy.HeadsUpManager.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z) {
                int i = Settings.Global.getInt(context.getContentResolver(), "heads_up_snooze_length_ms", -1);
                if (i > -1) {
                    HeadsUpManager headsUpManager = HeadsUpManager.this;
                    if (i != headsUpManager.mSnoozeLengthMs) {
                        headsUpManager.mSnoozeLengthMs = i;
                        HeadsUpManagerLogger headsUpManagerLogger2 = headsUpManager.mLogger;
                        headsUpManagerLogger2.getClass();
                        LogLevel logLevel = LogLevel.INFO;
                        HeadsUpManagerLogger$logSnoozeLengthChange$2 headsUpManagerLogger$logSnoozeLengthChange$2 = new Function1() { // from class: com.android.systemui.statusbar.policy.HeadsUpManagerLogger$logSnoozeLengthChange$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("snooze length changed: ", ((LogMessage) obj).getInt1(), "ms");
                            }
                        };
                        LogBuffer logBuffer = headsUpManagerLogger2.buffer;
                        LogMessage obtain = logBuffer.obtain("HeadsUpManager", logLevel, headsUpManagerLogger$logSnoozeLengthChange$2, null);
                        obtain.setInt1(i);
                        logBuffer.commit(obtain);
                    }
                }
            }
        });
    }

    public static boolean hasFullScreenIntent(NotificationEntry notificationEntry) {
        if (notificationEntry.mSbn.getNotification().fullScreenIntent != null) {
            return true;
        }
        return false;
    }

    public final void addListener(OnHeadsUpChangedListener onHeadsUpChangedListener) {
        this.mListeners.addIfAbsent(onHeadsUpChangedListener);
    }

    @Override // com.android.systemui.statusbar.AlertingNotificationManager
    public boolean canRemoveImmediately(String str) {
        HeadsUpEntry headsUpEntry = getHeadsUpEntry(str);
        if (headsUpEntry != null && (headsUpEntry.userActionMayIndirectlyRemove || headsUpEntry.mEntry.hasSentReply)) {
            return true;
        }
        return super.canRemoveImmediately(str);
    }

    public final HeadsUpEntry getHeadsUpEntry(String str) {
        return (HeadsUpEntry) this.mAlertEntries.get(str);
    }

    public final HeadsUpEntry getTopHeadsUpEntry() {
        ArrayMap arrayMap = this.mAlertEntries;
        HeadsUpEntry headsUpEntry = null;
        if (arrayMap.isEmpty()) {
            return null;
        }
        for (AlertingNotificationManager.AlertEntry alertEntry : arrayMap.values()) {
            if (headsUpEntry == null || alertEntry.compareTo((AlertingNotificationManager.AlertEntry) headsUpEntry) < 0) {
                headsUpEntry = (HeadsUpEntry) alertEntry;
            }
        }
        return headsUpEntry;
    }

    public final boolean isSnoozed(String str) {
        String str2 = this.mUser + "," + str;
        ArrayMap arrayMap = this.mSnoozedPackages;
        Long l = (Long) arrayMap.get(str2);
        if (l != null) {
            long longValue = l.longValue();
            this.mClock.getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            HeadsUpManagerLogger headsUpManagerLogger = this.mLogger;
            if (longValue > elapsedRealtime) {
                headsUpManagerLogger.getClass();
                LogLevel logLevel = LogLevel.INFO;
                HeadsUpManagerLogger$logIsSnoozedReturned$2 headsUpManagerLogger$logIsSnoozedReturned$2 = new Function1() { // from class: com.android.systemui.statusbar.policy.HeadsUpManagerLogger$logIsSnoozedReturned$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return KeyAttributes$$ExternalSyntheticOutline0.m("package snoozed when queried ", ((LogMessage) obj).getStr1());
                    }
                };
                LogBuffer logBuffer = headsUpManagerLogger.buffer;
                LogMessage obtain = logBuffer.obtain("HeadsUpManager", logLevel, headsUpManagerLogger$logIsSnoozedReturned$2, null);
                obtain.setStr1(str2);
                logBuffer.commit(obtain);
                return true;
            }
            headsUpManagerLogger.getClass();
            LogLevel logLevel2 = LogLevel.INFO;
            HeadsUpManagerLogger$logPackageUnsnoozed$2 headsUpManagerLogger$logPackageUnsnoozed$2 = new Function1() { // from class: com.android.systemui.statusbar.policy.HeadsUpManagerLogger$logPackageUnsnoozed$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return KeyAttributes$$ExternalSyntheticOutline0.m("package unsnoozed ", ((LogMessage) obj).getStr1());
                }
            };
            LogBuffer logBuffer2 = headsUpManagerLogger.buffer;
            LogMessage obtain2 = logBuffer2.obtain("HeadsUpManager", logLevel2, headsUpManagerLogger$logPackageUnsnoozed$2, null);
            obtain2.setStr1(str2);
            logBuffer2.commit(obtain2);
            arrayMap.remove(str2);
            return false;
        }
        return false;
    }

    public boolean isTrackingHeadsUp() {
        return false;
    }

    public final void onAlertEntryAdded(AlertingNotificationManager.AlertEntry alertEntry) {
        NotificationEntry notificationEntry = alertEntry.mEntry;
        notificationEntry.setHeadsUp(true);
        setEntryPinned((HeadsUpEntry) alertEntry, shouldHeadsUpBecomePinned(notificationEntry));
        EventLog.writeEvent(36001, notificationEntry.mKey, 1);
        Iterator it = this.mListeners.iterator();
        while (it.hasNext()) {
            ((OnHeadsUpChangedListener) it.next()).onHeadsUpStateChanged(notificationEntry, true);
        }
    }

    @Override // com.android.systemui.statusbar.AlertingNotificationManager
    public void onAlertEntryRemoved(AlertingNotificationManager.AlertEntry alertEntry) {
        NotificationEntry notificationEntry = alertEntry.mEntry;
        notificationEntry.setHeadsUp(false);
        setEntryPinned((HeadsUpEntry) alertEntry, false);
        EventLog.writeEvent(36001, notificationEntry.mKey, 0);
        HeadsUpManagerLogger headsUpManagerLogger = this.mLogger;
        headsUpManagerLogger.getClass();
        LogLevel logLevel = LogLevel.INFO;
        HeadsUpManagerLogger$logNotificationActuallyRemoved$2 headsUpManagerLogger$logNotificationActuallyRemoved$2 = new Function1() { // from class: com.android.systemui.statusbar.policy.HeadsUpManagerLogger$logNotificationActuallyRemoved$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m("notification removed ", ((LogMessage) obj).getStr1(), " ");
            }
        };
        LogBuffer logBuffer = headsUpManagerLogger.buffer;
        LogMessage obtain = logBuffer.obtain("HeadsUpManager", logLevel, headsUpManagerLogger$logNotificationActuallyRemoved$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
        Iterator it = this.mListeners.iterator();
        while (it.hasNext()) {
            ((OnHeadsUpChangedListener) it.next()).onHeadsUpStateChanged(notificationEntry, false);
        }
        if (notificationEntry.mIsHeadsUpByBriefExpanding) {
            notificationEntry.mIsHeadsUpByBriefExpanding = false;
        }
    }

    public final void setEntryPinned(HeadsUpEntry headsUpEntry, boolean z) {
        StatusBarNotification statusBarNotification;
        boolean z2;
        NotificationEntry notificationEntry = headsUpEntry.mEntry;
        HeadsUpManagerLogger headsUpManagerLogger = this.mLogger;
        headsUpManagerLogger.getClass();
        LogLevel logLevel = LogLevel.VERBOSE;
        HeadsUpManagerLogger$logSetEntryPinned$2 headsUpManagerLogger$logSetEntryPinned$2 = new Function1() { // from class: com.android.systemui.statusbar.policy.HeadsUpManagerLogger$logSetEntryPinned$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "set entry pinned " + logMessage.getStr1() + " pinned: " + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = headsUpManagerLogger.buffer;
        LogMessage obtain = logBuffer.obtain("HeadsUpManager", logLevel, headsUpManagerLogger$logSetEntryPinned$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setBool1(z);
        logBuffer.commit(obtain);
        NotificationEntry notificationEntry2 = headsUpEntry.mEntry;
        if (!z) {
            headsUpEntry.wasUnpinned = true;
        }
        if (notificationEntry2.isRowPinned() != z) {
            ExpandableNotificationRow expandableNotificationRow = notificationEntry2.row;
            boolean z3 = false;
            if (expandableNotificationRow != null) {
                int intrinsicHeight = expandableNotificationRow.getIntrinsicHeight();
                boolean isAboveShelf = expandableNotificationRow.isAboveShelf();
                expandableNotificationRow.mIsPinned = z;
                if (intrinsicHeight != expandableNotificationRow.getIntrinsicHeight()) {
                    expandableNotificationRow.notifyHeightChanged(false);
                }
                if (z) {
                    expandableNotificationRow.setAnimationRunning(true);
                    expandableNotificationRow.mExpandedWhenPinned = false;
                } else if (expandableNotificationRow.mExpandedWhenPinned) {
                    expandableNotificationRow.setUserExpanded(true, false);
                }
                expandableNotificationRow.setChronometerRunning(expandableNotificationRow.mLastChronometerRunning);
                if (expandableNotificationRow.isAboveShelf() != isAboveShelf) {
                    expandableNotificationRow.mAboveShelfChangedListener.onAboveShelfStateChanged(!isAboveShelf);
                }
                if (z) {
                    if (expandableNotificationRow.mAnimatePinnedRoundness && expandableNotificationRow.isShown()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    expandableNotificationRow.requestRoundness(1.0f, 1.0f, ExpandableNotificationRow.PINNED, z2);
                } else {
                    expandableNotificationRow.requestRoundnessReset(ExpandableNotificationRow.PINNED);
                    expandableNotificationRow.mAnimatePinnedRoundness = true;
                    expandableNotificationRow.updateBackgroundColors();
                }
                boolean z4 = expandableNotificationRow.mIsPinned;
                NotificationBackgroundView notificationBackgroundView = expandableNotificationRow.mBackgroundNormal;
                notificationBackgroundView.mIsPinned = z4;
                notificationBackgroundView.invalidate();
            }
            Iterator it = this.mAlertEntries.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (getHeadsUpEntry((String) it.next()).mEntry.isRowPinned()) {
                    z3 = true;
                    break;
                }
            }
            boolean z5 = this.mHasPinnedNotification;
            ListenerSet listenerSet = this.mListeners;
            if (z3 != z5) {
                LogMessage obtain2 = logBuffer.obtain("HeadsUpManager", LogLevel.INFO, new Function1() { // from class: com.android.systemui.statusbar.policy.HeadsUpManagerLogger$logUpdatePinnedMode$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("has pinned notification changed to ", ((LogMessage) obj).getBool1());
                    }
                }, null);
                obtain2.setBool1(z3);
                logBuffer.commit(obtain2);
                this.mHasPinnedNotification = z3;
                if (z3) {
                    MetricsLogger.count(this.mContext, "note_peek", 1);
                }
                Iterator it2 = listenerSet.iterator();
                while (it2.hasNext()) {
                    ((OnHeadsUpChangedListener) it2.next()).onHeadsUpPinnedModeChanged(z3);
                }
            }
            if (z && (statusBarNotification = notificationEntry2.mSbn) != null) {
                this.mUiEventLogger.logWithInstanceId(NotificationPeekEvent.NOTIFICATION_PEEK, statusBarNotification.getUid(), notificationEntry2.mSbn.getPackageName(), notificationEntry2.mSbn.getInstanceId());
            }
            Iterator it3 = listenerSet.iterator();
            while (it3.hasNext()) {
                OnHeadsUpChangedListener onHeadsUpChangedListener = (OnHeadsUpChangedListener) it3.next();
                if (z) {
                    onHeadsUpChangedListener.onHeadsUpPinned(notificationEntry2);
                } else {
                    onHeadsUpChangedListener.onHeadsUpUnPinned(notificationEntry2);
                }
            }
        }
    }

    public boolean shouldHeadsUpBecomePinned(NotificationEntry notificationEntry) {
        HeadsUpEntry headsUpEntry = getHeadsUpEntry(notificationEntry.mKey);
        if (headsUpEntry == null) {
            return hasFullScreenIntent(notificationEntry);
        }
        if (hasFullScreenIntent(notificationEntry) && !headsUpEntry.wasUnpinned) {
            return true;
        }
        return false;
    }

    public void snooze() {
        Iterator it = this.mAlertEntries.keySet().iterator();
        while (it.hasNext()) {
            String packageName = getHeadsUpEntry((String) it.next()).mEntry.mSbn.getPackageName();
            String str = this.mUser + "," + packageName;
            HeadsUpManagerLogger headsUpManagerLogger = this.mLogger;
            headsUpManagerLogger.getClass();
            LogLevel logLevel = LogLevel.INFO;
            HeadsUpManagerLogger$logPackageSnoozed$2 headsUpManagerLogger$logPackageSnoozed$2 = new Function1() { // from class: com.android.systemui.statusbar.policy.HeadsUpManagerLogger$logPackageSnoozed$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return KeyAttributes$$ExternalSyntheticOutline0.m("package snoozed ", ((LogMessage) obj).getStr1());
                }
            };
            LogBuffer logBuffer = headsUpManagerLogger.buffer;
            LogMessage obtain = logBuffer.obtain("HeadsUpManager", logLevel, headsUpManagerLogger$logPackageSnoozed$2, null);
            obtain.setStr1(str);
            logBuffer.commit(obtain);
            this.mClock.getClass();
            this.mSnoozedPackages.put(str, Long.valueOf(SystemClock.elapsedRealtime() + this.mSnoozeLengthMs));
        }
    }

    public final void unpinAll() {
        boolean z;
        ExpandableNotificationRow expandableNotificationRow;
        Iterator it = this.mAlertEntries.keySet().iterator();
        while (it.hasNext()) {
            HeadsUpEntry headsUpEntry = getHeadsUpEntry((String) it.next());
            setEntryPinned(headsUpEntry, false);
            headsUpEntry.updateEntry(false);
            NotificationEntry notificationEntry = headsUpEntry.mEntry;
            if (notificationEntry != null) {
                ExpandableNotificationRow expandableNotificationRow2 = notificationEntry.row;
                if (expandableNotificationRow2 != null && expandableNotificationRow2.mustStayOnScreen()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z && (expandableNotificationRow = headsUpEntry.mEntry.row) != null) {
                    expandableNotificationRow.mMustStayOnScreen = false;
                }
            }
        }
    }

    public final void updateNotification(String str, boolean z) {
        boolean z2;
        AlertingNotificationManager.AlertEntry alertEntry = (AlertingNotificationManager.AlertEntry) this.mAlertEntries.get(str);
        if (alertEntry != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.mLogger.logUpdateNotification(str, z, z2);
        if (alertEntry != null) {
            ExpandableNotificationRow expandableNotificationRow = alertEntry.mEntry.row;
            if (expandableNotificationRow != null) {
                expandableNotificationRow.sendAccessibilityEvent(2048);
            }
            if (z) {
                alertEntry.updateEntry(true);
            }
        }
        HeadsUpEntry headsUpEntry = getHeadsUpEntry(str);
        if (z && headsUpEntry != null) {
            setEntryPinned(headsUpEntry, shouldHeadsUpBecomePinned(headsUpEntry.mEntry));
        }
    }

    @Override // 
    public HeadsUpEntry createAlertEntry() {
        return new HeadsUpEntry();
    }
}
