package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import android.os.Bundle;
import android.text.TextUtils;
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
public class RequestGetAccount extends BaseProvisionRequest {
    private String TAG;
    String mMsisdn;
    private final int mPhoneId;

    public RequestGetAccount(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestGetAccount.class.getSimpleName();
        this.mMsisdn = str;
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.GET);
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestGetAccount.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                EventLogHelper.infoLogAndAdd(RequestGetAccount.this.TAG, RequestGetAccount.this.mPhoneId, "resultCode: " + statusCode);
                IMSLog.i(RequestGetAccount.this.TAG, RequestGetAccount.this.mPhoneId, "strBody: " + IMSLog.numberChecker(dataString));
                if (statusCode == 200 && !dataString.isEmpty()) {
                    try {
                        String str2 = "";
                        String decrypt = RequestGetAccount.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted() ? RequestGetAccount.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, true) : "";
                        JSONObject jSONObject = (TextUtils.isEmpty(decrypt) ? new JSONObject(dataString) : new JSONObject(decrypt)).getJSONObject("account");
                        String string = jSONObject.getString("account_id");
                        IMSLog.d(RequestGetAccount.this.TAG, RequestGetAccount.this.mPhoneId, "accountId: " + string);
                        RequestGetAccount.this.mStoreClient.getPrerenceManager().saveMcsAccountId(string);
                        if (jSONObject.has("alias")) {
                            str2 = jSONObject.getString("alias");
                            IMSLog.d(RequestGetAccount.this.TAG, RequestGetAccount.this.mPhoneId, "alias: " + str2);
                            RequestGetAccount.this.mStoreClient.getPrerenceManager().saveMcsAlias(str2);
                        }
                        String string2 = jSONObject.getString(McsConstants.Auth.CONSENT_CONTEXT);
                        IMSLog.d(RequestGetAccount.this.TAG, RequestGetAccount.this.mPhoneId, "consentContext: " + string2);
                        Bundle bundle = new Bundle();
                        bundle.putString("alias", str2);
                        bundle.putString(McsConstants.Auth.CONSENT_CONTEXT, string2);
                        RequestGetAccount.this.goSuccessfulCall(bundle);
                        return;
                    } catch (JSONException e) {
                        IMSLog.e(RequestGetAccount.this.TAG, RequestGetAccount.this.mPhoneId, e.getMessage());
                        RequestGetAccount.this.goFailedCall(statusCode);
                        return;
                    }
                }
                if (RequestGetAccount.this.isErrorCodeSupported(statusCode)) {
                    int checkRetryAfter = RequestGetAccount.this.checkRetryAfter(httpResponseParams, RequestGetAccount.this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(RequestGetAccount.this.mHttpInterface.getClass().getSimpleName()));
                    if (checkRetryAfter > 0) {
                        iAPICallFlowListener.onOverRequest(RequestGetAccount.this.mHttpInterface, String.valueOf(statusCode), checkRetryAfter);
                        return;
                    }
                    return;
                }
                RequestGetAccount.this.goFailedCall(statusCode);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestGetAccount.this.TAG, RequestGetAccount.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestGetAccount.this.goFailedCall(802);
            }
        });
    }

    private void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisServerRoot() + "/oapi/v1/" + this.mMsisdn + "/account");
    }
}
