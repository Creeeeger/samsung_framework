package com.android.wm.shell.dagger;

import android.content.Context;
import com.android.wm.shell.unfold.UnfoldBackgroundController;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvideUnfoldBackgroundControllerFactory implements Provider {
    public final Provider contextProvider;

    public WMShellModule_ProvideUnfoldBackgroundControllerFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static UnfoldBackgroundController provideUnfoldBackgroundController(Context context) {
        return new UnfoldBackgroundController(context);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new UnfoldBackgroundController((Context) this.contextProvider.get());
    }
}
