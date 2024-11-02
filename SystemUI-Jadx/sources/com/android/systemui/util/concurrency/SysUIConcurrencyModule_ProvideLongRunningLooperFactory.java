package com.android.systemui.util.concurrency;

import android.os.HandlerThread;
import android.os.Looper;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SysUIConcurrencyModule_ProvideLongRunningLooperFactory implements Provider {
    public static Looper provideLongRunningLooper() {
        Long l = SysUIConcurrencyModule.BG_SLOW_DISPATCH_THRESHOLD;
        HandlerThread handlerThread = new HandlerThread("SysUiLng", 10);
        handlerThread.start();
        handlerThread.getLooper().setSlowLogThresholdMs(SysUIConcurrencyModule.LONG_SLOW_DISPATCH_THRESHOLD.longValue(), SysUIConcurrencyModule.LONG_SLOW_DELIVERY_THRESHOLD.longValue());
        Looper looper = handlerThread.getLooper();
        Preconditions.checkNotNullFromProvides(looper);
        return looper;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideLongRunningLooper();
    }
}
