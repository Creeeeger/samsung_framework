package com.android.systemui.util.kotlin;

import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CoroutinesModule_MainDispatcherFactory implements Provider {
    public static CoroutineDispatcher mainDispatcher() {
        CoroutinesModule.INSTANCE.getClass();
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        MainCoroutineDispatcher immediate = MainDispatcherLoader.dispatcher.getImmediate();
        Preconditions.checkNotNullFromProvides(immediate);
        return immediate;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return mainDispatcher();
    }
}
