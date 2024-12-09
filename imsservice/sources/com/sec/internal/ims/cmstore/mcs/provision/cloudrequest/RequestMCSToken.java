package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import android.text.TextUtils;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RequestMCSToken extends BaseProvisionRequest {
    private static final long serialVersionUID = 1;
    private String TAG;
    private final JSONObject mDeviceInfo;
    private final boolean mIsValidRefreshToken;
    private final int mPhoneId;
    private transient WorkflowMcs mWorkFlow;

    public RequestMCSToken(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, boolean z, JSONObject jSONObject) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = RequestMCSToken.class.getSimpleName();
        this.mIsValidRefreshToken = z;
        this.mDeviceInfo = jSONObject;
        this.mHttpInterface = this;
        this.mPhoneId = messageStoreClient.getClientID();
        setMethod(HttpRequestParams.Method.POST);
        if (isUpdateUrl()) {
            setCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBasic());
            setPostBody(makePostData());
            this.mWorkFlow = this.mStoreClient.getProvisionWorkFlow();
            setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestMCSToken.1
                @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
                public void onComplete(HttpResponseParams httpResponseParams) {
                    String dataString = httpResponseParams.getDataString();
                    int statusCode = httpResponseParams.getStatusCode();
                    EventLogHelper.infoLogAndAdd(RequestMCSToken.this.TAG, RequestMCSToken.this.mPhoneId, "resultCode: " + statusCode);
                    IMSLog.i(RequestMCSToken.this.TAG, RequestMCSToken.this.mPhoneId, "strBody: " + IMSLog.numberChecker(dataString));
                    if (statusCode == 200) {
                        if (dataString.isEmpty()) {
                            return;
                        }
                        try {
                            String decrypt = RequestMCSToken.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted() ? RequestMCSToken.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, false) : "";
                            JSONObject jSONObject2 = TextUtils.isEmpty(decrypt) ? new JSONObject(dataString) : new JSONObject(decrypt);
                            String string = jSONObject2.getString("access_token");
                            RequestMCSToken.this.mStoreClient.getPrerenceManager().saveMcsAccessToken(string);
                            long integerPayloadFromToken = Util.getIntegerPayloadFromToken(string, CloudMessageProviderContract.BufferDBMMSpdu.EXP);
                            long integerPayloadFromToken2 = Util.getIntegerPayloadFromToken(string, "validity");
                            RequestMCSToken.this.mStoreClient.getPrerenceManager().saveMcsAccessTokenExpireTime(integerPayloadFromToken);
                            RequestMCSToken.this.mWorkFlow.setAccessTokenValidityTimer(integerPayloadFromToken2);
                            String string2 = jSONObject2.getString("refresh_token");
                            RequestMCSToken.this.mStoreClient.getPrerenceManager().saveMcsRefreshToken(string2);
                            long integerPayloadFromToken3 = Util.getIntegerPayloadFromToken(string2, CloudMessageProviderContract.BufferDBMMSpdu.EXP);
                            long integerPayloadFromToken4 = Util.getIntegerPayloadFromToken(string2, "validity");
                            RequestMCSToken.this.mStoreClient.getPrerenceManager().saveMcsRefreshTokenExpireTime(integerPayloadFromToken3);
                            RequestMCSToken.this.mWorkFlow.setRefreshTokenValidityTimer(integerPayloadFromToken4);
                            JSONObject jSONObject3 = jSONObject2.getJSONObject(McsConstants.Auth.OASIS_CONFIG);
                            if (jSONObject3.has("fcm_sender_id")) {
                                RequestMCSToken.this.mStoreClient.getPrerenceManager().saveFcmSenderId(jSONObject3.getString("fcm_sender_id"));
                            }
                            RequestMCSToken.this.mStoreClient.getPrerenceManager().saveCmsDataTtl(RequestMCSToken.this.getInt(jSONObject3.getString("cms_data_ttl")));
                            RequestMCSToken.this.mStoreClient.getPrerenceManager().saveMaxUploadFileSize(RequestMCSToken.this.getInt(jSONObject3.getString("max_upload_file_size")));
                            if (jSONObject3.has("max_small_file_size")) {
                                RequestMCSToken.this.mStoreClient.getPrerenceManager().saveMaxSmallFileSize(RequestMCSToken.this.getInt(jSONObject3.getString("max_small_file_size")));
                            }
                            if (jSONObject3.has("oasis_small_file_server_root")) {
                                RequestMCSToken.this.mStoreClient.getPrerenceManager().saveOasisSmallFileServerRoot(jSONObject3.getString("oasis_small_file_server_root"));
                            }
                            if (jSONObject3.has("oasis_large_file_server_root")) {
                                RequestMCSToken.this.mStoreClient.getPrerenceManager().saveOasisLargeFileServerRoot(jSONObject3.getString("oasis_large_file_server_root"));
                            }
                            if (jSONObject3.has("oasis_server_root")) {
                                String string3 = jSONObject3.getString("oasis_server_root");
                                IMSLog.d(RequestMCSToken.this.TAG, "oasis server root: " + string3);
                                RequestMCSToken.this.mStoreClient.getPrerenceManager().saveOasisServerRoot(string3);
                            }
                            if (jSONObject3.has(McsConstants.Auth.OASIS_SERVER_VERSION)) {
                                RequestMCSToken.this.mStoreClient.getPrerenceManager().saveOasisServerVersion(jSONObject3.getString(McsConstants.Auth.OASIS_SERVER_VERSION));
                            }
                            JSONArray jSONArray = jSONObject2.getJSONObject(McsConstants.Auth.AUTO_CONFIG).getJSONArray(McsConstants.Auth.APPLICATIONS);
                            int i = 0;
                            while (true) {
                                if (i >= jSONArray.length()) {
                                    break;
                                }
                                JSONObject jSONObject4 = jSONArray.getJSONObject(i);
                                if (TextUtils.equals(jSONObject4.getJSONObject(McsConstants.Auth.TARGET_INFO).getString("type"), McsConstants.Auth.PRIMARY)) {
                                    JSONObject jSONObject5 = jSONObject4.getJSONObject(McsConstants.Auth.XMS_MESSAGE);
                                    RequestMCSToken.this.mStoreClient.getPrerenceManager().saveMmsRevokeTtlSecs(RequestMCSToken.this.getInt(jSONObject5.getString("mms_revoke_ttl_secs")));
                                    RequestMCSToken.this.mStoreClient.getPrerenceManager().saveSmsRevokeTtlSecs(RequestMCSToken.this.getInt(jSONObject5.getString("sms_revoke_ttl_secs")));
                                    break;
                                }
                                i++;
                            }
                            RequestMCSToken.this.goSuccessfulCall(null);
                            return;
                        } catch (JSONException e) {
                            IMSLog.e(RequestMCSToken.this.TAG, RequestMCSToken.this.mPhoneId, e.getMessage());
                            RequestMCSToken.this.goFailedCall(statusCode);
                            return;
                        }
                    }
                    if (statusCode == 406 && RequestMCSToken.this.mStoreClient.getPrerenceManager().getMcsUser() != 1) {
                        RequestMCSToken.this.handleMessageIdFromSpecificException(dataString);
                        return;
                    }
                    if (RequestMCSToken.this.isErrorCodeSupported(statusCode) && RequestMCSToken.this.mStoreClient.getPrerenceManager().getMcsUser() == 1) {
                        int checkRetryAfter = RequestMCSToken.this.checkRetryAfter(httpResponseParams, RequestMCSToken.this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(RequestMCSToken.this.mHttpInterface.getClass().getSimpleName()));
                        if (checkRetryAfter > 0) {
                            iAPICallFlowListener.onOverRequest(RequestMCSToken.this.mHttpInterface, String.valueOf(statusCode), checkRetryAfter);
                            return;
                        }
                        return;
                    }
                    RequestMCSToken.this.goFailedCall(statusCode);
                }

                @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
                public void onFail(IOException iOException) {
                    IMSLog.e(RequestMCSToken.this.TAG, RequestMCSToken.this.mPhoneId, "Http request onFail: " + iOException.getMessage());
                    RequestMCSToken.this.goFailedCall(802);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getInt(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NullPointerException | NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private boolean isUpdateUrl() {
        if (this.mStoreClient.getPrerenceManager().getOasisServerRoot().isEmpty()) {
            IMSLog.i(this.TAG, this.mPhoneId, "updateUrl: Oasis Server Root is empty");
            goFailedCall(0);
            return false;
        }
        setUrl(this.mStoreClient.getPrerenceManager().getOasisServerRoot() + "/oapi/v1/token");
        return true;
    }

    private JSONObject makePostData() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.mIsValidRefreshToken) {
                jSONObject.put("refresh_token", this.mStoreClient.getPrerenceManager().getMcsRefreshToken());
                jSONObject.put(McsConstants.Auth.GRANT_TYPE, "refresh_token");
                jSONObject.put("device_info", this.mDeviceInfo);
            } else {
                jSONObject.put("code", this.mStoreClient.getPrerenceManager().getAuthCode());
                jSONObject.put(McsConstants.Auth.GRANT_TYPE, McsConstants.Auth.AUTHORIZATION_CODE);
            }
            IMSLog.i(this.TAG, this.mPhoneId, "json string: " + IMSLog.numberChecker(jSONObject.toString()));
            return jSONObject;
        } catch (JSONException e) {
            IMSLog.e(this.TAG, this.mPhoneId, e.getMessage());
            return null;
        }
    }
}
