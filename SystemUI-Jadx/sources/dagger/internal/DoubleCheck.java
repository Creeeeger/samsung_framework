package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class DoubleCheck implements Provider, Lazy {
    public static final Object UNINITIALIZED = new Object();
    public volatile Object instance = UNINITIALIZED;
    public volatile Provider provider;

    private DoubleCheck(Provider provider) {
        this.provider = provider;
    }

    public static Lazy lazy(Provider provider) {
        if (provider instanceof Lazy) {
            return (Lazy) provider;
        }
        provider.getClass();
        return new DoubleCheck(provider);
    }

    public static Provider provider(Provider provider) {
        provider.getClass();
        if (provider instanceof DoubleCheck) {
            return provider;
        }
        return new DoubleCheck(provider);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        boolean z;
        Object obj = this.instance;
        Object obj2 = UNINITIALIZED;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.instance;
                if (obj == obj2) {
                    obj = this.provider.get();
                    Object obj3 = this.instance;
                    if (obj3 != obj2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z && obj3 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.instance = obj;
                    this.provider = null;
                }
            }
        }
        return obj;
    }
}
