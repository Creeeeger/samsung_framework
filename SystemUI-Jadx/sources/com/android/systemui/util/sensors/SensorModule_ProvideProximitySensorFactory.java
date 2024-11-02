package com.android.systemui.util.sensors;

import android.content.res.Resources;
import android.text.TextUtils;
import com.android.systemui.R;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SensorModule_ProvideProximitySensorFactory implements Provider {
    public final Provider postureDependentProximitySensorProvider;
    public final Provider proximitySensorProvider;
    public final Provider resourcesProvider;

    public SensorModule_ProvideProximitySensorFactory(Provider provider, Provider provider2, Provider provider3) {
        this.resourcesProvider = provider;
        this.postureDependentProximitySensorProvider = provider2;
        this.proximitySensorProvider = provider3;
    }

    public static ProximitySensor provideProximitySensor(Resources resources, Lazy lazy, Lazy lazy2) {
        ProximitySensor proximitySensor;
        String[] stringArray = resources.getStringArray(R.array.proximity_sensor_posture_mapping);
        boolean z = false;
        if (stringArray != null && stringArray.length != 0) {
            int length = stringArray.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (!TextUtils.isEmpty(stringArray[i])) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        if (z) {
            proximitySensor = (ProximitySensor) lazy.get();
        } else {
            proximitySensor = (ProximitySensor) lazy2.get();
        }
        Preconditions.checkNotNullFromProvides(proximitySensor);
        return proximitySensor;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideProximitySensor((Resources) this.resourcesProvider.get(), DoubleCheck.lazy(this.postureDependentProximitySensorProvider), DoubleCheck.lazy(this.proximitySensorProvider));
    }
}
