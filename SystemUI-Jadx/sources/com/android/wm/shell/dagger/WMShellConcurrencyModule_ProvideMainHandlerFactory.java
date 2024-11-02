package com.android.wm.shell.dagger;

import android.os.Handler;
import android.os.Looper;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellConcurrencyModule_ProvideMainHandlerFactory implements Provider {
    public static Handler provideMainHandler$1() {
        return new Handler(Looper.getMainLooper());
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideMainHandler$1();
    }
}
