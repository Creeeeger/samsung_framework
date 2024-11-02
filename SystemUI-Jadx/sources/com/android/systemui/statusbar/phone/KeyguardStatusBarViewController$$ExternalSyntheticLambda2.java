package com.android.systemui.statusbar.phone;

import android.graphics.Rect;
import com.android.systemui.R;
import com.android.systemui.battery.BatteryMeterView;
import com.android.systemui.statusbar.disableflags.DisableStateTracker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardStatusBarViewController$$ExternalSyntheticLambda2 implements SidelingCutoutContainerInfo, DisableStateTracker.Callback {
    public final /* synthetic */ KeyguardStatusBarViewController f$0;

    public /* synthetic */ KeyguardStatusBarViewController$$ExternalSyntheticLambda2(KeyguardStatusBarViewController keyguardStatusBarViewController) {
        this.f$0 = keyguardStatusBarViewController;
    }

    @Override // com.android.systemui.statusbar.phone.SidelingCutoutContainerInfo
    public int getRightSideAvailableWidth(Rect rect) {
        int i;
        KeyguardStatusBarViewController keyguardStatusBarViewController = this.f$0;
        BatteryMeterView batteryMeterView = (BatteryMeterView) ((KeyguardStatusBarView) keyguardStatusBarViewController.mView).findViewById(R.id.battery);
        int paddingEnd = ((KeyguardStatusBarView) keyguardStatusBarViewController.mView).findViewById(R.id.statusIcons).getPaddingEnd();
        int paddingRight = keyguardStatusBarViewController.getSidePaddingContainer().getPaddingRight();
        int width = keyguardStatusBarViewController.getResources().getConfiguration().windowConfiguration.getBounds().width();
        TwoPhoneModeIconController twoPhoneModeIconController = keyguardStatusBarViewController.mTwoPhoneModeController;
        if (twoPhoneModeIconController.featureEnabled() && twoPhoneModeIconController.getViewWidth() > 0) {
            i = twoPhoneModeIconController.getViewWidth();
        } else {
            i = 0;
        }
        return (width - (((batteryMeterView.getMeasuredWidth() + paddingRight) + paddingEnd) + i)) - (keyguardStatusBarViewController.getResources().getDimensionPixelSize(R.dimen.indicator_marquee_max_shift) + rect.right);
    }
}
