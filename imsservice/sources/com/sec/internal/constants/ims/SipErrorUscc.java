package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;

/* loaded from: classes.dex */
public class SipErrorUscc extends SipErrorBase {
    public static final SipError BUSY_ESTABLISHING_ANOTHER_CALL = new SipError(NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE, "Establishing Another Call");
    public static final SipError CALL_REJECTED_BY_USER = new SipError(NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE, "Call Rejected by User");

    @Override // com.sec.internal.constants.ims.SipErrorBase
    public SipError getFromRejectReason(int i) {
        if (i < 0) {
            i = 3;
        }
        if (i == 3) {
            return CALL_REJECTED_BY_USER;
        }
        return super.getFromRejectReason(i);
    }
}
