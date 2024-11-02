package com.android.systemui.bixby2.interactor;

import android.content.Context;
import com.android.systemui.bixby2.controller.NotificationController;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationControlActionInteractor_Factory implements Provider {
    private final Provider contextProvider;
    private final Provider notificationControllerProvider;

    public NotificationControlActionInteractor_Factory(Provider provider, Provider provider2) {
        this.contextProvider = provider;
        this.notificationControllerProvider = provider2;
    }

    public static NotificationControlActionInteractor_Factory create(Provider provider, Provider provider2) {
        return new NotificationControlActionInteractor_Factory(provider, provider2);
    }

    public static NotificationControlActionInteractor newInstance(Context context, NotificationController notificationController) {
        return new NotificationControlActionInteractor(context, notificationController);
    }

    @Override // javax.inject.Provider
    public NotificationControlActionInteractor get() {
        return newInstance((Context) this.contextProvider.get(), (NotificationController) this.notificationControllerProvider.get());
    }
}
