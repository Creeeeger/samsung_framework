package com.android.systemui.telephony;

import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TelephonyListenerManager {
    public final Executor mExecutor;
    public boolean mListening = false;
    public final TelephonyCallback mTelephonyCallback;
    public final TelephonyManager mTelephonyManager;

    public TelephonyListenerManager(TelephonyManager telephonyManager, Executor executor, TelephonyCallback telephonyCallback) {
        this.mTelephonyManager = telephonyManager;
        this.mExecutor = executor;
        this.mTelephonyCallback = telephonyCallback;
    }

    public final void addActiveDataSubscriptionIdListener(TelephonyCallback.ActiveDataSubscriptionIdListener activeDataSubscriptionIdListener) {
        ((ArrayList) this.mTelephonyCallback.mActiveDataSubscriptionIdListeners).add(activeDataSubscriptionIdListener);
        updateListening();
    }

    public final void updateListening() {
        boolean z = this.mListening;
        TelephonyManager telephonyManager = this.mTelephonyManager;
        TelephonyCallback telephonyCallback = this.mTelephonyCallback;
        if (!z && telephonyCallback.hasAnyListeners()) {
            this.mListening = true;
            telephonyManager.registerTelephonyCallback(this.mExecutor, telephonyCallback);
        } else if (this.mListening && !telephonyCallback.hasAnyListeners()) {
            telephonyManager.unregisterTelephonyCallback(telephonyCallback);
            this.mListening = false;
        }
    }
}
