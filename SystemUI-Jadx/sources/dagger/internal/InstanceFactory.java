package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class InstanceFactory implements Provider, Lazy {
    public final Object instance;

    static {
        new InstanceFactory(null);
    }

    private InstanceFactory(Object obj) {
        this.instance = obj;
    }

    public static InstanceFactory create(Object obj) {
        if (obj != null) {
            return new InstanceFactory(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return this.instance;
    }
}
