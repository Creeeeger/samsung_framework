package com.sec.internal.ims.cmstore.ambs.cloudrequest;

import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.constants.ims.cmstore.ReqConstant;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.ambs.globalsetting.BaseProvisionAPIRequest;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RequestAccount extends BaseProvisionAPIRequest {
    private static final String ACCOUNT_STATUS_Active = "Active";
    private static final String ACCOUNT_STATUS_PROVISIONED = "Provisioned";
    private static final long serialVersionUID = -8780447710529534093L;
    private String TAG;

    public RequestAccount(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient) {
        super("application/json", iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestAccount.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        setMethod(HttpRequestParams.Method.GET);
        updateUrl();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.ambs.cloudrequest.RequestAccount.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                int checkRetryAfter;
                String dataString = httpResponseParams.getDataString();
                Log.d(RequestAccount.this.TAG, "onComplete StatusCode: " + httpResponseParams.getStatusCode() + " strbody: " + IMSLog.checker(dataString));
                if (httpResponseParams.getStatusCode() == 200 && !TextUtils.isEmpty(dataString)) {
                    try {
                        JSONArray jSONArray = new JSONObject(dataString).getJSONObject("serviceAccountList").getJSONArray("serviceAccount");
                        if (jSONArray != null && jSONArray.length() != 0) {
                            String string = jSONArray.getJSONObject(0).getString("status");
                            Log.d(RequestAccount.this.TAG, "200OK non empty response, status: " + string);
                            if (!RequestAccount.ACCOUNT_STATUS_Active.equals(string) && !RequestAccount.ACCOUNT_STATUS_PROVISIONED.equals(string)) {
                                RequestAccount.this.goSuccessfulCall(ReqConstant.HAPPY_PATH_REQACCOUNT_GET_TC);
                                return;
                            }
                            RequestAccount.this.goSuccessfulCall(ReqConstant.HAPPY_PATH_REQACCOUNT_EXIST_USER);
                            return;
                        }
                        RequestAccount.this.goSuccessfulCall(ReqConstant.HAPPY_PATH_REQACCOUNT_GET_TC);
                        return;
                    } catch (JSONException e) {
                        Log.e(RequestAccount.this.TAG, e.getMessage());
                    }
                } else if ((httpResponseParams.getStatusCode() == 503 || httpResponseParams.getStatusCode() == 429) && (checkRetryAfter = RequestAccount.this.checkRetryAfter(httpResponseParams)) > 0) {
                    iAPICallFlowListener.onOverRequest(this, ATTConstants.ATTErrorNames.ERR_RETRY_AFTER, checkRetryAfter);
                    return;
                }
                if (RequestAccount.this.checkAndHandleCPSError(dataString)) {
                    return;
                }
                RequestAccount.this.goFailedCall(ATTConstants.ATTErrorNames.ERR_CPS_DEFAULT);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(RequestAccount.this.TAG, "Http request onFail: " + iOException.getMessage());
                RequestAccount.this.goFailedCall();
            }
        });
    }

    public static void handleExternalUserOptIn(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient) {
        iAPICallFlowListener.onSuccessfulCall((IHttpAPICommonInterface) new RequestAccount(iAPICallFlowListener, messageStoreClient), ReqConstant.HAPPY_PATH_BINARY_SMS_PROVISIONED);
    }

    public void updateUrl() {
        setUrl("https://" + ATTGlobalVariables.CPS_HOST_NAME + "/svcaccount/v1/" + ATTGlobalVariables.MSG_STORE_SERVICE_NAME);
    }

    @Override // com.sec.internal.ims.cmstore.ambs.globalsetting.BaseProvisionAPIRequest, com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return new RequestAccount(iAPICallFlowListener, messageStoreClient);
    }
}
