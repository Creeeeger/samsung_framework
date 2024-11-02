package com.android.systemui.statusbar.pipeline.mobile.data.repository;

import com.android.systemui.statusbar.phone.CoverScreenNetworkSignalModel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface MobileConnectionsRepository {
    boolean bootstrapProfile(int i);

    ReadonlyStateFlow getActiveMobileDataRepository();

    StateFlow getActiveMobileDataSubscriptionId();

    Flow getActiveSubChangedInGroupEvent();

    StateFlow getDefaultConnectionIsValidated();

    StateFlow getDefaultDataSubId();

    StateFlow getDefaultDataSubRatConfig();

    Flow getDefaultMobileIconGroup();

    Flow getDefaultMobileIconMapping();

    Flow getDefaultMobileIconMappingTable();

    StateFlow getDeviceOnTheCall();

    Flow getHasCarrierMergedConnection();

    StateFlow getMobileIsDefault();

    CoverScreenNetworkSignalModel getNoServiceInfo();

    MobileConnectionRepository getRepoForSubId(int i);

    StateFlow getSubscriptions();
}
