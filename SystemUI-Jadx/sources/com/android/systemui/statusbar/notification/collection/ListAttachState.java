package com.android.systemui.statusbar.notification.collection;

import com.android.systemui.statusbar.notification.collection.listbuilder.NotifSection;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifPromoter;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ListAttachState {
    public static final Companion Companion = new Companion(null);
    public NotifFilter excludingFilter;
    public String groupPruneReason;
    public GroupEntry parent;
    public NotifPromoter promoter;
    public NotifSection section;
    public int stableIndex;
    public final SuppressedAttachState suppressedChanges;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ ListAttachState(GroupEntry groupEntry, NotifSection notifSection, NotifFilter notifFilter, NotifPromoter notifPromoter, String str, SuppressedAttachState suppressedAttachState, DefaultConstructorMarker defaultConstructorMarker) {
        this(groupEntry, notifSection, notifFilter, notifPromoter, str, suppressedAttachState);
    }

    public static final ListAttachState create() {
        Companion.getClass();
        SuppressedAttachState.Companion.getClass();
        return new ListAttachState(null, null, null, null, null, new SuppressedAttachState(null, 0 == true ? 1 : 0, false, 0 == true ? 1 : 0), null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ListAttachState)) {
            return false;
        }
        ListAttachState listAttachState = (ListAttachState) obj;
        if (Intrinsics.areEqual(this.parent, listAttachState.parent) && Intrinsics.areEqual(this.section, listAttachState.section) && Intrinsics.areEqual(this.excludingFilter, listAttachState.excludingFilter) && Intrinsics.areEqual(this.promoter, listAttachState.promoter) && Intrinsics.areEqual(this.groupPruneReason, listAttachState.groupPruneReason) && Intrinsics.areEqual(this.suppressedChanges, listAttachState.suppressedChanges)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        GroupEntry groupEntry = this.parent;
        int i = 0;
        if (groupEntry == null) {
            hashCode = 0;
        } else {
            hashCode = groupEntry.hashCode();
        }
        int i2 = hashCode * 31;
        NotifSection notifSection = this.section;
        if (notifSection == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = notifSection.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        NotifFilter notifFilter = this.excludingFilter;
        if (notifFilter == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = notifFilter.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        NotifPromoter notifPromoter = this.promoter;
        if (notifPromoter == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = notifPromoter.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        String str = this.groupPruneReason;
        if (str != null) {
            i = str.hashCode();
        }
        return this.suppressedChanges.hashCode() + ((i5 + i) * 31);
    }

    public final String toString() {
        return "ListAttachState(parent=" + this.parent + ", section=" + this.section + ", excludingFilter=" + this.excludingFilter + ", promoter=" + this.promoter + ", groupPruneReason=" + this.groupPruneReason + ", suppressedChanges=" + this.suppressedChanges + ")";
    }

    private ListAttachState(GroupEntry groupEntry, NotifSection notifSection, NotifFilter notifFilter, NotifPromoter notifPromoter, String str, SuppressedAttachState suppressedAttachState) {
        this.parent = groupEntry;
        this.section = notifSection;
        this.excludingFilter = notifFilter;
        this.promoter = notifPromoter;
        this.groupPruneReason = str;
        this.suppressedChanges = suppressedAttachState;
        this.stableIndex = -1;
    }
}
