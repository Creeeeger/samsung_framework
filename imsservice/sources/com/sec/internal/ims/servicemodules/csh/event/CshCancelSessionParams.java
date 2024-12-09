package com.sec.internal.ims.servicemodules.csh.event;

/* loaded from: classes.dex */
public class CshCancelSessionParams {
    public ICshSuccessCallback mCallback;
    public int mSessionId;

    public CshCancelSessionParams(int i, ICshSuccessCallback iCshSuccessCallback) {
        this.mSessionId = i;
        this.mCallback = iCshSuccessCallback;
    }
}
