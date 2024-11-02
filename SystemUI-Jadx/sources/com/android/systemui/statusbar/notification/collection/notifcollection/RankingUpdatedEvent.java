package com.android.systemui.statusbar.notification.collection.notifcollection;

import android.service.notification.NotificationListenerService;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RankingUpdatedEvent extends NotifEvent {
    public final NotificationListenerService.RankingMap rankingMap;

    public RankingUpdatedEvent(NotificationListenerService.RankingMap rankingMap) {
        super(null);
        this.rankingMap = rankingMap;
    }

    @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifEvent
    public final void dispatchToListener(NotifCollectionListener notifCollectionListener) {
        notifCollectionListener.onRankingUpdate(this.rankingMap);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof RankingUpdatedEvent) && Intrinsics.areEqual(this.rankingMap, ((RankingUpdatedEvent) obj).rankingMap)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.rankingMap.hashCode();
    }

    public final String toString() {
        return "RankingUpdatedEvent(rankingMap=" + this.rankingMap + ")";
    }
}
