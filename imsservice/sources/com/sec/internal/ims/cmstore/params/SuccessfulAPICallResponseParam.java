package com.sec.internal.ims.cmstore.params;

import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;

/* loaded from: classes.dex */
public class SuccessfulAPICallResponseParam {
    private String mApiName;
    public String mCallFlow;
    public IHttpAPICommonInterface mRequest;

    public SuccessfulAPICallResponseParam(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        this.mApiName = null;
        this.mRequest = iHttpAPICommonInterface;
        if (iHttpAPICommonInterface != null) {
            this.mApiName = iHttpAPICommonInterface.getClass().getSimpleName();
        }
        this.mCallFlow = str;
    }

    public String getApiName() {
        return this.mApiName;
    }

    public String toString() {
        return "SuccessfulAPICallResponseParam [mApiName=" + this.mApiName + ", mCallFlow=" + this.mCallFlow + "]";
    }
}
