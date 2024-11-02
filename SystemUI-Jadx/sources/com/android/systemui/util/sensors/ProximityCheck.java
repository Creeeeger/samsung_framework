package com.android.systemui.util.sensors;

import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.sensors.ThresholdSensor;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ProximityCheck implements Runnable {
    public final DelayableExecutor mDelayableExecutor;
    public final ProximityCheck$$ExternalSyntheticLambda0 mListener;
    public final ProximitySensor mSensor;
    public final List mCallbacks = new ArrayList();
    public final AtomicBoolean mRegistered = new AtomicBoolean();

    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.util.sensors.ProximityCheck$$ExternalSyntheticLambda0] */
    public ProximityCheck(ProximitySensor proximitySensor, DelayableExecutor delayableExecutor) {
        this.mSensor = proximitySensor;
        ((ProximitySensorImpl) proximitySensor).setTag("prox_check");
        this.mDelayableExecutor = delayableExecutor;
        this.mListener = new ThresholdSensor.Listener() { // from class: com.android.systemui.util.sensors.ProximityCheck$$ExternalSyntheticLambda0
            @Override // com.android.systemui.util.sensors.ThresholdSensor.Listener
            public final void onThresholdCrossed(ThresholdSensorEvent thresholdSensorEvent) {
                ProximityCheck.this.onProximityEvent(thresholdSensorEvent);
            }
        };
    }

    public final void onProximityEvent(final ThresholdSensorEvent thresholdSensorEvent) {
        ((ArrayList) this.mCallbacks).forEach(new Consumer() { // from class: com.android.systemui.util.sensors.ProximityCheck$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Boolean valueOf;
                ThresholdSensorEvent thresholdSensorEvent2 = ThresholdSensorEvent.this;
                Consumer consumer = (Consumer) obj;
                if (thresholdSensorEvent2 == null) {
                    valueOf = null;
                } else {
                    valueOf = Boolean.valueOf(thresholdSensorEvent2.mBelow);
                }
                consumer.accept(valueOf);
            }
        });
        ((ArrayList) this.mCallbacks).clear();
        this.mSensor.unregister(this.mListener);
        this.mRegistered.set(false);
        this.mRegistered.set(false);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.mSensor.unregister(this.mListener);
        this.mRegistered.set(false);
        onProximityEvent(null);
    }
}
