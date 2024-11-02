package com.android.systemui.statusbar.notification.row;

import android.metrics.LogMaker;
import com.android.systemui.statusbar.notification.stack.NotificationListContainer;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecNotificationSnooze$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SecNotificationSnooze$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                AtomicReference atomicReference = (AtomicReference) this.f$0;
                LogMaker logMaker = SecNotificationSnooze.OPTIONS_OPEN_LOG;
                atomicReference.set(((NotificationStackScrollLayoutController) obj).mNotificationListContainer);
                return;
            case 1:
                SecNotificationSnooze secNotificationSnooze = (SecNotificationSnooze) this.f$0;
                LogMaker logMaker2 = SecNotificationSnooze.OPTIONS_OPEN_LOG;
                secNotificationSnooze.getClass();
                secNotificationSnooze.mSnoozeOptionManager.mSnoozeListener = NotificationStackScrollLayoutController.this.mSwipeHelper;
                return;
            default:
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) this.f$0;
                LogMaker logMaker3 = SecNotificationSnooze.OPTIONS_OPEN_LOG;
                ((NotificationStackScrollLayoutController.NotificationListContainerImpl) ((NotificationListContainer) obj)).onHeightChanged(expandableNotificationRow, expandableNotificationRow.isShown());
                return;
        }
    }
}
