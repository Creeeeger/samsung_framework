package com.android.systemui.statusbar.phone;

import android.view.View;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class HeadsUpAppearanceController$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ HeadsUpAppearanceController f$0;

    public /* synthetic */ HeadsUpAppearanceController$$ExternalSyntheticLambda0(HeadsUpAppearanceController headsUpAppearanceController, int i) {
        this.$r8$classId = i;
        this.f$0 = headsUpAppearanceController;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                HeadsUpAppearanceController headsUpAppearanceController = this.f$0;
                ExpandableNotificationRow expandableNotificationRow = headsUpAppearanceController.mTrackedChild;
                headsUpAppearanceController.mTrackedChild = (ExpandableNotificationRow) obj;
                if (expandableNotificationRow != null) {
                    NotificationEntry notificationEntry = expandableNotificationRow.mEntry;
                    headsUpAppearanceController.updateHeader(notificationEntry);
                    headsUpAppearanceController.updateHeadsUpAndPulsingRoundness(notificationEntry);
                    return;
                }
                return;
            case 1:
                this.f$0.hide((View) obj, 4, null);
                return;
            case 2:
                this.f$0.show((View) obj);
                return;
            default:
                HeadsUpAppearanceController headsUpAppearanceController2 = this.f$0;
                NotificationEntry notificationEntry2 = (NotificationEntry) obj;
                headsUpAppearanceController2.updateHeader(notificationEntry2);
                headsUpAppearanceController2.updateHeadsUpAndPulsingRoundness(notificationEntry2);
                return;
        }
    }
}
