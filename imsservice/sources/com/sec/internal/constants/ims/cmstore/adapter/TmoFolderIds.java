package com.sec.internal.constants.ims.cmstore.adapter;

import com.sec.internal.constants.ims.cmstore.adapter.DeviceConfigAdapterConstants;
import java.util.Arrays;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public enum TmoFolderIds {
    VM_GREETINGS(DeviceConfigAdapterConstants.TmoMstoreServerValues.TmoFolderId.VM_GREETINGS),
    VM_INBOX(DeviceConfigAdapterConstants.TmoMstoreServerValues.TmoFolderId.VM_INBOX);

    private final String mName;

    TmoFolderIds(String str) {
        this.mName = str;
    }

    public String getValue() {
        return this.mName;
    }

    public static boolean equals(final String str) {
        return Arrays.stream(values()).anyMatch(new Predicate() { // from class: com.sec.internal.constants.ims.cmstore.adapter.TmoFolderIds$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$equals$0;
                lambda$equals$0 = TmoFolderIds.lambda$equals$0(str, (TmoFolderIds) obj);
                return lambda$equals$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$equals$0(String str, TmoFolderIds tmoFolderIds) {
        return tmoFolderIds.getValue().equals(str);
    }
}
