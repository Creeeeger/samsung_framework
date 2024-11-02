package com.android.systemui.bixby2.interactor;

import android.content.Context;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ShareViaActionInteractor_Factory implements Provider {
    private final Provider contextProvider;

    public ShareViaActionInteractor_Factory(Provider provider) {
        this.contextProvider = provider;
    }

    public static ShareViaActionInteractor_Factory create(Provider provider) {
        return new ShareViaActionInteractor_Factory(provider);
    }

    public static ShareViaActionInteractor newInstance(Context context) {
        return new ShareViaActionInteractor(context);
    }

    @Override // javax.inject.Provider
    public ShareViaActionInteractor get() {
        return newInstance((Context) this.contextProvider.get());
    }
}
