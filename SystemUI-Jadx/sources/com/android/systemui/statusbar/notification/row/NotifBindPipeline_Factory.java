package com.android.systemui.statusbar.notification.row;

import android.os.Looper;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifBindPipeline_Factory implements Provider {
    public final Provider collectionProvider;
    public final Provider loggerProvider;
    public final Provider mainLooperProvider;

    public NotifBindPipeline_Factory(Provider provider, Provider provider2, Provider provider3) {
        this.collectionProvider = provider;
        this.loggerProvider = provider2;
        this.mainLooperProvider = provider3;
    }

    public static NotifBindPipeline newInstance(CommonNotifCollection commonNotifCollection, NotifBindPipelineLogger notifBindPipelineLogger, Looper looper) {
        return new NotifBindPipeline(commonNotifCollection, notifBindPipelineLogger, looper);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new NotifBindPipeline((CommonNotifCollection) this.collectionProvider.get(), (NotifBindPipelineLogger) this.loggerProvider.get(), (Looper) this.mainLooperProvider.get());
    }
}
