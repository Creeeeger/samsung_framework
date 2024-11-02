package com.android.systemui.bixby2.controller.volume;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class InvalidVolumeController_Factory implements Provider {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public static final class InstanceHolder {
        private static final InvalidVolumeController_Factory INSTANCE = new InvalidVolumeController_Factory();

        private InstanceHolder() {
        }
    }

    public static InvalidVolumeController_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static InvalidVolumeController newInstance() {
        return new InvalidVolumeController();
    }

    @Override // javax.inject.Provider
    public InvalidVolumeController get() {
        return newInstance();
    }
}
