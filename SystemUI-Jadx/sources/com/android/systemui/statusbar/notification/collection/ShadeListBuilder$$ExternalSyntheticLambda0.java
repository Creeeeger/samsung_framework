package com.android.systemui.statusbar.notification.collection;

import com.android.systemui.statusbar.notification.collection.listbuilder.NotifSection;
import com.android.systemui.statusbar.notification.collection.listbuilder.SemiStableSort;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.Pluggable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ShadeListBuilder$$ExternalSyntheticLambda0 implements SemiStableSort.StableOrder, Pluggable.PluggableListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ShadeListBuilder f$0;

    public /* synthetic */ ShadeListBuilder$$ExternalSyntheticLambda0(ShadeListBuilder shadeListBuilder, int i) {
        this.$r8$classId = i;
        this.f$0 = shadeListBuilder;
    }

    public final Integer getRank(Object obj) {
        int i;
        int i2;
        int i3;
        ListEntry listEntry = (ListEntry) obj;
        if (!this.f$0.getStabilityManager().isEntryReorderingAllowed(listEntry)) {
            ListAttachState listAttachState = listEntry.mAttachState;
            ListEntry.checkNull(listAttachState);
            NotifSection notifSection = listAttachState.section;
            if (notifSection != null) {
                i = notifSection.index;
            } else {
                i = -1;
            }
            ListAttachState listAttachState2 = listEntry.mPreviousAttachState;
            ListEntry.checkNull(listAttachState2);
            NotifSection notifSection2 = listAttachState2.section;
            if (notifSection2 != null) {
                i2 = notifSection2.index;
            } else {
                i2 = -1;
            }
            if (i == i2 && (i3 = listAttachState2.stableIndex) != -1) {
                return Integer.valueOf(i3);
            }
        }
        return null;
    }
}
