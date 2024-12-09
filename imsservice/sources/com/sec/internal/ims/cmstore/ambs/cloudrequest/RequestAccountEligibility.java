package com.sec.internal.ims.cmstore.ambs.cloudrequest;

import android.text.TextUtils;
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
public class RequestAccountEligibility extends BaseProvisionAPIRequest {
    private static final long serialVersionUID = 6388797514968224882L;
    private String TAG;

    public RequestAccountEligibility(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super("application/json", iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestAccountEligibility.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        setMethod(HttpRequestParams.Method.GET);
        updateUrl();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.ambs.cloudrequest.RequestAccountEligibility.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                Log.d(RequestAccountEligibility.this.TAG, "onComplete StatusCode: " + httpResponseParams.getStatusCode() + " strbody: " + IMSLog.checker(dataString));
                if (httpResponseParams.getStatusCode() == 503 || httpResponseParams.getStatusCode() == 429) {
                    int checkRetryAfter = RequestAccountEligibility.this.checkRetryAfter(httpResponseParams);
                    if (checkRetryAfter > 0) {
                        iAPICallFlowListener.onOverRequest(this, ATTConstants.ATTErrorNames.ERR_RETRY_AFTER, checkRetryAfter);
                        return;
                    }
                } else if (httpResponseParams.getStatusCode() == 200 && !TextUtils.isEmpty(dataString)) {
                    try {
                        boolean z = new JSONObject(dataString).getJSONObject("serviceEligibilityList").getJSONArray("serviceEligibility").getJSONObject(0).getBoolean("isEligible");
                        Log.d(RequestAccountEligibility.this.TAG, "account eligible: " + z);
                        if (z) {
                            RequestAccountEligibility.this.goSuccessfulCall();
                            return;
                        } else {
                            RequestAccountEligibility.this.goFailedCall(ATTConstants.ATTErrorNames.ERR_ACCOUNT_NOT_ELIGIBLE);
                            return;
                        }
                    } catch (JSONException e) {
                        Log.e(RequestAccountEligibility.this.TAG, e.getMessage());
                    }
                }
                if (RequestAccountEligibility.this.checkAndHandleCPSError(dataString)) {
                    return;
                }
                RequestAccountEligibility.this.goFailedCall(ATTConstants.ATTErrorNames.ERR_CPS_DEFAULT);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(RequestAccountEligibility.this.TAG, "Http request onFail: " + iOException.getMessage());
                RequestAccountEligibility.this.goFailedCall(ATTConstants.ATTErrorNames.ERR_CPS_DEFAULT);
            }
        });
    }

    public void updateUrl() {
        setUrl("https://" + ATTGlobalVariables.CPS_HOST_NAME + "/svcaccount/v1/eligibility/" + ATTGlobalVariables.MSG_STORE_SERVICE_NAME);
    }

    @Override // com.sec.internal.ims.cmstore.ambs.globalsetting.BaseProvisionAPIRequest, com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return new RequestAccountEligibility(iAPICallFlowListener, messageStoreClient, iCloudMessageManagerHelper);
    }
}
