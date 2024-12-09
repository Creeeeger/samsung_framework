package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import android.text.TextUtils;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.log.IMSLog;
import java.io.IOException;

/* loaded from: classes.dex */
public class RequestGetSD extends BaseProvisionRequest {
    private String TAG;
    private final int mPhoneId;

    public RequestGetSD(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestGetSD.class.getSimpleName();
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.GET);
        updateUrl(str);
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestGetSD.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                EventLogHelper.infoLogAndAdd(RequestGetSD.this.TAG, RequestGetSD.this.mPhoneId, "resultCode: " + statusCode);
                IMSLog.i(RequestGetSD.this.TAG, RequestGetSD.this.mPhoneId, "strbody: " + IMSLog.numberChecker(dataString));
                if (statusCode == 200 && !TextUtils.isEmpty(dataString)) {
                    if (RequestGetSD.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted()) {
                        dataString = RequestGetSD.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, true);
                        if (TextUtils.isEmpty(dataString)) {
                            RequestGetSD.this.goFailedCall(statusCode);
                            return;
                        }
                    }
                    RequestGetSD.this.goSuccessfulCall(dataString);
                    return;
                }
                if (RequestGetSD.this.isErrorCodeSupported(statusCode)) {
                    int checkRetryAfter = RequestGetSD.this.checkRetryAfter(httpResponseParams, RequestGetSD.this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(RequestGetSD.this.mHttpInterface.getClass().getSimpleName()));
                    if (checkRetryAfter > 0) {
                        iAPICallFlowListener.onOverRequest(RequestGetSD.this.mHttpInterface, String.valueOf(statusCode), checkRetryAfter);
                        return;
                    }
                    return;
                }
                RequestGetSD.this.goFailedCall(statusCode);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestGetSD.this.TAG, RequestGetSD.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestGetSD.this.goFailedCall(802);
            }
        });
    }

    public void updateUrl(String str) {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisServerRoot() + "/oapi/v1/device/" + str);
    }
}
