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
public class RequestGetListOfSD extends BaseProvisionRequest {
    private String TAG;
    private final int mPhoneId;

    public RequestGetListOfSD(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestGetListOfSD.class.getSimpleName();
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.GET);
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestGetListOfSD.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                EventLogHelper.infoLogAndAdd(RequestGetListOfSD.this.TAG, RequestGetListOfSD.this.mPhoneId, "resultCode: " + statusCode);
                IMSLog.i(RequestGetListOfSD.this.TAG, RequestGetListOfSD.this.mPhoneId, "strbody: " + IMSLog.numberChecker(dataString));
                if (statusCode == 200 && !TextUtils.isEmpty(dataString)) {
                    if (RequestGetListOfSD.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted()) {
                        dataString = RequestGetListOfSD.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, true);
                        if (TextUtils.isEmpty(dataString)) {
                            RequestGetListOfSD.this.goFailedCall(statusCode);
                            return;
                        }
                    }
                    RequestGetListOfSD.this.goSuccessfulCall(dataString);
                    return;
                }
                RequestGetListOfSD.this.goFailedCall(statusCode);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestGetListOfSD.this.TAG, RequestGetListOfSD.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestGetListOfSD.this.goFailedCall(802);
            }
        });
    }

    public void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisServerRoot() + "/oapi/v1/device");
    }
}
