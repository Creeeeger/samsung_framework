package com.sec.internal.ims.aec.util;

import android.text.TextUtils;
import com.sec.internal.log.AECLog;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class NotificationUtil {
    private static final String LOG_TAG = "NotificationUtil";
    private static final int MAX_WAIT_TIME = 60000;
    private static final int TIME_UNIT = 1000;
    protected Set<String> mAppIdSet;
    private final int mPhoneId;
    protected Date mPrevTimestamp;
    private final Set<String> mServiceSet;

    public NotificationUtil(int i, String str) {
        HashSet hashSet = new HashSet();
        this.mServiceSet = hashSet;
        this.mPrevTimestamp = null;
        this.mAppIdSet = new HashSet();
        this.mPhoneId = i;
        if (str.contains(",")) {
            Collections.addAll(hashSet, str.split(","));
        } else {
            hashSet.add(str);
        }
    }

    public boolean validate(String str, String str2) {
        Date date = getDate(str);
        Date date2 = getDate(str2);
        if (date2 == null) {
            AECLog.i(LOG_TAG, "discard incorrect syntax", this.mPhoneId);
            return false;
        }
        if (date == null || date2.after(date)) {
            return true;
        }
        if (!date.after(date2)) {
            return false;
        }
        AECLog.i(LOG_TAG, "discard outdated notification", this.mPhoneId);
        return false;
    }

    protected Date getDate(String str) {
        SimpleDateFormat simpleDateFormat;
        try {
            if (TextUtils.isEmpty(str)) {
                AECLog.i(LOG_TAG, "getDate: no timeStamp", this.mPhoneId);
                return null;
            }
            if (str.endsWith("Z")) {
                simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            } else {
                simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZZZZZ", Locale.getDefault());
            }
            return simpleDateFormat.parse(str);
        } catch (ParseException unused) {
            AECLog.i(LOG_TAG, "getDate: parse exception", this.mPhoneId);
            return null;
        }
    }

    public int calcWaitTime(String str, String str2) {
        try {
            Set<String> appIdSet = getAppIdSet(str2);
            appIdSet.addAll(this.mAppIdSet);
            if (appIdSet.containsAll(this.mServiceSet)) {
                return 0;
            }
            long time = new Date(System.currentTimeMillis()).getTime();
            long time2 = getDate(str).getTime();
            int abs = (int) Math.abs(time - time2);
            Date date = this.mPrevTimestamp;
            if (date != null) {
                abs += (int) Math.abs(time2 - date.getTime());
            }
            int min = Math.min(Math.max((abs / 1000) * 1000, 1000), 60000);
            AECLog.i(LOG_TAG, "calcWaitTime: " + min + " milliseconds", this.mPhoneId);
            return min;
        } catch (Exception e) {
            AECLog.i(LOG_TAG, "calcWaitTime: " + e.getMessage(), this.mPhoneId);
            return 60000;
        }
    }

    protected Set<String> getAppIdSet(String str) {
        HashSet hashSet = new HashSet();
        if (str.contains(",")) {
            Collections.addAll(hashSet, str.split(","));
        } else {
            hashSet.add(str);
        }
        return hashSet;
    }

    public String getAppId() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.mAppIdSet.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        if (sb.length() != 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    public void clearAppId() {
        this.mAppIdSet.clear();
        this.mPrevTimestamp = null;
    }

    public void updateAppId(String str, String str2) {
        if (str != null) {
            this.mPrevTimestamp = getDate(str);
        }
        this.mAppIdSet.addAll(getAppIdSet(str2));
        AECLog.i(LOG_TAG, "updateAppId: " + this.mAppIdSet.toString(), this.mPhoneId);
    }
}
