package com.android.systemui.shade;

import java.util.function.BooleanSupplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationPanelViewController$$ExternalSyntheticLambda17 implements BooleanSupplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NotificationPanelViewController f$0;

    public /* synthetic */ NotificationPanelViewController$$ExternalSyntheticLambda17(NotificationPanelViewController notificationPanelViewController, int i) {
        this.$r8$classId = i;
        this.f$0 = notificationPanelViewController;
    }

    @Override // java.util.function.BooleanSupplier
    public final boolean getAsBoolean() {
        int i = this.$r8$classId;
        NotificationPanelViewController notificationPanelViewController = this.f$0;
        switch (i) {
            case 0:
                return notificationPanelViewController.isOnKeyguard();
            case 1:
                if (notificationPanelViewController.mHeightAnimator != null) {
                    return true;
                }
                return false;
            case 2:
                return notificationPanelViewController.isKeyguardShowing();
            case 3:
                return notificationPanelViewController.mTracking;
            case 4:
                return notificationPanelViewController.mPanelExpanded;
            default:
                return notificationPanelViewController.mQsController.mFullyExpanded;
        }
    }
}
