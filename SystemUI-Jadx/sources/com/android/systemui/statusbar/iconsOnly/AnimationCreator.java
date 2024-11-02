package com.android.systemui.statusbar.iconsOnly;

import androidx.dynamicanimation.animation.FloatPropertyCompat;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AnimationCreator {
    public final NotificationIconTransitionController mController;

    public AnimationCreator(NotificationIconTransitionController notificationIconTransitionController) {
        new FloatPropertyCompat(this, "updateDetailedCardScale") { // from class: com.android.systemui.statusbar.iconsOnly.AnimationCreator.1
            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public final float getValue(Object obj) {
                return ((NotificationIconTransitionController) obj).mDetailedCardScale;
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public final void setValue(Object obj, float f) {
                NotificationIconTransitionController notificationIconTransitionController2 = (NotificationIconTransitionController) obj;
                notificationIconTransitionController2.mDetailedCardScale = f;
                NotificationStackScrollLayout notificationStackScrollLayout = notificationIconTransitionController2.mNotificationStackScrollLayout;
                if (notificationStackScrollLayout != null) {
                    notificationStackScrollLayout.setScaleX(f);
                    notificationIconTransitionController2.mNotificationStackScrollLayout.setScaleY(notificationIconTransitionController2.mDetailedCardScale);
                }
            }
        };
        this.mController = notificationIconTransitionController;
    }
}
