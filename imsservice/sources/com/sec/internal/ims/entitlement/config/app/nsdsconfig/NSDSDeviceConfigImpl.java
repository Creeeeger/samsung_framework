package com.sec.internal.ims.entitlement.config.app.nsdsconfig;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.sec.internal.ims.entitlement.config.app.nsdsconfig.flow.DeviceConfigurationUpdate;
import com.sec.internal.ims.entitlement.nsds.app.flow.ericssonnsds.AkaTokenRetrievalFlow;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.BaseFlowImpl;
import com.sec.internal.ims.entitlement.storagehelper.EntitlementConfigDBHelper;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.entitlement.config.IEntitlementConfig;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class NSDSDeviceConfigImpl extends Handler implements IEntitlementConfig {
    private static final int FORCE_CONFIG_UPDATE = 2;
    private static final String LOG_TAG = NSDSDeviceConfigImpl.class.getSimpleName();
    private static final int RETRIEVE_AKA_TOKEN = 3;
    private static final int RETRIEVE_DEVICE_CONFIG = 0;
    private static final int UPDATE_DEVICE_CONFIG = 1;
    private BaseFlowImpl mBaseFlowImpl;
    private Context mContext;
    private EntitlementConfigDBHelper mEntitlementConfigDBHelper;

    public NSDSDeviceConfigImpl(Looper looper, Context context, ISimManager iSimManager) {
        super(looper);
        this.mContext = context;
        this.mBaseFlowImpl = new BaseFlowImpl(looper, this.mContext, iSimManager);
        this.mEntitlementConfigDBHelper = new EntitlementConfigDBHelper(context.createCredentialProtectedStorageContext());
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.config.IEntitlementConfig
    public void getDeviceConfig(String str, int i) {
        int i2;
        IMSLog.s(LOG_TAG, "getDeviceConfig: " + str);
        if (i == 18) {
            i2 = 2;
        } else if (i == 19) {
            i2 = 3;
        } else {
            i2 = this.mEntitlementConfigDBHelper.isDeviceConfigAvailable(str) ? 1 : 0;
        }
        sendEmptyMessage(i2);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(LOG_TAG, "handleMessage:" + message.what);
        int i = message.what;
        if (i == 0) {
            retrieveDeviceConfiguration(14);
            return;
        }
        if (i == 1) {
            retrieveDeviceConfiguration(15);
        } else if (i == 2) {
            retrieveDeviceConfiguration(18);
        } else {
            if (i != 3) {
                return;
            }
            retrieveAkaToken(19);
        }
    }

    private void retrieveDeviceConfiguration(int i) {
        DeviceConfigurationUpdate deviceConfigurationUpdate = new DeviceConfigurationUpdate(getLooper(), this.mContext, this.mBaseFlowImpl, this.mEntitlementConfigDBHelper);
        String imsi = this.mBaseFlowImpl.getSimManager().getImsi();
        IMSLog.s(LOG_TAG, "retrieveDeviceConfiguration: imsi:" + imsi);
        deviceConfigurationUpdate.performDeviceConfigRetrieval(i, 0);
    }

    private void retrieveAkaToken(int i) {
        AkaTokenRetrievalFlow akaTokenRetrievalFlow = new AkaTokenRetrievalFlow(getLooper(), this.mContext, this.mBaseFlowImpl, this.mEntitlementConfigDBHelper);
        String imsi = this.mBaseFlowImpl.getSimManager().getImsi();
        IMSLog.s(LOG_TAG, "akaTokenRetrieval: imsi:" + imsi);
        akaTokenRetrievalFlow.performAkaTokenRetrieval(i, 0);
    }
}
