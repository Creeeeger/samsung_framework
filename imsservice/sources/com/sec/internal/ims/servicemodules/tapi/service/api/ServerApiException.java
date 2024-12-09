package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.os.RemoteException;

/* loaded from: classes.dex */
public class ServerApiException extends RemoteException {
    static final long serialVersionUID = 1;

    public ServerApiException(String str) {
        setStackTrace(new Exception(str).getStackTrace());
    }
}
