package com.sec.internal.constants.ims.cmstore.adapter;

import com.sec.internal.constants.ims.cmstore.adapter.DeviceConfigAdapterConstants;
import java.util.Arrays;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public enum MstoreServerValues {
    SERVER_ROOT(DeviceConfigAdapterConstants.TmoMstoreServerValues.SERVER_ROOT),
    API_VERSION(DeviceConfigAdapterConstants.TmoMstoreServerValues.API_VERSION),
    STORE_NAME(DeviceConfigAdapterConstants.TmoMstoreServerValues.STORE_NAME),
    SIT_URL(DeviceConfigAdapterConstants.TmoMstoreServerValues.SIT_URL),
    AKA_URL(DeviceConfigAdapterConstants.TmoMstoreServerValues.AKA_URL),
    PUSH_SYNC_DELAY(DeviceConfigAdapterConstants.TmoMstoreServerValues.PUSH_SYNC_DELAY),
    DISABLE_DIRECTION_HEADER(DeviceConfigAdapterConstants.TmoMstoreServerValues.DISABLE_DIRECTION_HEADER),
    SYNC_TIMER("SyncTimer"),
    DATA_CONNECTION_SYNC_TIMER("DataConnectionSyncTimer"),
    AUTH_PROT("AuthProt"),
    USER_NAME("UserName"),
    USER_PWD("UserPwd"),
    EVENT_RPTING("EventRpting"),
    SMS_STORE("SMSStore"),
    MMS_STORE("MMSStore"),
    MAX_BULK_DELETE(DeviceConfigAdapterConstants.TmoMstoreServerValues.MAX_BULK_DELETE),
    MAX_SEARCH(DeviceConfigAdapterConstants.TmoMstoreServerValues.MAX_SEARCH);

    private String mName;

    MstoreServerValues(String str) {
        this.mName = str;
    }

    public String getValue() {
        return this.mName;
    }

    public static boolean equals(final String str) {
        return Arrays.stream(values()).anyMatch(new Predicate() { // from class: com.sec.internal.constants.ims.cmstore.adapter.MstoreServerValues$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$equals$0;
                lambda$equals$0 = MstoreServerValues.lambda$equals$0(str, (MstoreServerValues) obj);
                return lambda$equals$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$equals$0(String str, MstoreServerValues mstoreServerValues) {
        return mstoreServerValues.getValue().equals(str);
    }
}
