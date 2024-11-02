package com.android.systemui.statusbar.notification.stack;

import android.content.Intent;
import android.view.View;
import com.android.systemui.noticenter.NotiCenterPlugin;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationStackScrollLayout$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NotificationStackScrollLayout f$0;

    public /* synthetic */ NotificationStackScrollLayout$$ExternalSyntheticLambda0(NotificationStackScrollLayout notificationStackScrollLayout, int i) {
        this.$r8$classId = i;
        this.f$0 = notificationStackScrollLayout;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Intent intent;
        switch (this.$r8$classId) {
            case 0:
                NotificationStackScrollLayout notificationStackScrollLayout = this.f$0;
                if (notificationStackScrollLayout.mController.isHistoryEnabled()) {
                    intent = new Intent("android.settings.NOTIFICATION_HISTORY");
                } else {
                    intent = new Intent("android.settings.NOTIFICATION_SETTINGS");
                }
                notificationStackScrollLayout.mActivityStarter.startActivity(intent, true, true, QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT);
                return;
            default:
                NotificationStackScrollLayout notificationStackScrollLayout2 = this.f$0;
                int i = NotificationStackScrollLayout.$r8$clinit;
                notificationStackScrollLayout2.getClass();
                NotiCenterPlugin.INSTANCE.getClass();
                if (NotiCenterPlugin.isNotiCenterPluginConnected() && NotiCenterPlugin.noclearEnabled) {
                    notificationStackScrollLayout2.clearNotifications(3, true);
                    return;
                } else {
                    notificationStackScrollLayout2.clearNotifications(0, true);
                    return;
                }
        }
    }
}
