package com.sec.internal.ims.cmstore.omanetapi.nc;

import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nc.IndividualNotificationChannel;
import com.sec.internal.omanetapi.nc.data.NotificationChannel;
import java.io.IOException;

/* loaded from: classes.dex */
public class CloudMessageGetIndividualNotificationChannelInfo extends IndividualNotificationChannel {
    private static final long serialVersionUID = 8158555957984259234L;
    public String TAG;
    private final transient IAPICallFlowListener mIAPICallFlowListener;
    private final transient IControllerCommonInterface mIControllerCommonInterface;

    public CloudMessageGetIndividualNotificationChannelInfo(final IAPICallFlowListener iAPICallFlowListener, IControllerCommonInterface iControllerCommonInterface, String str, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNcHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getPrerenceManager().getUserTelCtn(), str, messageStoreClient);
        this.TAG = CloudMessageGetIndividualNotificationChannelInfo.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mIControllerCommonInterface = iControllerCommonInterface;
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(this.mStoreClient.getPrerenceManager().getUserTelCtn()));
        initGetRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageGetIndividualNotificationChannelInfo.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                NotificationChannel notificationChannel;
                if (httpResponseParams.getStatusCode() == 206) {
                    httpResponseParams.setStatusCode(200);
                }
                if (httpResponseParams.getStatusCode() == 200) {
                    try {
                        OMAApiResponseParam oMAApiResponseParam = (OMAApiResponseParam) new Gson().fromJson(httpResponseParams.getDataString(), OMAApiResponseParam.class);
                        if (oMAApiResponseParam == null || (notificationChannel = oMAApiResponseParam.notificationChannel) == null) {
                            Log.d(CloudMessageGetIndividualNotificationChannelInfo.this.TAG, "notification == null");
                            CloudMessageGetIndividualNotificationChannelInfo.this.mIAPICallFlowListener.onFailedCall(this);
                            return;
                        }
                        long j = notificationChannel.channelLifetime;
                        Log.d(CloudMessageGetIndividualNotificationChannelInfo.this.TAG, "channelLifeTime=" + j);
                        if (ATTGlobalVariables.isGcmReplacePolling()) {
                            CloudMessageGetIndividualNotificationChannelInfo.this.mIControllerCommonInterface.updateDelay(OMASyncEventType.UPDATE_NOTIFICATION_CHANNEL_LIFETIME.getId(), (j - 900) * 1000);
                        }
                    } catch (Exception e) {
                        Log.e(CloudMessageGetIndividualNotificationChannelInfo.this.TAG, "exception occurred " + e.getMessage());
                        e.printStackTrace();
                        CloudMessageGetIndividualNotificationChannelInfo.this.mIAPICallFlowListener.onFailedCall(this);
                        return;
                    }
                }
                if (CloudMessageGetIndividualNotificationChannelInfo.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, null, null, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onFailedCall(CloudMessageGetIndividualNotificationChannelInfo.this);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageGetIndividualNotificationChannelInfo.this.TAG, "Http request onFail: " + iOException.getMessage());
                CloudMessageGetIndividualNotificationChannelInfo.this.mIAPICallFlowListener.onFailedCall(this);
            }
        });
    }

    @Override // com.sec.internal.omanetapi.nc.BaseNCRequest, com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient) {
        String oMAChannelResURL = messageStoreClient.getPrerenceManager().getOMAChannelResURL();
        if (TextUtils.isEmpty(oMAChannelResURL)) {
            return null;
        }
        return new CloudMessageGetIndividualNotificationChannelInfo(this.mIAPICallFlowListener, this.mIControllerCommonInterface, oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf(47) + 1), messageStoreClient);
    }
}
