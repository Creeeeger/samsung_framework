package com.android.systemui.statusbar.notification.stack;

import android.view.View;
import com.android.systemui.Dependency;
import com.android.systemui.ShelfToolTipManager;
import com.android.systemui.statusbar.notification.NotificationActivityStarter;
import com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter;
import com.android.systemui.util.SystemUIAnalytics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationStackScrollLayoutController$$ExternalSyntheticLambda8 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NotificationStackScrollLayoutController f$0;

    public /* synthetic */ NotificationStackScrollLayoutController$$ExternalSyntheticLambda8(NotificationStackScrollLayoutController notificationStackScrollLayoutController, int i) {
        this.$r8$classId = i;
        this.f$0 = notificationStackScrollLayoutController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.f$0;
                NotificationActivityStarter notificationActivityStarter = notificationStackScrollLayoutController.mNotificationActivityStarter;
                if (notificationActivityStarter != null) {
                    notificationStackScrollLayoutController.mView.getClass();
                    StatusBarNotificationActivityStarter statusBarNotificationActivityStarter = (StatusBarNotificationActivityStarter) notificationActivityStarter;
                    statusBarNotificationActivityStarter.mActivityStarter.dismissKeyguardThenExecute(new StatusBarNotificationActivityStarter.AnonymousClass3(false, view, false), null, false);
                    return;
                }
                return;
            case 1:
                this.f$0.mView.clearNotifications(2, !r4.hasNotifications(1, true));
                return;
            default:
                NotificationActivityStarter notificationActivityStarter2 = this.f$0.mNotificationActivityStarter;
                if (notificationActivityStarter2 != null) {
                    StatusBarNotificationActivityStarter statusBarNotificationActivityStarter2 = (StatusBarNotificationActivityStarter) notificationActivityStarter2;
                    statusBarNotificationActivityStarter2.mActivityStarter.dismissKeyguardThenExecute(new StatusBarNotificationActivityStarter.AnonymousClass3(false, view, false), null, false);
                    ((ShelfToolTipManager) Dependency.get(ShelfToolTipManager.class)).isTappedNotiSettings = true;
                }
                SystemUIAnalytics.sendEventLog("QPN001", "QPNE0017");
                return;
        }
    }
}
