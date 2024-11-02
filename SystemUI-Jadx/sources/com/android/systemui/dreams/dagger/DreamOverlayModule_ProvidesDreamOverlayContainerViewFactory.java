package com.android.systemui.dreams.dagger;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.internal.util.Preconditions;
import com.android.systemui.R;
import com.android.systemui.dreams.DreamOverlayContainerView;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DreamOverlayModule_ProvidesDreamOverlayContainerViewFactory implements Provider {
    public final Provider layoutInflaterProvider;

    public DreamOverlayModule_ProvidesDreamOverlayContainerViewFactory(Provider provider) {
        this.layoutInflaterProvider = provider;
    }

    public static DreamOverlayContainerView providesDreamOverlayContainerView(LayoutInflater layoutInflater) {
        DreamOverlayContainerView dreamOverlayContainerView = (DreamOverlayContainerView) Preconditions.checkNotNull((DreamOverlayContainerView) layoutInflater.inflate(R.layout.dream_overlay_container, (ViewGroup) null), "R.layout.dream_layout_container could not be properly inflated");
        dagger.internal.Preconditions.checkNotNullFromProvides(dreamOverlayContainerView);
        return dreamOverlayContainerView;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesDreamOverlayContainerView((LayoutInflater) this.layoutInflaterProvider.get());
    }
}
