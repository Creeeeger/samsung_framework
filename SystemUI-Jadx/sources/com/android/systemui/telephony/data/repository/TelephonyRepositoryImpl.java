package com.android.systemui.telephony.data.repository;

import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.telephony.TelephonyListenerManager;
import kotlinx.coroutines.flow.Flow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TelephonyRepositoryImpl implements TelephonyRepository {
    public final Flow callState;
    public final TelephonyListenerManager manager;

    public TelephonyRepositoryImpl(TelephonyListenerManager telephonyListenerManager) {
        this.manager = telephonyListenerManager;
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        TelephonyRepositoryImpl$callState$1 telephonyRepositoryImpl$callState$1 = new TelephonyRepositoryImpl$callState$1(this, null);
        conflatedCallbackFlow.getClass();
        this.callState = ConflatedCallbackFlow.conflatedCallbackFlow(telephonyRepositoryImpl$callState$1);
    }
}
