package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;

/* loaded from: classes.dex */
public class SipErrorKdi extends SipErrorBase {
    public static final SipError MULTIPARTY_CALL_IS_ESTABLISHED = new SipError(NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE, "Already On Two Calls");

    public SipErrorKdi() {
        this.mDefaultRejectReason = SipErrorBase.DECLINE;
    }

    @Override // com.sec.internal.constants.ims.SipErrorBase
    public SipError getFromRejectReason(int i) {
        if (i == 3) {
            return SipErrorBase.DECLINE;
        }
        if (i == 13) {
            return SipErrorBase.SERVER_INTERNAL_ERROR;
        }
        return super.getFromRejectReason(i);
    }
}
