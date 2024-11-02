package com.android.systemui.util.concurrency;

import android.os.Handler;
import android.os.HandlerThread;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SysUIConcurrencyModule_ProvideTimeTickHandlerFactory implements Provider {
    public static Handler provideTimeTickHandler() {
        Long l = SysUIConcurrencyModule.BG_SLOW_DISPATCH_THRESHOLD;
        HandlerThread handlerThread = new HandlerThread("TimeTick");
        handlerThread.start();
        return new Handler(handlerThread.getLooper());
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideTimeTickHandler();
    }
}
