package com.android.systemui.statusbar.notification.dagger;

import android.content.Context;
import com.android.systemui.R;
import com.android.systemui.statusbar.notification.init.NotificationsController;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationsModule_ProvideNotificationsControllerFactory implements Provider {
    public final Provider contextProvider;
    public final Provider realControllerProvider;
    public final Provider stubControllerProvider;

    public NotificationsModule_ProvideNotificationsControllerFactory(Provider provider, Provider provider2, Provider provider3) {
        this.contextProvider = provider;
        this.realControllerProvider = provider2;
        this.stubControllerProvider = provider3;
    }

    public static NotificationsController provideNotificationsController(Context context, Provider provider, Provider provider2) {
        NotificationsController notificationsController;
        if (context.getResources().getBoolean(R.bool.config_renderNotifications)) {
            notificationsController = (NotificationsController) provider.get();
        } else {
            notificationsController = (NotificationsController) provider2.get();
        }
        Preconditions.checkNotNullFromProvides(notificationsController);
        return notificationsController;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideNotificationsController((Context) this.contextProvider.get(), this.realControllerProvider, this.stubControllerProvider);
    }
}
