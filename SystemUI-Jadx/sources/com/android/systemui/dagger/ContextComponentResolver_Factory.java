package com.android.systemui.dagger;

import java.util.Map;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ContextComponentResolver_Factory implements Provider {
    public final Provider activityCreatorsProvider;
    public final Provider broadcastReceiverCreatorsProvider;
    public final Provider recentsCreatorsProvider;
    public final Provider serviceCreatorsProvider;

    public ContextComponentResolver_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.activityCreatorsProvider = provider;
        this.serviceCreatorsProvider = provider2;
        this.recentsCreatorsProvider = provider3;
        this.broadcastReceiverCreatorsProvider = provider4;
    }

    public static ContextComponentResolver newInstance(Map map, Map map2, Map map3, Map map4) {
        return new ContextComponentResolver(map, map2, map3, map4);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new ContextComponentResolver((Map) this.activityCreatorsProvider.get(), (Map) this.serviceCreatorsProvider.get(), (Map) this.recentsCreatorsProvider.get(), (Map) this.broadcastReceiverCreatorsProvider.get());
    }
}
