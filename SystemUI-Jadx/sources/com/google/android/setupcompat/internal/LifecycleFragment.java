package com.google.android.setupcompat.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.os.PersistableBundle;
import com.google.android.setupcompat.logging.CustomEvent;
import com.google.android.setupcompat.logging.MetricKey;
import com.google.android.setupcompat.logging.SetupMetricsLogger;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LifecycleFragment extends Fragment {
    public static final /* synthetic */ int $r8$clinit = 0;
    public long durationInNanos = 0;
    public MetricKey metricKey;
    public long startInNanos;

    public LifecycleFragment() {
        setRetainInstance(true);
    }

    @Override // android.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        this.metricKey = MetricKey.get("ScreenDuration", getActivity());
    }

    @Override // android.app.Fragment
    public final void onDetach() {
        boolean z;
        super.onDetach();
        Activity activity = getActivity();
        MetricKey metricKey = this.metricKey;
        long millis = TimeUnit.NANOSECONDS.toMillis(this.durationInNanos);
        int i = SetupMetricsLogger.$r8$clinit;
        if (activity != null) {
            if (metricKey != null) {
                if (millis >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument("Duration cannot be negative.", z);
                SetupCompatServiceInvoker setupCompatServiceInvoker = SetupCompatServiceInvoker.get(activity);
                Bundle bundle = new Bundle();
                bundle.putParcelable("MetricKey_bundle", MetricKey.fromMetricKey(metricKey));
                bundle.putLong("timeMillis", millis);
                setupCompatServiceInvoker.logMetricEvent(2, bundle);
                return;
            }
            throw new NullPointerException("Timer name cannot be null.");
        }
        throw new NullPointerException("Context cannot be null.");
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        this.durationInNanos = (ClockProvider.ticker.read() - this.startInNanos) + this.durationInNanos;
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.startInNanos = ClockProvider.ticker.read();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putLong("onScreenResume", System.nanoTime());
        SetupMetricsLogger.logCustomEvent(getActivity(), CustomEvent.create(MetricKey.get("ScreenActivity", getActivity()), persistableBundle));
    }
}
