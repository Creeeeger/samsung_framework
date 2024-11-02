package com.android.systemui.statusbar.window;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.systemui.R;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarWindowModule_ProvidesStatusBarWindowViewFactory implements Provider {
    public final Provider layoutInflaterProvider;

    public StatusBarWindowModule_ProvidesStatusBarWindowViewFactory(Provider provider) {
        this.layoutInflaterProvider = provider;
    }

    public static StatusBarWindowView providesStatusBarWindowView(LayoutInflater layoutInflater) {
        StatusBarWindowModule.Companion.getClass();
        StatusBarWindowView statusBarWindowView = (StatusBarWindowView) layoutInflater.inflate(R.layout.super_status_bar, (ViewGroup) null);
        if (statusBarWindowView != null) {
            return statusBarWindowView;
        }
        throw new IllegalStateException("R.layout.super_status_bar could not be properly inflated");
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesStatusBarWindowView((LayoutInflater) this.layoutInflaterProvider.get());
    }
}
