package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;

/* loaded from: classes.dex */
public class SipErrorCmccCbn extends SipErrorBase {
    public SipErrorCmccCbn() {
        this.mDefaultRejectReason = SipErrorBase.DECLINE;
    }

    @Override // com.sec.internal.constants.ims.SipErrorBase
    public SipError getFromRejectReason(int i) {
        if (i == 3) {
            return SipErrorBase.DECLINE;
        }
        if (i == 13) {
            return SipErrorBase.BUSY_HERE;
        }
        return super.getFromRejectReason(i);
    }
}
