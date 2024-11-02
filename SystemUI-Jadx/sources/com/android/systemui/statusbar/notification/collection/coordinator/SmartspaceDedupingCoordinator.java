package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.StatusBarState;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.lockscreen.LockscreenSmartspaceController;
import com.android.systemui.statusbar.notification.NotificationUtilsKt;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutionImpl;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SmartspaceDedupingCoordinator implements Coordinator {
    public final SystemClock clock;
    public final DelayableExecutor executor;
    public boolean isOnLockscreen;
    public final NotifPipeline notifPipeline;
    public final LockscreenSmartspaceController smartspaceController;
    public final SysuiStatusBarStateController statusBarStateController;
    public Map trackedSmartspaceTargets = new LinkedHashMap();
    public final SmartspaceDedupingCoordinator$filter$1 filter = new NotifFilter() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$filter$1
        {
            super("SmartspaceDedupingFilter");
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
        public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j) {
            boolean z;
            SmartspaceDedupingCoordinator smartspaceDedupingCoordinator = SmartspaceDedupingCoordinator.this;
            if (!smartspaceDedupingCoordinator.isOnLockscreen) {
                return false;
            }
            TrackedSmartspaceTarget trackedSmartspaceTarget = (TrackedSmartspaceTarget) ((LinkedHashMap) smartspaceDedupingCoordinator.trackedSmartspaceTargets).get(notificationEntry.mKey);
            if (trackedSmartspaceTarget != null) {
                z = trackedSmartspaceTarget.shouldFilter;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
            return true;
        }
    };
    public final SmartspaceDedupingCoordinator$collectionListener$1 collectionListener = new NotifCollectionListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$collectionListener$1
        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryAdded(NotificationEntry notificationEntry) {
            SmartspaceDedupingCoordinator smartspaceDedupingCoordinator = SmartspaceDedupingCoordinator.this;
            TrackedSmartspaceTarget trackedSmartspaceTarget = (TrackedSmartspaceTarget) ((LinkedHashMap) smartspaceDedupingCoordinator.trackedSmartspaceTargets).get(notificationEntry.mKey);
            if (trackedSmartspaceTarget != null) {
                smartspaceDedupingCoordinator.updateFilterStatus(trackedSmartspaceTarget);
            }
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryRemoved(NotificationEntry notificationEntry, int i) {
            SmartspaceDedupingCoordinator smartspaceDedupingCoordinator = SmartspaceDedupingCoordinator.this;
            TrackedSmartspaceTarget trackedSmartspaceTarget = (TrackedSmartspaceTarget) smartspaceDedupingCoordinator.trackedSmartspaceTargets.get(notificationEntry.mKey);
            if (trackedSmartspaceTarget != null) {
                smartspaceDedupingCoordinator.getClass();
                Runnable runnable = trackedSmartspaceTarget.cancelTimeoutRunnable;
                if (runnable != null) {
                    runnable.run();
                }
                trackedSmartspaceTarget.cancelTimeoutRunnable = null;
                trackedSmartspaceTarget.alertExceptionExpires = 0L;
            }
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryUpdated(NotificationEntry notificationEntry) {
            SmartspaceDedupingCoordinator smartspaceDedupingCoordinator = SmartspaceDedupingCoordinator.this;
            TrackedSmartspaceTarget trackedSmartspaceTarget = (TrackedSmartspaceTarget) ((LinkedHashMap) smartspaceDedupingCoordinator.trackedSmartspaceTargets).get(notificationEntry.mKey);
            if (trackedSmartspaceTarget != null) {
                smartspaceDedupingCoordinator.updateFilterStatus(trackedSmartspaceTarget);
            }
        }
    };
    public final SmartspaceDedupingCoordinator$statusBarStateListener$1 statusBarStateListener = new StatusBarStateController.StateListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$statusBarStateListener$1
        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onStateChanged(int i) {
            SmartspaceDedupingCoordinator.this.recordStatusBarState(i);
        }
    };

    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$filter$1] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$collectionListener$1] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$statusBarStateListener$1] */
    public SmartspaceDedupingCoordinator(SysuiStatusBarStateController sysuiStatusBarStateController, LockscreenSmartspaceController lockscreenSmartspaceController, NotifPipeline notifPipeline, DelayableExecutor delayableExecutor, SystemClock systemClock) {
        this.statusBarStateController = sysuiStatusBarStateController;
        this.smartspaceController = lockscreenSmartspaceController;
        this.notifPipeline = notifPipeline;
        this.executor = delayableExecutor;
        this.clock = systemClock;
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        notifPipeline.addPreGroupFilter(this.filter);
        notifPipeline.addCollectionListener(this.collectionListener);
        StatusBarStateControllerImpl statusBarStateControllerImpl = (StatusBarStateControllerImpl) this.statusBarStateController;
        statusBarStateControllerImpl.addCallback((StatusBarStateController.StateListener) this.statusBarStateListener);
        BcSmartspaceDataPlugin.SmartspaceTargetListener smartspaceTargetListener = new BcSmartspaceDataPlugin.SmartspaceTargetListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$attach$1
            /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x0074  */
            @Override // com.android.systemui.plugins.BcSmartspaceDataPlugin.SmartspaceTargetListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onSmartspaceTargetsUpdated(java.util.List r6) {
                /*
                    r5 = this;
                    com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator r5 = com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator.this
                    r5.getClass()
                    java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
                    r0.<init>()
                    java.util.Map r1 = r5.trackedSmartspaceTargets
                    java.util.Iterator r6 = r6.iterator()
                    boolean r2 = r6.hasNext()
                    if (r2 == 0) goto L44
                    java.lang.Object r6 = r6.next()
                    android.os.Parcelable r6 = (android.os.Parcelable) r6
                    boolean r2 = r6 instanceof android.app.smartspace.SmartspaceTarget
                    if (r2 == 0) goto L23
                    android.app.smartspace.SmartspaceTarget r6 = (android.app.smartspace.SmartspaceTarget) r6
                    goto L24
                L23:
                    r6 = 0
                L24:
                    if (r6 == 0) goto L44
                    java.lang.String r6 = r6.getSourceNotificationKey()
                    if (r6 == 0) goto L44
                    r2 = r1
                    java.util.LinkedHashMap r2 = (java.util.LinkedHashMap) r2
                    java.lang.Object r2 = r2.get(r6)
                    if (r2 != 0) goto L3a
                    com.android.systemui.statusbar.notification.collection.coordinator.TrackedSmartspaceTarget r2 = new com.android.systemui.statusbar.notification.collection.coordinator.TrackedSmartspaceTarget
                    r2.<init>(r6)
                L3a:
                    com.android.systemui.statusbar.notification.collection.coordinator.TrackedSmartspaceTarget r2 = (com.android.systemui.statusbar.notification.collection.coordinator.TrackedSmartspaceTarget) r2
                    r0.put(r6, r2)
                    boolean r6 = r5.updateFilterStatus(r2)
                    goto L45
                L44:
                    r6 = 0
                L45:
                    java.util.LinkedHashMap r1 = (java.util.LinkedHashMap) r1
                    java.util.Set r2 = r1.keySet()
                    java.util.Iterator r2 = r2.iterator()
                L4f:
                    boolean r3 = r2.hasNext()
                    if (r3 == 0) goto L72
                    java.lang.Object r3 = r2.next()
                    java.lang.String r3 = (java.lang.String) r3
                    boolean r4 = r0.containsKey(r3)
                    if (r4 != 0) goto L4f
                    java.lang.Object r6 = r1.get(r3)
                    com.android.systemui.statusbar.notification.collection.coordinator.TrackedSmartspaceTarget r6 = (com.android.systemui.statusbar.notification.collection.coordinator.TrackedSmartspaceTarget) r6
                    if (r6 == 0) goto L70
                    java.lang.Runnable r6 = r6.cancelTimeoutRunnable
                    if (r6 == 0) goto L70
                    r6.run()
                L70:
                    r6 = 1
                    goto L4f
                L72:
                    if (r6 == 0) goto L7b
                    com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$filter$1 r6 = r5.filter
                    java.lang.String r1 = "onNewSmartspaceTargets"
                    r6.invalidateList(r1)
                L7b:
                    r5.trackedSmartspaceTargets = r0
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$attach$1.onSmartspaceTargetsUpdated(java.util.List):void");
            }
        };
        LockscreenSmartspaceController lockscreenSmartspaceController = this.smartspaceController;
        ((ExecutionImpl) lockscreenSmartspaceController.execution).assertIsMainThread();
        BcSmartspaceDataPlugin bcSmartspaceDataPlugin = lockscreenSmartspaceController.plugin;
        if (bcSmartspaceDataPlugin != null) {
            bcSmartspaceDataPlugin.registerListener(smartspaceTargetListener);
        }
        recordStatusBarState(statusBarStateControllerImpl.mState);
    }

    public final void recordStatusBarState(int i) {
        boolean z = this.isOnLockscreen;
        boolean z2 = true;
        if (i != 1) {
            z2 = false;
        }
        this.isOnLockscreen = z2;
        if (z2 != z) {
            invalidateList("recordStatusBarState: " + StatusBarState.toString(i));
        }
    }

    public final boolean updateFilterStatus(final TrackedSmartspaceTarget trackedSmartspaceTarget) {
        boolean z;
        boolean z2 = trackedSmartspaceTarget.shouldFilter;
        final NotificationEntry entry = this.notifPipeline.getEntry(trackedSmartspaceTarget.key);
        if (entry != null) {
            SystemClockImpl systemClockImpl = (SystemClockImpl) this.clock;
            systemClockImpl.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            long lastAudiblyAlertedMillis = entry.mRanking.getLastAudiblyAlertedMillis();
            long j = SmartspaceDedupingCoordinatorKt.ALERT_WINDOW;
            long j2 = lastAudiblyAlertedMillis + j;
            if (j2 != trackedSmartspaceTarget.alertExceptionExpires && j2 > currentTimeMillis) {
                Runnable runnable = trackedSmartspaceTarget.cancelTimeoutRunnable;
                if (runnable != null) {
                    runnable.run();
                }
                trackedSmartspaceTarget.alertExceptionExpires = j2;
                trackedSmartspaceTarget.cancelTimeoutRunnable = this.executor.executeDelayed(j2 - currentTimeMillis, new Runnable() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.SmartspaceDedupingCoordinator$updateAlertException$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TrackedSmartspaceTarget trackedSmartspaceTarget2 = TrackedSmartspaceTarget.this;
                        trackedSmartspaceTarget2.cancelTimeoutRunnable = null;
                        trackedSmartspaceTarget2.shouldFilter = true;
                        invalidateList("updateAlertException: " + NotificationUtilsKt.getLogKey(entry));
                    }
                });
            }
            systemClockImpl.getClass();
            if (System.currentTimeMillis() - entry.mRanking.getLastAudiblyAlertedMillis() <= j) {
                z = true;
            } else {
                z = false;
            }
            trackedSmartspaceTarget.shouldFilter = !z;
        }
        if (trackedSmartspaceTarget.shouldFilter == z2 || !this.isOnLockscreen) {
            return false;
        }
        return true;
    }
}
