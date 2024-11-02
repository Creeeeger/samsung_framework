package com.android.wm.shell.dagger;

import android.app.ActivityTaskManager;
import android.content.Context;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvidesSplitScreenControllerFactory implements Provider {
    public final Provider contextProvider;
    public final Provider splitscreenControllerProvider;

    public WMShellBaseModule_ProvidesSplitScreenControllerFactory(Provider provider, Provider provider2) {
        this.splitscreenControllerProvider = provider;
        this.contextProvider = provider2;
    }

    public static Optional providesSplitScreenController(Context context, Optional optional) {
        if (!ActivityTaskManager.deviceSupportsMultiWindow(context) && !ActivityTaskManager.supportsSplitScreenMultiWindow(context)) {
            optional = Optional.empty();
        }
        Preconditions.checkNotNullFromProvides(optional);
        return optional;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesSplitScreenController((Context) this.contextProvider.get(), (Optional) this.splitscreenControllerProvider.get());
    }
}
