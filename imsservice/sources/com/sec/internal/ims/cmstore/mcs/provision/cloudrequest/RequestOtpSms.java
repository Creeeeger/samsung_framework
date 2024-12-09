package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import android.os.Bundle;
import android.text.TextUtils;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
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
public class RequestOtpSms extends BaseProvisionRequest {
    private String TAG;
    private final JSONObject mDeviceInfo;
    private final String mMsisdn;
    private final int mPhoneId;

    public RequestOtpSms(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str, JSONObject jSONObject) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestOtpSms.class.getSimpleName();
        this.mMsisdn = str;
        this.mDeviceInfo = jSONObject;
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.POST);
        updateUrl();
        setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBasic());
        setPostBody(makePostData());
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestOtpSms.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                EventLogHelper.infoLogAndAdd(RequestOtpSms.this.TAG, RequestOtpSms.this.mPhoneId, "resultCode: " + statusCode);
                if (statusCode != 200) {
                    if (statusCode == 400) {
                        return;
                    }
                    if (RequestOtpSms.this.isErrorCodeSupported(statusCode) && RequestOtpSms.this.mStoreClient.getPrerenceManager().getMcsUser() == 1) {
                        int checkRetryAfter = RequestOtpSms.this.checkRetryAfter(httpResponseParams, RequestOtpSms.this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(RequestOtpSms.this.mHttpInterface.getClass().getSimpleName()));
                        if (checkRetryAfter > 0) {
                            iAPICallFlowListener.onOverRequest(RequestOtpSms.this.mHttpInterface, String.valueOf(statusCode), checkRetryAfter);
                            return;
                        }
                        return;
                    }
                    RequestOtpSms.this.goFailedCall(statusCode);
                    return;
                }
                long j = 60;
                if (!dataString.isEmpty()) {
                    try {
                        String decrypt = RequestOtpSms.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted() ? RequestOtpSms.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, false) : "";
                        long j2 = (TextUtils.isEmpty(decrypt) ? new JSONObject(dataString) : new JSONObject(decrypt)).getLong(CloudMessageProviderContract.BufferDBMMSpdu.EXP) - (System.currentTimeMillis() / 1000);
                        IMSLog.i(RequestOtpSms.this.TAG, RequestOtpSms.this.mPhoneId, "otpCodeValidity: " + j2);
                        j = j2;
                    } catch (JSONException e) {
                        IMSLog.e(RequestOtpSms.this.TAG, RequestOtpSms.this.mPhoneId, e.getMessage());
                    }
                }
                Bundle bundle = new Bundle();
                bundle.putLong("otpCodeValidity", j);
                RequestOtpSms.this.goSuccessfulCall(bundle);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(RequestOtpSms.this.TAG, RequestOtpSms.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                RequestOtpSms.this.goFailedCall(802);
            }
        });
    }

    private void updateUrl() {
        setUrl(this.mStoreClient.getPrerenceManager().getOasisAuthRoot() + "/oapi/v1/auth/method/sms");
    }

    private String makePostData() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(McsConstants.Auth.MDN, this.mMsisdn);
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
