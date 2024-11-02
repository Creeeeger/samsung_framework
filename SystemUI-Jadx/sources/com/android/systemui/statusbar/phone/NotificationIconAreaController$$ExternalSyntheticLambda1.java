package com.android.systemui.statusbar.phone;

import com.android.systemui.statusbar.StatusBarIconView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationIconAreaController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NotificationIconAreaController f$0;
    public final /* synthetic */ StatusBarIconView f$1;

    public /* synthetic */ NotificationIconAreaController$$ExternalSyntheticLambda1(NotificationIconAreaController notificationIconAreaController, StatusBarIconView statusBarIconView, int i) {
        this.$r8$classId = i;
        this.f$0 = notificationIconAreaController;
        this.f$1 = statusBarIconView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                NotificationIconAreaController notificationIconAreaController = this.f$0;
                notificationIconAreaController.updateTintForIcon(this.f$1, notificationIconAreaController.mIconTint);
                return;
            default:
                NotificationIconAreaController notificationIconAreaController2 = this.f$0;
                notificationIconAreaController2.updateTintForIcon(this.f$1, notificationIconAreaController2.mAodIconTint);
                return;
        }
    }
}
