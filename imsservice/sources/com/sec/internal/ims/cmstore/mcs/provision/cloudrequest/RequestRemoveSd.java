package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.log.IMSLog;
import java.io.IOException;

/* loaded from: classes.dex */
public class RequestRemoveSd extends BaseProvisionRequest {
    private String TAG;
    private final int mPhoneId;
    private final String mSdClientId;

    public RequestRemoveSd(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestRemoveSd.class.getSimpleName();
        this.mSdClientId = str;
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.DELETE);
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestRemoveSd.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                int statusCode = httpResponseParams.getStatusCode();
                EventLogHelper.infoLogAndAdd(RequestRemoveSd.this.TAG, RequestRemoveSd.this.mPhoneId, "resultCode: " + statusCode);
                if (statusCode == 204 || statusCode == 404) {
                    RequestRemoveSd.this.goSuccessfulCall(null);
                    return;
                }
                if (RequestRemoveSd.this.isErrorCodeSupported(statusCode)) {
                    int checkRetryAfter = RequestRemoveSd.this.checkRetryAfter(httpResponseParams, RequestRemoveSd.this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(RequestRemoveSd.this.mHttpInterface.getClass().getSimpleName()));
                    if (checkRetryAfter > 0) {
                        iAPICallFlowListener.onOverRequest(RequestRemoveSd.this.mHttpInterface, String.valueOf(statusCode), checkRetryAfter);
                        return;
                    }
                    return;
                }
                RequestRemoveSd.this.goFailedCall(statusCode);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestRemoveSd.this.TAG, RequestRemoveSd.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestRemoveSd.this.goFailedCall(802);
            }
        });
    }

    public void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisServerRoot() + "/oapi/v1/device/" + this.mSdClientId);
    }
}
