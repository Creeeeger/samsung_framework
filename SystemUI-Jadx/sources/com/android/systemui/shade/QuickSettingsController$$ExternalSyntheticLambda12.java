package com.android.systemui.shade;

import android.view.MotionEvent;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QuickSettingsController$$ExternalSyntheticLambda12 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ QuickSettingsController f$0;

    public /* synthetic */ QuickSettingsController$$ExternalSyntheticLambda12(QuickSettingsController quickSettingsController, int i) {
        this.$r8$classId = i;
        this.f$0 = quickSettingsController;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                QuickSettingsController quickSettingsController = this.f$0;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                if (quickSettingsController.isQsFragmentCreated()) {
                    if (booleanValue) {
                        quickSettingsController.mAnimateNextNotificationBounds = true;
                        quickSettingsController.mNotificationBoundsAnimationDuration = 360L;
                        quickSettingsController.mNotificationBoundsAnimationDelay = 0L;
                    }
                    quickSettingsController.setClippingBounds();
                    return;
                }
                return;
            case 1:
                QuickSettingsController quickSettingsController2 = this.f$0;
                quickSettingsController2.getClass();
                quickSettingsController2.mTouchAboveFalsingThreshold = ((Boolean) obj).booleanValue();
                return;
            case 2:
                this.f$0.trackMovement((MotionEvent) obj);
                return;
            default:
                QuickSettingsController quickSettingsController3 = this.f$0;
                ((Integer) obj).intValue();
                quickSettingsController3.updateExpansionEnabledAmbient();
                return;
        }
    }
}
