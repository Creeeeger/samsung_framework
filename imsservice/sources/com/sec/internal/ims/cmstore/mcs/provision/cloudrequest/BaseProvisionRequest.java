package com.sec.internal.ims.cmstore.mcs.provision.cloudrequest;

import android.os.Build;
import android.text.TextUtils;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.ScheduleConstant;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.core.RegistrationEvents;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper;
import com.sec.internal.log.IMSLog;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BaseProvisionRequest extends HttpRequestParams implements IHttpAPICommonInterface {
    private static final long serialVersionUID = 1;
    protected final transient CookieJar mCookieJar;
    protected transient IAPICallFlowListener mFlowListener;
    protected IHttpAPICommonInterface mHttpInterface;
    private final int mPhoneId;
    protected transient MessageStoreClient mStoreClient;
    public String TAG = BaseProvisionRequest.class.getSimpleName();
    protected Map<String, String> mMcsHeaderMap = new LinkedHashMap();

    @Override // com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(SyncMsgType syncMsgType, IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public void updateServerRoot(String str) {
    }

    public BaseProvisionRequest(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient) {
        this.mFlowListener = iAPICallFlowListener;
        this.mStoreClient = messageStoreClient;
        this.mCookieJar = messageStoreClient.getHttpController().getCookieJar();
        this.mPhoneId = messageStoreClient.getClientID();
        setFollowRedirects(false);
    }

    protected void goSuccessfulCall(Object obj) {
        this.mFlowListener.onSuccessfulCall(this, obj);
    }

    protected void goFailedCall(int i) {
        this.mFlowListener.onFailedCall(this, i);
    }

    public void setCommonRequestHeaders(String str, String str2) {
        if (str == null || str.isEmpty()) {
            str = "application/json";
        }
        this.mMcsHeaderMap.put("Authorization", str2);
        try {
            String replace = this.mCookieJar.loadForRequest(HttpUrl.get(new URI(getUrl()))).toString().replace("[", "").replace("]", "");
            if (!TextUtils.isEmpty(replace)) {
                this.mMcsHeaderMap.put(HttpController.HEADER_COOKIE, replace);
            }
        } catch (URISyntaxException e) {
            IMSLog.e(this.TAG, this.mPhoneId, e.getMessage());
        }
        this.mMcsHeaderMap.put("Content-Type", str);
        this.mMcsHeaderMap.put(McsConstants.CommonHttpHeaders.DEVICE_NAME, Build.MODEL);
        this.mMcsHeaderMap.put(McsConstants.CommonHttpHeaders.DEVICE_ID, this.mStoreClient.getPrerenceManager().getDeviceId());
        this.mMcsHeaderMap.put(McsConstants.CommonHttpHeaders.FIRMWARE_VERSION, Build.VERSION.INCREMENTAL);
        this.mMcsHeaderMap.put(McsConstants.CommonHttpHeaders.CLIENT_VERSION, this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getClientVersion() + "/" + CmsUtil.getSmAppVersion(this.mStoreClient.getContext()));
        this.mMcsHeaderMap.put(McsConstants.CommonHttpHeaders.DEVICE_TYPE, this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getDeviceType());
        this.mMcsHeaderMap.put(McsConstants.CommonHttpHeaders.OS_VERSION, McsConstants.DeviceInfoValue.OS_VERSION);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted()) {
            this.mMcsHeaderMap.put(McsConstants.CommonHttpHeaders.OASIS_ENCRYPT, CloudMessageProviderContract.JsonData.TRUE);
        }
        setHeaders(this.mMcsHeaderMap);
    }

    public boolean isErrorCodeSupported(int i) {
        boolean z = i == 429 || i / 100 == 5;
        IMSLog.i(this.TAG, this.mPhoneId, "isErrorCodeSupported: " + z);
        return z;
    }

    protected int checkRetryAfter(HttpResponseParams httpResponseParams, int i) {
        List<String> list;
        IMSLog.i(this.TAG, this.mPhoneId, "checkRetryAfter retryCount " + i);
        Map<String, List<String>> headers = httpResponseParams.getHeaders();
        if (headers == null || !headers.containsKey(HttpRequest.HEADER_RETRY_AFTER) || (list = headers.get(HttpRequest.HEADER_RETRY_AFTER)) == null || list.size() <= 0) {
            if (i == 0) {
                return 25000;
            }
            if (i == 1) {
                return 125000;
            }
            if (i != 2) {
                return ScheduleConstant.UPDATE_SUBSCRIPTION_DELAY_TIME;
            }
            return 625000;
        }
        String str = list.get(0);
        IMSLog.i(this.TAG, this.mPhoneId, "retryAfter: " + str + "seconds");
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public void handleMessageIdFromSpecificException(String str) {
        int i;
        boolean isEmpty = str.isEmpty();
        int i2 = RegistrationEvents.EVENT_DISCONNECT_PDN_BY_VOLTE_DISABLED;
        if (!isEmpty) {
            try {
                JSONObject optJSONObject = new JSONObject(str).optJSONObject(McsConstants.Auth.REQUEST_ERROR);
                if (optJSONObject == null) {
                    goFailedCall(RegistrationEvents.EVENT_DISCONNECT_PDN_BY_VOLTE_DISABLED);
                    return;
                }
                String string = optJSONObject.getJSONObject(McsConstants.Auth.SERVICE_EXCEPTION).getString("messageId");
                IMSLog.i(this.TAG, this.mPhoneId, "messageId: " + string);
                if (TextUtils.equals(McsConstants.ServieException.MESSAGE_ID_SVC_4001, string)) {
                    i = 903;
                } else if (TextUtils.equals(McsConstants.ServieException.MESSAGE_ID_SVC_4002, string)) {
                    i = 901;
                } else if (TextUtils.equals(McsConstants.ServieException.MESSAGE_ID_SVC_4003, string)) {
                    i = 902;
                }
                i2 = i;
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        goFailedCall(i2);
    }
}
