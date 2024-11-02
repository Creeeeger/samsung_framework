package com.android.systemui.statusbar.notification.row;

import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifRemoteViewCacheImpl_Factory implements Provider {
    public final Provider collectionProvider;

    public NotifRemoteViewCacheImpl_Factory(Provider provider) {
        this.collectionProvider = provider;
    }

    public static NotifRemoteViewCacheImpl newInstance(CommonNotifCollection commonNotifCollection) {
        return new NotifRemoteViewCacheImpl(commonNotifCollection);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new NotifRemoteViewCacheImpl((CommonNotifCollection) this.collectionProvider.get());
    }
}
