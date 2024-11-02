package com.android.systemui.statusbar.notification.shelf.ui.viewbinder;

import com.android.systemui.statusbar.LockscreenShadeTransitionController$bindController$1;
import com.android.systemui.statusbar.NotificationShelf;
import com.android.systemui.statusbar.NotificationShelfController;
import com.android.systemui.statusbar.notification.stack.AmbientState;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.NotificationIconContainer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationShelfViewBinderWrapperControllerImpl implements NotificationShelfController {
    public static void getUnsupported() {
        NotificationShelfController.Companion.getClass();
        throw new IllegalStateException("Code path not supported when Flags.NOTIFICATION_SHELF_REFACTOR is ".concat("disabled").toString());
    }

    @Override // com.android.systemui.statusbar.NotificationShelfController
    public final void bind(AmbientState ambientState, NotificationStackScrollLayoutController notificationStackScrollLayoutController) {
        getUnsupported();
        throw null;
    }

    @Override // com.android.systemui.statusbar.NotificationShelfController
    public final boolean canModifyColorOfNotifications() {
        getUnsupported();
        throw null;
    }

    @Override // com.android.systemui.statusbar.NotificationShelfController
    public final int getIntrinsicHeight() {
        getUnsupported();
        throw null;
    }

    @Override // com.android.systemui.statusbar.NotificationShelfController
    public final NotificationIconContainer getShelfIcons() {
        getUnsupported();
        throw null;
    }

    @Override // com.android.systemui.statusbar.NotificationShelfController
    public final NotificationShelf getView() {
        getUnsupported();
        throw null;
    }

    @Override // com.android.systemui.statusbar.NotificationShelfController
    public final void setOnClickListener(LockscreenShadeTransitionController$bindController$1 lockscreenShadeTransitionController$bindController$1) {
        getUnsupported();
        throw null;
    }
}
