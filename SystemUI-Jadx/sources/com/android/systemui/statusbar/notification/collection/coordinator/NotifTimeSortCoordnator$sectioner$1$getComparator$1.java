package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifComparator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifTimeSortCoordnator$sectioner$1$getComparator$1 extends NotifComparator {
    public final /* synthetic */ NotifTimeSortCoordnator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotifTimeSortCoordnator$sectioner$1$getComparator$1(NotifTimeSortCoordnator notifTimeSortCoordnator) {
        super("TimeOrder");
        this.this$0 = notifTimeSortCoordnator;
    }

    @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifComparator, java.util.Comparator
    public final int compare(ListEntry listEntry, ListEntry listEntry2) {
        NotifTimeSortCoordnator notifTimeSortCoordnator = this.this$0;
        return Long.compare(notifTimeSortCoordnator.calculateRepresentativeNotificationTime(listEntry2), notifTimeSortCoordnator.calculateRepresentativeNotificationTime(listEntry));
    }
}
