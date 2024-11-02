package com.android.systemui.util.sensors;

import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import com.android.systemui.R;
import com.android.systemui.util.sensors.ThresholdSensorImpl;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SensorModule_ProvidePrimaryProximitySensorFactory implements Provider {
    public final Provider sensorManagerProvider;
    public final Provider thresholdSensorBuilderProvider;

    public SensorModule_ProvidePrimaryProximitySensorFactory(Provider provider, Provider provider2) {
        this.sensorManagerProvider = provider;
        this.thresholdSensorBuilderProvider = provider2;
    }

    public static ThresholdSensorImpl providePrimaryProximitySensor(SensorManager sensorManager, ThresholdSensorImpl.Builder builder) {
        float f;
        try {
            builder.mSensorDelay = 3;
            Resources resources = builder.mResources;
            Sensor findSensorByType = builder.findSensorByType(resources.getString(R.string.proximity_sensor_type), true);
            if (findSensorByType != null) {
                builder.mSensor = findSensorByType;
                builder.mSensorSet = true;
            }
            try {
                float f2 = resources.getFloat(R.dimen.proximity_sensor_threshold);
                builder.mThresholdValue = f2;
                builder.mThresholdSet = true;
                if (!builder.mThresholdLatchValueSet) {
                    builder.mThresholdLatchValue = f2;
                }
            } catch (Resources.NotFoundException unused) {
            }
            try {
                builder.mThresholdLatchValue = resources.getFloat(R.dimen.proximity_sensor_threshold_latch);
                builder.mThresholdLatchValueSet = true;
            } catch (Resources.NotFoundException unused2) {
            }
            return builder.build();
        } catch (IllegalStateException unused3) {
            Sensor defaultSensor = sensorManager.getDefaultSensor(8, true);
            builder.mSensor = defaultSensor;
            builder.mSensorSet = true;
            if (defaultSensor != null) {
                f = defaultSensor.getMaximumRange();
            } else {
                f = 0.0f;
            }
            builder.mThresholdValue = f;
            builder.mThresholdSet = true;
            if (!builder.mThresholdLatchValueSet) {
                builder.mThresholdLatchValue = f;
            }
            return builder.build();
        }
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providePrimaryProximitySensor((SensorManager) this.sensorManagerProvider.get(), (ThresholdSensorImpl.Builder) this.thresholdSensorBuilderProvider.get());
    }
}
