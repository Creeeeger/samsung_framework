package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RequestApproveSd extends BaseProvisionRequest {
    private String TAG;
    private final int mPhoneId;
    private final String mUserCode;

    public RequestApproveSd(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestApproveSd.class.getSimpleName();
        this.mUserCode = str;
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.POST);
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        setPostBody(makePostData());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestApproveSd.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                int statusCode = httpResponseParams.getStatusCode();
                EventLogHelper.infoLogAndAdd(RequestApproveSd.this.TAG, RequestApproveSd.this.mPhoneId, "resultCode: " + statusCode);
                if (statusCode == 200) {
                    RequestApproveSd.this.goSuccessfulCall(null);
                } else {
                    RequestApproveSd.this.goFailedCall(statusCode);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestApproveSd.this.TAG, RequestApproveSd.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestApproveSd.this.goFailedCall(802);
            }
        });
    }

    public void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisServerRoot() + "/oapi/v1/device");
    }

    private JSONObject makePostData() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(McsConstants.SdInfo.USER_CODE, this.mUserCode);
            IMSLog.i(this.TAG, this.mPhoneId, "json string" + IMSLog.numberChecker(jSONObject.toString()));
            return jSONObject;
        } catch (JSONException e) {
            IMSLog.e(this.TAG, this.mPhoneId, e.getMessage());
            return null;
        }
    }
}
