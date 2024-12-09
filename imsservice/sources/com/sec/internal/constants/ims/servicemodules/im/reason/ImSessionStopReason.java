package com.sec.internal.constants.ims.servicemodules.im.reason;

import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;

/* loaded from: classes.dex */
public enum ImSessionStopReason {
    VOLUNTARILY(200, "Call completed"),
    INVOLUNTARILY(503, "Service Unavailable"),
    DEDICATED_BEARER_UNAVAILABLE_TIMEOUT,
    GC_FORCE_CLOSE(200, "Call completed"),
    NO_RESPONSE(503, "Service Unavailable"),
    CLOSE_1_TO_1_SESSION(200, "Call completed");

    private final int mCauseCode;
    private final String mReasonText;

    ImSessionStopReason() {
        this.mCauseCode = Id.REQUEST_UPDATE_TIME_IN_PLANI;
        this.mReasonText = "";
    }

    ImSessionStopReason(int i, String str) {
        this.mCauseCode = i;
        this.mReasonText = str;
    }

    public int getCauseCode() {
        return this.mCauseCode;
    }

    public String getReasonText() {
        return this.mReasonText;
    }
}
