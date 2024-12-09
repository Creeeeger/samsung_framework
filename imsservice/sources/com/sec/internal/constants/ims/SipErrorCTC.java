package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;

/* loaded from: classes.dex */
public class SipErrorCTC extends SipErrorBase {
    public static final SipError CALL_REJECTED_BY_USER = new SipError(NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE, "Call Rejected by User");

    @Override // com.sec.internal.constants.ims.SipErrorBase
    public SipError getFromRejectReason(int i) {
        if (i == 3) {
            return CALL_REJECTED_BY_USER;
        }
        if (i == 13) {
            return SipErrorBase.REQUEST_TIMEOUT;
        }
        return super.getFromRejectReason(i);
    }
}
