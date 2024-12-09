package com.sec.internal.ims.cmstore.ambs.cloudrequest;

import android.util.Log;
import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.ambs.globalsetting.BaseProvisionAPIRequest;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RequestCreateAccount extends BaseProvisionAPIRequest {
    private static final long serialVersionUID = -8278931619238563919L;
    private String TAG;

    public RequestCreateAccount(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super("application/json", iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestCreateAccount.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        setMethod(HttpRequestParams.Method.POST);
        setPostBody(makePostData());
        updateUrl();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.ambs.cloudrequest.RequestCreateAccount.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                Log.d(RequestCreateAccount.this.TAG, "onComplete StatusCode: " + httpResponseParams.getStatusCode() + " strbody: " + IMSLog.checker(dataString));
                if (httpResponseParams.getStatusCode() == 201) {
                    ((BaseProvisionAPIRequest) RequestCreateAccount.this).mStoreClient.getPrerenceManager().saveLastApiRequestCreateAccount(true);
                    if (((BaseProvisionAPIRequest) RequestCreateAccount.this).mStoreClient.getPrerenceManager().getUserTbs()) {
                        ((BaseProvisionAPIRequest) RequestCreateAccount.this).mStoreClient.getPrerenceManager().saveUserTbsRquired(false);
                    }
                    RequestCreateAccount.this.goSuccessfulCall();
                    return;
                }
                if (httpResponseParams.getStatusCode() == 503 || httpResponseParams.getStatusCode() == 429) {
                    int checkRetryAfter = RequestCreateAccount.this.checkRetryAfter(httpResponseParams);
                    if (checkRetryAfter > 0) {
                        iAPICallFlowListener.onOverRequest(this, ATTConstants.ATTErrorNames.ERR_RETRY_AFTER, checkRetryAfter);
                        return;
                    }
                } else if (httpResponseParams.getStatusCode() == 200 && RequestCreateAccount.this.checkAndHandleCPSError(dataString)) {
                    return;
                }
                RequestCreateAccount.this.goFailedCall(ATTConstants.ATTErrorNames.ERR_CPS_DEFAULT);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(RequestCreateAccount.this.TAG, "Http request onFail: " + iOException.getMessage());
                RequestCreateAccount.this.goFailedCall(ATTConstants.ATTErrorNames.ERR_CPS_DEFAULT);
            }
        });
    }

    public void updateUrl() {
        setUrl("https://" + ATTGlobalVariables.CPS_HOST_NAME + "/svcaccount/v1/" + ATTGlobalVariables.MSG_STORE_SERVICE_NAME);
    }

    private JSONObject makePostData() {
        String termConditionId = this.mStoreClient.getPrerenceManager().getTermConditionId();
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            Log.d(this.TAG, "id: " + termConditionId);
            jSONObject2.put("id", termConditionId);
            jSONObject2.put("action", "Accept");
            jSONObject3.put("tc", jSONObject2);
            jSONObject.put("createServiceAccountRequest", jSONObject3);
            return jSONObject;
        } catch (JSONException e) {
            Log.e(this.TAG, e.getMessage());
            return null;
        }
    }

    @Override // com.sec.internal.ims.cmstore.ambs.globalsetting.BaseProvisionAPIRequest, com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return new RequestCreateAccount(iAPICallFlowListener, messageStoreClient, iCloudMessageManagerHelper);
    }
}
