package dagger.internal;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SingleCheck implements Provider {
    public static final Object UNINITIALIZED = new Object();
    public volatile Object instance = UNINITIALIZED;
    public volatile Provider provider;

    private SingleCheck(Provider provider) {
        this.provider = provider;
    }

    public static Provider provider(Provider provider) {
        if (!(provider instanceof SingleCheck) && !(provider instanceof DoubleCheck)) {
            return new SingleCheck(provider);
        }
        return provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Object obj = this.instance;
        if (obj == UNINITIALIZED) {
            Provider provider = this.provider;
            if (provider == null) {
                return this.instance;
            }
            Object obj2 = provider.get();
            this.instance = obj2;
            this.provider = null;
            return obj2;
        }
        return obj;
    }
}
