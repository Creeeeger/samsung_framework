package com.sec.internal.ims.servicemodules.csh.event;

import android.os.Message;

/* loaded from: classes.dex */
public class IshStartSessionParams extends CshStartSessionParams {
    public IshFile mfile;

    public IshStartSessionParams(String str, IshFile ishFile, Message message) {
        super(str, message);
        this.mfile = ishFile;
    }

    @Override // com.sec.internal.ims.servicemodules.csh.event.CshStartSessionParams
    public String toString() {
        return "IshStartSessionParams " + super.toString() + " " + this.mfile.toString();
    }
}
