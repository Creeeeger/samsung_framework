package com.android.settingslib.core.instrumentation;

import android.metrics.LogMaker;
import android.os.SystemClock;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import com.android.internal.logging.MetricsLogger;
import com.android.settingslib.core.lifecycle.LifecycleObserver;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class VisibilityLoggerMixin implements LifecycleObserver {
    public final int mMetricsCategory;
    public final MetricsFeatureProvider mMetricsFeature;
    public long mVisibleTimestamp;

    public VisibilityLoggerMixin(int i, MetricsFeatureProvider metricsFeatureProvider) {
        this.mMetricsCategory = i;
        this.mMetricsFeature = metricsFeatureProvider;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause() {
        int i;
        MetricsFeatureProvider metricsFeatureProvider = this.mMetricsFeature;
        if (metricsFeatureProvider != null && (i = this.mMetricsCategory) != 0) {
            int elapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.mVisibleTimestamp);
            Iterator it = ((ArrayList) metricsFeatureProvider.mLoggerWriters).iterator();
            while (it.hasNext()) {
                ((EventLogWriter) it.next()).getClass();
                MetricsLogger.action(new LogMaker(i).setType(2).addTaggedData(1089, Integer.valueOf(elapsedRealtime)));
            }
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume() {
        int i;
        MetricsFeatureProvider metricsFeatureProvider = this.mMetricsFeature;
        if (metricsFeatureProvider != null && (i = this.mMetricsCategory) != 0) {
            this.mVisibleTimestamp = SystemClock.elapsedRealtime();
            metricsFeatureProvider.visible(i, 0);
        }
    }
}
