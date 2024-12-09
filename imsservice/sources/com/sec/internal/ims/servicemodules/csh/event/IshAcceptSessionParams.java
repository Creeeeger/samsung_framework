package com.sec.internal.ims.servicemodules.csh.event;

import android.os.Message;

/* loaded from: classes.dex */
public class IshAcceptSessionParams extends CshAcceptSessionParams {
    public String mPath;

    public IshAcceptSessionParams(int i, String str, Message message) {
        super(i, message);
        this.mPath = str;
    }
}
