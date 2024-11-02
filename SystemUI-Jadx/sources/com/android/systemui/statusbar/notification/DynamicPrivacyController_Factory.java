package com.android.systemui.statusbar.notification;

import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DynamicPrivacyController_Factory implements Provider {
    public final Provider keyguardStateControllerProvider;
    public final Provider notificationLockscreenUserManagerProvider;
    public final Provider stateControllerProvider;

    public DynamicPrivacyController_Factory(Provider provider, Provider provider2, Provider provider3) {
        this.notificationLockscreenUserManagerProvider = provider;
        this.keyguardStateControllerProvider = provider2;
        this.stateControllerProvider = provider3;
    }

    public static DynamicPrivacyController newInstance(NotificationLockscreenUserManager notificationLockscreenUserManager, KeyguardStateController keyguardStateController, StatusBarStateController statusBarStateController) {
        return new DynamicPrivacyController(notificationLockscreenUserManager, keyguardStateController, statusBarStateController);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new DynamicPrivacyController((NotificationLockscreenUserManager) this.notificationLockscreenUserManagerProvider.get(), (KeyguardStateController) this.keyguardStateControllerProvider.get(), (StatusBarStateController) this.stateControllerProvider.get());
    }
}
