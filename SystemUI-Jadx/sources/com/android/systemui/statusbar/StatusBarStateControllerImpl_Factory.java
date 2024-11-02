package com.android.systemui.statusbar;

import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.uithreadmonitor.LooperSlowLogController;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarStateControllerImpl_Factory implements Provider {
    public final Provider dumpManagerProvider;
    public final Provider interactionJankMonitorProvider;
    public final Provider mLooperSlowLogControllerProvider;
    public final Provider shadeExpansionStateManagerProvider;
    public final Provider uiEventLoggerProvider;

    public StatusBarStateControllerImpl_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5) {
        this.uiEventLoggerProvider = provider;
        this.dumpManagerProvider = provider2;
        this.interactionJankMonitorProvider = provider3;
        this.shadeExpansionStateManagerProvider = provider4;
        this.mLooperSlowLogControllerProvider = provider5;
    }

    public static StatusBarStateControllerImpl newInstance(UiEventLogger uiEventLogger, DumpManager dumpManager, InteractionJankMonitor interactionJankMonitor, ShadeExpansionStateManager shadeExpansionStateManager) {
        return new StatusBarStateControllerImpl(uiEventLogger, dumpManager, interactionJankMonitor, shadeExpansionStateManager);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        StatusBarStateControllerImpl statusBarStateControllerImpl = new StatusBarStateControllerImpl((UiEventLogger) this.uiEventLoggerProvider.get(), (DumpManager) this.dumpManagerProvider.get(), (InteractionJankMonitor) this.interactionJankMonitorProvider.get(), (ShadeExpansionStateManager) this.shadeExpansionStateManagerProvider.get());
        statusBarStateControllerImpl.mLooperSlowLogController = (LooperSlowLogController) this.mLooperSlowLogControllerProvider.get();
        return statusBarStateControllerImpl;
    }
}
