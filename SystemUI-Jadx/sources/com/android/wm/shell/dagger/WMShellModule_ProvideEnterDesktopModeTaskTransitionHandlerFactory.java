package com.android.wm.shell.dagger;

import com.android.wm.shell.desktopmode.EnterDesktopTaskTransitionHandler;
import com.android.wm.shell.transition.Transitions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvideEnterDesktopModeTaskTransitionHandlerFactory implements Provider {
    public final Provider transitionsProvider;

    public WMShellModule_ProvideEnterDesktopModeTaskTransitionHandlerFactory(Provider provider) {
        this.transitionsProvider = provider;
    }

    public static EnterDesktopTaskTransitionHandler provideEnterDesktopModeTaskTransitionHandler(Transitions transitions) {
        return new EnterDesktopTaskTransitionHandler(transitions);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new EnterDesktopTaskTransitionHandler((Transitions) this.transitionsProvider.get());
    }
}
