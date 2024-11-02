package com.android.wm.shell.dagger;

import com.android.wm.shell.taskview.TaskViewTransitions;
import com.android.wm.shell.transition.Transitions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideTaskViewTransitionsFactory implements Provider {
    public final Provider transitionsProvider;

    public WMShellBaseModule_ProvideTaskViewTransitionsFactory(Provider provider) {
        this.transitionsProvider = provider;
    }

    public static TaskViewTransitions provideTaskViewTransitions(Transitions transitions) {
        return new TaskViewTransitions(transitions);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new TaskViewTransitions((Transitions) this.transitionsProvider.get());
    }
}
