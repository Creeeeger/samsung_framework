package com.android.systemui.statusbar.pipeline.mobile.data.repository;

import com.android.systemui.log.table.TableLogBuffer;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface MobileConnectionRepository {
    StateFlow getCarrierId();

    StateFlow getCarrierNetworkChangeActive();

    StateFlow getCdmaLevel();

    StateFlow getCdmaRoaming();

    StateFlow getDataActivityDirection();

    StateFlow getDataConnectionState();

    StateFlow getDataEnabled();

    StateFlow getImsRegState();

    StateFlow getMobileDataEnabledChanged();

    StateFlow getMobileServiceState();

    StateFlow getNetworkName();

    StateFlow getNumberOfLevels();

    StateFlow getOnTheCall();

    StateFlow getOperatorAlphaShort();

    StateFlow getPrimaryLevel();

    StateFlow getResolvedNetworkType();

    StateFlow getSim1On();

    StateFlow getSimCardInfo();

    int getSlotId();

    int getSubId();

    StateFlow getSwRoaming();

    TableLogBuffer getTableLogBuffer();

    StateFlow isEmergencyOnly();

    StateFlow isGsm();

    StateFlow isInService();

    StateFlow isNonTerrestrial();

    StateFlow isRoaming();

    void setSim1On(boolean z);
}
