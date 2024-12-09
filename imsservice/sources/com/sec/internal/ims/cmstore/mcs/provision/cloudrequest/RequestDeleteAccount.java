package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.log.IMSLog;
import java.io.IOException;

/* loaded from: classes.dex */
public class RequestDeleteAccount extends BaseProvisionRequest {
    private String TAG;
    String mMsisdn;
    private final int mPhoneId;

    public RequestDeleteAccount(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestDeleteAccount.class.getSimpleName();
        this.mMsisdn = str;
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.DELETE);
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestDeleteAccount.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                EventLogHelper.infoLogAndAdd(RequestDeleteAccount.this.TAG, RequestDeleteAccount.this.mPhoneId, "resultCode: " + statusCode);
                IMSLog.i(RequestDeleteAccount.this.TAG, RequestDeleteAccount.this.mPhoneId, "strBody: " + IMSLog.numberChecker(dataString));
                if (statusCode == 200 || statusCode == 204) {
                    RequestDeleteAccount.this.goSuccessfulCall(null);
                } else {
                    RequestDeleteAccount.this.goFailedCall(statusCode);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestDeleteAccount.this.TAG, RequestDeleteAccount.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestDeleteAccount.this.goFailedCall(802);
            }
        });
    }

    private void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisServerRoot() + "/oapi/v1/" + this.mMsisdn + "/account");
    }
}
