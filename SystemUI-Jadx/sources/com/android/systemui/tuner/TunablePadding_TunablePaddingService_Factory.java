package com.android.systemui.tuner;

import com.android.systemui.tuner.TunablePadding;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TunablePadding_TunablePaddingService_Factory implements Provider {
    public final Provider tunerServiceProvider;

    public TunablePadding_TunablePaddingService_Factory(Provider provider) {
        this.tunerServiceProvider = provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new TunablePadding.TunablePaddingService((TunerService) this.tunerServiceProvider.get());
    }
}
