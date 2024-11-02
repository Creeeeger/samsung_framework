package com.android.systemui;

import com.android.internal.logging.MetricsLogger;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ForegroundServicesDialog_Factory implements Provider {
    public final Provider metricsLoggerProvider;

    public ForegroundServicesDialog_Factory(Provider provider) {
        this.metricsLoggerProvider = provider;
    }

    public static ForegroundServicesDialog newInstance(MetricsLogger metricsLogger) {
        return new ForegroundServicesDialog(metricsLogger);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new ForegroundServicesDialog((MetricsLogger) this.metricsLoggerProvider.get());
    }
}
