package com.android.systemui.statusbar.notification.collection.coordinator;

import android.util.ArrayMap;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.AlertingNotificationManager;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.RemoteInputController;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import com.android.systemui.statusbar.notification.NotificationUtilsKt;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda8;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator;
import com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeFinalizeFilterListener;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifComparator;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifPromoter;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifLifetimeExtender;
import com.android.systemui.statusbar.notification.collection.provider.LaunchFullScreenIntentProvider;
import com.android.systemui.statusbar.notification.collection.render.NodeController;
import com.android.systemui.statusbar.notification.interruption.HeadsUpViewBinder;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderImpl;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper;
import com.android.systemui.statusbar.notification.interruption.VisualInterruptionDecisionProvider;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.NotifBindPipeline;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.statusbar.policy.OnHeadsUpChangedListener;
import com.android.systemui.util.Assert;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import noticolorpicker.NotificationColorPicker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HeadsUpCoordinator implements Coordinator {
    public static final /* synthetic */ int $r8$clinit = 0;
    public NotifCollection$$ExternalSyntheticLambda8 mEndLifetimeExtension;
    public final DelayableExecutor mExecutor;
    public final HeadsUpManager mHeadsUpManager;
    public final HeadsUpViewBinder mHeadsUpViewBinder;
    public final LaunchFullScreenIntentProvider mLaunchFullScreenIntentProvider;
    public final HeadsUpCoordinatorLogger mLogger;
    public NotifPipeline mNotifPipeline;
    public final NotificationRemoteInputManager mRemoteInputManager;
    public final SystemClock mSystemClock;
    public final VisualInterruptionDecisionProvider mVisualInterruptionDecisionProvider;
    public final ArrayMap mEntriesBindingUntil = new ArrayMap();
    public final ArrayMap mEntriesUpdateTimes = new ArrayMap();
    public final ArrayMap mFSIUpdateCandidates = new ArrayMap();
    public long mNow = -1;
    public final LinkedHashMap mPostedEntries = new LinkedHashMap();
    public final ArrayMap mNotifsExtendingLifetime = new ArrayMap();
    public final HeadsUpCoordinator$mNotifCollectionListener$1 mNotifCollectionListener = new NotifCollectionListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mNotifCollectionListener$1
        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryAdded(NotificationEntry notificationEntry) {
            NotificationInterruptStateProviderWrapper.DecisionImpl decisionImpl;
            HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
            NotificationInterruptStateProviderWrapper.FullScreenIntentDecisionImpl makeUnloggedFullScreenIntentDecision = ((NotificationInterruptStateProviderWrapper) headsUpCoordinator.mVisualInterruptionDecisionProvider).makeUnloggedFullScreenIntentDecision(notificationEntry);
            VisualInterruptionDecisionProvider visualInterruptionDecisionProvider = headsUpCoordinator.mVisualInterruptionDecisionProvider;
            ((NotificationInterruptStateProviderWrapper) visualInterruptionDecisionProvider).logFullScreenIntentDecision(makeUnloggedFullScreenIntentDecision);
            SystemClock systemClock = headsUpCoordinator.mSystemClock;
            if (makeUnloggedFullScreenIntentDecision.shouldInterrupt) {
                headsUpCoordinator.mLaunchFullScreenIntentProvider.launchFullScreenIntent(notificationEntry);
            } else if (makeUnloggedFullScreenIntentDecision.wouldInterruptWithoutDnd) {
                ((SystemClockImpl) systemClock).getClass();
                headsUpCoordinator.addForFSIReconsideration(notificationEntry, System.currentTimeMillis());
            }
            boolean checkHeadsUp = ((NotificationInterruptStateProviderImpl) ((NotificationInterruptStateProviderWrapper) visualInterruptionDecisionProvider).wrapped).checkHeadsUp(notificationEntry, true);
            NotificationInterruptStateProviderWrapper.DecisionImpl.Companion.getClass();
            if (checkHeadsUp) {
                decisionImpl = NotificationInterruptStateProviderWrapper.DecisionImpl.SHOULD_INTERRUPT;
            } else {
                decisionImpl = NotificationInterruptStateProviderWrapper.DecisionImpl.SHOULD_NOT_INTERRUPT;
            }
            boolean shouldInterrupt = decisionImpl.getShouldInterrupt();
            headsUpCoordinator.mPostedEntries.put(notificationEntry.mKey, new HeadsUpCoordinator.PostedEntry(notificationEntry, true, false, shouldInterrupt, true, false, false));
            ((SystemClockImpl) systemClock).getClass();
            headsUpCoordinator.setUpdateTime(notificationEntry, System.currentTimeMillis());
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryCleanUp(NotificationEntry notificationEntry) {
            HeadsUpCoordinator.this.mHeadsUpViewBinder.abortBindCallback(notificationEntry);
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryRemoved(NotificationEntry notificationEntry, int i) {
            boolean z;
            HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
            LinkedHashMap linkedHashMap = headsUpCoordinator.mPostedEntries;
            String str = notificationEntry.mKey;
            linkedHashMap.remove(str);
            headsUpCoordinator.mEntriesUpdateTimes.remove(str);
            headsUpCoordinator.cancelHeadsUpBind(notificationEntry);
            HeadsUpManager headsUpManager = headsUpCoordinator.mHeadsUpManager;
            if (headsUpManager.isAlerting(str)) {
                RemoteInputController remoteInputController = headsUpCoordinator.mRemoteInputManager.mRemoteInputController;
                boolean z2 = true;
                if (remoteInputController != null && remoteInputController.mSpinning.containsKey(str)) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z || NotificationRemoteInputManager.FORCE_REMOTE_INPUT_HISTORY) {
                    z2 = false;
                }
                headsUpManager.removeNotification(str, z2);
            }
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryUpdated(final NotificationEntry notificationEntry) {
            NotificationInterruptStateProviderWrapper.DecisionImpl decisionImpl;
            final boolean z;
            HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
            boolean z2 = true;
            boolean checkHeadsUp = ((NotificationInterruptStateProviderImpl) ((NotificationInterruptStateProviderWrapper) headsUpCoordinator.mVisualInterruptionDecisionProvider).wrapped).checkHeadsUp(notificationEntry, true);
            NotificationInterruptStateProviderWrapper.DecisionImpl.Companion.getClass();
            if (checkHeadsUp) {
                decisionImpl = NotificationInterruptStateProviderWrapper.DecisionImpl.SHOULD_INTERRUPT;
            } else {
                decisionImpl = NotificationInterruptStateProviderWrapper.DecisionImpl.SHOULD_NOT_INTERRUPT;
            }
            final boolean shouldInterrupt = decisionImpl.getShouldInterrupt();
            if (notificationEntry.interruption && (notificationEntry.mSbn.getNotification().flags & 8) != 0) {
                z = false;
            } else {
                z = true;
            }
            HeadsUpManager headsUpManager = headsUpCoordinator.mHeadsUpManager;
            String str = notificationEntry.mKey;
            final boolean isAlerting = headsUpManager.isAlerting(str);
            final boolean isEntryBinding = headsUpCoordinator.isEntryBinding(notificationEntry);
            final boolean z3 = notificationEntry.mIsHeadsUpByBriefExpanding;
            HeadsUpCoordinator.PostedEntry postedEntry = (HeadsUpCoordinator.PostedEntry) headsUpCoordinator.mPostedEntries.compute(str, new BiFunction() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    boolean z4;
                    boolean z5;
                    HeadsUpCoordinator.PostedEntry postedEntry2 = (HeadsUpCoordinator.PostedEntry) obj2;
                    boolean z6 = false;
                    if (postedEntry2 != null) {
                        boolean z7 = shouldInterrupt;
                        boolean z8 = z3;
                        boolean z9 = z;
                        boolean z10 = isAlerting;
                        boolean z11 = isEntryBinding;
                        postedEntry2.wasUpdated = true;
                        if (!postedEntry2.shouldHeadsUpEver && !z7 && !z8) {
                            z5 = false;
                        } else {
                            z5 = true;
                        }
                        postedEntry2.shouldHeadsUpEver = z5;
                        if (postedEntry2.shouldHeadsUpAgain || z9) {
                            z6 = true;
                        }
                        postedEntry2.shouldHeadsUpAgain = z6;
                        postedEntry2.isAlerting = z10;
                        postedEntry2.isBinding = z11;
                    } else {
                        NotificationEntry notificationEntry2 = NotificationEntry.this;
                        if (!shouldInterrupt && !z3) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        postedEntry2 = new HeadsUpCoordinator.PostedEntry(notificationEntry2, false, true, z4, z, isAlerting, isEntryBinding);
                    }
                    return postedEntry2;
                }
            });
            if (postedEntry == null || postedEntry.shouldHeadsUpEver) {
                z2 = false;
            }
            if (z2) {
                if (postedEntry.isAlerting) {
                    headsUpManager.removeNotification(postedEntry.key, false);
                } else if (postedEntry.isBinding) {
                    headsUpCoordinator.cancelHeadsUpBind(postedEntry.entry);
                }
            }
            ((SystemClockImpl) headsUpCoordinator.mSystemClock).getClass();
            headsUpCoordinator.setUpdateTime(notificationEntry, System.currentTimeMillis());
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00f1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0010 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00c4 A[SYNTHETIC] */
        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onRankingApplied() {
            /*
                Method dump skipped, instructions count: 276
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mNotifCollectionListener$1.onRankingApplied():void");
        }
    };
    public final HeadsUpCoordinator$mActionPressListener$1 mActionPressListener = new Consumer() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mActionPressListener$1
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            final NotificationEntry notificationEntry = (NotificationEntry) obj;
            HeadsUpManager headsUpManager = HeadsUpCoordinator.this.mHeadsUpManager;
            headsUpManager.getClass();
            HeadsUpManager.HeadsUpEntry headsUpEntry = headsUpManager.getHeadsUpEntry(notificationEntry.mKey);
            if (headsUpEntry != null) {
                headsUpEntry.userActionMayIndirectlyRemove = true;
            }
            final HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
            ((ExecutorImpl) headsUpCoordinator.mExecutor).execute(new Runnable() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mActionPressListener$1.1
                @Override // java.lang.Runnable
                public final void run() {
                    HeadsUpCoordinator.access$endNotifLifetimeExtensionIfExtended(HeadsUpCoordinator.this, notificationEntry);
                }
            });
        }
    };
    public final HeadsUpCoordinator$mLifetimeExtender$1 mLifetimeExtender = new NotifLifetimeExtender() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mLifetimeExtender$1
        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifLifetimeExtender
        public final void cancelLifetimeExtension(NotificationEntry notificationEntry) {
            Runnable runnable = (Runnable) HeadsUpCoordinator.this.mNotifsExtendingLifetime.remove(notificationEntry);
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifLifetimeExtender
        public final String getName() {
            return "HeadsUpCoordinator";
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifLifetimeExtender
        public final boolean maybeExtendLifetime(final NotificationEntry notificationEntry, int i) {
            final HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
            HeadsUpManager headsUpManager = headsUpCoordinator.mHeadsUpManager;
            String str = notificationEntry.mKey;
            boolean z = false;
            if (headsUpManager.canRemoveImmediately(str)) {
                return false;
            }
            HeadsUpManager headsUpManager2 = headsUpCoordinator.mHeadsUpManager;
            AlertingNotificationManager.AlertEntry alertEntry = (AlertingNotificationManager.AlertEntry) headsUpManager2.mAlertEntries.get(str);
            if (alertEntry != null) {
                z = alertEntry.isSticky();
            }
            ArrayMap arrayMap = headsUpCoordinator.mNotifsExtendingLifetime;
            DelayableExecutor delayableExecutor = headsUpCoordinator.mExecutor;
            if (z) {
                AlertingNotificationManager.AlertEntry alertEntry2 = (AlertingNotificationManager.AlertEntry) headsUpManager2.mAlertEntries.get(str);
                long j = 0;
                if (alertEntry2 != null) {
                    long j2 = alertEntry2.mEarliestRemovaltime;
                    headsUpManager2.mClock.getClass();
                    j = Math.max(0L, j2 - android.os.SystemClock.elapsedRealtime());
                }
                arrayMap.put(notificationEntry, delayableExecutor.executeDelayed(j, new Runnable() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mLifetimeExtender$1$maybeExtendLifetime$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        HeadsUpCoordinator.this.mHeadsUpManager.removeNotification(notificationEntry.mKey, true);
                    }
                }));
                return true;
            }
            ((ExecutorImpl) delayableExecutor).execute(new Runnable() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mLifetimeExtender$1$maybeExtendLifetime$2
                @Override // java.lang.Runnable
                public final void run() {
                    HeadsUpCoordinator.this.mHeadsUpManager.removeNotification(notificationEntry.mKey, false);
                }
            });
            arrayMap.put(notificationEntry, null);
            return true;
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifLifetimeExtender
        public final void setCallback(NotifCollection$$ExternalSyntheticLambda8 notifCollection$$ExternalSyntheticLambda8) {
            HeadsUpCoordinator.this.mEndLifetimeExtension = notifCollection$$ExternalSyntheticLambda8;
        }
    };
    public final HeadsUpCoordinator$mNotifPromoter$1 mNotifPromoter = new NotifPromoter() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mNotifPromoter$1
        {
            super("HeadsUpCoordinator");
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifPromoter
        public final boolean shouldPromoteToTopLevel(NotificationEntry notificationEntry) {
            return HeadsUpCoordinator.access$isGoingToShowHunNoRetract(HeadsUpCoordinator.this, notificationEntry);
        }
    };
    public final HeadsUpCoordinator$sectioner$1 sectioner = new NotifSectioner() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$sectioner$1
        {
            super("HeadsUp", 4);
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        public final NotifComparator getComparator() {
            final HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
            return new NotifComparator() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$sectioner$1$getComparator$1
                {
                    super("HeadsUp");
                }

                @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifComparator, java.util.Comparator
                public final int compare(ListEntry listEntry, ListEntry listEntry2) {
                    HeadsUpManager headsUpManager = HeadsUpCoordinator.this.mHeadsUpManager;
                    NotificationEntry representativeEntry = listEntry.getRepresentativeEntry();
                    NotificationEntry representativeEntry2 = listEntry2.getRepresentativeEntry();
                    headsUpManager.getClass();
                    if (representativeEntry != null && representativeEntry2 != null) {
                        HeadsUpManager.HeadsUpEntry headsUpEntry = headsUpManager.getHeadsUpEntry(representativeEntry.mKey);
                        HeadsUpManager.HeadsUpEntry headsUpEntry2 = headsUpManager.getHeadsUpEntry(representativeEntry2.mKey);
                        if (headsUpEntry != null && headsUpEntry2 != null) {
                            return headsUpEntry.compareTo((AlertingNotificationManager.AlertEntry) headsUpEntry2);
                        }
                        return Boolean.compare(headsUpEntry == null, headsUpEntry2 == null);
                    }
                    return Boolean.compare(representativeEntry == null, representativeEntry2 == null);
                }
            };
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        public final NodeController getHeaderNodeController() {
            return null;
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        public final boolean isInSection(ListEntry listEntry) {
            return HeadsUpCoordinator.access$isGoingToShowHunNoRetract(HeadsUpCoordinator.this, listEntry);
        }
    };
    public final HeadsUpCoordinator$mOnHeadsUpChangedListener$1 mOnHeadsUpChangedListener = new OnHeadsUpChangedListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mOnHeadsUpChangedListener$1
        @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
        public final void onHeadsUpPinned(NotificationEntry notificationEntry) {
            if (notificationEntry.mIsHeadsUpByBriefExpanding) {
                HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
                HeadsUpCoordinator.PostedEntry postedEntry = (HeadsUpCoordinator.PostedEntry) headsUpCoordinator.mPostedEntries.get(notificationEntry.mKey);
                if (postedEntry != null) {
                    postedEntry.isHeadsUpByBriefExpanding = true;
                }
                headsUpCoordinator.mNotifPromoter.invalidateList("headsUpFromBrief: " + NotificationUtilsKt.getLogKey(notificationEntry));
            }
        }

        @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
        public final void onHeadsUpStateChanged(NotificationEntry notificationEntry, boolean z) {
            if (!z) {
                HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
                headsUpCoordinator.mNotifPromoter.invalidateList("headsUpEnded: " + NotificationUtilsKt.getLogKey(notificationEntry));
                headsUpCoordinator.mHeadsUpViewBinder.unbindHeadsUpView(notificationEntry);
                HeadsUpCoordinator.access$endNotifLifetimeExtensionIfExtended(headsUpCoordinator, notificationEntry);
            }
        }

        @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
        public final void onHeadsUpUnPinned(NotificationEntry notificationEntry) {
            HeadsUpCoordinator.PostedEntry postedEntry = (HeadsUpCoordinator.PostedEntry) HeadsUpCoordinator.this.mPostedEntries.get(notificationEntry.mKey);
            if (postedEntry != null) {
                postedEntry.isHeadsUpByBriefExpanding = false;
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PostedEntry {
        public final NotificationEntry entry;
        public boolean isAlerting;
        public boolean isBinding;
        public boolean isHeadsUpByBriefExpanding;
        public final String key;
        public boolean shouldHeadsUpAgain;
        public boolean shouldHeadsUpEver;
        public final boolean wasAdded;
        public boolean wasUpdated;

        public PostedEntry(NotificationEntry notificationEntry, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
            this.entry = notificationEntry;
            this.wasAdded = z;
            this.wasUpdated = z2;
            this.shouldHeadsUpEver = z3;
            this.shouldHeadsUpAgain = z4;
            this.isAlerting = z5;
            this.isBinding = z6;
            this.key = notificationEntry.mKey;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PostedEntry)) {
                return false;
            }
            PostedEntry postedEntry = (PostedEntry) obj;
            if (Intrinsics.areEqual(this.entry, postedEntry.entry) && this.wasAdded == postedEntry.wasAdded && this.wasUpdated == postedEntry.wasUpdated && this.shouldHeadsUpEver == postedEntry.shouldHeadsUpEver && this.shouldHeadsUpAgain == postedEntry.shouldHeadsUpAgain && this.isAlerting == postedEntry.isAlerting && this.isBinding == postedEntry.isBinding) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode = this.entry.hashCode() * 31;
            int i = 1;
            boolean z = this.wasAdded;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            int i3 = (hashCode + i2) * 31;
            boolean z2 = this.wasUpdated;
            int i4 = z2;
            if (z2 != 0) {
                i4 = 1;
            }
            int i5 = (i3 + i4) * 31;
            boolean z3 = this.shouldHeadsUpEver;
            int i6 = z3;
            if (z3 != 0) {
                i6 = 1;
            }
            int i7 = (i5 + i6) * 31;
            boolean z4 = this.shouldHeadsUpAgain;
            int i8 = z4;
            if (z4 != 0) {
                i8 = 1;
            }
            int i9 = (i7 + i8) * 31;
            boolean z5 = this.isAlerting;
            int i10 = z5;
            if (z5 != 0) {
                i10 = 1;
            }
            int i11 = (i9 + i10) * 31;
            boolean z6 = this.isBinding;
            if (!z6) {
                i = z6 ? 1 : 0;
            }
            return i11 + i;
        }

        public final String toString() {
            boolean z = this.wasUpdated;
            boolean z2 = this.shouldHeadsUpEver;
            boolean z3 = this.shouldHeadsUpAgain;
            boolean z4 = this.isAlerting;
            boolean z5 = this.isBinding;
            StringBuilder sb = new StringBuilder("PostedEntry(entry=");
            sb.append(this.entry);
            sb.append(", wasAdded=");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, this.wasAdded, ", wasUpdated=", z, ", shouldHeadsUpEver=");
            KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, z2, ", shouldHeadsUpAgain=", z3, ", isAlerting=");
            sb.append(z4);
            sb.append(", isBinding=");
            sb.append(z5);
            sb.append(")");
            return sb.toString();
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mNotifPromoter$1] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$sectioner$1] */
    /* JADX WARN: Type inference failed for: r1v12, types: [com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mOnHeadsUpChangedListener$1] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mNotifCollectionListener$1] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mActionPressListener$1] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mLifetimeExtender$1] */
    public HeadsUpCoordinator(HeadsUpCoordinatorLogger headsUpCoordinatorLogger, SystemClock systemClock, HeadsUpManager headsUpManager, HeadsUpViewBinder headsUpViewBinder, VisualInterruptionDecisionProvider visualInterruptionDecisionProvider, NotificationRemoteInputManager notificationRemoteInputManager, LaunchFullScreenIntentProvider launchFullScreenIntentProvider, NotifPipelineFlags notifPipelineFlags, NodeController nodeController, DelayableExecutor delayableExecutor) {
        this.mLogger = headsUpCoordinatorLogger;
        this.mSystemClock = systemClock;
        this.mHeadsUpManager = headsUpManager;
        this.mHeadsUpViewBinder = headsUpViewBinder;
        this.mVisualInterruptionDecisionProvider = visualInterruptionDecisionProvider;
        this.mRemoteInputManager = notificationRemoteInputManager;
        this.mLaunchFullScreenIntentProvider = launchFullScreenIntentProvider;
        this.mExecutor = delayableExecutor;
    }

    public static final void access$endNotifLifetimeExtensionIfExtended(HeadsUpCoordinator headsUpCoordinator, NotificationEntry notificationEntry) {
        ArrayMap arrayMap = headsUpCoordinator.mNotifsExtendingLifetime;
        if (arrayMap.containsKey(notificationEntry)) {
            Runnable runnable = (Runnable) arrayMap.remove(notificationEntry);
            if (runnable != null) {
                runnable.run();
            }
            NotifCollection$$ExternalSyntheticLambda8 notifCollection$$ExternalSyntheticLambda8 = headsUpCoordinator.mEndLifetimeExtension;
            if (notifCollection$$ExternalSyntheticLambda8 != null) {
                notifCollection$$ExternalSyntheticLambda8.onEndLifetimeExtension(notificationEntry, headsUpCoordinator.mLifetimeExtender);
            }
        }
    }

    public static final void access$handlePostedEntry(HeadsUpCoordinator headsUpCoordinator, PostedEntry postedEntry, HunMutatorImpl hunMutatorImpl, String str) {
        boolean z;
        HeadsUpCoordinatorLogger headsUpCoordinatorLogger = headsUpCoordinator.mLogger;
        if (headsUpCoordinatorLogger.verbose) {
            LogLevel logLevel = LogLevel.VERBOSE;
            HeadsUpCoordinatorLogger$logPostedEntryWillEvaluate$2 headsUpCoordinatorLogger$logPostedEntryWillEvaluate$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinatorLogger$logPostedEntryWillEvaluate$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    LogMessage logMessage = (LogMessage) obj;
                    String str1 = logMessage.getStr1();
                    String str2 = logMessage.getStr2();
                    return KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("will evaluate posted entry ", str1, ": reason=", str2, " shouldHeadsUpEver="), logMessage.getBool1(), " shouldHeadsUpAgain=", logMessage.getBool2());
                }
            };
            LogBuffer logBuffer = headsUpCoordinatorLogger.buffer;
            LogMessage obtain = logBuffer.obtain("HeadsUpCoordinator", logLevel, headsUpCoordinatorLogger$logPostedEntryWillEvaluate$2, null);
            obtain.setStr1(postedEntry.key);
            obtain.setStr2(str);
            obtain.setBool1(postedEntry.shouldHeadsUpEver);
            obtain.setBool2(postedEntry.shouldHeadsUpAgain);
            logBuffer.commit(obtain);
        }
        if (postedEntry.wasAdded) {
            if (postedEntry.shouldHeadsUpEver) {
                headsUpCoordinator.bindForAsyncHeadsUp(postedEntry);
                return;
            }
            return;
        }
        boolean z2 = postedEntry.isAlerting;
        if (!z2 && !postedEntry.isBinding) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            boolean z3 = postedEntry.shouldHeadsUpEver;
            String str2 = postedEntry.key;
            if (z3) {
                if (z2) {
                    hunMutatorImpl.headsUpManager.updateNotification(str2, postedEntry.shouldHeadsUpAgain);
                    return;
                }
                return;
            }
            if (z2) {
                hunMutatorImpl.getClass();
                ((ArrayList) hunMutatorImpl.deferred).add(new Pair(str2, Boolean.FALSE));
                return;
            }
            headsUpCoordinator.cancelHeadsUpBind(postedEntry.entry);
            return;
        }
        if (postedEntry.shouldHeadsUpEver && postedEntry.shouldHeadsUpAgain) {
            headsUpCoordinator.bindForAsyncHeadsUp(postedEntry);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r1.shouldHeadsUpAgain == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x003f, code lost:
    
        if (r5.isEntryBinding(r6) == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean access$isGoingToShowHunNoRetract(com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator r5, com.android.systemui.statusbar.notification.collection.ListEntry r6) {
        /*
            java.util.LinkedHashMap r0 = r5.mPostedEntries
            java.lang.String r1 = r6.getKey()
            java.lang.Object r1 = r0.get(r1)
            com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$PostedEntry r1 = (com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator.PostedEntry) r1
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2f
            boolean r5 = r1.isAlerting
            if (r5 != 0) goto L1b
            boolean r5 = r1.isBinding
            if (r5 == 0) goto L19
            goto L1b
        L19:
            r5 = r3
            goto L1c
        L1b:
            r5 = r2
        L1c:
            if (r5 != 0) goto L2d
            boolean r5 = r1.shouldHeadsUpEver
            if (r5 == 0) goto L2b
            boolean r5 = r1.wasAdded
            if (r5 != 0) goto L2d
            boolean r5 = r1.shouldHeadsUpAgain
            if (r5 == 0) goto L2b
            goto L2d
        L2b:
            r5 = r3
            goto L42
        L2d:
            r5 = r2
            goto L42
        L2f:
            java.lang.String r1 = r6.getKey()
            com.android.systemui.statusbar.policy.HeadsUpManager r4 = r5.mHeadsUpManager
            boolean r1 = r4.isAlerting(r1)
            if (r1 != 0) goto L2d
            boolean r5 = r5.isEntryBinding(r6)
            if (r5 == 0) goto L2b
            goto L2d
        L42:
            if (r5 != 0) goto L58
            java.lang.String r5 = r6.getKey()
            java.lang.Object r5 = r0.get(r5)
            com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$PostedEntry r5 = (com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator.PostedEntry) r5
            if (r5 == 0) goto L53
            boolean r5 = r5.isHeadsUpByBriefExpanding
            goto L54
        L53:
            r5 = r3
        L54:
            if (r5 == 0) goto L57
            goto L58
        L57:
            r2 = r3
        L58:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator.access$isGoingToShowHunNoRetract(com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator, com.android.systemui.statusbar.notification.collection.ListEntry):boolean");
    }

    public final void addForFSIReconsideration(NotificationEntry notificationEntry, long j) {
        this.mFSIUpdateCandidates.put(notificationEntry.mKey, Long.valueOf(j));
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        this.mNotifPipeline = notifPipeline;
        HeadsUpManager headsUpManager = this.mHeadsUpManager;
        headsUpManager.addListener(this.mOnHeadsUpChangedListener);
        notifPipeline.addCollectionListener(this.mNotifCollectionListener);
        HeadsUpCoordinator$attach$1 headsUpCoordinator$attach$1 = new HeadsUpCoordinator$attach$1(this);
        ShadeListBuilder shadeListBuilder = notifPipeline.mShadeListBuilder;
        shadeListBuilder.getClass();
        Assert.isMainThread();
        shadeListBuilder.mPipelineState.requireState();
        ((ArrayList) shadeListBuilder.mOnBeforeTransformGroupsListeners).add(headsUpCoordinator$attach$1);
        notifPipeline.addOnBeforeFinalizeFilterListener(new OnBeforeFinalizeFilterListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$attach$2
            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeFinalizeFilterListener
            public final void onBeforeFinalizeFilter(final List list) {
                final HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
                headsUpCoordinator.getClass();
                HeadsUpCoordinatorKt.access$modifyHuns(headsUpCoordinator.mHeadsUpManager, new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$onBeforeFinalizeFilter$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:144:0x0188, code lost:
                    
                        if (r6.isEntryBinding(r12) == false) goto L70;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:67:0x0177, code lost:
                    
                        if (r11 != false) goto L71;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:86:0x01fc, code lost:
                    
                        if (r4 != false) goto L94;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:115:0x030a  */
                    /* JADX WARN: Removed duplicated region for block: B:126:0x0337  */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final java.lang.Object invoke(java.lang.Object r27) {
                        /*
                            Method dump skipped, instructions count: 1014
                            To view this dump change 'Code comments level' option to 'DEBUG'
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$onBeforeFinalizeFilter$1.invoke(java.lang.Object):java.lang.Object");
                    }
                });
            }
        });
        notifPipeline.addPromoter(this.mNotifPromoter);
        notifPipeline.addNotificationLifetimeExtender(this.mLifetimeExtender);
        this.mRemoteInputManager.mActionPressListeners.addIfAbsent(this.mActionPressListener);
        ((ArrayList) headsUpManager.mCallbacks).add(new HeadsUpCoordinator$attach$3(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$bindForAsyncHeadsUp$2] */
    public final void bindForAsyncHeadsUp(PostedEntry postedEntry) {
        this.mEntriesBindingUntil.put(postedEntry.key, Long.valueOf(this.mNow + 1000));
        this.mHeadsUpViewBinder.bindHeadsUpView(postedEntry.entry, new NotifBindPipeline.BindCallback() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$bindForAsyncHeadsUp$2
            @Override // com.android.systemui.statusbar.notification.row.NotifBindPipeline.BindCallback
            public final void onBindFinished(NotificationEntry notificationEntry) {
                HeadsUpCoordinator headsUpCoordinator = HeadsUpCoordinator.this;
                HeadsUpManager headsUpManager = headsUpCoordinator.mHeadsUpManager;
                headsUpManager.mLogger.logShowNotification(notificationEntry);
                AlertingNotificationManager.AlertEntry createAlertEntry = headsUpManager.createAlertEntry();
                createAlertEntry.setEntry(notificationEntry);
                ArrayMap arrayMap = headsUpManager.mAlertEntries;
                String str = notificationEntry.mKey;
                arrayMap.put(str, createAlertEntry);
                headsUpManager.onAlertEntryAdded(createAlertEntry);
                ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
                if (expandableNotificationRow != null) {
                    expandableNotificationRow.sendAccessibilityEvent(2048);
                }
                notificationEntry.mIsAlerting = true;
                headsUpManager.updateNotification(str, true);
                notificationEntry.interruption = true;
                headsUpCoordinator.mEntriesBindingUntil.remove(str);
                if (notificationEntry.row.mIsPinned) {
                    NotificationColorPicker notificationColorPicker = (NotificationColorPicker) Dependency.get(NotificationColorPicker.class);
                    ExpandableNotificationRow expandableNotificationRow2 = notificationEntry.row;
                    notificationColorPicker.getClass();
                    notificationEntry.row.applyHeadsUpBackground(NotificationColorPicker.isCustom(expandableNotificationRow2));
                }
            }
        });
    }

    public final void cancelHeadsUpBind(NotificationEntry notificationEntry) {
        this.mEntriesBindingUntil.remove(notificationEntry.mKey);
        this.mHeadsUpViewBinder.abortBindCallback(notificationEntry);
    }

    public final boolean isEntryBinding(ListEntry listEntry) {
        Long l = (Long) this.mEntriesBindingUntil.get(listEntry.getKey());
        if (l != null && l.longValue() >= this.mNow) {
            return true;
        }
        return false;
    }

    public final void setUpdateTime(NotificationEntry notificationEntry, long j) {
        this.mEntriesUpdateTimes.put(notificationEntry.mKey, Long.valueOf(j));
    }
}
