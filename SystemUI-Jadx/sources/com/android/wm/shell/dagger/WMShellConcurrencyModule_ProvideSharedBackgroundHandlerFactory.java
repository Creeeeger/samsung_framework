package com.android.wm.shell.dagger;

import android.os.Handler;
import android.os.HandlerThread;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellConcurrencyModule_ProvideSharedBackgroundHandlerFactory implements Provider {
    public static Handler provideSharedBackgroundHandler() {
        HandlerThread handlerThread = new HandlerThread("wmshell.background", 10);
        handlerThread.start();
        Handler threadHandler = handlerThread.getThreadHandler();
        Preconditions.checkNotNullFromProvides(threadHandler);
        return threadHandler;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideSharedBackgroundHandler();
    }
}
