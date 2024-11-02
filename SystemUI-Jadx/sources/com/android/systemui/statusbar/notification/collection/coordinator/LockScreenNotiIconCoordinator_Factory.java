package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.pluginlock.PluginLockMediator;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.LockscreenNotificationManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.notification.collection.render.GroupMembershipManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.util.SettingsHelper;
import java.util.Optional;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LockScreenNotiIconCoordinator_Factory implements Provider {
    public final Provider bubblesOptionalProvider;
    public final Provider groupMembershipManagerProvider;
    public final Provider keyguardStateControllerProvider;
    public final Provider lockscreenNotificationManagerProvider;
    public final Provider lockscreenUserManagerProvider;
    public final Provider pluginLockMediatorProvider;
    public final Provider settingsHelperProvider;
    public final Provider statusBarStateControllerProvider;

    public LockScreenNotiIconCoordinator_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7, Provider provider8) {
        this.lockscreenNotificationManagerProvider = provider;
        this.keyguardStateControllerProvider = provider2;
        this.lockscreenUserManagerProvider = provider3;
        this.groupMembershipManagerProvider = provider4;
        this.pluginLockMediatorProvider = provider5;
        this.statusBarStateControllerProvider = provider6;
        this.settingsHelperProvider = provider7;
        this.bubblesOptionalProvider = provider8;
    }

    public static LockScreenNotiIconCoordinator newInstance(LockscreenNotificationManager lockscreenNotificationManager, KeyguardStateController keyguardStateController, NotificationLockscreenUserManager notificationLockscreenUserManager, GroupMembershipManager groupMembershipManager, PluginLockMediator pluginLockMediator, StatusBarStateController statusBarStateController, SettingsHelper settingsHelper, Optional optional) {
        return new LockScreenNotiIconCoordinator(lockscreenNotificationManager, keyguardStateController, notificationLockscreenUserManager, groupMembershipManager, pluginLockMediator, statusBarStateController, settingsHelper, optional);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return newInstance((LockscreenNotificationManager) this.lockscreenNotificationManagerProvider.get(), (KeyguardStateController) this.keyguardStateControllerProvider.get(), (NotificationLockscreenUserManager) this.lockscreenUserManagerProvider.get(), (GroupMembershipManager) this.groupMembershipManagerProvider.get(), (PluginLockMediator) this.pluginLockMediatorProvider.get(), (StatusBarStateController) this.statusBarStateControllerProvider.get(), (SettingsHelper) this.settingsHelperProvider.get(), (Optional) this.bubblesOptionalProvider.get());
    }
}
