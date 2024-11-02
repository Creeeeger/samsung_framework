package com.android.systemui.navigationbar;

import android.view.LayoutInflater;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavigationBarModule_ProvideNavigationBarviewFactory implements Provider {
    public final Provider frameProvider;
    public final Provider layoutInflaterProvider;

    public NavigationBarModule_ProvideNavigationBarviewFactory(Provider provider, Provider provider2) {
        this.layoutInflaterProvider = provider;
        this.frameProvider = provider2;
    }

    public static NavigationBarView provideNavigationBarview(LayoutInflater layoutInflater, NavigationBarFrame navigationBarFrame) {
        int i;
        if (BasicRune.NAVBAR_ENABLED) {
            i = R.layout.samsung_navigation_bar;
        } else {
            i = R.layout.navigation_bar;
        }
        NavigationBarView navigationBarView = (NavigationBarView) layoutInflater.inflate(i, navigationBarFrame).findViewById(R.id.navigation_bar_view);
        Preconditions.checkNotNullFromProvides(navigationBarView);
        return navigationBarView;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideNavigationBarview((LayoutInflater) this.layoutInflaterProvider.get(), (NavigationBarFrame) this.frameProvider.get());
    }
}
