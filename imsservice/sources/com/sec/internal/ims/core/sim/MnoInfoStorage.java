package com.sec.internal.ims.core.sim;

import android.content.ContentValues;
import android.text.TextUtils;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
class MnoInfoStorage {
    private final ContentValues mMnoInfo = new ContentValues();

    public MnoInfoStorage() {
        init();
    }

    void init() {
        this.mMnoInfo.clear();
        this.mMnoInfo.put(ISimManager.KEY_IMSSWITCH_TYPE, (Integer) 0);
    }

    public String toString() {
        String contentValues = this.mMnoInfo.toString();
        String asString = this.mMnoInfo.getAsString("imsi");
        return (!TextUtils.isEmpty(asString) && IMSLog.isShipBuild()) ? contentValues.replace(asString, "***************") : contentValues;
    }

    void update(ContentValues contentValues) {
        synchronized (MnoInfoStorage.class) {
            this.mMnoInfo.putAll(contentValues);
        }
    }

    ContentValues getAll() {
        ContentValues contentValues;
        synchronized (MnoInfoStorage.class) {
            contentValues = this.mMnoInfo;
        }
        return contentValues;
    }

    int size() {
        return this.mMnoInfo.size();
    }

    int getInt(String str, int i) {
        return CollectionUtils.getIntValue(this.mMnoInfo, str, i);
    }

    boolean getBoolean(String str, boolean z) {
        return CollectionUtils.getBooleanValue(this.mMnoInfo, str, z);
    }

    String getString(String str) {
        return this.mMnoInfo.getAsString(str);
    }
}
