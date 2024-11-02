package com.android.systemui.statusbar.notification.collection;

import android.app.NotificationChannel;
import android.os.Handler;
import android.os.RemoteException;
import android.os.Trace;
import android.os.UserHandle;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.util.ArrayMap;
import android.util.Pair;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.internal.statusbar.IStatusBarService;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.biometrics.SideFpsController$$ExternalSyntheticOutline0;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.dump.LogBufferEulogizer;
import com.android.systemui.statusbar.NotificationListener;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder;
import com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator;
import com.android.systemui.statusbar.notification.collection.inflation.OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;
import com.android.systemui.statusbar.notification.collection.notifcollection.BindEntryEvent;
import com.android.systemui.statusbar.notification.collection.notifcollection.ChannelChangedEvent;
import com.android.systemui.statusbar.notification.collection.notifcollection.CleanUpEntryEvent;
import com.android.systemui.statusbar.notification.collection.notifcollection.DismissedByUserStats;
import com.android.systemui.statusbar.notification.collection.notifcollection.EntryAddedEvent;
import com.android.systemui.statusbar.notification.collection.notifcollection.EntryRemovedEvent;
import com.android.systemui.statusbar.notification.collection.notifcollection.EntryUpdatedEvent;
import com.android.systemui.statusbar.notification.collection.notifcollection.InitEntryEvent;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionInconsistencyTracker;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLoggerKt;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifEvent;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifLifetimeExtender;
import com.android.systemui.statusbar.notification.collection.notifcollection.RankingAppliedEvent;
import com.android.systemui.statusbar.notification.collection.notifcollection.RankingUpdatedEvent;
import com.android.systemui.statusbar.notification.collection.provider.NotificationDismissibilityProvider;
import com.android.systemui.statusbar.notification.collection.provider.NotificationDismissibilityProviderImpl;
import com.android.systemui.util.Assert;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifCollection implements Dumpable, PipelineDumpable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean mAmDispatchingToOtherCode;
    public boolean mAttached;
    public final Executor mBgExecutor;
    public ShadeListBuilder.AnonymousClass1 mBuildListener;
    public final SystemClock mClock;
    public final List mDismissInterceptors;
    public final NotificationDismissibilityProvider mDismissibilityProvider;
    public final DumpManager mDumpManager;
    public final LogBufferEulogizer mEulogizer;
    public final Queue mEventQueue;
    public final HashMap mFutureDismissals;
    public final NotifCollectionInconsistencyTracker mInconsistencyTracker;
    public final List mLifetimeExtenders;
    public final NotifCollectionLogger mLogger;
    public final Handler mMainHandler;
    public final List mNotifCollectionListeners;
    public final AnonymousClass1 mNotifHandler;
    public final Map mNotificationSet;
    public final Collection mReadOnlyNotificationSet;
    public final NotifCollection$$ExternalSyntheticLambda0 mRebuildListRunnable;
    public final IStatusBarService mStatusBarService;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.collection.NotifCollection$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements NotificationListener.NotificationHandler {
        public AnonymousClass1() {
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationChannelModified(String str, UserHandle userHandle, NotificationChannel notificationChannel, int i) {
            int i2 = NotifCollection.$r8$clinit;
            NotifCollection notifCollection = NotifCollection.this;
            notifCollection.getClass();
            Assert.isMainThread();
            ((ArrayDeque) notifCollection.mEventQueue).add(new ChannelChangedEvent(str, userHandle, notificationChannel, i));
            Trace.beginSection("NotifCollection.dispatchEventsAndAsynchronouslyRebuildList");
            notifCollection.dispatchEvents();
            Handler handler = notifCollection.mMainHandler;
            NotifCollection$$ExternalSyntheticLambda0 notifCollection$$ExternalSyntheticLambda0 = notifCollection.mRebuildListRunnable;
            if (!handler.hasCallbacks(notifCollection$$ExternalSyntheticLambda0)) {
                handler.postDelayed(notifCollection$$ExternalSyntheticLambda0, 1000L);
            }
            Trace.endSection();
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationPosted(StatusBarNotification statusBarNotification, NotificationListenerService.RankingMap rankingMap) {
            int i = NotifCollection.$r8$clinit;
            NotifCollection notifCollection = NotifCollection.this;
            notifCollection.getClass();
            Assert.isMainThread();
            String key = statusBarNotification.getKey();
            NotificationListenerService.Ranking ranking = new NotificationListenerService.Ranking();
            if (rankingMap.getRanking(key, ranking)) {
                notifCollection.postNotification(statusBarNotification, ranking);
                notifCollection.applyRanking(rankingMap);
                notifCollection.dispatchEventsAndRebuildList("onNotificationPosted");
                return;
            }
            throw new IllegalArgumentException(KeyAttributes$$ExternalSyntheticOutline0.m("Ranking map doesn't contain key: ", key));
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationRankingUpdate(NotificationListenerService.RankingMap rankingMap) {
            int i = NotifCollection.$r8$clinit;
            NotifCollection notifCollection = NotifCollection.this;
            notifCollection.getClass();
            Assert.isMainThread();
            ((ArrayDeque) notifCollection.mEventQueue).add(new RankingUpdatedEvent(rankingMap));
            notifCollection.applyRanking(rankingMap);
            notifCollection.dispatchEventsAndRebuildList("onNotificationRankingUpdate");
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationRemoved(StatusBarNotification statusBarNotification, NotificationListenerService.RankingMap rankingMap, int i) {
            int i2 = NotifCollection.$r8$clinit;
            NotifCollection notifCollection = NotifCollection.this;
            notifCollection.getClass();
            Assert.isMainThread();
            NotifCollectionLogger notifCollectionLogger = notifCollection.mLogger;
            notifCollectionLogger.logNotifRemoved(statusBarNotification, i);
            NotificationEntry notificationEntry = (NotificationEntry) ((ArrayMap) notifCollection.mNotificationSet).get(statusBarNotification.getKey());
            if (notificationEntry == null) {
                notifCollectionLogger.logNoNotificationToRemoveWithKey(statusBarNotification, i);
                return;
            }
            notificationEntry.mCancellationReason = i;
            notifCollection.tryRemoveNotification(notificationEntry);
            notifCollection.applyRanking(rankingMap);
            notifCollection.dispatchEventsAndRebuildList("onNotificationRemoved");
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationsInitialized() {
            ((SystemClockImpl) NotifCollection.this.mClock).getClass();
            android.os.SystemClock.uptimeMillis();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DismissedByUserStatsCreator {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FutureDismissal implements Runnable {
        public boolean mDidRun;
        public boolean mDidSystemServerCancel;
        public final NotificationEntry mEntry;
        public final String mLabel;
        public final DismissedByUserStatsCreator mStatsCreator;
        public final NotificationEntry mSummaryToDismiss;

        public /* synthetic */ FutureDismissal(NotifCollection notifCollection, NotificationEntry notificationEntry, int i, OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0 onUserInteractionCallbackImpl$$ExternalSyntheticLambda0) {
            this(notificationEntry, i, (DismissedByUserStatsCreator) onUserInteractionCallbackImpl$$ExternalSyntheticLambda0);
        }

        @Override // java.lang.Runnable
        public final void run() {
            Assert.isMainThread();
            if (this.mDidRun) {
                NotifCollection.this.mLogger.logFutureDismissalDoubleRun(this);
                return;
            }
            this.mDidRun = true;
            NotifCollection.this.mFutureDismissals.remove(this.mEntry.mKey);
            NotificationEntry entry = NotifCollection.this.getEntry(this.mEntry.mKey);
            DismissedByUserStats createDismissedByUserStats = ((OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0) this.mStatsCreator).createDismissedByUserStats(this.mEntry);
            NotificationEntry notificationEntry = this.mSummaryToDismiss;
            if (notificationEntry != null) {
                NotificationEntry entry2 = NotifCollection.this.getEntry(notificationEntry.mKey);
                if (entry2 == this.mSummaryToDismiss) {
                    NotifCollection.this.mLogger.logFutureDismissalDismissing(this, UniversalCredentialUtil.AGENT_SUMMARY);
                    NotifCollection notifCollection = NotifCollection.this;
                    NotificationEntry notificationEntry2 = this.mSummaryToDismiss;
                    notifCollection.dismissNotification(notificationEntry2, ((OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0) this.mStatsCreator).createDismissedByUserStats(notificationEntry2));
                } else {
                    NotifCollection.this.mLogger.logFutureDismissalMismatchedEntry(this, UniversalCredentialUtil.AGENT_SUMMARY, entry2);
                }
            }
            if (this.mDidSystemServerCancel) {
                NotifCollection.this.mLogger.logFutureDismissalAlreadyCancelledByServer(this);
            } else if (entry == this.mEntry) {
                NotifCollection.this.mLogger.logFutureDismissalDismissing(this, "entry");
                NotifCollection.this.dismissNotification(this.mEntry, createDismissedByUserStats);
            } else {
                NotifCollection.this.mLogger.logFutureDismissalMismatchedEntry(this, "entry", entry);
            }
        }

        private FutureDismissal(NotificationEntry notificationEntry, int i, DismissedByUserStatsCreator dismissedByUserStatsCreator) {
            this.mEntry = notificationEntry;
            this.mStatsCreator = dismissedByUserStatsCreator;
            NotifCollection.this.getClass();
            final String groupKey = notificationEntry.mSbn.getGroupKey();
            ArrayMap arrayMap = (ArrayMap) NotifCollection.this.mNotificationSet;
            final int i2 = 1;
            final int i3 = 0;
            if (arrayMap.get(notificationEntry.mKey) == notificationEntry && arrayMap.values().stream().filter(new Predicate() { // from class: com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda2
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (i3) {
                        case 0:
                            return Objects.equals(((NotificationEntry) obj).mSbn.getGroupKey(), groupKey);
                        default:
                            return Objects.equals(((NotificationEntry) obj).mSbn.getGroupKey(), groupKey);
                    }
                }
            }).filter(new Predicate() { // from class: com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda3
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (i3) {
                        case 0:
                            return !((NotificationEntry) obj).mSbn.getNotification().isGroupSummary();
                        default:
                            return ((NotificationEntry) obj).mSbn.getNotification().isGroupSummary();
                    }
                }
            }).count() == 1) {
                i3 = 1;
            }
            NotificationEntry notificationEntry2 = null;
            if (i3 != 0) {
                final String groupKey2 = notificationEntry.mSbn.getGroupKey();
                NotificationEntry notificationEntry3 = (NotificationEntry) ((ArrayMap) NotifCollection.this.mNotificationSet).values().stream().filter(new Predicate() { // from class: com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda2
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        switch (i2) {
                            case 0:
                                return Objects.equals(((NotificationEntry) obj).mSbn.getGroupKey(), groupKey2);
                            default:
                                return Objects.equals(((NotificationEntry) obj).mSbn.getGroupKey(), groupKey2);
                        }
                    }
                }).filter(new Predicate() { // from class: com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda3
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        switch (i2) {
                            case 0:
                                return !((NotificationEntry) obj).mSbn.getNotification().isGroupSummary();
                            default:
                                return ((NotificationEntry) obj).mSbn.getNotification().isGroupSummary();
                        }
                    }
                }).findFirst().orElse(null);
                if (notificationEntry3 != null && ((NotificationDismissibilityProviderImpl) NotifCollection.this.mDismissibilityProvider).isDismissable(notificationEntry3)) {
                    notificationEntry2 = notificationEntry3;
                }
            }
            this.mSummaryToDismiss = notificationEntry2;
            this.mLabel = "<FutureDismissal@" + Integer.toHexString(hashCode()) + " entry=" + NotificationUtils.logKey(notificationEntry) + " reason=" + NotifCollectionLoggerKt.cancellationReasonDebugString(i) + " summary=" + NotificationUtils.logKey(notificationEntry2) + ">";
        }
    }

    static {
        TimeUnit.SECONDS.toMillis(5L);
    }

    /* JADX WARN: Type inference failed for: r3v9, types: [com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda0] */
    public NotifCollection(IStatusBarService iStatusBarService, SystemClock systemClock, NotifPipelineFlags notifPipelineFlags, NotifCollectionLogger notifCollectionLogger, Handler handler, Executor executor, LogBufferEulogizer logBufferEulogizer, DumpManager dumpManager, NotificationDismissibilityProvider notificationDismissibilityProvider) {
        ArrayMap arrayMap = new ArrayMap();
        this.mNotificationSet = arrayMap;
        this.mReadOnlyNotificationSet = Collections.unmodifiableCollection(arrayMap.values());
        this.mFutureDismissals = new HashMap();
        this.mNotifCollectionListeners = new ArrayList();
        this.mLifetimeExtenders = new ArrayList();
        this.mDismissInterceptors = new ArrayList();
        this.mEventQueue = new ArrayDeque();
        this.mRebuildListRunnable = new Runnable() { // from class: com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NotifCollection notifCollection = NotifCollection.this;
                ShadeListBuilder.AnonymousClass1 anonymousClass1 = notifCollection.mBuildListener;
                if (anonymousClass1 != null) {
                    Assert.isMainThread();
                    ArrayList arrayList = new ArrayList(notifCollection.mReadOnlyNotificationSet);
                    ShadeListBuilder shadeListBuilder = ShadeListBuilder.this;
                    shadeListBuilder.mPendingEntries = arrayList;
                    shadeListBuilder.mLogger.logOnBuildList("asynchronousUpdate");
                    shadeListBuilder.rebuildListIfBefore(1);
                }
            }
        };
        this.mAttached = false;
        this.mNotifHandler = new AnonymousClass1();
        this.mStatusBarService = iStatusBarService;
        this.mClock = systemClock;
        this.mLogger = notifCollectionLogger;
        this.mMainHandler = handler;
        this.mBgExecutor = executor;
        this.mEulogizer = logBufferEulogizer;
        this.mDumpManager = dumpManager;
        this.mInconsistencyTracker = new NotifCollectionInconsistencyTracker(notifCollectionLogger);
        this.mDismissibilityProvider = notificationDismissibilityProvider;
    }

    public static boolean hasFlag(NotificationEntry notificationEntry, int i) {
        if ((notificationEntry.mSbn.getNotification().flags & i) != 0) {
            return true;
        }
        return false;
    }

    public static boolean shouldAutoDismissChildren(NotificationEntry notificationEntry, String str) {
        if (notificationEntry.mSbn.getGroupKey().equals(str) && !notificationEntry.mSbn.getNotification().isGroupSummary() && !hasFlag(notificationEntry, 2) && !hasFlag(notificationEntry, 4096) && !hasFlag(notificationEntry, 32) && ((notificationEntry.getChannel() == null || !notificationEntry.getChannel().isImportantConversation()) && notificationEntry.mDismissState != NotificationEntry.DismissState.DISMISSED && !notificationEntry.getChannel().isImportantConversation())) {
            return true;
        }
        return false;
    }

    public static boolean userIdMatches(NotificationEntry notificationEntry, int i) {
        if (i != -1 && notificationEntry.mSbn.getUser().getIdentifier() != -1 && notificationEntry.mSbn.getUser().getIdentifier() != i) {
            return false;
        }
        return true;
    }

    public final void applyRanking(NotificationListenerService.RankingMap rankingMap) {
        Map<String, NotificationEntry> emptyMap;
        Set set = null;
        ArrayMap arrayMap = null;
        for (NotificationEntry notificationEntry : ((ArrayMap) this.mNotificationSet).values()) {
            if (!notificationEntry.isCanceled()) {
                NotificationListenerService.Ranking ranking = new NotificationListenerService.Ranking();
                String str = notificationEntry.mKey;
                if (rankingMap.getRanking(str, ranking)) {
                    notificationEntry.setRanking(ranking);
                    String overrideGroupKey = ranking.getOverrideGroupKey();
                    if (!Objects.equals(notificationEntry.mSbn.getOverrideGroupKey(), overrideGroupKey)) {
                        notificationEntry.mSbn.setOverrideGroupKey(overrideGroupKey);
                    }
                } else {
                    if (arrayMap == null) {
                        arrayMap = new ArrayMap();
                    }
                    arrayMap.put(str, notificationEntry);
                }
            }
        }
        NotifCollectionInconsistencyTracker notifCollectionInconsistencyTracker = this.mInconsistencyTracker;
        notifCollectionInconsistencyTracker.logNewMissingNotifications(rankingMap);
        Set<String> set2 = notifCollectionInconsistencyTracker.notificationsWithoutRankings;
        if (arrayMap != null) {
            emptyMap = arrayMap;
        } else {
            emptyMap = MapsKt__MapsKt.emptyMap();
        }
        notifCollectionInconsistencyTracker.maybeLogInconsistentRankings(set2, emptyMap, rankingMap);
        if (arrayMap != null) {
            set = arrayMap.keySet();
        }
        if (set == null) {
            set = EmptySet.INSTANCE;
        }
        notifCollectionInconsistencyTracker.notificationsWithoutRankings = set;
        if (arrayMap != null) {
            for (NotificationEntry notificationEntry2 : arrayMap.values()) {
                notificationEntry2.mCancellationReason = 0;
                tryRemoveNotification(notificationEntry2);
            }
        }
        ((ArrayDeque) this.mEventQueue).add(new RankingAppliedEvent());
    }

    public final void cancelDismissInterception(NotificationEntry notificationEntry) {
        this.mAmDispatchingToOtherCode = true;
        Iterator it = ((ArrayList) notificationEntry.mDismissInterceptors).iterator();
        while (it.hasNext()) {
            ((HashSet) BubbleCoordinator.this.mInterceptedDismissalEntries).remove(notificationEntry.mKey);
        }
        this.mAmDispatchingToOtherCode = false;
        ((ArrayList) notificationEntry.mDismissInterceptors).clear();
    }

    public final void cancelLifetimeExtension(NotificationEntry notificationEntry) {
        this.mAmDispatchingToOtherCode = true;
        Iterator it = ((ArrayList) notificationEntry.mLifetimeExtenders).iterator();
        while (it.hasNext()) {
            ((NotifLifetimeExtender) it.next()).cancelLifetimeExtension(notificationEntry);
        }
        this.mAmDispatchingToOtherCode = false;
        ((ArrayList) notificationEntry.mLifetimeExtenders).clear();
    }

    public final void checkForReentrantCall() {
        if (!this.mAmDispatchingToOtherCode) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Reentrant call detected");
        this.mEulogizer.record(illegalStateException);
        throw illegalStateException;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0089 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dismissAllNotifications(int r10, boolean r11) {
        /*
            r9 = this;
            com.android.systemui.util.Assert.isMainThread()
            r9.checkForReentrantCall()
            com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger r0 = r9.mLogger
            r0.logDismissAll(r10)
            com.android.internal.statusbar.IStatusBarService r1 = r9.mStatusBarService     // Catch: android.os.RemoteException -> L11
            r1.onClearAllNotifications(r10)     // Catch: android.os.RemoteException -> L11
            goto L15
        L11:
            r1 = move-exception
            r0.logRemoteExceptionOnClearAllNotifications(r1)
        L15:
            java.util.ArrayList r1 = new java.util.ArrayList
            com.android.systemui.util.Assert.isMainThread()
            java.util.Collection r2 = r9.mReadOnlyNotificationSet
            r1.<init>(r2)
            int r2 = r1.size()
            r3 = 1
            int r2 = r2 - r3
        L25:
            if (r2 < 0) goto L8c
            java.lang.Object r4 = r1.get(r2)
            com.android.systemui.statusbar.notification.collection.NotificationEntry r4 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r4
            boolean r5 = userIdMatches(r4, r10)
            r6 = 0
            r7 = 4096(0x1000, float:5.74E-42)
            if (r5 == 0) goto L4a
            boolean r5 = r4.isClearable()
            if (r5 == 0) goto L4a
            boolean r5 = hasFlag(r4, r7)
            if (r5 != 0) goto L4a
            com.android.systemui.statusbar.notification.collection.NotificationEntry$DismissState r5 = r4.mDismissState
            com.android.systemui.statusbar.notification.collection.NotificationEntry$DismissState r8 = com.android.systemui.statusbar.notification.collection.NotificationEntry.DismissState.DISMISSED
            if (r5 == r8) goto L4a
            r5 = r3
            goto L4b
        L4a:
            r5 = r6
        L4b:
            if (r5 != 0) goto L89
            if (r11 == 0) goto L73
            boolean r5 = userIdMatches(r4, r10)
            if (r5 == 0) goto L6f
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r5 = r4.row
            if (r5 != 0) goto L5b
            r5 = r3
            goto L5f
        L5b:
            boolean r5 = r5.canViewBeDismissed$1()
        L5f:
            if (r5 == 0) goto L6f
            boolean r5 = hasFlag(r4, r7)
            if (r5 != 0) goto L6f
            com.android.systemui.statusbar.notification.collection.NotificationEntry$DismissState r5 = r4.mDismissState
            com.android.systemui.statusbar.notification.collection.NotificationEntry$DismissState r7 = com.android.systemui.statusbar.notification.collection.NotificationEntry.DismissState.DISMISSED
            if (r5 == r7) goto L6f
            r5 = r3
            goto L70
        L6f:
            r5 = r6
        L70:
            if (r5 == 0) goto L73
            goto L89
        L73:
            r9.updateDismissInterceptors(r4)
            java.util.List r5 = r4.mDismissInterceptors
            java.util.ArrayList r5 = (java.util.ArrayList) r5
            int r5 = r5.size()
            if (r5 <= 0) goto L81
            r6 = r3
        L81:
            if (r6 == 0) goto L86
            r0.logNotifClearAllDismissalIntercepted(r4)
        L86:
            r1.remove(r2)
        L89:
            int r2 = r2 + (-1)
            goto L25
        L8c:
            r9.locallyDismissNotifications(r1)
            java.lang.String r10 = "dismissAllNotifications"
            r9.dispatchEventsAndRebuildList(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.NotifCollection.dismissAllNotifications(int, boolean):void");
    }

    public final void dismissNotification(NotificationEntry notificationEntry, DismissedByUserStats dismissedByUserStats) {
        dismissNotifications(List.of(new Pair(notificationEntry, dismissedByUserStats)));
    }

    public final void dismissNotifications(List list) {
        boolean z;
        Assert.isMainThread();
        checkForReentrantCall();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            final NotificationEntry notificationEntry = (NotificationEntry) ((Pair) list.get(i)).first;
            final DismissedByUserStats dismissedByUserStats = (DismissedByUserStats) ((Pair) list.get(i)).second;
            Objects.requireNonNull(dismissedByUserStats);
            NotificationEntry notificationEntry2 = (NotificationEntry) ((ArrayMap) this.mNotificationSet).get(notificationEntry.mKey);
            NotifCollectionLogger notifCollectionLogger = this.mLogger;
            if (notificationEntry2 == null) {
                notifCollectionLogger.logNonExistentNotifDismissed(notificationEntry);
            } else {
                String str = notificationEntry.mKey;
                if (notificationEntry != notificationEntry2) {
                    if (str.equals(notificationEntry2.mKey)) {
                        notifCollectionLogger.logAlreadyDismissedNotification(str);
                    } else {
                        IllegalStateException illegalStateException = new IllegalStateException("Invalid entry: different stored and dismissed entries for " + NotificationUtils.logKey(notificationEntry) + " stored=@" + Integer.toHexString(notificationEntry2.hashCode()));
                        this.mEulogizer.record(illegalStateException);
                        throw illegalStateException;
                    }
                } else if (notificationEntry.mDismissState == NotificationEntry.DismissState.DISMISSED) {
                    notifCollectionLogger.logNotifDismissState(str);
                } else {
                    updateDismissInterceptors(notificationEntry);
                    if (((ArrayList) notificationEntry.mDismissInterceptors).size() > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        notifCollectionLogger.logNotifDismissedIntercepted(notificationEntry);
                    } else {
                        arrayList.add(notificationEntry);
                        if (!notificationEntry.isCanceled()) {
                            this.mBgExecutor.execute(new Runnable() { // from class: com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    NotifCollection notifCollection = NotifCollection.this;
                                    NotificationEntry notificationEntry3 = notificationEntry;
                                    DismissedByUserStats dismissedByUserStats2 = dismissedByUserStats;
                                    notifCollection.getClass();
                                    try {
                                        notifCollection.mStatusBarService.onNotificationClear(notificationEntry3.mSbn.getPackageName(), notificationEntry3.mSbn.getUser().getIdentifier(), notificationEntry3.mSbn.getKey(), dismissedByUserStats2.dismissalSurface, dismissedByUserStats2.dismissalSentiment, dismissedByUserStats2.notificationVisibility);
                                    } catch (RemoteException e) {
                                        notifCollection.mLogger.logRemoteExceptionOnNotificationClear(notificationEntry3, e);
                                    }
                                }
                            });
                        }
                    }
                }
            }
        }
        locallyDismissNotifications(arrayList);
        dispatchEventsAndRebuildList("dismissNotifications");
    }

    public final void dispatchEvents() {
        Trace.beginSection("NotifCollection.dispatchEvents");
        this.mAmDispatchingToOtherCode = true;
        while (true) {
            Queue queue = this.mEventQueue;
            if (!((ArrayDeque) queue).isEmpty()) {
                NotifEvent notifEvent = (NotifEvent) ((ArrayDeque) queue).remove();
                List list = this.mNotifCollectionListeners;
                notifEvent.getClass();
                ArrayList arrayList = (ArrayList) list;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    notifEvent.dispatchToListener((NotifCollectionListener) arrayList.get(i));
                }
            } else {
                this.mAmDispatchingToOtherCode = false;
                Trace.endSection();
                return;
            }
        }
    }

    public final void dispatchEventsAndRebuildList(String str) {
        Trace.beginSection("NotifCollection.dispatchEventsAndRebuildList");
        Handler handler = this.mMainHandler;
        NotifCollection$$ExternalSyntheticLambda0 notifCollection$$ExternalSyntheticLambda0 = this.mRebuildListRunnable;
        if (handler.hasCallbacks(notifCollection$$ExternalSyntheticLambda0)) {
            handler.removeCallbacks(notifCollection$$ExternalSyntheticLambda0);
        }
        dispatchEvents();
        ShadeListBuilder.AnonymousClass1 anonymousClass1 = this.mBuildListener;
        if (anonymousClass1 != null) {
            Assert.isMainThread();
            ArrayList arrayList = new ArrayList(this.mReadOnlyNotificationSet);
            ShadeListBuilder shadeListBuilder = ShadeListBuilder.this;
            shadeListBuilder.mPendingEntries = arrayList;
            shadeListBuilder.mLogger.logOnBuildList(str);
            shadeListBuilder.rebuildListIfBefore(1);
        }
        Trace.endSection();
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        Assert.isMainThread();
        ArrayList arrayList = new ArrayList(this.mReadOnlyNotificationSet);
        arrayList.sort(Comparator.comparing(new NotifCollection$$ExternalSyntheticLambda5()));
        printWriter.println("\tNotifCollection unsorted/unfiltered notifications: " + arrayList.size());
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            ListDumper.dumpEntry((ListEntry) arrayList.get(i), Integer.toString(i), "\t\t", sb, false, false);
        }
        printWriter.println(sb.toString());
        NotifCollectionInconsistencyTracker notifCollectionInconsistencyTracker = this.mInconsistencyTracker;
        SideFpsController$$ExternalSyntheticOutline0.m("notificationsWithoutRankings: ", notifCollectionInconsistencyTracker.notificationsWithoutRankings.size(), printWriter);
        Iterator it = notifCollectionInconsistencyTracker.notificationsWithoutRankings.iterator();
        while (it.hasNext()) {
            FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("\t * : ", (String) it.next(), printWriter);
        }
        SideFpsController$$ExternalSyntheticOutline0.m("missingNotifications: ", notifCollectionInconsistencyTracker.missingNotifications.size(), printWriter);
        Iterator it2 = notifCollectionInconsistencyTracker.missingNotifications.iterator();
        while (it2.hasNext()) {
            FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("\t * : ", (String) it2.next(), printWriter);
        }
    }

    @Override // com.android.systemui.statusbar.notification.collection.PipelineDumpable
    public final void dumpPipeline(PipelineDumper pipelineDumper) {
        pipelineDumper.dump(this.mNotifCollectionListeners, "notifCollectionListeners");
        pipelineDumper.dump(this.mLifetimeExtenders, "lifetimeExtenders");
        pipelineDumper.dump(this.mDismissInterceptors, "dismissInterceptors");
        pipelineDumper.dump(this.mBuildListener, "buildListener");
    }

    public final NotificationEntry getEntry(String str) {
        return (NotificationEntry) ((ArrayMap) this.mNotificationSet).get(str);
    }

    public final void locallyDismissNotifications(List list) {
        NotifCollectionLogger notifCollectionLogger;
        HashSet hashSet = new HashSet();
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            int size = arrayList.size();
            notifCollectionLogger = this.mLogger;
            if (i >= size) {
                break;
            }
            NotificationEntry notificationEntry = (NotificationEntry) arrayList.get(i);
            notificationEntry.setDismissState(NotificationEntry.DismissState.DISMISSED);
            notifCollectionLogger.logNotifDismissed(notificationEntry);
            boolean isCanceled = notificationEntry.isCanceled();
            String str = notificationEntry.mKey;
            if (isCanceled) {
                notifCollectionLogger.logCanceledNotification(str);
                hashSet.add(notificationEntry);
            } else if (notificationEntry.mSbn.getNotification().isGroupSummary()) {
                for (NotificationEntry notificationEntry2 : ((ArrayMap) this.mNotificationSet).values()) {
                    if (shouldAutoDismissChildren(notificationEntry2, notificationEntry.mSbn.getGroupKey())) {
                        notificationEntry2.setDismissState(NotificationEntry.DismissState.PARENT_DISMISSED);
                        notifCollectionLogger.logChildDismissed(notificationEntry2);
                        if (notificationEntry2.isCanceled()) {
                            notifCollectionLogger.logCanceledNotification(str);
                            hashSet.add(notificationEntry2);
                        }
                    }
                }
            }
            i++;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            NotificationEntry notificationEntry3 = (NotificationEntry) it.next();
            notifCollectionLogger.logDismissOnAlreadyCanceledEntry(notificationEntry3);
            tryRemoveNotification(notificationEntry3);
        }
    }

    public final void postNotification(StatusBarNotification statusBarNotification, NotificationListenerService.Ranking ranking) {
        Map map = this.mNotificationSet;
        NotificationEntry notificationEntry = (NotificationEntry) ((ArrayMap) map).get(statusBarNotification.getKey());
        NotifCollectionLogger notifCollectionLogger = this.mLogger;
        Queue queue = this.mEventQueue;
        if (notificationEntry == null) {
            ((SystemClockImpl) this.mClock).getClass();
            NotificationEntry notificationEntry2 = new NotificationEntry(statusBarNotification, ranking, android.os.SystemClock.uptimeMillis());
            ((ArrayDeque) queue).add(new InitEntryEvent(notificationEntry2));
            ((ArrayDeque) queue).add(new BindEntryEvent(notificationEntry2, statusBarNotification));
            ((ArrayMap) map).put(statusBarNotification.getKey(), notificationEntry2);
            notifCollectionLogger.logNotifPosted(notificationEntry2);
            ((ArrayDeque) queue).add(new EntryAddedEvent(notificationEntry2));
            return;
        }
        NotificationEntry.DismissState dismissState = notificationEntry.mDismissState;
        NotificationEntry.DismissState dismissState2 = NotificationEntry.DismissState.NOT_DISMISSED;
        if (dismissState != dismissState2) {
            notificationEntry.setDismissState(dismissState2);
            if (notificationEntry.mSbn.getNotification().isGroupSummary()) {
                for (NotificationEntry notificationEntry3 : ((ArrayMap) map).values()) {
                    if (notificationEntry3.mSbn.getGroupKey().equals(notificationEntry.mSbn.getGroupKey()) && notificationEntry3.mDismissState == NotificationEntry.DismissState.PARENT_DISMISSED) {
                        notificationEntry3.setDismissState(NotificationEntry.DismissState.NOT_DISMISSED);
                    }
                }
            }
        }
        cancelLifetimeExtension(notificationEntry);
        cancelDismissInterception(notificationEntry);
        notificationEntry.mCancellationReason = -1;
        notificationEntry.setSbn(statusBarNotification);
        ((ArrayDeque) queue).add(new BindEntryEvent(notificationEntry, statusBarNotification));
        notifCollectionLogger.logNotifUpdated(notificationEntry);
        ((ArrayDeque) queue).add(new EntryUpdatedEvent(notificationEntry, true));
    }

    public final boolean tryRemoveNotification(NotificationEntry notificationEntry) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ArrayMap arrayMap = (ArrayMap) this.mNotificationSet;
        Object obj = arrayMap.get(notificationEntry.mKey);
        LogBufferEulogizer logBufferEulogizer = this.mEulogizer;
        if (obj == notificationEntry) {
            if (notificationEntry.isCanceled()) {
                if (notificationEntry.mDismissState != NotificationEntry.DismissState.NOT_DISMISSED) {
                    z = true;
                } else {
                    z = false;
                }
                int i = notificationEntry.mCancellationReason;
                if (i != 1 && i != 2) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (!z && !z2) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                List list = notificationEntry.mLifetimeExtenders;
                NotifCollectionLogger notifCollectionLogger = this.mLogger;
                if (z3) {
                    cancelLifetimeExtension(notificationEntry);
                } else {
                    ArrayList arrayList = (ArrayList) list;
                    arrayList.clear();
                    this.mAmDispatchingToOtherCode = true;
                    Iterator it = ((ArrayList) this.mLifetimeExtenders).iterator();
                    while (it.hasNext()) {
                        NotifLifetimeExtender notifLifetimeExtender = (NotifLifetimeExtender) it.next();
                        if (notifLifetimeExtender.maybeExtendLifetime(notificationEntry, notificationEntry.mCancellationReason)) {
                            notifCollectionLogger.logLifetimeExtended(notificationEntry, notifLifetimeExtender);
                            arrayList.add(notifLifetimeExtender);
                        }
                    }
                    this.mAmDispatchingToOtherCode = false;
                }
                if (((ArrayList) list).size() > 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    return false;
                }
                notifCollectionLogger.logNotifReleased(notificationEntry);
                String str = notificationEntry.mKey;
                arrayMap.remove(str);
                cancelDismissInterception(notificationEntry);
                ArrayDeque arrayDeque = (ArrayDeque) this.mEventQueue;
                arrayDeque.add(new EntryRemovedEvent(notificationEntry, notificationEntry.mCancellationReason));
                arrayDeque.add(new CleanUpEntryEvent(notificationEntry));
                FutureDismissal futureDismissal = (FutureDismissal) this.mFutureDismissals.remove(str);
                if (futureDismissal != null) {
                    int i2 = notificationEntry.mCancellationReason;
                    Assert.isMainThread();
                    if (futureDismissal.mDidSystemServerCancel) {
                        NotifCollection.this.mLogger.logFutureDismissalDoubleCancelledByServer(futureDismissal);
                    } else {
                        NotifCollection.this.mLogger.logFutureDismissalGotSystemServerCancel(futureDismissal, i2);
                        futureDismissal.mDidSystemServerCancel = true;
                    }
                }
                return true;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Cannot remove notification " + NotificationUtils.logKey(notificationEntry) + ": has not been marked for removal");
            logBufferEulogizer.record(illegalStateException);
            throw illegalStateException;
        }
        IllegalStateException illegalStateException2 = new IllegalStateException("No notification to remove with key " + NotificationUtils.logKey(notificationEntry));
        logBufferEulogizer.record(illegalStateException2);
        throw illegalStateException2;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0012 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.android.systemui.wmshell.BubblesManager$$ExternalSyntheticLambda3] */
    /* JADX WARN: Type inference failed for: r11v1, types: [com.android.wm.shell.bubbles.BubbleController$BubblesImpl$$ExternalSyntheticLambda8] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.android.wm.shell.bubbles.BubbleController$BubblesImpl$$ExternalSyntheticLambda7] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateDismissInterceptors(final com.android.systemui.statusbar.notification.collection.NotificationEntry r14) {
        /*
            r13 = this;
            java.util.List r0 = r14.mDismissInterceptors
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            r0.clear()
            r0 = 1
            r13.mAmDispatchingToOtherCode = r0
            java.util.List r1 = r13.mDismissInterceptors
            java.util.ArrayList r1 = (java.util.ArrayList) r1
            java.util.Iterator r1 = r1.iterator()
        L12:
            boolean r2 = r1.hasNext()
            r3 = 0
            if (r2 == 0) goto Lcb
            java.lang.Object r2 = r1.next()
            com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator$2 r2 = (com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator.AnonymousClass2) r2
            com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator r4 = com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator.this
            java.util.Optional r5 = r4.mBubblesManagerOptional
            boolean r5 = r5.isPresent()
            java.util.Set r6 = r4.mInterceptedDismissalEntries
            java.lang.String r7 = r14.mKey
            if (r5 == 0) goto Lbb
            java.util.Optional r4 = r4.mBubblesManagerOptional
            java.lang.Object r4 = r4.get()
            com.android.systemui.wmshell.BubblesManager r4 = (com.android.systemui.wmshell.BubblesManager) r4
            r4.getClass()
            java.util.List r5 = r14.getAttachedNotifChildren()
            r8 = 0
            if (r5 == 0) goto L5e
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            r10 = r3
        L45:
            r11 = r5
            java.util.ArrayList r11 = (java.util.ArrayList) r11
            int r12 = r11.size()
            if (r10 >= r12) goto L5f
            java.lang.Object r11 = r11.get(r10)
            com.android.systemui.statusbar.notification.collection.NotificationEntry r11 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r11
            com.android.wm.shell.bubbles.BubbleEntry r11 = r4.notifToBubbleEntry(r11)
            r9.add(r11)
            int r10 = r10 + 1
            goto L45
        L5e:
            r9 = r8
        L5f:
            com.android.wm.shell.bubbles.BubbleEntry r10 = r4.notifToBubbleEntry(r14)
            com.android.systemui.wmshell.BubblesManager$$ExternalSyntheticLambda3 r11 = new com.android.systemui.wmshell.BubblesManager$$ExternalSyntheticLambda3
            r11.<init>()
            com.android.wm.shell.bubbles.Bubbles r5 = r4.mBubbles
            com.android.wm.shell.bubbles.BubbleController$BubblesImpl r5 = (com.android.wm.shell.bubbles.BubbleController.BubblesImpl) r5
            r5.getClass()
            com.android.wm.shell.bubbles.BubbleController$BubblesImpl$$ExternalSyntheticLambda7 r12 = new com.android.wm.shell.bubbles.BubbleController$BubblesImpl$$ExternalSyntheticLambda7
            java.util.concurrent.Executor r4 = r4.mSysuiMainExecutor
            r12.<init>()
            com.android.wm.shell.bubbles.BubbleController r4 = com.android.wm.shell.bubbles.BubbleController.this     // Catch: java.lang.Exception -> La5
            com.android.wm.shell.common.ShellExecutor r4 = r4.mMainExecutor     // Catch: java.lang.Exception -> La5
            com.android.wm.shell.bubbles.BubbleController$BubblesImpl$$ExternalSyntheticLambda8 r11 = new com.android.wm.shell.bubbles.BubbleController$BubblesImpl$$ExternalSyntheticLambda8     // Catch: java.lang.Exception -> La5
            r11.<init>()     // Catch: java.lang.Exception -> La5
            java.lang.Class<java.lang.Boolean> r5 = java.lang.Boolean.class
            r4.getClass()     // Catch: java.lang.Exception -> La5
            java.lang.Object r5 = java.lang.reflect.Array.newInstance(r5, r0)     // Catch: java.lang.Exception -> La5
            java.lang.Object[] r5 = (java.lang.Object[]) r5     // Catch: java.lang.Exception -> La5
            java.util.concurrent.CountDownLatch r9 = new java.util.concurrent.CountDownLatch     // Catch: java.lang.Exception -> La5
            r9.<init>(r0)     // Catch: java.lang.Exception -> La5
            com.android.wm.shell.common.ShellExecutor$$ExternalSyntheticLambda1 r10 = new com.android.wm.shell.common.ShellExecutor$$ExternalSyntheticLambda1     // Catch: java.lang.Exception -> La5
            r10.<init>()     // Catch: java.lang.Exception -> La5
            com.android.wm.shell.common.HandlerExecutor r4 = (com.android.wm.shell.common.HandlerExecutor) r4     // Catch: java.lang.Exception -> La5
            r4.execute(r10)     // Catch: java.lang.Exception -> La5
            r9.await()     // Catch: java.lang.InterruptedException -> L9e java.lang.Exception -> La5
            r8 = r5[r3]     // Catch: java.lang.InterruptedException -> L9e java.lang.Exception -> La5
        L9e:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Exception -> La5
            boolean r4 = r8.booleanValue()     // Catch: java.lang.Exception -> La5
            goto Laa
        La5:
            r4 = move-exception
            r4.printStackTrace()
            r4 = r3
        Laa:
            if (r4 == 0) goto Lbb
            java.util.HashSet r6 = (java.util.HashSet) r6
            r6.add(r7)
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r3 = r14.row
            if (r3 == 0) goto Lb9
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$LongPressListener r4 = r3.mLongPressListenerForBubble
            r3.mLongPressListener = r4
        Lb9:
            r3 = r0
            goto Lc0
        Lbb:
            java.util.HashSet r6 = (java.util.HashSet) r6
            r6.remove(r7)
        Lc0:
            if (r3 == 0) goto L12
            java.util.List r3 = r14.mDismissInterceptors
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            r3.add(r2)
            goto L12
        Lcb:
            r13.mAmDispatchingToOtherCode = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.NotifCollection.updateDismissInterceptors(com.android.systemui.statusbar.notification.collection.NotificationEntry):void");
    }
}
