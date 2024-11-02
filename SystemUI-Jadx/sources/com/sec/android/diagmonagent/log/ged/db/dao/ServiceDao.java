package com.sec.android.diagmonagent.log.ged.db.dao;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.knox.ex.peripheral.PeripheralManager;
import com.samsung.android.knox.restriction.PhoneRestrictionPolicy;
import com.sec.android.diagmonagent.log.ged.db.model.ServiceInfo;
import com.sec.android.diagmonagent.log.ged.util.DeviceUtils;
import com.sec.ims.IMSParameter;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ServiceDao {
    public final long MAX_KEEP_TIME = TimeUnit.DAYS.toMillis(30);
    public final SharedPreferences preferences;

    public ServiceDao(Context context) {
        this.preferences = context.getSharedPreferences("DIAGMON_SERVICE", 0);
    }

    public final ServiceInfo getServiceInfo() {
        SharedPreferences sharedPreferences = this.preferences;
        String string = sharedPreferences.getString("serviceId", "");
        if (TextUtils.isEmpty(string)) {
            Log.d(DeviceUtils.TAG, "service is not exist");
            return null;
        }
        ServiceInfo serviceInfo = new ServiceInfo();
        serviceInfo.serviceId = string;
        serviceInfo.trackingId = sharedPreferences.getString("trackingId", "");
        serviceInfo.deviceId = sharedPreferences.getString("deviceId", "");
        serviceInfo.serviceVersion = sharedPreferences.getString("serviceVersion", "");
        serviceInfo.serviceAgreeType = sharedPreferences.getString("serviceAgreeType", "");
        serviceInfo.sdkVersion = sharedPreferences.getString(PeripheralManager.Temp.EXTRA_SDK_VERSION, "");
        serviceInfo.sdkType = sharedPreferences.getString("sdkType", "");
        sharedPreferences.getString("documentId", "");
        serviceInfo.status = sharedPreferences.getInt(IMSParameter.CALL.STATUS, 0);
        sharedPreferences.getLong(PhoneRestrictionPolicy.TIMESTAMP, 0L);
        return serviceInfo;
    }
}
