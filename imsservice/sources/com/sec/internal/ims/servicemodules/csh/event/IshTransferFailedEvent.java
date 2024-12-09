package com.sec.internal.ims.servicemodules.csh.event;

/* loaded from: classes.dex */
public class IshTransferFailedEvent {
    public CshErrorReason mReason;
    public int mSessionId;

    public IshTransferFailedEvent(int i, CshErrorReason cshErrorReason) {
        this.mSessionId = i;
        this.mReason = cshErrorReason;
    }
}
