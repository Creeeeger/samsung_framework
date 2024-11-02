package com.android.systemui.bixby2.controller;

import android.app.KeyguardManager;
import android.content.Context;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.util.DesktopManager;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationController_Factory implements Provider {
    private final Provider contextProvider;
    private final Provider desktopManagerProvider;
    private final Provider displayLifecycleProvider;
    private final Provider keyguardManagerProvider;
    private final Provider notifCollectionProvider;
    private final Provider notifPipelineProvider;

    public NotificationController_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6) {
        this.contextProvider = provider;
        this.notifPipelineProvider = provider2;
        this.notifCollectionProvider = provider3;
        this.desktopManagerProvider = provider4;
        this.displayLifecycleProvider = provider5;
        this.keyguardManagerProvider = provider6;
    }

    public static NotificationController_Factory create(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6) {
        return new NotificationController_Factory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static NotificationController newInstance(Context context, NotifPipeline notifPipeline, NotifCollection notifCollection, DesktopManager desktopManager, DisplayLifecycle displayLifecycle, KeyguardManager keyguardManager) {
        return new NotificationController(context, notifPipeline, notifCollection, desktopManager, displayLifecycle, keyguardManager);
    }

    @Override // javax.inject.Provider
    public NotificationController get() {
        return newInstance((Context) this.contextProvider.get(), (NotifPipeline) this.notifPipelineProvider.get(), (NotifCollection) this.notifCollectionProvider.get(), (DesktopManager) this.desktopManagerProvider.get(), (DisplayLifecycle) this.displayLifecycleProvider.get(), (KeyguardManager) this.keyguardManagerProvider.get());
    }
}
