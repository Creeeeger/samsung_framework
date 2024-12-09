package com.sec.internal.constants.ims;

/* loaded from: classes.dex */
public class SipReasonOptus extends SipReason {
    public static final SipReason USER_TRIGGERED = new SipReason("SIP", 0, "User Triggered", new String[0]);

    @Override // com.sec.internal.constants.ims.SipReason
    public SipReason getFromUserReason(int i) {
        if (i < 0) {
            i = 5;
        }
        if (i == 5) {
            return USER_TRIGGERED;
        }
        return super.getFromUserReason(i);
    }
}
