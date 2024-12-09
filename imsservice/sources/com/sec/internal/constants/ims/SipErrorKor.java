package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;

/* loaded from: classes.dex */
public class SipErrorKor extends SipErrorBase {
    public static final SipError AKA_CHANLENGE_TIMEOUT = new SipError(1003, "Aka challenge timeout");

    public SipErrorKor() {
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
        return super.getFromRejectReason(i);
    }
}
