package com.sec.internal.ims.servicemodules.csh.event;

/* loaded from: classes.dex */
public class CshRejectSessionParams {
    public ICshSuccessCallback mCallback;
    public int mSessionId;

    public CshRejectSessionParams(int i, ICshSuccessCallback iCshSuccessCallback) {
        this.mSessionId = i;
        this.mCallback = iCshSuccessCallback;
    }
}
