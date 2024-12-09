package com.sec.internal.omanetapi.common.data;

/* loaded from: classes.dex */
public class SyncMessageStatus {
    public String status;
    public String syncType;

    public SyncMessageStatus(String str, String str2) {
        this.syncType = str;
        this.status = str2;
    }

    public String toString() {
        return "SyncMessageStatus{syncType='" + this.syncType + "', status='" + this.status + "'}";
    }
}
