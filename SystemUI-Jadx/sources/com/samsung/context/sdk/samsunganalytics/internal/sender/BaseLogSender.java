package com.samsung.context.sdk.samsunganalytics.internal.sender;

import android.content.Context;
import android.text.TextUtils;
import com.samsung.context.sdk.samsunganalytics.Configuration;
import com.samsung.context.sdk.samsunganalytics.internal.device.DeviceInfo;
import com.samsung.context.sdk.samsunganalytics.internal.executor.SingleThreadExecutor;
import com.samsung.context.sdk.samsunganalytics.internal.policy.PolicyUtils;
import com.samsung.context.sdk.samsunganalytics.internal.sender.buffering.Manager;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class BaseLogSender {
    public final Configuration configuration;
    public final Context context;
    public final DeviceInfo deviceInfo;
    public final SingleThreadExecutor executor = SingleThreadExecutor.getInstance();
    public final Manager manager;

    public BaseLogSender(Context context, Configuration configuration) {
        this.context = context.getApplicationContext();
        this.configuration = configuration;
        this.deviceInfo = new DeviceInfo(context);
        this.manager = Manager.getInstance(context, configuration);
    }

    public static LogType getLogType(Map map) {
        if ("dl".equals((String) ((HashMap) map).get("t"))) {
            return LogType.DEVICE;
        }
        return LogType.UIX;
    }

    public final void insert(Map map) {
        HashMap hashMap = (HashMap) map;
        String str = (String) hashMap.get("t");
        long longValue = Long.valueOf((String) hashMap.get("ts")).longValue();
        setCommonParamToLog(hashMap);
        this.manager.insert(new SimpleLog(str, longValue, Utils.makeDelimiterString(hashMap, Utils.Depth.ONE_DEPTH), getLogType(hashMap)));
    }

    public abstract int send(Map map);

    public final void setCommonParamToLog(Map map) {
        int i = PolicyUtils.senderType;
        DeviceInfo deviceInfo = this.deviceInfo;
        if (i < 2) {
            HashMap hashMap = (HashMap) map;
            hashMap.put("la", deviceInfo.language);
            String str = deviceInfo.mcc;
            if (!TextUtils.isEmpty(str)) {
                hashMap.put("mcc", str);
            }
            String str2 = deviceInfo.mnc;
            if (!TextUtils.isEmpty(str2)) {
                hashMap.put("mnc", str2);
            }
            hashMap.put("dm", deviceInfo.deviceModel);
            Configuration configuration = this.configuration;
            hashMap.put("auid", configuration.deviceId);
            hashMap.put("do", deviceInfo.androidVersion);
            hashMap.put("av", deviceInfo.appVersionName);
            hashMap.put("uv", configuration.version);
            hashMap.put("at", String.valueOf(configuration.auidType));
            hashMap.put("fv", deviceInfo.firmwareVersion);
            hashMap.put("tid", configuration.trackingId);
        }
        ((HashMap) map).put("tz", deviceInfo.timeZoneOffset);
    }
}
