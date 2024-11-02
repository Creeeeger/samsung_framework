package com.android.wm.shell.dagger;

import android.content.Context;
import com.android.wm.shell.desktopmode.ExitDesktopTaskTransitionHandler;
import com.android.wm.shell.transition.Transitions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory implements Provider {
    public final Provider contextProvider;
    public final Provider transitionsProvider;

    public WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory(Provider provider, Provider provider2) {
        this.transitionsProvider = provider;
        this.contextProvider = provider2;
    }

    public static ExitDesktopTaskTransitionHandler provideExitDesktopTaskTransitionHandler(Transitions transitions, Context context) {
        return new ExitDesktopTaskTransitionHandler(transitions, context);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new ExitDesktopTaskTransitionHandler((Transitions) this.transitionsProvider.get(), (Context) this.contextProvider.get());
    }
}
