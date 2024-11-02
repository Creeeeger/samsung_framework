package com.android.systemui.statusbar.pipeline.mobile.data.repository.prod;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.log.table.TableLogBuffer;
import com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator;
import com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger;
import com.android.systemui.statusbar.pipeline.mobile.data.repository.CarrierConfigRepository;
import com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository;
import com.android.systemui.statusbar.pipeline.mobile.util.MobileMappingsProxy;
import com.android.systemui.statusbar.pipeline.mobile.util.SimCardInfoUtil;
import com.android.systemui.statusbar.pipeline.shared.data.repository.ImsRegStateUtil;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.settings.GlobalSettings;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileConnectionRepositoryImpl implements MobileConnectionRepository {
    public final StateFlowImpl _sim1On;
    public final ReadonlyStateFlow callbackEvents;
    public final ReadonlyStateFlow carrierId;
    public final CarrierInfraMediator carrierInfraMediator;
    public final ReadonlyStateFlow carrierNetworkChangeActive;
    public final ReadonlyStateFlow cdmaLevel;
    public final ReadonlyStateFlow cdmaRoaming;
    public final ReadonlyStateFlow dataActivityDirection;
    public final ReadonlyStateFlow dataConnectionState;
    public final ReadonlyStateFlow dataEnabled;
    public final ReadonlyStateFlow dataRegistrationState;
    public final ReadonlyStateFlow dataRoamingType;
    public final ReadonlyStateFlow getFemtoCell;
    public final GlobalSettings globalSettings;
    public final ReadonlyStateFlow imsRegState;
    public final ImsRegStateUtil imsRegStateUtil;
    public final boolean isDebug;
    public final ReadonlyStateFlow isEmergencyOnly;
    public final ReadonlyStateFlow isGsm;
    public final ReadonlyStateFlow isInService;
    public final ReadonlyStateFlow isNonTerrestrial;
    public final ReadonlyStateFlow isRoaming;
    public final ReadonlyStateFlow mobileDataEnabledChanged;
    public final MobileMappingsProxy mobileMappingsProxy;
    public final ReadonlyStateFlow mobileServiceState;
    public final ReadonlyStateFlow msimSubmode;
    public final ReadonlyStateFlow networkName;
    public final ReadonlyStateFlow numberOfLevels;
    public final ReadonlyStateFlow onTheCall;
    public final ReadonlyStateFlow operatorAlphaShort;
    public final ReadonlyStateFlow optionalRadioTech;
    public final ReadonlyStateFlow primaryLevel;
    public final ReadonlyStateFlow resolvedNetworkType;
    public final ReadonlyStateFlow sim1On;
    public final ReadonlyStateFlow simCardInfo;
    public final SimCardInfoUtil simCardInfoUtil;
    public final int slotId;
    public final int subId;
    public final ReadonlyStateFlow swRoaming;
    public final TableLogBuffer tableLogBuffer;
    public final ReadonlyStateFlow telephonyDisplayInfo;
    public final TelephonyManager telephonyManager;
    public final MobileConnectionRepositoryImpl$special$$inlined$map$14 telephonyPollingEvent;
    public final ReadonlyStateFlow voiceCallAvailable;
    public final ReadonlyStateFlow voiceNetworkType;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Factory {
        public final CoroutineDispatcher bgDispatcher;
        public final BroadcastDispatcher broadcastDispatcher;
        public final CarrierConfigRepository carrierConfigRepository;
        public final CarrierInfraMediator carrierInfraMediator;
        public final Context context;
        public final GlobalSettings globalSettings;
        public final ImsRegStateUtil imsRegStateUtil;
        public final MobileInputLogger logger;
        public final MobileMappingsProxy mobileMappingsProxy;
        public final CoroutineScope scope;
        public final SimCardInfoUtil simCardInfoUtil;
        public final TelephonyManager telephonyManager;

        public Factory(BroadcastDispatcher broadcastDispatcher, TelephonyManager telephonyManager, MobileInputLogger mobileInputLogger, CarrierConfigRepository carrierConfigRepository, MobileMappingsProxy mobileMappingsProxy, CoroutineDispatcher coroutineDispatcher, CoroutineScope coroutineScope, CarrierInfraMediator carrierInfraMediator, SimCardInfoUtil simCardInfoUtil, GlobalSettings globalSettings, ImsRegStateUtil imsRegStateUtil, Context context) {
            this.broadcastDispatcher = broadcastDispatcher;
            this.telephonyManager = telephonyManager;
            this.logger = mobileInputLogger;
            this.carrierConfigRepository = carrierConfigRepository;
            this.mobileMappingsProxy = mobileMappingsProxy;
            this.bgDispatcher = coroutineDispatcher;
            this.scope = coroutineScope;
            this.carrierInfraMediator = carrierInfraMediator;
            this.simCardInfoUtil = simCardInfoUtil;
            this.globalSettings = globalSettings;
            this.imsRegStateUtil = imsRegStateUtil;
            this.context = context;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0450, code lost:
    
        if (java.lang.Integer.parseInt(((com.android.systemui.util.settings.GlobalSettingsImpl) r38).getStringForUser(r38.getUserId(), "mobile_data")) == 1) goto L37;
     */
    /* JADX WARN: Type inference failed for: r5v23, types: [kotlinx.coroutines.flow.Flow, com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.MobileConnectionRepositoryImpl$special$$inlined$map$14] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MobileConnectionRepositoryImpl(android.content.Context r24, int r25, final com.android.systemui.statusbar.pipeline.mobile.data.model.NetworkNameModel r26, final java.lang.String r27, android.telephony.TelephonyManager r28, com.android.systemui.statusbar.pipeline.mobile.data.model.SystemUiCarrierConfig r29, com.android.systemui.broadcast.BroadcastDispatcher r30, com.android.systemui.statusbar.pipeline.mobile.util.MobileMappingsProxy r31, kotlinx.coroutines.CoroutineDispatcher r32, com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger r33, com.android.systemui.log.table.TableLogBuffer r34, kotlinx.coroutines.CoroutineScope r35, com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator r36, com.android.systemui.statusbar.pipeline.mobile.util.SimCardInfoUtil r37, com.android.systemui.util.settings.GlobalSettings r38, com.android.systemui.statusbar.pipeline.shared.data.repository.ImsRegStateUtil r39) {
        /*
            Method dump skipped, instructions count: 1174
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.MobileConnectionRepositoryImpl.<init>(android.content.Context, int, com.android.systemui.statusbar.pipeline.mobile.data.model.NetworkNameModel, java.lang.String, android.telephony.TelephonyManager, com.android.systemui.statusbar.pipeline.mobile.data.model.SystemUiCarrierConfig, com.android.systemui.broadcast.BroadcastDispatcher, com.android.systemui.statusbar.pipeline.mobile.util.MobileMappingsProxy, kotlinx.coroutines.CoroutineDispatcher, com.android.systemui.statusbar.pipeline.mobile.data.MobileInputLogger, com.android.systemui.log.table.TableLogBuffer, kotlinx.coroutines.CoroutineScope, com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator, com.android.systemui.statusbar.pipeline.mobile.util.SimCardInfoUtil, com.android.systemui.util.settings.GlobalSettings, com.android.systemui.statusbar.pipeline.shared.data.repository.ImsRegStateUtil):void");
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getCarrierId() {
        return this.carrierId;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getCarrierNetworkChangeActive() {
        return this.carrierNetworkChangeActive;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getCdmaLevel() {
        return this.cdmaLevel;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getCdmaRoaming() {
        return this.cdmaRoaming;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getDataActivityDirection() {
        return this.dataActivityDirection;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getDataConnectionState() {
        return this.dataConnectionState;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getDataEnabled() {
        return this.dataEnabled;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getImsRegState() {
        return this.imsRegState;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getMobileDataEnabledChanged() {
        return this.mobileDataEnabledChanged;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getMobileServiceState() {
        return this.mobileServiceState;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getNetworkName() {
        return this.networkName;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getNumberOfLevels() {
        return this.numberOfLevels;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getOnTheCall() {
        return this.onTheCall;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getOperatorAlphaShort() {
        return this.operatorAlphaShort;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getPrimaryLevel() {
        return this.primaryLevel;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getResolvedNetworkType() {
        return this.resolvedNetworkType;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getSim1On() {
        return this.sim1On;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getSimCardInfo() {
        return this.simCardInfo;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final int getSlotId() {
        return this.slotId;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final int getSubId() {
        return this.subId;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow getSwRoaming() {
        return this.swRoaming;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final TableLogBuffer getTableLogBuffer() {
        return this.tableLogBuffer;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow isEmergencyOnly() {
        return this.isEmergencyOnly;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow isGsm() {
        return this.isGsm;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow isInService() {
        return this.isInService;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow isNonTerrestrial() {
        return this.isNonTerrestrial;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final StateFlow isRoaming() {
        return this.isRoaming;
    }

    public final boolean isSwRoaming() {
        String mSimSystemProperty = DeviceState.getMSimSystemProperty(this.slotId, "persist.sys.softsim.status", "default");
        if (!mSimSystemProperty.equals("activating") && !mSimSystemProperty.equals("activated")) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository
    public final void setSim1On(boolean z) {
        this._sim1On.setValue(Boolean.valueOf(z));
    }
}
