package com.android.systemui.statusbar.phone;

import android.graphics.Rect;
import com.android.internal.widget.ViewClippingUtil;
import com.android.systemui.statusbar.HeadsUpStatusBarView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class HeadsUpAppearanceController$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ HeadsUpAppearanceController f$0;

    public /* synthetic */ HeadsUpAppearanceController$$ExternalSyntheticLambda2(HeadsUpAppearanceController headsUpAppearanceController, int i) {
        this.$r8$classId = i;
        this.f$0 = headsUpAppearanceController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                HeadsUpAppearanceController headsUpAppearanceController = this.f$0;
                Rect rect = ((HeadsUpStatusBarView) headsUpAppearanceController.mView).mIconDrawingRect;
                NotificationIconContainer notificationIconContainer = headsUpAppearanceController.mNotificationIconAreaController.mNotificationIcons;
                notificationIconContainer.resetViewStates();
                notificationIconContainer.calculateIconXTranslations();
                notificationIconContainer.applyIconStates();
                return;
            default:
                HeadsUpAppearanceController headsUpAppearanceController2 = this.f$0;
                ViewClippingUtil.setClippingDeactivated(headsUpAppearanceController2.mView, false, headsUpAppearanceController2.mParentClippingParams);
                return;
        }
    }
}
