package com.android.systemui.classifier;

import com.android.systemui.util.time.SystemClock;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HistoryTracker_Factory implements Provider {
    public final Provider systemClockProvider;

    public HistoryTracker_Factory(Provider provider) {
        this.systemClockProvider = provider;
    }

    public static HistoryTracker newInstance(SystemClock systemClock) {
        return new HistoryTracker(systemClock);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new HistoryTracker((SystemClock) this.systemClockProvider.get());
    }
}
