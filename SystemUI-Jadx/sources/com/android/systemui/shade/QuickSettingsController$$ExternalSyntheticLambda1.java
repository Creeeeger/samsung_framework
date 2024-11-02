package com.android.systemui.shade;

import android.animation.ValueAnimator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QuickSettingsController$$ExternalSyntheticLambda1 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ QuickSettingsController f$0;

    public /* synthetic */ QuickSettingsController$$ExternalSyntheticLambda1(QuickSettingsController quickSettingsController, int i) {
        this.$r8$classId = i;
        this.f$0 = quickSettingsController;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.$r8$classId) {
            case 0:
                QuickSettingsController quickSettingsController = this.f$0;
                quickSettingsController.getClass();
                quickSettingsController.setExpansionHeight(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
            default:
                QuickSettingsController quickSettingsController2 = this.f$0;
                NotificationPanelViewController$$ExternalSyntheticLambda2 notificationPanelViewController$$ExternalSyntheticLambda2 = quickSettingsController2.mExpansionHeightSetToMaxListener;
                if (notificationPanelViewController$$ExternalSyntheticLambda2 != null) {
                    NotificationPanelViewController notificationPanelViewController = notificationPanelViewController$$ExternalSyntheticLambda2.f$0;
                    notificationPanelViewController.requestScrollerTopPaddingUpdate(false);
                    notificationPanelViewController.updateExpandedHeightToMaxHeight();
                }
                quickSettingsController2.mQs.setHeightOverride(((Integer) quickSettingsController2.mSizeChangeAnimator.getAnimatedValue()).intValue());
                return;
        }
    }
}
