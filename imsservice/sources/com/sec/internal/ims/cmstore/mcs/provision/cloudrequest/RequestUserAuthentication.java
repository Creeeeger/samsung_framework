package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import android.os.Bundle;
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
public class RequestUserAuthentication extends BaseProvisionRequest {
    private static final long serialVersionUID = 1;
    private String TAG;
    private final JSONObject mDeviceInfo;
    private final String mMobileIp;
    private final String mMsisdn;
    private final String mOtpCode;
    private final int mPhoneId;
    private String mRequestType;
    private transient WorkflowMcs mWorkFlow;

    public RequestUserAuthentication(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str, JSONObject jSONObject, String str2, String str3, String str4, final Boolean bool, final String str5) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestUserAuthentication.class.getSimpleName();
        this.mMsisdn = str;
        this.mDeviceInfo = jSONObject;
        this.mOtpCode = str2;
        this.mRequestType = str3;
        this.mMobileIp = str4;
        this.mWorkFlow = this.mStoreClient.getProvisionWorkFlow();
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.POST);
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBasic());
        setPostBody(makePostData());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestUserAuthentication.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String decrypt;
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                Bundle bundle = new Bundle();
                bundle.putString(McsConstants.Auth.CONSENT_CONTEXT, str5);
                EventLogHelper.infoLogAndAdd(RequestUserAuthentication.this.TAG, RequestUserAuthentication.this.mPhoneId, "resultCode: " + statusCode);
                IMSLog.i(RequestUserAuthentication.this.TAG, RequestUserAuthentication.this.mPhoneId, "strBody: " + IMSLog.numberChecker(dataString));
                if (statusCode == 200) {
                    if (dataString.isEmpty()) {
                        return;
                    }
                    try {
                        decrypt = RequestUserAuthentication.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted() ? RequestUserAuthentication.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, false) : "";
                        JSONObject jSONObject2 = TextUtils.isEmpty(decrypt) ? new JSONObject(dataString) : new JSONObject(decrypt);
                        String string = jSONObject2.getString(McsConstants.Auth.AUTHENTICATION_CODE);
                        IMSLog.d(RequestUserAuthentication.this.TAG, RequestUserAuthentication.this.mPhoneId, "auth_code: " + string);
                        RequestUserAuthentication.this.mWorkFlow.setAuthCodeValidityTimer(Util.getIntegerPayloadFromToken(string, "validity"));
                        RequestUserAuthentication.this.mStoreClient.getPrerenceManager().saveAuthCode(string);
                        if (jSONObject2.has("oasis_server_root")) {
                            String string2 = jSONObject2.getString("oasis_server_root");
                            IMSLog.d(RequestUserAuthentication.this.TAG, RequestUserAuthentication.this.mPhoneId, "oasis server root: " + string2);
                            RequestUserAuthentication.this.mStoreClient.getPrerenceManager().saveOasisServerRoot(string2);
                        }
                        RequestUserAuthentication.this.goSuccessfulCall(null);
                        return;
                    } catch (JSONException e) {
                        IMSLog.e(RequestUserAuthentication.this.TAG, RequestUserAuthentication.this.mPhoneId, e.getMessage());
                        RequestUserAuthentication.this.goFailedCall(statusCode);
                        return;
                    }
                }
                if (statusCode == 202) {
                    if (!dataString.isEmpty()) {
                        try {
                            decrypt = RequestUserAuthentication.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted() ? RequestUserAuthentication.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, false) : "";
                            String string3 = (TextUtils.isEmpty(decrypt) ? new JSONObject(dataString) : new JSONObject(decrypt)).getString("registration_code");
                            IMSLog.d(RequestUserAuthentication.this.TAG, RequestUserAuthentication.this.mPhoneId, "registration code: " + string3);
                            if (TextUtils.isEmpty(string3)) {
                                return;
                            }
                            if (RequestUserAuthentication.this.mStoreClient.getPrerenceManager().getMcsUser() == 1 && !bool.booleanValue()) {
                                RequestUserAuthentication.this.goFailedCall(900);
                                return;
                            } else {
                                if (str5 != null) {
                                    long integerPayloadFromToken = Util.getIntegerPayloadFromToken(string3, "validity");
                                    RequestUserAuthentication.this.mStoreClient.getPrerenceManager().saveRegCode(string3);
                                    RequestUserAuthentication.this.mWorkFlow.setRegistrationCodeValidityTimer(integerPayloadFromToken);
                                    RequestUserAuthentication.this.goSuccessfulCall(bundle);
                                    return;
                                }
                                return;
                            }
                        } catch (JSONException e2) {
                            IMSLog.e(RequestUserAuthentication.this.TAG, RequestUserAuthentication.this.mPhoneId, e2.getMessage());
                            RequestUserAuthentication.this.goFailedCall(statusCode);
                            return;
                        }
                    }
                    RequestUserAuthentication.this.goFailedCall(statusCode);
                    return;
                }
                if (statusCode == 406 && RequestUserAuthentication.this.mStoreClient.getPrerenceManager().getMcsUser() != 1) {
                    RequestUserAuthentication.this.handleMessageIdFromSpecificException(dataString);
                    return;
                }
                if (RequestUserAuthentication.this.isErrorCodeSupported(statusCode) && RequestUserAuthentication.this.mStoreClient.getPrerenceManager().getMcsUser() == 1) {
                    int checkRetryAfter = RequestUserAuthentication.this.checkRetryAfter(httpResponseParams, RequestUserAuthentication.this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(RequestUserAuthentication.this.mHttpInterface.getClass().getSimpleName()));
                    if (checkRetryAfter > 0) {
                        iAPICallFlowListener.onOverRequest(RequestUserAuthentication.this.mHttpInterface, String.valueOf(statusCode), checkRetryAfter, bundle);
                        return;
                    }
                    return;
                }
                RequestUserAuthentication.this.goFailedCall(statusCode);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestUserAuthentication.this.TAG, RequestUserAuthentication.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestUserAuthentication.this.goFailedCall(802);
            }
        });
    }

    private void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisAuthRoot() + "/oapi/v1/auth/user");
    }

    private String makePostData() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", this.mRequestType);
            jSONObject.put("id", this.mMsisdn);
            if (this.mRequestType.equals(McsConstants.Auth.TYPE_OTP)) {
                jSONObject.put("password", this.mOtpCode);
            } else if (this.mRequestType.equals(McsConstants.Auth.TYPE_MOBILE_IP)) {
                jSONObject.put(McsConstants.Auth.TYPE_MOBILE_IP, this.mMobileIp);
            }
            jSONObject.put("device_info", this.mDeviceInfo);
            String replaceAll = jSONObject.toString().replaceAll("\\\\", "");
            IMSLog.i(this.TAG, this.mPhoneId, "json string: " + IMSLog.numberChecker(replaceAll));
            return replaceAll;
        } catch (JSONException e) {
            IMSLog.e(this.TAG, this.mPhoneId, e.getMessage());
            return "";
        }
    }
}
