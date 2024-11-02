package com.android.systemui.statusbar.phone.fragment.dagger;

import com.android.systemui.flags.Flags;
import com.android.systemui.statusbar.phone.PhoneStatusBarView;
import com.android.systemui.statusbar.phone.PhoneStatusBarViewController;
import com.android.systemui.unfold.util.ScopedUnfoldTransitionProgressProvider;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory implements Provider {
    public final Provider phoneStatusBarViewControllerFactoryProvider;
    public final Provider phoneStatusBarViewProvider;

    public StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory(Provider provider, Provider provider2) {
        this.phoneStatusBarViewControllerFactoryProvider = provider;
        this.phoneStatusBarViewProvider = provider2;
    }

    public static PhoneStatusBarViewController providePhoneStatusBarViewController(PhoneStatusBarViewController.Factory factory, PhoneStatusBarView phoneStatusBarView) {
        factory.getClass();
        Flags flags = Flags.INSTANCE;
        factory.featureFlags.getClass();
        return new PhoneStatusBarViewController(phoneStatusBarView, (ScopedUnfoldTransitionProgressProvider) factory.progressProvider.orElse(null), factory.centralSurfaces, factory.shadeController, factory.shadeLogger, null, factory.userChipViewModel, factory.viewUtil, factory.configurationController, factory.indicatorGardenPresenter, factory.dumpManager, factory.viewTreeLogHelper, factory.netspeedViewController, factory.knoxStateBarViewModel, factory.statusIconContainerController, factory.privacyDotViewController, factory.samsungStatusBarGrayIconHelper, factory.twoPhoneModeIconController, factory.phoneStatusBarClockManager, factory.indicatorCutoutUtil, factory.indicatorMarqueeGardener, null);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providePhoneStatusBarViewController((PhoneStatusBarViewController.Factory) this.phoneStatusBarViewControllerFactoryProvider.get(), (PhoneStatusBarView) this.phoneStatusBarViewProvider.get());
    }
}
