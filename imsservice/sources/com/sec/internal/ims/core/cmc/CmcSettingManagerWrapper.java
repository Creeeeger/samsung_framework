package com.sec.internal.ims.core.cmc;

import android.content.Context;
import android.util.Log;
import com.samsung.android.cmcsetting.CmcSaInfo;
import com.samsung.android.cmcsetting.CmcSettingManager;
import com.samsung.android.cmcsetting.CmcSettingManagerConstants;
import com.samsung.android.cmcsetting.listeners.CmcActivationInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcCallActivationInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcDeviceInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcLineInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcNetworkModeInfoChangedListener;
import com.samsung.android.cmcsetting.listeners.CmcSameWifiNetworkStatusListener;
import com.samsung.android.cmcsetting.listeners.CmcSamsungAccountInfoChangedListener;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import java.util.List;

/* loaded from: classes.dex */
public class CmcSettingManagerWrapper {
    private static final String LOG_TAG = "CmcSettingManagerWrapper";
    private CmcAccountManager mCmcAccountMgr;
    CmcSettingManager mCmcSettingManager;
    protected Context mContext;

    public CmcSettingManagerWrapper(Context context, CmcAccountManager cmcAccountManager) {
        this.mContext = context;
        this.mCmcAccountMgr = cmcAccountManager;
    }

    public void init() {
        Log.i(LOG_TAG, McsConstants.PushMessages.VALUE_INIT);
        CmcSettingManager cmcSettingManager = new CmcSettingManager();
        this.mCmcSettingManager = cmcSettingManager;
        if (cmcSettingManager.init(this.mContext)) {
            Log.i(LOG_TAG, "init listeners");
            this.mCmcSettingManager.registerListener(new CmcActivationInfoChangedListener() { // from class: com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper$$ExternalSyntheticLambda0
                @Override // com.samsung.android.cmcsetting.listeners.CmcActivationInfoChangedListener
                public final void onChangedCmcActivation() {
                    CmcSettingManagerWrapper.this.lambda$init$0();
                }
            });
            this.mCmcSettingManager.registerListener(new CmcNetworkModeInfoChangedListener() { // from class: com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper$$ExternalSyntheticLambda1
                @Override // com.samsung.android.cmcsetting.listeners.CmcNetworkModeInfoChangedListener
                public final void onChangedNetworkMode() {
                    CmcSettingManagerWrapper.this.lambda$init$1();
                }
            });
            this.mCmcSettingManager.registerListener(new CmcLineInfoChangedListener() { // from class: com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper$$ExternalSyntheticLambda2
                @Override // com.samsung.android.cmcsetting.listeners.CmcLineInfoChangedListener
                public final void onChangedLineInfo() {
                    CmcSettingManagerWrapper.this.lambda$init$2();
                }
            });
            this.mCmcSettingManager.registerListener(new CmcDeviceInfoChangedListener() { // from class: com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper$$ExternalSyntheticLambda3
                @Override // com.samsung.android.cmcsetting.listeners.CmcDeviceInfoChangedListener
                public final void onChangedDeviceInfo() {
                    CmcSettingManagerWrapper.this.lambda$init$3();
                }
            });
            this.mCmcSettingManager.registerListener(new CmcCallActivationInfoChangedListener() { // from class: com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper$$ExternalSyntheticLambda4
                @Override // com.samsung.android.cmcsetting.listeners.CmcCallActivationInfoChangedListener
                public final void onChangedCmcCallActivation() {
                    CmcSettingManagerWrapper.this.lambda$init$4();
                }
            });
            this.mCmcSettingManager.registerListener(new CmcSamsungAccountInfoChangedListener() { // from class: com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper$$ExternalSyntheticLambda5
                @Override // com.samsung.android.cmcsetting.listeners.CmcSamsungAccountInfoChangedListener
                public final void onChangedSamsungAccountInfo() {
                    CmcSettingManagerWrapper.this.lambda$init$5();
                }
            });
            this.mCmcSettingManager.registerListener(new CmcSameWifiNetworkStatusListener() { // from class: com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper$$ExternalSyntheticLambda6
                @Override // com.samsung.android.cmcsetting.listeners.CmcSameWifiNetworkStatusListener
                public final void onChangedSameWifiNetworkStatus() {
                    CmcSettingManagerWrapper.this.lambda$init$6();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0() {
        Log.i(LOG_TAG, "onChangedCmcActivation");
        this.mCmcAccountMgr.notifyCmcDeviceChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$1() {
        Log.i(LOG_TAG, "onChangedNetworkMode");
        this.mCmcAccountMgr.notifyCmcNwPrefChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$2() {
        Log.i(LOG_TAG, "onChangedLineInfo");
        this.mCmcAccountMgr.notifyCmcDeviceChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$3() {
        Log.i(LOG_TAG, "onChangedDeviceInfo");
        this.mCmcAccountMgr.notifyCmcDeviceChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$4() {
        Log.i(LOG_TAG, "onChangedCmcCallActivation");
        this.mCmcAccountMgr.notifyCmcDeviceChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$5() {
        Log.i(LOG_TAG, "onChangedSamsungAccountInfo:");
        this.mCmcAccountMgr.onChangedSamsungAccountInfo(getCmcSaAccessToken());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$6() {
        Log.i(LOG_TAG, "onChangedSameWifiOnly:");
        this.mCmcAccountMgr.notifyCmcDeviceChanged();
    }

    public boolean getCmcSupported() {
        return this.mCmcSettingManager.getCmcSupported();
    }

    public String getDeviceType() {
        CmcSettingManagerConstants.DeviceType ownDeviceType = this.mCmcSettingManager.getOwnDeviceType();
        return ownDeviceType == CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_PD ? "pd" : ownDeviceType == CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_SD ? "sd" : "";
    }

    public String getDeviceId() {
        return this.mCmcSettingManager.getOwnDeviceId();
    }

    public int getPreferredNetwork() {
        if (this.mCmcSettingManager.getOwnNetworkMode() == CmcSettingManagerConstants.NetworkMode.NETWORK_MODE_USE_MOBILE_NETWORK) {
            return 0;
        }
        CmcSettingManagerConstants.NetworkMode networkMode = CmcSettingManagerConstants.NetworkMode.NETWORK_MODE_USE_MOBILE_NETWORK;
        return 1;
    }

    public String getServiceVersion() {
        return this.mCmcSettingManager.getOwnServiceVersion();
    }

    public String getLineId() {
        return this.mCmcSettingManager.getLineId();
    }

    public List<String> getDeviceIdList() {
        return this.mCmcSettingManager.getDeviceIdList();
    }

    public String getLineImpu() {
        return this.mCmcSettingManager.getLineImpu();
    }

    public String getDeviceTypeWithDeviceId(String str) {
        CmcSettingManagerConstants.DeviceType deviceType = this.mCmcSettingManager.getDeviceType(str);
        return deviceType == CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_PD ? "pd" : deviceType == CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_SD ? "sd" : "";
    }

    public List<String> getPcscfAddressList() {
        return this.mCmcSettingManager.getLinePcscfAddrList();
    }

    public boolean isCallAllowedSdByPd(String str) {
        if (this.mCmcSettingManager.getOwnDeviceType() == CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_PD) {
            return true;
        }
        return this.mCmcSettingManager.isCallAllowedSdByPd(str);
    }

    public boolean getOwnCmcActivation() {
        return this.mCmcSettingManager.getOwnCmcActivation();
    }

    public boolean getCmcCallActivation(String str) {
        return this.mCmcSettingManager.getCmcCallActivation(str);
    }

    public String getCmcSaAccessToken() {
        CmcSaInfo samsungAccountInfo = this.mCmcSettingManager.getSamsungAccountInfo();
        return samsungAccountInfo == null ? "" : samsungAccountInfo.getSaAccessToken();
    }

    public boolean isSameWifiNetworkOnly() {
        return this.mCmcSettingManager.isSameWifiNetworkOnly();
    }

    public boolean isEmergencyCallSupported() {
        return this.mCmcSettingManager.isEmergencyCallSupported();
    }

    public boolean isDualCmc() {
        return this.mCmcSettingManager.isDualSimSupportedOnPd() && this.mCmcSettingManager.getSelectedSimSlotsOnPd().size() > 1;
    }

    public List<Integer> getSelectedSimSlotsOnPd() {
        return this.mCmcSettingManager.getSelectedSimSlotsOnPd();
    }
}
