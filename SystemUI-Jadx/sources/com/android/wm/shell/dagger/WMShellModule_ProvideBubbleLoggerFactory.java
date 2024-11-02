package com.android.wm.shell.dagger;

import com.android.internal.logging.UiEventLogger;
import com.android.wm.shell.bubbles.BubbleLogger;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvideBubbleLoggerFactory implements Provider {
    public final Provider uiEventLoggerProvider;

    public WMShellModule_ProvideBubbleLoggerFactory(Provider provider) {
        this.uiEventLoggerProvider = provider;
    }

    public static BubbleLogger provideBubbleLogger(UiEventLogger uiEventLogger) {
        return new BubbleLogger(uiEventLogger);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new BubbleLogger((UiEventLogger) this.uiEventLoggerProvider.get());
    }
}
