package com.android.systemui.log.dagger;

import android.content.ContentResolver;
import android.os.Build;
import android.os.Looper;
import com.android.systemui.log.LogcatEchoTracker;
import com.android.systemui.log.LogcatEchoTrackerDebug;
import com.android.systemui.log.LogcatEchoTrackerProd;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LogModule_ProvideLogcatEchoTrackerFactory implements Provider {
    public final Provider contentResolverProvider;
    public final Provider looperProvider;

    public LogModule_ProvideLogcatEchoTrackerFactory(Provider provider, Provider provider2) {
        this.contentResolverProvider = provider;
        this.looperProvider = provider2;
    }

    public static LogcatEchoTracker provideLogcatEchoTracker(ContentResolver contentResolver, Looper looper) {
        LogcatEchoTracker logcatEchoTrackerProd;
        if (Build.isDebuggable()) {
            logcatEchoTrackerProd = LogcatEchoTrackerDebug.create(contentResolver, looper);
        } else {
            logcatEchoTrackerProd = new LogcatEchoTrackerProd();
        }
        Preconditions.checkNotNullFromProvides(logcatEchoTrackerProd);
        return logcatEchoTrackerProd;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideLogcatEchoTracker((ContentResolver) this.contentResolverProvider.get(), (Looper) this.looperProvider.get());
    }
}
