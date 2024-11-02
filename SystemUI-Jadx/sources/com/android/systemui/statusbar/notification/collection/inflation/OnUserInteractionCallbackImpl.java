package com.android.systemui.statusbar.notification.collection.inflation;

import android.os.SystemClock;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.VisualStabilityCoordinator;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.row.OnUserInteractionCallback;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OnUserInteractionCallbackImpl implements OnUserInteractionCallback {
    public final HeadsUpManager mHeadsUpManager;
    public final NotifCollection mNotifCollection;
    public final StatusBarStateController mStatusBarStateController;
    public final NotificationVisibilityProvider mVisibilityProvider;
    public final VisualStabilityCoordinator mVisualStabilityCoordinator;

    public OnUserInteractionCallbackImpl(NotificationVisibilityProvider notificationVisibilityProvider, NotifCollection notifCollection, HeadsUpManager headsUpManager, StatusBarStateController statusBarStateController, VisualStabilityCoordinator visualStabilityCoordinator) {
        this.mVisibilityProvider = notificationVisibilityProvider;
        this.mNotifCollection = notifCollection;
        this.mHeadsUpManager = headsUpManager;
        this.mStatusBarStateController = statusBarStateController;
        this.mVisualStabilityCoordinator = visualStabilityCoordinator;
    }

    public final void onImportanceChanged(NotificationEntry notificationEntry) {
        long uptimeMillis = SystemClock.uptimeMillis();
        final VisualStabilityCoordinator visualStabilityCoordinator = this.mVisualStabilityCoordinator;
        visualStabilityCoordinator.getClass();
        final String str = notificationEntry.mKey;
        VisualStabilityCoordinator.AnonymousClass2 anonymousClass2 = visualStabilityCoordinator.mNotifStabilityManager;
        boolean isSectionChangeAllowed = anonymousClass2.isSectionChangeAllowed(notificationEntry);
        HashMap hashMap = (HashMap) visualStabilityCoordinator.mEntriesThatCanChangeSection;
        if (hashMap.containsKey(str)) {
            ((Runnable) hashMap.get(str)).run();
        }
        Runnable runnable = new Runnable() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.VisualStabilityCoordinator$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                VisualStabilityCoordinator visualStabilityCoordinator2 = VisualStabilityCoordinator.this;
                ((HashMap) visualStabilityCoordinator2.mEntriesThatCanChangeSection).remove(str);
            }
        };
        DelayableExecutor delayableExecutor = visualStabilityCoordinator.mDelayableExecutor;
        delayableExecutor.getClass();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ExecutorImpl executorImpl = (ExecutorImpl) delayableExecutor;
        ExecutorImpl.ExecutionToken executionToken = new ExecutorImpl.ExecutionToken(executorImpl, runnable, 0);
        executorImpl.mHandler.sendMessageAtTime(executorImpl.mHandler.obtainMessage(0, executionToken), timeUnit.toMillis(uptimeMillis + 500));
        hashMap.put(str, executionToken);
        if (!isSectionChangeAllowed) {
            anonymousClass2.invalidateList("temporarilyAllowSectionChanges");
        }
    }

    public final NotifCollection.FutureDismissal registerFutureDismissal(NotificationEntry notificationEntry, int i) {
        OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0 onUserInteractionCallbackImpl$$ExternalSyntheticLambda0 = new OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0(this);
        NotifCollection notifCollection = this.mNotifCollection;
        HashMap hashMap = notifCollection.mFutureDismissals;
        NotifCollection.FutureDismissal futureDismissal = (NotifCollection.FutureDismissal) hashMap.get(notificationEntry.mKey);
        NotifCollectionLogger notifCollectionLogger = notifCollection.mLogger;
        if (futureDismissal != null) {
            notifCollectionLogger.logFutureDismissalReused(futureDismissal);
            return futureDismissal;
        }
        NotifCollection.FutureDismissal futureDismissal2 = new NotifCollection.FutureDismissal(notifCollection, notificationEntry, i, onUserInteractionCallbackImpl$$ExternalSyntheticLambda0);
        hashMap.put(notificationEntry.mKey, futureDismissal2);
        notifCollectionLogger.logFutureDismissalRegistered(futureDismissal2);
        return futureDismissal2;
    }
}
