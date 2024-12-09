package com.sec.internal.ims.cmstore.params;

import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;

/* loaded from: classes.dex */
public class FailedAPICallResponseParam {
    private String mApiName;
    public String mErrorCode;
    public IHttpAPICommonInterface mRequest;

    public FailedAPICallResponseParam(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        this.mApiName = null;
        this.mRequest = iHttpAPICommonInterface;
        if (iHttpAPICommonInterface != null) {
            this.mApiName = iHttpAPICommonInterface.getClass().getSimpleName();
        }
        this.mErrorCode = str;
    }

    public String toString() {
        return "FailedAPICallResponseParam [mApiName=" + this.mApiName + ", mErrorCode=" + this.mErrorCode + "]";
    }
}
