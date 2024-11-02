package com.android.systemui.statusbar.notification.collection.notifcollection;

import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CleanUpEntryEvent extends NotifEvent {
    public final NotificationEntry entry;

    public CleanUpEntryEvent(NotificationEntry notificationEntry) {
        super(null);
        this.entry = notificationEntry;
    }

    @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifEvent
    public final void dispatchToListener(NotifCollectionListener notifCollectionListener) {
        notifCollectionListener.onEntryCleanUp(this.entry);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CleanUpEntryEvent) && Intrinsics.areEqual(this.entry, ((CleanUpEntryEvent) obj).entry)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.entry.hashCode();
    }

    public final String toString() {
        return "CleanUpEntryEvent(entry=" + this.entry + ")";
    }
}
