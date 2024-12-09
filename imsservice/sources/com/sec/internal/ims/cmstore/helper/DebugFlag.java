package com.sec.internal.ims.cmstore.helper;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DebugFlag {
    public static final String APP_ID = "app_id";
    public static final String AUTH_HOST_NAME = "auth_host_name";
    public static final String CPS_HOST_NAME = "cps_host_name";
    public static final String DEBUG_FLAG = "AMBS_DEBUG";
    public static String DEBUG_MCS_URL = "https://rapi.rcsoasis.kr";
    public static String DEBUG_OASIS_VERSION = "0.0.0";
    public static boolean DEBUG_RETRY_TIMELINE_FLAG = false;
    public static final boolean ENABLE_ADVANCE_DEBUG = false;
    public static final String INIT_DOWNLOAD_STATUS = "init_download_status";
    public static final String INIT_UPLOAD_STATUS = "init_upload_status";
    public static final String LOG_TAG = "DebugFlag";
    public static final String MCS_URL = "mcs_url";
    public static final String NC_CREATION_TIME = "notification_channel_creation_time";
    public static final String NC_HOST_NAME = "nc_host_name";
    public static final String NC_LIFETIME = "notification_channel_lifetime";
    public static final String NC_URL = "notification_channel_url";
    public static final String OASIS_VERSION = "oasis_version";
    public static final String RETRY_TIME = "retry_time";
    public static final String SERVER_CONFIG = "server_config";
    public static final String SYNC_MESSAGE_STATUS = "sync_message_status";
    public static String debugRetryTimeLine = "10000,10000,10000,10000,10000";
    protected static Map<Integer, Integer> mRetrySchedule = new HashMap();

    static {
        initRetryTimeLine();
    }

    public static void initRetryTimeLine() {
        mRetrySchedule.clear();
        for (int i = 0; i < 5; i++) {
            mRetrySchedule.put(Integer.valueOf(i), 10000);
        }
    }

    public static void setRetryTimeLine(String str) {
        int i;
        mRetrySchedule.clear();
        debugRetryTimeLine = str;
        String[] split = str.split(",");
        for (int i2 = 0; i2 < split.length; i2++) {
            String str2 = split[i2];
            try {
                i = Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
                Log.e(LOG_TAG, "setRetryTimeLine: NumberFormatException,time = " + str2);
                i = 10000;
            }
            mRetrySchedule.put(Integer.valueOf(i2), Integer.valueOf(i));
        }
    }

    public static int getRetryTimeLine(int i) {
        if (mRetrySchedule.containsKey(Integer.valueOf(i))) {
            return mRetrySchedule.get(Integer.valueOf(i)).intValue();
        }
        return 10;
    }
}
