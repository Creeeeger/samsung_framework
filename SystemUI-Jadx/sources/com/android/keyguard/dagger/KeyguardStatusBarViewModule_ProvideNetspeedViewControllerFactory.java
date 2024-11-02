package com.android.keyguard.dagger;

import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.statusbar.phone.IndicatorCutoutUtil;
import com.android.systemui.statusbar.phone.IndicatorScaleGardener;
import com.android.systemui.statusbar.phone.KeyguardStatusBarView;
import com.android.systemui.statusbar.policy.NetspeedView;
import com.android.systemui.statusbar.policy.NetspeedViewController;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory implements Provider {
    public final Provider indicatorCutoutUtilProvider;
    public final Provider indicatorScaleGardenerProvider;
    public final Provider userTrackerProvider;
    public final Provider viewProvider;

    public KeyguardStatusBarViewModule_ProvideNetspeedViewControllerFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.viewProvider = provider;
        this.indicatorScaleGardenerProvider = provider2;
        this.indicatorCutoutUtilProvider = provider3;
        this.userTrackerProvider = provider4;
    }

    public static NetspeedViewController provideNetspeedViewController(KeyguardStatusBarView keyguardStatusBarView, IndicatorScaleGardener indicatorScaleGardener, IndicatorCutoutUtil indicatorCutoutUtil, UserTracker userTracker) {
        if (BasicRune.STATUS_REAL_TIME_NETWORK_SPEED) {
            return new NetspeedViewController((NetspeedView) keyguardStatusBarView.findViewById(R.id.networkSpeed), indicatorScaleGardener, indicatorCutoutUtil, userTracker);
        }
        return null;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideNetspeedViewController((KeyguardStatusBarView) this.viewProvider.get(), (IndicatorScaleGardener) this.indicatorScaleGardenerProvider.get(), (IndicatorCutoutUtil) this.indicatorCutoutUtilProvider.get(), (UserTracker) this.userTrackerProvider.get());
    }
}
