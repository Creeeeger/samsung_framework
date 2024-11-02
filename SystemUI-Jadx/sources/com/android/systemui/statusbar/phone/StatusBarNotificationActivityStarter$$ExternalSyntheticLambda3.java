package com.android.systemui.statusbar.phone;

import com.android.systemui.shade.ShadeControllerImpl;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.wmshell.BubblesManager;
import com.android.wm.shell.bubbles.BubbleController;
import com.android.wm.shell.bubbles.BubbleController$BubblesImpl$$ExternalSyntheticLambda2;
import com.android.wm.shell.bubbles.BubbleEntry;
import com.android.wm.shell.common.HandlerExecutor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StatusBarNotificationActivityStarter f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3(StatusBarNotificationActivityStarter statusBarNotificationActivityStarter, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = statusBarNotificationActivityStarter;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                StatusBarNotificationActivityStarter statusBarNotificationActivityStarter = this.f$0;
                Runnable runnable = (Runnable) this.f$1;
                if (((StatusBarNotificationPresenter) statusBarNotificationActivityStarter.mPresenter).isCollapsing()) {
                    ((ShadeControllerImpl) statusBarNotificationActivityStarter.mShadeController).mPostCollapseRunnables.add(runnable);
                    return;
                } else {
                    runnable.run();
                    return;
                }
            case 1:
                StatusBarNotificationActivityStarter statusBarNotificationActivityStarter2 = this.f$0;
                Runnable runnable2 = (Runnable) this.f$1;
                if (((StatusBarNotificationPresenter) statusBarNotificationActivityStarter2.mPresenter).isCollapsing()) {
                    ((ShadeControllerImpl) statusBarNotificationActivityStarter2.mShadeController).mPostCollapseRunnables.add(runnable2);
                    return;
                } else {
                    runnable2.run();
                    return;
                }
            default:
                StatusBarNotificationActivityStarter statusBarNotificationActivityStarter3 = this.f$0;
                NotificationEntry notificationEntry = (NotificationEntry) this.f$1;
                BubblesManager bubblesManager = (BubblesManager) statusBarNotificationActivityStarter3.mBubblesManagerOptional.get();
                BubbleEntry notifToBubbleEntry = bubblesManager.notifToBubbleEntry(notificationEntry);
                BubbleController.BubblesImpl bubblesImpl = (BubbleController.BubblesImpl) bubblesManager.mBubbles;
                ((HandlerExecutor) BubbleController.this.mMainExecutor).execute(new BubbleController$BubblesImpl$$ExternalSyntheticLambda2(bubblesImpl, notifToBubbleEntry, 2));
                ((ShadeControllerImpl) statusBarNotificationActivityStarter3.mShadeController).collapseShade();
                return;
        }
    }
}
