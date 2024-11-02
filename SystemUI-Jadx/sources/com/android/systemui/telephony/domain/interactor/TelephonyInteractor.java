package com.android.systemui.telephony.domain.interactor;

import com.android.systemui.telephony.data.repository.TelephonyRepository;
import com.android.systemui.telephony.data.repository.TelephonyRepositoryImpl;
import kotlinx.coroutines.flow.Flow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TelephonyInteractor {
    public final Flow callState;

    public TelephonyInteractor(TelephonyRepository telephonyRepository) {
        this.callState = ((TelephonyRepositoryImpl) telephonyRepository).callState;
    }
}
