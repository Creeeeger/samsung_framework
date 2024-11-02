package com.android.systemui.statusbar.notification.collection.notifcollection;

import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class EntryRemovedEvent extends NotifEvent {
    public final NotificationEntry entry;
    public final int reason;

    public EntryRemovedEvent(NotificationEntry notificationEntry, int i) {
        super(null);
        this.entry = notificationEntry;
        this.reason = i;
    }

    @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifEvent
    public final void dispatchToListener(NotifCollectionListener notifCollectionListener) {
        notifCollectionListener.onEntryRemoved(this.entry, this.reason);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EntryRemovedEvent)) {
            return false;
        }
        EntryRemovedEvent entryRemovedEvent = (EntryRemovedEvent) obj;
        if (Intrinsics.areEqual(this.entry, entryRemovedEvent.entry) && this.reason == entryRemovedEvent.reason) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.reason) + (this.entry.hashCode() * 31);
    }

    public final String toString() {
        return "EntryRemovedEvent(entry=" + this.entry + ", reason=" + this.reason + ")";
    }
}
