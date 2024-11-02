package com.android.systemui.bixby2.controller.volume;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationVolumeController_Factory implements Provider {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public static final class InstanceHolder {
        private static final NotificationVolumeController_Factory INSTANCE = new NotificationVolumeController_Factory();

        private InstanceHolder() {
        }
    }

    public static NotificationVolumeController_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static NotificationVolumeController newInstance() {
        return new NotificationVolumeController();
    }

    @Override // javax.inject.Provider
    public NotificationVolumeController get() {
        return newInstance();
    }
}
