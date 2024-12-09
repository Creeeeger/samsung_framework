package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;

/* loaded from: classes.dex */
public class SipErrorSprint extends SipErrorBase {
    @Override // com.sec.internal.constants.ims.SipErrorBase
    public SipError getFromRejectReason(int i) {
        if (i == 7) {
            return SipErrorBase.NOT_ACCEPTABLE_HERE;
        }
        return super.getFromRejectReason(i);
    }
}
