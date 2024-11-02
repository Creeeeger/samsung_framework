package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HideLocallyDismissedNotifsCoordinator implements Coordinator {
    public final AnonymousClass1 mFilter = new NotifFilter(this, "HideLocallyDismissedNotifsFilter") { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HideLocallyDismissedNotifsCoordinator.1
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
        public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j) {
            if (notificationEntry.mDismissState != NotificationEntry.DismissState.NOT_DISMISSED) {
                return true;
            }
            return false;
        }
    };

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        notifPipeline.addPreGroupFilter(this.mFilter);
    }
}
