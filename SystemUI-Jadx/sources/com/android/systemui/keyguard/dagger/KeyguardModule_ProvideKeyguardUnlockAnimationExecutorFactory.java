package com.android.systemui.keyguard.dagger;

import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.HandlerThread;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardModule_ProvideKeyguardUnlockAnimationExecutorFactory implements Provider {
    public static Executor provideKeyguardUnlockAnimationExecutor() {
        HandlerThread handlerThread = new HandlerThread("UnlockAnimationThread", -4);
        handlerThread.start();
        return new HandlerExecutor(Handler.createAsync(handlerThread.getLooper()));
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideKeyguardUnlockAnimationExecutor();
    }
}
