package com.android.systemui.statusbar.notification.collection.inflation;

import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.notifcollection.DismissedByUserStats;
import com.android.systemui.statusbar.notification.collection.provider.NotificationVisibilityProviderImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0 implements NotifCollection.DismissedByUserStatsCreator {
    public final /* synthetic */ OnUserInteractionCallbackImpl f$0;

    public /* synthetic */ OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0(OnUserInteractionCallbackImpl onUserInteractionCallbackImpl) {
        this.f$0 = onUserInteractionCallbackImpl;
    }

    public final DismissedByUserStats createDismissedByUserStats(NotificationEntry notificationEntry) {
        int i;
        OnUserInteractionCallbackImpl onUserInteractionCallbackImpl = this.f$0;
        onUserInteractionCallbackImpl.getClass();
        if (onUserInteractionCallbackImpl.mHeadsUpManager.isAlerting(notificationEntry.mKey)) {
            i = 1;
        } else {
            StatusBarStateController statusBarStateController = onUserInteractionCallbackImpl.mStatusBarStateController;
            if (statusBarStateController.isDozing()) {
                i = 2;
            } else if (statusBarStateController.getState() == 1) {
                i = 5;
            } else {
                i = 3;
            }
        }
        return new DismissedByUserStats(i, 1, ((NotificationVisibilityProviderImpl) onUserInteractionCallbackImpl.mVisibilityProvider).obtain(notificationEntry));
    }
}
