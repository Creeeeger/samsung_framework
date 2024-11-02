package com.android.systemui.mediaprojection.appselector;

import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaProjectionAppSelectorModule_Companion_ProvideCoroutineScopeFactory implements Provider {
    public final Provider applicationScopeProvider;

    public MediaProjectionAppSelectorModule_Companion_ProvideCoroutineScopeFactory(Provider provider) {
        this.applicationScopeProvider = provider;
    }

    public static ContextScope provideCoroutineScope(CoroutineScope coroutineScope) {
        MediaProjectionAppSelectorModule.Companion.getClass();
        return CoroutineScopeKt.CoroutineScope(coroutineScope.getCoroutineContext().plus(new SupervisorJobImpl(null)));
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideCoroutineScope((CoroutineScope) this.applicationScopeProvider.get());
    }
}
