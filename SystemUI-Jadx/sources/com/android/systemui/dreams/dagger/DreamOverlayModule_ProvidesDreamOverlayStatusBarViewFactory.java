package com.android.systemui.dreams.dagger;

import com.android.internal.util.Preconditions;
import com.android.systemui.R;
import com.android.systemui.dreams.DreamOverlayContainerView;
import com.android.systemui.dreams.DreamOverlayStatusBarView;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DreamOverlayModule_ProvidesDreamOverlayStatusBarViewFactory implements Provider {
    public final Provider viewProvider;

    public DreamOverlayModule_ProvidesDreamOverlayStatusBarViewFactory(Provider provider) {
        this.viewProvider = provider;
    }

    public static DreamOverlayStatusBarView providesDreamOverlayStatusBarView(DreamOverlayContainerView dreamOverlayContainerView) {
        DreamOverlayStatusBarView dreamOverlayStatusBarView = (DreamOverlayStatusBarView) Preconditions.checkNotNull((DreamOverlayStatusBarView) dreamOverlayContainerView.findViewById(R.id.dream_overlay_status_bar), "R.id.status_bar must not be null");
        dagger.internal.Preconditions.checkNotNullFromProvides(dreamOverlayStatusBarView);
        return dreamOverlayStatusBarView;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesDreamOverlayStatusBarView((DreamOverlayContainerView) this.viewProvider.get());
    }
}
