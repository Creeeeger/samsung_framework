package com.android.systemui.shade;

import android.content.Context;
import com.android.systemui.statusbar.phone.IndicatorCutoutUtil;
import com.android.systemui.statusbar.phone.IndicatorGardenPresenter;
import com.android.systemui.statusbar.phone.IndicatorScaleGardener;
import com.android.systemui.statusbar.phone.StatusIconContainer;
import com.android.systemui.statusbar.phone.StatusIconContainerController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeModule_Companion_ProvideStatusIconContainerControllerFactory implements Provider {
    public final Provider configurationControllerProvider;
    public final Provider contextProvider;
    public final Provider indicatorCutoutUtilProvider;
    public final Provider indicatorGardenPresenterProvider;
    public final Provider indicatorScaleGardenerProvider;
    public final Provider statusIconContainerProvider;

    public ShadeModule_Companion_ProvideStatusIconContainerControllerFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6) {
        this.statusIconContainerProvider = provider;
        this.contextProvider = provider2;
        this.configurationControllerProvider = provider3;
        this.indicatorScaleGardenerProvider = provider4;
        this.indicatorGardenPresenterProvider = provider5;
        this.indicatorCutoutUtilProvider = provider6;
    }

    public static StatusIconContainerController provideStatusIconContainerController(StatusIconContainer statusIconContainer, Context context, ConfigurationController configurationController, IndicatorScaleGardener indicatorScaleGardener, IndicatorGardenPresenter indicatorGardenPresenter, IndicatorCutoutUtil indicatorCutoutUtil) {
        ShadeModule.Companion.getClass();
        return new StatusIconContainerController(statusIconContainer, context, configurationController, indicatorScaleGardener, indicatorGardenPresenter, indicatorCutoutUtil);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideStatusIconContainerController((StatusIconContainer) this.statusIconContainerProvider.get(), (Context) this.contextProvider.get(), (ConfigurationController) this.configurationControllerProvider.get(), (IndicatorScaleGardener) this.indicatorScaleGardenerProvider.get(), (IndicatorGardenPresenter) this.indicatorGardenPresenterProvider.get(), (IndicatorCutoutUtil) this.indicatorCutoutUtilProvider.get());
    }
}
