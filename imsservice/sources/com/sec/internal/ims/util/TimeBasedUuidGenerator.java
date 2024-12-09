package com.sec.internal.ims.util;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Log;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.log.IMSLog;
import java.util.UUID;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class TimeBasedUuidGenerator {
    private static final String LOG_TAG = "TimeBasedUuidGenerator";
    protected static final String SHAREDPREF_INSTANCE_ID_UUID_KEY = "instanceIdUuid";
    protected static final String UUID_CORE_PATTERN = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}";
    protected static final Pattern UUID_PURE_PATTERN = Pattern.compile("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$");
    private static final Pattern UUID_STRIP = Pattern.compile("(<)|(urn:uuid:)|(>)");
    private Context mContext;
    private int mPhoneId;
    private UuidSource mUuidSource;

    private enum UuidSource {
        AUTOCONFIG,
        SHAREDPREFS,
        GENERATOR
    }

    public TimeBasedUuidGenerator(int i, Context context) {
        this.mPhoneId = i;
        this.mContext = context;
    }

    private String generate() {
        return generate(compute100nsTimestamp(), randSeq(), getWifiMacAddr());
    }

    protected String generate(long j, long j2, long j3) {
        return new UUID(((4294967295L & j) << 32) | (((281470681743360L & j) >>> 32) << 16) | 4096 | ((j & 1152640029630136320L) >>> 48), (j2 << 48) | Long.MIN_VALUE | j3).toString();
    }

    private long getWifiMacAddr() {
        WifiInfo connectionInfo;
        WifiManager wifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        String replace = (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null || connectionInfo.getMacAddress() == null) ? "000000000000" : connectionInfo.getMacAddress().replace(":", "");
        IMSLog.s(LOG_TAG, "getWifiMacAddr: [" + replace + "]");
        return Long.decode("0x" + replace).longValue();
    }

    private long compute100nsTimestamp() {
        long currentTimeMillis = System.currentTimeMillis() * 10000;
        String str = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("compute100nsTimestamp: ");
        long j = currentTimeMillis + 122192928000000000L;
        sb.append(j);
        Log.d(str, sb.toString());
        return j;
    }

    private long randSeq() {
        ImsUtil.getRandom().nextBytes(new byte[2]);
        return ((r4[1] * 256) + r4[0]) & 16383;
    }

    public String getUuidInstanceId() {
        String obtainUuid = obtainUuid();
        if (!obtainUuid.isEmpty() && this.mUuidSource == UuidSource.GENERATOR) {
            ImsSharedPrefHelper.save(this.mPhoneId, this.mContext, ImsSharedPrefHelper.IMS_USER_DATA, SHAREDPREF_INSTANCE_ID_UUID_KEY, obtainUuid);
        }
        return "<urn:uuid:" + obtainUuid + ">";
    }

    private String obtainUuid() {
        String replaceAll = UUID_STRIP.matcher(RcsConfigurationHelper.getUuid(this.mContext, this.mPhoneId).toLowerCase()).replaceAll("");
        String str = LOG_TAG;
        IMSLog.s(str, "selectUuidInstanceId from config: " + replaceAll);
        if (UUID_PURE_PATTERN.matcher(replaceAll).matches()) {
            this.mUuidSource = UuidSource.AUTOCONFIG;
            return replaceAll;
        }
        String string = ImsSharedPrefHelper.getString(this.mPhoneId, this.mContext, ImsSharedPrefHelper.IMS_USER_DATA, SHAREDPREF_INSTANCE_ID_UUID_KEY, "");
        if (!string.isEmpty()) {
            IMSLog.s(str, "selectUuidInstanceId from sharedPref: " + string);
            this.mUuidSource = UuidSource.SHAREDPREFS;
            return string;
        }
        Log.d(str, "selectUuidInstanceId from sharedPref Empty");
        String generate = generate();
        IMSLog.s(str, "selectUuidInstanceId from Generator: " + generate);
        this.mUuidSource = UuidSource.GENERATOR;
        return generate;
    }
}
