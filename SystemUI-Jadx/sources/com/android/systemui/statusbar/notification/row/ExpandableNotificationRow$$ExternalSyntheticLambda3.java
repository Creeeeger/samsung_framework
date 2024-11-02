package com.android.systemui.statusbar.notification.row;

import android.view.View;
import com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ExpandableNotificationRow$$ExternalSyntheticLambda3 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ExpandableNotificationRow f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ ExpandableNotificationRow$$ExternalSyntheticLambda3(ExpandableNotificationRow expandableNotificationRow, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = expandableNotificationRow;
        this.f$1 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                ExpandableNotificationRow expandableNotificationRow = this.f$0;
                NotificationMenuRowPlugin.MenuItem menuItem = (NotificationMenuRowPlugin.MenuItem) this.f$1;
                expandableNotificationRow.mNotificationGutsManager.closeAndSaveGuts(true, false, false, false);
                expandableNotificationRow.mNotificationGutsManager.openGuts(expandableNotificationRow, 0, 0, menuItem);
                expandableNotificationRow.mIsSnoozed = true;
                return;
            default:
                ExpandableNotificationRow.m1419$r8$lambda$7KWgUGCqa6FPzwWRO4rgNV1JRc(this.f$0, (ExpandableNotificationRow.CoordinateOnClickListener) this.f$1, view);
                return;
        }
    }
}
