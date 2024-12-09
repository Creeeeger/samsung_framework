package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import android.text.TextUtils;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.mcs.provision.workflow.WorkflowMcs;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RequestUserRegistration extends BaseProvisionRequest {
    private String TAG;
    private String mConsentContext;
    private final String mMsisdn;
    private final int mPhoneId;
    private transient WorkflowMcs mWorkFlow;

    public RequestUserRegistration(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str, String str2) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestUserRegistration.class.getSimpleName();
        this.mMsisdn = str;
        this.mConsentContext = str2;
        this.mWorkFlow = this.mStoreClient.getProvisionWorkFlow();
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.POST);
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBasic());
        setPostBody(makePostData());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestUserRegistration.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                EventLogHelper.infoLogAndAdd(RequestUserRegistration.this.TAG, RequestUserRegistration.this.mPhoneId, "resultCode: " + statusCode);
                IMSLog.i(RequestUserRegistration.this.TAG, RequestUserRegistration.this.mPhoneId, "strBody: " + IMSLog.numberChecker(dataString));
                if (statusCode == 200) {
                    if (dataString.isEmpty()) {
                        return;
                    }
                    try {
                        String decrypt = RequestUserRegistration.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted() ? RequestUserRegistration.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, false) : "";
                        JSONObject jSONObject = TextUtils.isEmpty(decrypt) ? new JSONObject(dataString) : new JSONObject(decrypt);
                        String string = jSONObject.getString(McsConstants.Auth.AUTHENTICATION_CODE);
                        IMSLog.d(RequestUserRegistration.this.TAG, RequestUserRegistration.this.mPhoneId, "auth_code: " + string);
                        RequestUserRegistration.this.mWorkFlow.setAuthCodeValidityTimer(Util.getIntegerPayloadFromToken(string, "validity"));
                        RequestUserRegistration.this.mStoreClient.getPrerenceManager().saveAuthCode(string);
                        String string2 = jSONObject.getString("oasis_server_root");
                        IMSLog.d(RequestUserRegistration.this.TAG, RequestUserRegistration.this.mPhoneId, "oasis server root: " + string2);
                        RequestUserRegistration.this.mStoreClient.getPrerenceManager().saveOasisServerRoot(string2);
                        RequestUserRegistration.this.goSuccessfulCall(null);
                        return;
                    } catch (JSONException e) {
                        IMSLog.e(RequestUserRegistration.this.TAG, RequestUserRegistration.this.mPhoneId, e.getMessage());
                        RequestUserRegistration.this.goFailedCall(statusCode);
                        return;
                    }
                }
                if (statusCode == 406 && RequestUserRegistration.this.mStoreClient.getPrerenceManager().getMcsUser() != 1) {
                    RequestUserRegistration.this.handleMessageIdFromSpecificException(dataString);
                } else {
                    RequestUserRegistration.this.goFailedCall(statusCode);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestUserRegistration.this.TAG, RequestUserRegistration.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestUserRegistration.this.goFailedCall(802);
            }
        });
    }

    private void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisAuthRoot() + "/oapi/v1/auth/user/registration");
    }

    private JSONObject makePostData() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", this.mMsisdn);
            jSONObject.put("registration_code", this.mStoreClient.getPrerenceManager().getRegCode());
            jSONObject.put(McsConstants.Auth.CONSENT_CONTEXT, this.mConsentContext);
            IMSLog.i(this.TAG, this.mPhoneId, "json string: " + IMSLog.numberChecker(jSONObject.toString()));
            return jSONObject;
        } catch (JSONException e) {
            IMSLog.e(this.TAG, this.mPhoneId, e.getMessage());
            return null;
        }
    }
}
