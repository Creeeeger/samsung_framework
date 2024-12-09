package com.sec.internal.ims.servicemodules.csh.event;

import android.os.Message;

/* loaded from: classes.dex */
public class CshAcceptSessionParams {
    public Message mCallback;
    public int mSessionId;

    public CshAcceptSessionParams(int i, Message message) {
        this.mSessionId = i;
        this.mCallback = message;
    }
}
