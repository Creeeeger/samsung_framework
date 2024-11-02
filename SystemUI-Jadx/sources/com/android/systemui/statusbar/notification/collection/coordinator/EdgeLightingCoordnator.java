package com.android.systemui.statusbar.notification.collection.coordinator;

import android.service.notification.StatusBarNotification;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class EdgeLightingCoordnator implements Coordinator {
    public final EdgeLightingCoordnator$secFGSFilter$1 secFGSFilter = new NotifFilter() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.EdgeLightingCoordnator$secFGSFilter$1
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
        public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j) {
            StatusBarNotification statusBarNotification = notificationEntry.mSbn;
            if ((Intrinsics.areEqual("com.android.systemui", statusBarNotification.getPackageName()) || Intrinsics.areEqual("com.samsung.android.app.cocktailbarservice", statusBarNotification.getPackageName())) && notificationEntry.getChannel() != null && Intrinsics.areEqual(notificationEntry.getChannel().getId(), "edge_lighting_chnnel_id") && (statusBarNotification.getNotification().flags & 64) != 0) {
                return true;
            }
            return false;
        }
    };

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        notifPipeline.addPreGroupFilter(this.secFGSFilter);
    }
}
