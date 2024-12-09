package com.sec.internal.ims.servicemodules.presence;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.sec.internal.constants.Mno;
import com.sec.internal.log.IMSLog;
import java.util.Date;

/* loaded from: classes.dex */
public class PresenceSharedPrefHelper {
    private static final String LOG_TAG = "PresenceSharedPrefHelper";
    private final Context mContext;
    private final PresenceModule mPresence;

    PresenceSharedPrefHelper(Context context, PresenceModule presenceModule) {
        this.mContext = context;
        this.mPresence = presenceModule;
    }

    private SharedPreferences getPresenceSharedPreferences(int i) {
        return this.mContext.getSharedPreferences("presence_" + i, 0);
    }

    private void save(String str, String str2, int i) {
        SharedPreferences.Editor edit = getPresenceSharedPreferences(i).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    private void save(String str, Long l, int i) {
        SharedPreferences.Editor edit = getPresenceSharedPreferences(i).edit();
        edit.putLong(str, l.longValue());
        edit.apply();
    }

    private String load(String str, String str2, int i) {
        return getPresenceSharedPreferences(i).getString(str, str2);
    }

    private long load(String str, long j, int i) {
        return getPresenceSharedPreferences(i).getLong(str, j);
    }

    void saveRandomTupleId(long j, String str, int i) {
        save("tupleId_" + j, str, i);
    }

    String loadRandomTupleId(long j, int i) {
        return load("tupleId_" + j, (String) null, i);
    }

    void saveBadEventTimestamp(long j, int i) {
        save("BadEventTimestamp", Long.valueOf(j), i);
        this.mPresence.getPresenceModuleInfo(i).mLastBadEventTimestamp = j;
    }

    long loadBadEventTimestamp(int i) {
        long load = load("BadEventTimestamp", 0L, i);
        if (load <= new Date().getTime()) {
            return load;
        }
        IMSLog.s(LOG_TAG, i, "loadBadEventTimestamp: abnormal case, clear lastBadEventTimestamp " + load + " to 0");
        saveBadEventTimestamp(0L, i);
        return 0L;
    }

    void savePublishTimestamp(long j, int i) {
        IMSLog.i(LOG_TAG, i, "savePublishTimestamp: publish_timeout = " + j);
        save("publish_timeout", Long.valueOf(j), i);
        this.mPresence.getPresenceModuleInfo(i).mLastPublishTimestamp = j;
    }

    long loadPublishTimestamp(int i) {
        long load = load("publish_timeout", 0L, i);
        if (load <= new Date().getTime()) {
            return load;
        }
        IMSLog.s(LOG_TAG, i, "loadPublishTimestamp: abnormal case, clear lastPublishTimestamp " + load + " to 0");
        savePublishTimestamp(0L, i);
        return 0L;
    }

    void savePublishETag(String str, long j, int i) {
        SharedPreferences.Editor edit = getPresenceSharedPreferences(i).edit();
        edit.putString("publish_etag", str);
        edit.putLong("publish_expire_timer", j);
        edit.apply();
    }

    String getPublishETag(int i) {
        return load("publish_etag", (String) null, i);
    }

    void resetPublishEtag(int i) {
        IMSLog.i(LOG_TAG, i, "resetPublishEtag");
        SharedPreferences.Editor edit = getPresenceSharedPreferences(i).edit();
        edit.remove("publish_etag");
        edit.remove("publish_expire_timer");
        edit.apply();
    }

    boolean checkIfValidEtag(int i) {
        SharedPreferences presenceSharedPreferences = getPresenceSharedPreferences(i);
        String string = presenceSharedPreferences.getString("imsi", null);
        String imsi = this.mPresence.getPresenceModuleInfo(i).mSimCardManager.getImsi();
        long j = presenceSharedPreferences.getLong("publish_expire_timer", 0L);
        long loadPublishTimestamp = loadPublishTimestamp(i);
        if (this.mPresence.getPresenceModuleInfo(i).mMno.isKor()) {
            if (this.mPresence.getPresenceModuleInfo(i).mBackupPublishTimestamp > 0) {
                loadPublishTimestamp = this.mPresence.getPresenceModuleInfo(i).mBackupPublishTimestamp;
                this.mPresence.getPresenceModuleInfo(i).mBackupPublishTimestamp = 0L;
            }
        } else if (this.mPresence.getPresenceModuleInfo(i).mMno == Mno.ATT && loadPublishTimestamp == 0 && this.mPresence.getPresenceModuleInfo(i).mBackupPublishTimestamp > 0) {
            loadPublishTimestamp = this.mPresence.getPresenceModuleInfo(i).mBackupPublishTimestamp;
            this.mPresence.getPresenceModuleInfo(i).mBackupPublishTimestamp = 0L;
        }
        Date date = new Date();
        IMSLog.i(LOG_TAG, i, "checkIfValidEtag: currentTime=" + date.getTime() + " publishTimer=" + loadPublishTimestamp + " expireTimer=" + j + " currentTime-publishTimer=" + ((date.getTime() - loadPublishTimestamp) / 1000));
        return (date.getTime() - loadPublishTimestamp) / 1000 < j && !TextUtils.isEmpty(imsi) && imsi.equals(string);
    }

    void checkAndClearPresencePreferences(String str, int i) {
        SharedPreferences presenceSharedPreferences = getPresenceSharedPreferences(i);
        String string = presenceSharedPreferences.getString("imsi", null);
        if (string == null || !string.equals(str)) {
            SharedPreferences.Editor edit = presenceSharedPreferences.edit();
            edit.putString("publish_etag", "");
            edit.putLong("publish_expire_timer", 0L);
            edit.putString("imsi", str);
            edit.putLong("publish_timeout", 0L);
            edit.putLong("BadEventTimestamp", 0L);
            edit.apply();
        }
    }

    void saveDisplayText(String str, int i) {
        SharedPreferences.Editor edit = getPresenceSharedPreferences(i).edit();
        edit.putString("publish_displayText", str);
        edit.apply();
    }

    String loadDisplayText(int i) {
        return load("publish_displayText", "", i);
    }
}
