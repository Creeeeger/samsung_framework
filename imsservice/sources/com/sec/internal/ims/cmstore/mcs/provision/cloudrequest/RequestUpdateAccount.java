package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import android.os.Bundle;
import android.os.Message;
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
public class RequestUpdateAccount extends BaseProvisionRequest {
    private String TAG;
    String mConsentContext;
    Boolean mIsChangedAlias;
    Boolean mIsChangedConsent;
    String mMsisdn;
    private final int mPhoneId;
    String mUserAlias;

    public RequestUpdateAccount(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str, Message message) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestUpdateAccount.class.getSimpleName();
        Boolean bool = Boolean.FALSE;
        this.mIsChangedAlias = bool;
        this.mUserAlias = null;
        this.mConsentContext = null;
        this.mIsChangedConsent = bool;
        this.mMsisdn = str;
        Object obj = message.obj;
        if (obj != null) {
            Bundle bundle = (Bundle) obj;
            this.mUserAlias = bundle.getString("alias");
            this.mIsChangedConsent = Boolean.valueOf(bundle.getBoolean(McsConstants.Auth.IS_CHANGED_CONSENT));
            this.mConsentContext = bundle.getString(McsConstants.Auth.CONSENT_CONTEXT);
            this.mIsChangedAlias = Boolean.valueOf(bundle.getBoolean(McsConstants.Auth.IS_CHANGED_ALIAS));
        }
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.PUT);
        setPostBody(makePostData());
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestUpdateAccount.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                int i;
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                Bundle bundle2 = new Bundle();
                bundle2.putString("alias", RequestUpdateAccount.this.mUserAlias);
                bundle2.putString(McsConstants.Auth.CONSENT_CONTEXT, RequestUpdateAccount.this.mConsentContext);
                EventLogHelper.infoLogAndAdd(RequestUpdateAccount.this.TAG, RequestUpdateAccount.this.mPhoneId, "resultCode: " + statusCode);
                IMSLog.i(RequestUpdateAccount.this.TAG, RequestUpdateAccount.this.mPhoneId, "strBody: " + IMSLog.numberChecker(dataString));
                if (statusCode == 200 && !dataString.isEmpty()) {
                    try {
                        String str2 = "";
                        String decrypt = RequestUpdateAccount.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted() ? RequestUpdateAccount.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, true) : "";
                        JSONObject jSONObject = (TextUtils.isEmpty(decrypt) ? new JSONObject(dataString) : new JSONObject(decrypt)).getJSONObject("account");
                        String string = jSONObject.getString("account_id");
                        IMSLog.d(RequestUpdateAccount.this.TAG, RequestUpdateAccount.this.mPhoneId, "accountId: " + string);
                        RequestUpdateAccount.this.mStoreClient.getPrerenceManager().saveMcsAccountId(string);
                        if (jSONObject.has("alias")) {
                            str2 = jSONObject.getString("alias");
                            IMSLog.d(RequestUpdateAccount.this.TAG, RequestUpdateAccount.this.mPhoneId, "alias: " + str2);
                            RequestUpdateAccount.this.mStoreClient.getPrerenceManager().saveMcsAlias(str2);
                        }
                        String string2 = jSONObject.getString(McsConstants.Auth.CONSENT_CONTEXT);
                        IMSLog.d(RequestUpdateAccount.this.TAG, RequestUpdateAccount.this.mPhoneId, "consentContext: " + string2);
                        if (jSONObject.has(McsConstants.Auth.MCS_ACCOUNT_STATUS)) {
                            i = jSONObject.getInt(McsConstants.Auth.MCS_ACCOUNT_STATUS);
                            IMSLog.i(RequestUpdateAccount.this.TAG, RequestUpdateAccount.this.mPhoneId, "accountStatus: " + i);
                        } else {
                            i = 0;
                        }
                        bundle2.putString("alias", str2);
                        bundle2.putString(McsConstants.Auth.CONSENT_CONTEXT, string2);
                        bundle2.putInt(McsConstants.Auth.MCS_ACCOUNT_STATUS, i);
                        RequestUpdateAccount.this.goSuccessfulCall(bundle2);
                        return;
                    } catch (JSONException e) {
                        IMSLog.e(RequestUpdateAccount.this.TAG, RequestUpdateAccount.this.mPhoneId, e.getMessage());
                        RequestUpdateAccount.this.goFailedCall(statusCode);
                        return;
                    }
                }
                if (RequestUpdateAccount.this.isErrorCodeSupported(statusCode)) {
                    int checkRetryAfter = RequestUpdateAccount.this.checkRetryAfter(httpResponseParams, RequestUpdateAccount.this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(RequestUpdateAccount.this.mHttpInterface.getClass().getSimpleName()));
                    if (checkRetryAfter > 0) {
                        bundle2.putBoolean(McsConstants.Auth.IS_CHANGED_ALIAS, RequestUpdateAccount.this.mIsChangedAlias.booleanValue());
                        bundle2.putBoolean(McsConstants.Auth.IS_CHANGED_CONSENT, RequestUpdateAccount.this.mIsChangedConsent.booleanValue());
                        iAPICallFlowListener.onOverRequest(RequestUpdateAccount.this.mHttpInterface, String.valueOf(statusCode), checkRetryAfter, bundle2);
                        return;
                    }
                    return;
                }
                RequestUpdateAccount.this.goFailedCall(statusCode);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestUpdateAccount.this.TAG, RequestUpdateAccount.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestUpdateAccount.this.goFailedCall(802);
            }
        });
    }

    private void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisServerRoot() + "/oapi/v1/" + this.mMsisdn + "/account");
    }

    private JSONObject makePostData() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.mIsChangedAlias.booleanValue()) {
                jSONObject.put("alias", this.mUserAlias);
            }
            if (this.mIsChangedConsent.booleanValue() && !TextUtils.isEmpty(this.mConsentContext)) {
                jSONObject.put(McsConstants.Auth.CONSENT_CONTEXT, this.mConsentContext);
            }
            IMSLog.i(this.TAG, this.mPhoneId, "json string: " + IMSLog.numberChecker(jSONObject.toString()));
            return jSONObject;
        } catch (JSONException e) {
            IMSLog.e(this.TAG, this.mPhoneId, e.getMessage());
            return null;
        }
    }
}
