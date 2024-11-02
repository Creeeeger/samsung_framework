package com.android.systemui.dagger;

import android.os.Handler;
import android.os.HandlerThread;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungServicesModule_ProvideNavbarBgHandlerFactory implements Provider {
    public static Handler provideNavbarBgHandler() {
        HandlerThread handlerThread = new HandlerThread("SysUiNavbarBg", 0);
        handlerThread.start();
        return new Handler(handlerThread.getLooper());
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideNavbarBgHandler();
    }
}
