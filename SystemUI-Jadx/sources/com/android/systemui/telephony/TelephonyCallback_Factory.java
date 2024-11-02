package com.android.systemui.telephony;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TelephonyCallback_Factory implements Provider {
    public static TelephonyCallback newInstance() {
        return new TelephonyCallback();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new TelephonyCallback();
    }
}
