package com.sec.internal.ims.servicemodules.volte2.idc;

import android.text.TextUtils;
import android.util.Log;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class IdcExtra {
    private static final String LOG_TAG = "IdcExtra";
    private Map<String, String> mExtraMap;
    private int mReqId;
    private String mSdp;

    public static class Key {
        public static final String REQ_ID = "req_id";
        public static final String SDP = "sdp";
        public static final String SHOULD_RETRY = "should_retry";
    }

    public IdcExtra(String str) {
        this.mExtraMap = new HashMap();
        parse(str);
    }

    public IdcExtra() {
        this.mExtraMap = new HashMap();
    }

    public void init() {
        this.mExtraMap.clear();
    }

    public String getString(String str) {
        return this.mExtraMap.containsKey(str) ? this.mExtraMap.get(str) : "";
    }

    public int getInt(String str) {
        try {
            if (this.mExtraMap.containsKey(str)) {
                return Integer.parseInt(this.mExtraMap.get(str));
            }
            return -1;
        } catch (NumberFormatException unused) {
            Log.e(LOG_TAG, "getInt Error NumberFormatException: K(" + str + "), Value(" + this.mExtraMap.get(str) + ")");
            return -1;
        }
    }

    public boolean isEmpty() {
        return this.mExtraMap.isEmpty();
    }

    public boolean parse(String str) {
        init();
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            for (String str2 : str.split(",")) {
                String[] split = str2.split(":");
                if (split.length != 2) {
                    throw new IllegalArgumentException("fails with : " + str2);
                }
                this.mExtraMap.put(split[0], new String(Base64.getDecoder().decode(split[1]), StandardCharsets.UTF_8));
            }
            return true;
        } catch (IllegalArgumentException e) {
            Log.e(LOG_TAG, "parse Error : " + e.getMessage());
            this.mExtraMap.clear();
            return false;
        }
    }

    public String encode() {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : this.mExtraMap.entrySet()) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                String key = entry.getKey();
                byte[] bytes = entry.getValue().getBytes(StandardCharsets.UTF_8);
                sb.append(key);
                sb.append(":");
                sb.append(Base64.getEncoder().encodeToString(bytes));
            }
            return sb.toString();
        } catch (IllegalArgumentException e) {
            Log.e(LOG_TAG, "encode Error : " + e.getMessage());
            return "";
        }
    }

    public String getSdp() {
        return this.mSdp;
    }

    private IdcExtra(Builder builder) {
        this.mExtraMap = new HashMap();
        this.mSdp = builder.mSdp;
        this.mReqId = builder.mReqId;
        buildMap();
    }

    private void buildMap() {
        Map<String, String> map = this.mExtraMap;
        String str = this.mSdp;
        if (str == null) {
            str = "";
        }
        map.put(Key.SDP, str);
        this.mExtraMap.put(Key.REQ_ID, String.valueOf(this.mReqId));
    }

    public static Builder getBuilder() {
        return new Builder();
    }

    public static class Builder {
        private int mReqId;
        private String mSdp;

        public Builder setSdp(String str) {
            this.mSdp = str;
            return this;
        }

        public Builder setReqId(int i) {
            this.mReqId = i;
            return this;
        }

        public IdcExtra build() {
            return new IdcExtra(this);
        }
    }
}
