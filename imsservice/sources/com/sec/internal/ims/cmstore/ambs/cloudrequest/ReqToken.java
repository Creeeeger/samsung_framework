package com.sec.internal.ims.cmstore.ambs.cloudrequest;

import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.constants.ims.cmstore.CommonErrorName;
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
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ReqToken extends BaseProvisionAPIRequest {
    private static final long serialVersionUID = 1981673139716461230L;
    private String TAG;

    public ReqToken(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(iAPICallFlowListener, messageStoreClient);
        this.TAG = ReqToken.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        setMethod(HttpRequestParams.Method.POST);
        setPostParams(makePostData());
        updateUrl();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.ambs.cloudrequest.ReqToken.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String dataString = httpResponseParams.getDataString();
                Log.d(ReqToken.this.TAG, "StatusCode: " + httpResponseParams.getStatusCode() + " strBody: " + IMSLog.checker(dataString));
                if (httpResponseParams.getStatusCode() == 200 && !TextUtils.isEmpty(dataString)) {
                    if (dataString.indexOf("atsToken=") < 0) {
                        ReqToken.this.goFailedCall(CommonErrorName.DEFAULT_ERROR_TYPE);
                        return;
                    }
                    ((BaseProvisionAPIRequest) ReqToken.this).mStoreClient.getPrerenceManager().saveAtsToken(ReqToken.this.removeLastNewLineChar(dataString.substring(dataString.indexOf("atsToken=") + 9)));
                    ReqToken.this.goSuccessfulCall();
                    return;
                }
                if (httpResponseParams.getStatusCode() == 503 || httpResponseParams.getStatusCode() == 429) {
                    int checkRetryAfter = ReqToken.this.checkRetryAfter(httpResponseParams);
                    if (checkRetryAfter > 0) {
                        iAPICallFlowListener.onOverRequest(this, ATTConstants.ATTErrorNames.ERR_RETRY_AFTER, checkRetryAfter);
                        return;
                    }
                    return;
                }
                ReqToken.this.goFailedCall(CommonErrorName.DEFAULT_ERROR_TYPE);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(ReqToken.this.TAG, "Http request onFail: " + iOException.getMessage());
                ReqToken.this.goFailedCall();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String removeLastNewLineChar(String str) {
        return (str == null || str.length() <= 0 || str.charAt(str.length() + (-1)) != '\n') ? str : str.substring(0, str.length() - 1);
    }

    public void updateUrl() {
        setUrl("https://" + ATTGlobalVariables.ACMS_HOST_NAME + "/commonLogin/nxsATS/TokenGen");
    }

    private Map<String, String> makePostData() {
        HashMap hashMap = new HashMap();
        hashMap.put("TG_OP", "TokenGen");
        hashMap.put("appID", ATTGlobalVariables.APP_ID);
        hashMap.put("ctnID", this.mStoreClient.getPrerenceManager().getUserCtn());
        hashMap.put("authZCode", this.mStoreClient.getPrerenceManager().getAuthZCode());
        return hashMap;
    }

    @Override // com.sec.internal.ims.cmstore.ambs.globalsetting.BaseProvisionAPIRequest, com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return new ReqToken(iAPICallFlowListener, messageStoreClient, iCloudMessageManagerHelper);
    }
}
