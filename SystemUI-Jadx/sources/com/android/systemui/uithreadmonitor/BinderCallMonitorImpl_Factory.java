package com.android.systemui.uithreadmonitor;

import com.android.systemui.log.SamsungServiceLogger;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BinderCallMonitorImpl_Factory implements Provider {
    public final Provider mLoggerProvider;

    public BinderCallMonitorImpl_Factory(Provider provider) {
        this.mLoggerProvider = provider;
    }

    public static BinderCallMonitorImpl newInstance() {
        return new BinderCallMonitorImpl();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        BinderCallMonitorImpl binderCallMonitorImpl = new BinderCallMonitorImpl();
        binderCallMonitorImpl.mLogger = (SamsungServiceLogger) this.mLoggerProvider.get();
        return binderCallMonitorImpl;
    }
}
