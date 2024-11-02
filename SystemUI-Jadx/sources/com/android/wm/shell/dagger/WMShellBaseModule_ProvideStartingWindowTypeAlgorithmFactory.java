package com.android.wm.shell.dagger;

import com.android.wm.shell.startingsurface.StartingWindowTypeAlgorithm;
import com.android.wm.shell.startingsurface.phone.PhoneStartingWindowTypeAlgorithm;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideStartingWindowTypeAlgorithmFactory implements Provider {
    public final Provider startingWindowTypeAlgorithmProvider;

    public WMShellBaseModule_ProvideStartingWindowTypeAlgorithmFactory(Provider provider) {
        this.startingWindowTypeAlgorithmProvider = provider;
    }

    public static StartingWindowTypeAlgorithm provideStartingWindowTypeAlgorithm(Optional optional) {
        StartingWindowTypeAlgorithm phoneStartingWindowTypeAlgorithm;
        if (optional.isPresent()) {
            phoneStartingWindowTypeAlgorithm = (StartingWindowTypeAlgorithm) optional.get();
        } else {
            phoneStartingWindowTypeAlgorithm = new PhoneStartingWindowTypeAlgorithm();
        }
        Preconditions.checkNotNullFromProvides(phoneStartingWindowTypeAlgorithm);
        return phoneStartingWindowTypeAlgorithm;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideStartingWindowTypeAlgorithm((Optional) this.startingWindowTypeAlgorithmProvider.get());
    }
}
