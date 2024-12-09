package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;

/* loaded from: classes.dex */
public class SipErrorNovaIs extends SipErrorBase {
    @Override // com.sec.internal.constants.ims.SipErrorBase
    public SipError getFromRejectReason(int i) {
        if (i == 13) {
            return SipErrorBase.REQUEST_TIMEOUT;
        }
        return super.getFromRejectReason(i);
    }
}
