package com.android.systemui.statusbar.connectivity;

import android.os.Looper;
import android.telephony.SubscriptionInfo;
import android.telephony.TelephonyManager;
import com.android.settingslib.mobile.MobileStatusTracker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileStatusTrackerFactory {
    public final MobileStatusTracker.SubscriptionDefaults defaults;
    public final SubscriptionInfo info;
    public final TelephonyManager phone;
    public final Looper receiverLooper;

    public MobileStatusTrackerFactory(TelephonyManager telephonyManager, Looper looper, SubscriptionInfo subscriptionInfo, MobileStatusTracker.SubscriptionDefaults subscriptionDefaults) {
        this.phone = telephonyManager;
        this.receiverLooper = looper;
        this.info = subscriptionInfo;
        this.defaults = subscriptionDefaults;
    }
}
