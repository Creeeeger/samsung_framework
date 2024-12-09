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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RequestDeleteAccount extends BaseProvisionAPIRequest {
    private static final long serialVersionUID = -6638272236079743088L;
    private String TAG;

    public RequestDeleteAccount(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super("application/json", iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestDeleteAccount.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        setMethod(HttpRequestParams.Method.DELETE);
        updateUrl();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.ambs.cloudrequest.RequestDeleteAccount.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                int checkRetryAfter;
                String dataString = httpResponseParams.getDataString();
                Log.d(RequestDeleteAccount.this.TAG, "onComplete StatusCode: " + httpResponseParams.getStatusCode() + " strbody: " + IMSLog.checker(dataString));
                if (httpResponseParams.getStatusCode() == 200) {
                    if (TextUtils.isEmpty(dataString)) {
                        RequestDeleteAccount.this.goFailedCall();
                        return;
                    }
                    try {
                        JSONArray jSONArray = new JSONObject(dataString).getJSONObject("deletedServiceAccountList").getJSONArray("serviceAccount");
                        if (jSONArray == null || jSONArray.length() == 0 || jSONArray.getJSONObject(0) == null) {
                            RequestDeleteAccount.this.goFailedCall();
                            return;
                        } else if (!jSONArray.getJSONObject(0).has("serviceId")) {
                            RequestDeleteAccount.this.goFailedCall();
                            return;
                        } else {
                            Log.d(RequestDeleteAccount.this.TAG, "deleted successfully");
                            RequestDeleteAccount.this.goSuccessfulCall();
                            return;
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                } else if ((httpResponseParams.getStatusCode() == 503 || httpResponseParams.getStatusCode() == 429) && (checkRetryAfter = RequestDeleteAccount.this.checkRetryAfter(httpResponseParams)) > 0) {
                    iAPICallFlowListener.onOverRequest(this, ATTConstants.ATTErrorNames.ERR_RETRY_AFTER, checkRetryAfter);
                    return;
                }
                if (RequestDeleteAccount.this.checkAndHandleCPSError(dataString)) {
                    return;
                }
                RequestDeleteAccount.this.goFailedCall();
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                RequestDeleteAccount.this.goFailedCall();
            }
        });
    }

    public void updateUrl() {
        setUrl("https://" + ATTGlobalVariables.CPS_HOST_NAME + "/svcaccount/v1/msgstoreoemtbs?deleteAll=true");
    }

    @Override // com.sec.internal.ims.cmstore.ambs.globalsetting.BaseProvisionAPIRequest, com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return new RequestDeleteAccount(iAPICallFlowListener, messageStoreClient, iCloudMessageManagerHelper);
    }
}
