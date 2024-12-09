package com.sec.internal.ims.entitlement.config.app.nsdsconfig.strategy;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.provider.Settings;
import com.sec.internal.constants.ims.entitilement.EntitlementConfigContract;
import com.sec.internal.constants.ims.entitilement.EntitlementNamespaces;
import com.sec.internal.ims.cmstore.MStoreDebugTool;
import com.sec.internal.ims.entitlement.config.app.nsdsconfig.strategy.operation.DefaultNsdsOperation;
import com.sec.internal.ims.entitlement.config.app.nsdsconfig.strategy.operation.TmoNsdsOperation;
import com.sec.internal.ims.entitlement.storagehelper.EntitlementConfigDBHelper;
import com.sec.internal.ims.entitlement.storagehelper.NSDSSharedPrefHelper;
import com.sec.internal.ims.entitlement.util.IntentScheduler;
import com.sec.internal.interfaces.ims.entitlement.config.IMnoNsdsConfigStrategy;
import com.sec.internal.log.IMSLog;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DefaultNsdsConfigStrategy implements IMnoNsdsConfigStrategy {
    private static final long DEFAULT_REFRESH_TIME_IN_SECS = 86400;
    private static final String LOG_TAG = "DefaultNsdsConfigStrategy";
    protected Context mContext;
    protected NsdsConfigStrategyType mStrategyType;
    protected final Map<String, Integer> sMapEntitlementServices;

    public DefaultNsdsConfigStrategy(Context context) {
        HashMap hashMap = new HashMap();
        this.sMapEntitlementServices = hashMap;
        this.mStrategyType = NsdsConfigStrategyType.DEFAULT;
        this.mContext = context;
        hashMap.put("vowifi", 1);
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.config.IMnoNsdsConfigStrategy
    public final boolean isDeviceProvisioned() {
        boolean z = Settings.Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0) != 0;
        IMSLog.i(LOG_TAG, "isDeviceProvisioned: " + z);
        return z;
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.config.IMnoNsdsConfigStrategy
    public final String getEntitlementServerUrl(String str) {
        if (this.mStrategyType.isOneOf(NsdsConfigStrategyType.TMOUS)) {
            String entitlementServerUrl = NSDSSharedPrefHelper.getEntitlementServerUrl(this.mContext, str, null);
            IMSLog.i(LOG_TAG, "getEntitlementServerUrl: url in sp " + entitlementServerUrl);
            return entitlementServerUrl == null ? EntitlementConfigDBHelper.getNsdsUrlFromDeviceConfig(this.mContext, MStoreDebugTool.DEFAULT_PRO_ENTITLEMENT) : entitlementServerUrl;
        }
        return NSDSSharedPrefHelper.getEntitlementServerUrl(this.mContext, str, "http://ses.ericsson-magic.net:10080/generic_devices");
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.config.IMnoNsdsConfigStrategy
    public final int getNextOperation(int i, int i2) {
        if (this.mStrategyType.isOneOf(NsdsConfigStrategyType.TMOUS)) {
            return TmoNsdsOperation.getOperation(i, i2);
        }
        return DefaultNsdsOperation.getOperation(i, i2);
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.config.IMnoNsdsConfigStrategy
    public final void scheduleRefreshDeviceConfig(int i) {
        boolean isOneOf = this.mStrategyType.isOneOf(NsdsConfigStrategyType.TMOUS);
        long j = DEFAULT_REFRESH_TIME_IN_SECS;
        if (isOneOf) {
            try {
                Cursor query = this.mContext.getContentResolver().query(EntitlementConfigContract.DeviceConfig.buildXPathExprUri("//configInfo/configRefreshTime"), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            long j2 = query.getLong(1);
                            if (j2 > 0) {
                                j = j2;
                            }
                        }
                    } finally {
                    }
                }
                if (query != null) {
                    query.close();
                }
            } catch (SQLException e) {
                IMSLog.s(LOG_TAG, "Ignore sqlexception:" + e.getMessage());
            }
        }
        IMSLog.i(LOG_TAG, "scheduleRefreshDeviceConfig: " + j);
        if (j > 0) {
            IntentScheduler.scheduleTimer(this.mContext, i, EntitlementNamespaces.EntitlementActions.ACTION_REFRESH_DEVICE_CONFIG, j * 1000);
        }
    }

    protected enum NsdsConfigStrategyType {
        DEFAULT,
        TMOUS,
        END_OF_NSDSCONFIGSTRATEGY;

        protected boolean isOneOf(NsdsConfigStrategyType... nsdsConfigStrategyTypeArr) {
            for (NsdsConfigStrategyType nsdsConfigStrategyType : nsdsConfigStrategyTypeArr) {
                if (this == nsdsConfigStrategyType) {
                    return true;
                }
            }
            return false;
        }
    }
}
