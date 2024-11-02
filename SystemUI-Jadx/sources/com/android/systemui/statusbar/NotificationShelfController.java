package com.android.systemui.statusbar;

import com.android.systemui.flags.Flags;
import com.android.systemui.statusbar.notification.stack.AmbientState;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.NotificationIconContainer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface NotificationShelfController {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    static void assertRefactorFlagDisabled() {
        Companion.getClass();
        Flags flags = Flags.INSTANCE;
    }

    static void checkRefactorFlagEnabled() {
        Companion.getClass();
        Flags flags = Flags.INSTANCE;
    }

    void bind(AmbientState ambientState, NotificationStackScrollLayoutController notificationStackScrollLayoutController);

    boolean canModifyColorOfNotifications();

    int getIntrinsicHeight();

    NotificationIconContainer getShelfIcons();

    NotificationShelf getView();

    void setOnClickListener(LockscreenShadeTransitionController$bindController$1 lockscreenShadeTransitionController$bindController$1);
}
