package com.android.systemui.util.sensors;

import android.content.res.Resources;
import com.android.systemui.R;
import com.android.systemui.util.sensors.ThresholdSensorImpl;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SensorModule_ProvidePostureToSecondaryProximitySensorMappingFactory implements Provider {
    public final Provider resourcesProvider;
    public final Provider thresholdSensorImplBuilderFactoryProvider;

    public SensorModule_ProvidePostureToSecondaryProximitySensorMappingFactory(Provider provider, Provider provider2) {
        this.thresholdSensorImplBuilderFactoryProvider = provider;
        this.resourcesProvider = provider2;
    }

    public static ThresholdSensor[] providePostureToSecondaryProximitySensorMapping(ThresholdSensorImpl.BuilderFactory builderFactory, Resources resources) {
        return SensorModule.createPostureToSensorMapping(builderFactory, resources.getStringArray(R.array.proximity_sensor_secondary_posture_mapping), R.dimen.proximity_sensor_secondary_threshold, R.dimen.proximity_sensor_secondary_threshold_latch);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providePostureToSecondaryProximitySensorMapping((ThresholdSensorImpl.BuilderFactory) this.thresholdSensorImplBuilderFactoryProvider.get(), (Resources) this.resourcesProvider.get());
    }
}
