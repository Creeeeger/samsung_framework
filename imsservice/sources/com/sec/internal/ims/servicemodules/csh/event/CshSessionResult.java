package com.sec.internal.ims.servicemodules.csh.event;

/* loaded from: classes.dex */
public class CshSessionResult {
    public CshErrorReason mReason;
    public int mSessionNumber;

    public CshSessionResult(int i, CshErrorReason cshErrorReason) {
        this.mSessionNumber = i;
        this.mReason = cshErrorReason;
    }
}
