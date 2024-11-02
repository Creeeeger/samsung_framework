package com.android.systemui.statusbar.phone.fragment.dagger;

import com.android.systemui.battery.BatteryMeterViewController;
import com.android.systemui.statusbar.phone.HeadsUpAppearanceController;
import com.android.systemui.statusbar.phone.LightsOutNotifController;
import com.android.systemui.statusbar.phone.PhoneStatusBarTransitions;
import com.android.systemui.statusbar.phone.PhoneStatusBarView;
import com.android.systemui.statusbar.phone.PhoneStatusBarViewController;
import com.android.systemui.statusbar.phone.StatusBarBoundsProvider;
import com.android.systemui.statusbar.phone.StatusBarDemoMode;
import com.android.systemui.statusbar.phone.fragment.CollapsedStatusBarFragment;
import com.android.systemui.statusbar.policy.QSClockIndicatorViewController;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface StatusBarFragmentComponent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Factory {
        StatusBarFragmentComponent create(CollapsedStatusBarFragment collapsedStatusBarFragment);
    }

    BatteryMeterViewController getBatteryMeterViewController();

    StatusBarBoundsProvider getBoundsProvider();

    HeadsUpAppearanceController getHeadsUpAppearanceController();

    LightsOutNotifController getLightsOutNotifController();

    PhoneStatusBarTransitions getPhoneStatusBarTransitions();

    PhoneStatusBarView getPhoneStatusBarView();

    PhoneStatusBarViewController getPhoneStatusBarViewController();

    QSClockIndicatorViewController getQSClockIndicatorViewController();

    Set getStartables();

    StatusBarDemoMode getStatusBarDemoMode();

    default void init() {
        getBatteryMeterViewController().init();
        getHeadsUpAppearanceController().init();
        getPhoneStatusBarViewController().init();
        getLightsOutNotifController().init();
        getStatusBarDemoMode().init();
        getQSClockIndicatorViewController().init();
    }
}
