package com.android.systemui.bixby2.controller;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MWBixbyController_Factory implements Provider {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public static final class InstanceHolder {
        private static final MWBixbyController_Factory INSTANCE = new MWBixbyController_Factory();

        private InstanceHolder() {
        }
    }

    public static MWBixbyController_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static MWBixbyController newInstance() {
        return new MWBixbyController();
    }

    @Override // javax.inject.Provider
    public MWBixbyController get() {
        return newInstance();
    }
}
