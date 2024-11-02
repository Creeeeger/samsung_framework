package com.android.systemui.dagger;

import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderWrapper;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SystemUIModule_ProvideVisualInterruptionDecisionProviderFactory implements Provider {
    public final Provider innerProvider;

    public SystemUIModule_ProvideVisualInterruptionDecisionProviderFactory(Provider provider) {
        this.innerProvider = provider;
    }

    public static NotificationInterruptStateProviderWrapper provideVisualInterruptionDecisionProvider(NotificationInterruptStateProvider notificationInterruptStateProvider) {
        return new NotificationInterruptStateProviderWrapper(notificationInterruptStateProvider);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new NotificationInterruptStateProviderWrapper((NotificationInterruptStateProvider) this.innerProvider.get());
    }
}
