package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;

/* loaded from: classes.dex */
public class SipErrorMdmn extends SipErrorBase {
    public SipErrorMdmn() {
        this.mDefaultRejectReason = SipErrorBase.DECLINE;
    }

    @Override // com.sec.internal.constants.ims.SipErrorBase
    public SipError getFromRejectReason(int i) {
        if (i == 3) {
            return SipErrorBase.DECLINE;
        }
        if (i == 13) {
            return SipErrorBase.NOT_ACCEPTABLE_GLOBALLY;
        }
        if (i == 15) {
            return SipErrorBase.E911_NOT_ALLOWED_ON_SD;
        }
        return super.getFromRejectReason(i);
    }
}
