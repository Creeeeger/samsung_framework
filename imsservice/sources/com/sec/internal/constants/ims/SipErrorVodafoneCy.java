package com.sec.internal.constants.ims;

import com.sec.ims.util.SipError;

/* loaded from: classes.dex */
public class SipErrorVodafoneCy extends SipErrorBase {
    @Override // com.sec.internal.constants.ims.SipErrorBase
    public SipError getFromRejectReason(int i) {
        if (i == 3) {
            return SipErrorBase.DECLINE;
        }
        return super.getFromRejectReason(i);
    }
}
