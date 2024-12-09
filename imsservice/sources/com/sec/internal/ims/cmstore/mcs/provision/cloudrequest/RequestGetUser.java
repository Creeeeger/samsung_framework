package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import android.os.Bundle;
import android.text.TextUtils;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RequestGetUser extends BaseProvisionRequest {
    private String TAG;
    private final String mMsisdn;
    private final int mPhoneId;

    public RequestGetUser(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, final String str) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestGetUser.class.getSimpleName();
        this.mMsisdn = Util.encodeRFC3986(str);
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.GET);
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBasic());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestGetUser.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                EventLogHelper.infoLogAndAdd(RequestGetUser.this.TAG, RequestGetUser.this.mPhoneId, "resultCode: " + statusCode);
                IMSLog.i(RequestGetUser.this.TAG, RequestGetUser.this.mPhoneId, "strbody: " + IMSLog.numberChecker(dataString));
                if (statusCode != 200 || TextUtils.isEmpty(dataString)) {
                    if (statusCode == 404) {
                        RequestGetUser.this.goFailedCall(statusCode);
                        return;
                    }
                    if (RequestGetUser.this.isErrorCodeSupported(statusCode)) {
                        int checkRetryAfter = RequestGetUser.this.checkRetryAfter(httpResponseParams, RequestGetUser.this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(RequestGetUser.this.mHttpInterface.getClass().getSimpleName()));
                        if (checkRetryAfter > 0) {
                            iAPICallFlowListener.onOverRequest(RequestGetUser.this.mHttpInterface, String.valueOf(statusCode), checkRetryAfter);
                            return;
                        }
                        return;
                    }
                    RequestGetUser.this.goFailedCall(statusCode);
                    return;
                }
                try {
                    String decrypt = RequestGetUser.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted() ? RequestGetUser.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, false) : "";
                    JSONObject jSONObject = TextUtils.isEmpty(decrypt) ? new JSONObject(dataString) : new JSONObject(decrypt);
                    if (TextUtils.equals(jSONObject.getString(McsConstants.Auth.MDN), str)) {
                        String string = jSONObject.getString(McsConstants.Auth.ROOT_CLIENT_ID);
                        String string2 = jSONObject.getString(McsConstants.Auth.CONSENT_CONTEXT);
                        Bundle bundle = new Bundle();
                        bundle.putString(McsConstants.Auth.ROOT_CLIENT_ID, string);
                        bundle.putString(McsConstants.Auth.CONSENT_CONTEXT, string2);
                        RequestGetUser.this.goSuccessfulCall(bundle);
                        return;
                    }
                } catch (JSONException e) {
                    IMSLog.e(RequestGetUser.this.TAG, RequestGetUser.this.mPhoneId, e.getMessage());
                }
                RequestGetUser.this.goFailedCall(statusCode);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestGetUser.this.TAG, RequestGetUser.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestGetUser.this.goFailedCall(802);
            }
        });
    }

    public void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisAuthRoot() + "/oapi/v1/auth/user?mdn=" + this.mMsisdn);
    }
}
