package com.android.keyguard;

import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.plugins.ClockController;
import com.android.systemui.plugins.ClockFaceController;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.lockscreen.LockscreenSmartspaceController;
import com.android.systemui.util.concurrency.ExecutionImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardClockSwitchController$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ KeyguardClockSwitchController$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ClockFaceController smallClock;
        boolean hasCustomWeatherDataDisplay;
        int i = 0;
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                ((KeyguardClockSwitchController) this.f$0).displayClock(1, true);
                return;
            case 1:
                KeyguardClockSwitchController keyguardClockSwitchController = (KeyguardClockSwitchController) this.f$0;
                View view = keyguardClockSwitchController.mWeatherView;
                LockscreenSmartspaceController lockscreenSmartspaceController = keyguardClockSwitchController.mSmartspaceController;
                ((ExecutionImpl) lockscreenSmartspaceController.execution).assertIsMainThread();
                if (lockscreenSmartspaceController.secureSettings.getIntForUser(lockscreenSmartspaceController.context.getResources().getBoolean(17891758) ? 1 : 0, ((UserTrackerImpl) lockscreenSmartspaceController.userTracker).getUserId(), "lockscreen_weather_enabled") != 1) {
                    z = false;
                }
                if (!z) {
                    i = 8;
                }
                view.setVisibility(i);
                return;
            case 2:
                KeyguardClockSwitchController keyguardClockSwitchController2 = (KeyguardClockSwitchController) this.f$0;
                ViewGroup viewGroup = keyguardClockSwitchController2.mDateWeatherView;
                ClockController clockController = keyguardClockSwitchController2.mClockEventController.clock;
                if (clockController == null) {
                    hasCustomWeatherDataDisplay = false;
                } else {
                    if (keyguardClockSwitchController2.mCurrentClockSize == 0) {
                        smallClock = clockController.getLargeClock();
                    } else {
                        smallClock = clockController.getSmallClock();
                    }
                    hasCustomWeatherDataDisplay = smallClock.getConfig().getHasCustomWeatherDataDisplay();
                }
                if (hasCustomWeatherDataDisplay) {
                    i = keyguardClockSwitchController2.mKeyguardDateWeatherViewInvisibility;
                }
                viewGroup.setVisibility(i);
                return;
            default:
                ((ClockController) this.f$0).getLargeClock().getAnimations().enter();
                return;
        }
    }
}
