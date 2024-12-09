package com.sec.internal.ims.util;

import android.content.Context;
import android.os.PersistableBundle;
import android.telephony.CarrierConfigManager;
import com.google.gson.JsonObject;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.interfaces.ims.config.ICarrierConfig;
import com.sec.internal.log.IMSLog;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class CarrierConfigUtil {
    private static final String LOG_TAG = "CarrierConfigUtil";

    public static void overrideConfigFromGlobalSettings(Context context, int i, final JsonObject jsonObject) {
        CarrierConfigManager carrierConfigManager = (CarrierConfigManager) context.getSystemService("carrier_config");
        if (carrierConfigManager == null || jsonObject == null || jsonObject.isJsonNull()) {
            IMSLog.e(LOG_TAG, i, "overrideConfigFromGlobalSettings: CarrierConfigManager or object is null");
            return;
        }
        int subId = SimUtil.getSubId(i);
        if (subId == -1) {
            IMSLog.e(LOG_TAG, i, "overrideConfigFromGlobalSettings: Invalid subscription ID");
            return;
        }
        final PersistableBundle persistableBundle = new PersistableBundle();
        ICarrierConfig.getAllConfigs().forEach(new Consumer() { // from class: com.sec.internal.ims.util.CarrierConfigUtil$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ICarrierConfig) obj).putOverrideConfig(persistableBundle, jsonObject);
            }
        });
        if (persistableBundle.isEmpty()) {
            return;
        }
        IMSLog.i(LOG_TAG, i, "overrideConfigFromGlobalSettings: " + persistableBundle);
        carrierConfigManager.overrideConfig(subId, persistableBundle, true);
    }
}
