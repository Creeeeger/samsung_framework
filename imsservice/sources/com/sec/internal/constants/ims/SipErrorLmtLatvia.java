package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;

/* loaded from: classes.dex */
public class SipErrorLmtLatvia extends SipErrorBase {
    public static final SipError CALL_REJECTED_BY_NOANSWER = new SipError(NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE, "No Answer");

    @Override // com.sec.internal.constants.ims.SipErrorBase
    public SipError getFromRejectReason(int i) {
        if (i == 3) {
            return SipErrorBase.DECLINE;
        }
        if (i == 13) {
            return CALL_REJECTED_BY_NOANSWER;
        }
        return super.getFromRejectReason(i);
    }
}
