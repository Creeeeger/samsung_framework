package com.android.systemui.statusbar.dagger;

import android.content.Context;
import com.android.systemui.statusbar.phone.StatusBarIconList;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CentralSurfacesDependenciesModule_ProvideStatusBarIconListFactory implements Provider {
    public final Provider contextProvider;

    public CentralSurfacesDependenciesModule_ProvideStatusBarIconListFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static StatusBarIconList provideStatusBarIconList(Context context) {
        return new StatusBarIconList(context.getResources().getStringArray(17236309));
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideStatusBarIconList((Context) this.contextProvider.get());
    }
}
