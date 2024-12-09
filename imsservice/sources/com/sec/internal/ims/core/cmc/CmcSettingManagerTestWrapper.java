package com.sec.internal.ims.core.cmc;

import android.content.Context;
import android.text.TextUtils;
import com.sec.internal.ims.core.cmc.CmcConstants;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CmcSettingManagerTestWrapper extends CmcSettingManagerWrapper {
    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public boolean getCmcCallActivation(String str) {
        return true;
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public String getCmcSaAccessToken() {
        return CmcConstants.TestConstants.TEST_ACCESS_TOKEN;
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public boolean getCmcSupported() {
        return true;
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public boolean getOwnCmcActivation() {
        return true;
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public int getPreferredNetwork() {
        return 0;
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public boolean isCallAllowedSdByPd(String str) {
        return true;
    }

    public CmcSettingManagerTestWrapper(Context context, CmcAccountManager cmcAccountManager) {
        super(context, cmcAccountManager);
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public String getDeviceId() {
        if ("pd".equals(getDeviceType())) {
            return getTestPdDeviceId();
        }
        return "sd".equals(getDeviceType()) ? getTestSdDeviceId() : "";
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public String getLineId() {
        return CmcConstants.TestConstants.TEST_LINEID;
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public List<String> getDeviceIdList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getTestPdDeviceId());
        arrayList.add(getTestSdDeviceId());
        return arrayList;
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public String getLineImpu() {
        return "sip:" + CmcConstants.TestConstants.TEST_LINEID + "@samsungims.com";
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public String getDeviceTypeWithDeviceId(String str) {
        return TextUtils.isEmpty(str) ? "" : str.equals(getTestPdDeviceId()) ? "pd" : str.equals(getTestSdDeviceId()) ? "sd" : "";
    }

    @Override // com.sec.internal.ims.core.cmc.CmcSettingManagerWrapper
    public List<String> getPcscfAddressList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(CmcConstants.TestConstants.DEV_URL);
        return arrayList;
    }

    private String getTestPdDeviceId() {
        return CmcConstants.TestConstants.TEST_PD_DEVICEID;
    }

    private String getTestSdDeviceId() {
        return CmcConstants.TestConstants.TEST_SD_DEVICEID;
    }
}
