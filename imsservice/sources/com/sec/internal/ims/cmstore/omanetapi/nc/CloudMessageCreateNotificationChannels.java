package com.sec.internal.ims.cmstore.omanetapi.nc;

import android.text.TextUtils;
import android.util.Log;
import com.google.gson.GsonBuilder;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.utils.OMAGlobalVariables;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.cmstore.omanetapi.nms.data.GsonInterfaceAdapter;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nc.BaseNCRequest;
import com.sec.internal.omanetapi.nc.NotificationChannels;
import com.sec.internal.omanetapi.nc.data.ChannelData;
import com.sec.internal.omanetapi.nc.data.ChannelType;
import com.sec.internal.omanetapi.nc.data.GcmChannelData;
import com.sec.internal.omanetapi.nc.data.LongPollingData;
import com.sec.internal.omanetapi.nc.data.NotificationChannel;
import java.io.IOException;
import java.net.URL;

/* loaded from: classes.dex */
public class CloudMessageCreateNotificationChannels extends NotificationChannels {
    private static final long serialVersionUID = 3299934859221120896L;
    private String TAG;
    private final transient IAPICallFlowListener mIAPICallFlowListener;
    private final transient IControllerCommonInterface mIControllerCommonInterface;

    public CloudMessageCreateNotificationChannels(final IAPICallFlowListener iAPICallFlowListener, IControllerCommonInterface iControllerCommonInterface, final boolean z, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNcHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getPrerenceManager().getUserTelCtn(), messageStoreClient);
        this.TAG = CloudMessageCreateNotificationChannels.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mIControllerCommonInterface = iControllerCommonInterface;
        NotificationChannel notificationChannel = new NotificationChannel();
        notificationChannel.clientCorrelator = "";
        notificationChannel.applicationTag = "";
        notificationChannel.channelLifetime = 86400;
        if (ATTGlobalVariables.isGcmReplacePolling()) {
            notificationChannel.channelType = ChannelType.NativeChannel;
            GcmChannelData gcmChannelData = new GcmChannelData();
            gcmChannelData.channelSubType = OMAGlobalVariables.CHANNEL_TYPE_GCM;
            gcmChannelData.channelSubTypeVersion = "1.0";
            gcmChannelData.registrationToken = this.mStoreClient.getPrerenceManager().getGcmTokenFromVsim();
            gcmChannelData.maxNotifications = 1;
            notificationChannel.channelData = gcmChannelData;
        } else {
            notificationChannel.channelType = ChannelType.LongPolling;
            LongPollingData longPollingData = new LongPollingData();
            longPollingData.maxNotifications = 1;
            notificationChannel.channelData = longPollingData;
        }
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(this.mStoreClient.getPrerenceManager().getUserTelCtn()));
        initPostRequest(notificationChannel, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageCreateNotificationChannels.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                NotificationChannel notificationChannel2;
                if (httpResponseParams.getStatusCode() == 201) {
                    GsonBuilder gsonBuilder = new GsonBuilder();
                    gsonBuilder.registerTypeAdapter(ChannelData.class, new GsonInterfaceAdapter(LongPollingData.class));
                    try {
                        OMAApiResponseParam oMAApiResponseParam = (OMAApiResponseParam) gsonBuilder.create().fromJson(httpResponseParams.getDataString(), OMAApiResponseParam.class);
                        if (oMAApiResponseParam != null && (notificationChannel2 = oMAApiResponseParam.notificationChannel) != null) {
                            CloudMessagePreferenceManager prerenceManager = ((BaseNCRequest) CloudMessageCreateNotificationChannels.this).mStoreClient.getPrerenceManager();
                            URL url = notificationChannel2.resourceURL;
                            String url2 = url == null ? "" : url.toString();
                            if (!ATTGlobalVariables.isGcmReplacePolling()) {
                                URL url3 = ((LongPollingData) notificationChannel2.channelData).channelURL;
                                if (url3 == null) {
                                    CloudMessageCreateNotificationChannels.this.mIAPICallFlowListener.onFailedCall(this);
                                    return;
                                }
                                prerenceManager.saveOMAChannelURL(url3.toString());
                            }
                            long j = notificationChannel2.channelLifetime;
                            if (ATTGlobalVariables.isGcmReplacePolling()) {
                                CloudMessageCreateNotificationChannels.this.mIControllerCommonInterface.updateDelay(OMASyncEventType.UPDATE_NOTIFICATION_CHANNEL_LIFETIME.getId(), (j - 900) * 1000);
                            }
                            Log.i(CloudMessageCreateNotificationChannels.this.TAG, "channelLifeTime=" + j + " callbackURL: " + IMSLog.checker(notificationChannel2.callbackURL) + " isNeedDeleteSubscription: " + z);
                            String str = notificationChannel2.callbackURL;
                            if (str != null && !str.equals(prerenceManager.getOMACallBackURL())) {
                                if (z && !TextUtils.isEmpty(prerenceManager.getOMASubscriptionResUrl())) {
                                    CloudMessageCreateNotificationChannels.this.mIAPICallFlowListener.onGoToEvent(OMASyncEventType.DELETE_SUBCRIPTION_CHANNEL.getId(), prerenceManager.getOMASubscriptionResUrl());
                                }
                                ((BaseNCRequest) CloudMessageCreateNotificationChannels.this).mStoreClient.getPrerenceManager().saveOMASubscriptionTime(0L);
                                ((BaseNCRequest) CloudMessageCreateNotificationChannels.this).mStoreClient.getPrerenceManager().saveOMASubscriptionChannelDuration(0);
                            }
                            prerenceManager.saveOMAChannelResURL(url2);
                            String str2 = notificationChannel2.callbackURL;
                            if (str2 != null) {
                                prerenceManager.saveOMACallBackURL(str2.toString());
                            }
                            prerenceManager.saveOMAChannelCreateTime(System.currentTimeMillis());
                            prerenceManager.saveOMAChannelLifeTime(j);
                            prerenceManager.clearOMASubscriptionChannelDuration();
                            prerenceManager.clearOMASubscriptionTime();
                            CloudMessageCreateNotificationChannels.this.mIControllerCommonInterface.update(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL_FINISHED.getId());
                        } else {
                            CloudMessageCreateNotificationChannels.this.mIAPICallFlowListener.onFailedCall(this);
                            return;
                        }
                    } catch (Exception e) {
                        Log.e(CloudMessageCreateNotificationChannels.this.TAG, "exception occurred " + e.getMessage());
                        e.printStackTrace();
                        CloudMessageCreateNotificationChannels.this.mIAPICallFlowListener.onFailedCall(this);
                        return;
                    }
                }
                if (CloudMessageCreateNotificationChannels.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, null, null, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onFailedCall(CloudMessageCreateNotificationChannels.this);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageCreateNotificationChannels.this.TAG, "Http request onFail: " + iOException.getMessage());
                CloudMessageCreateNotificationChannels.this.mIAPICallFlowListener.onFailedCall(this);
            }
        });
    }

    @Override // com.sec.internal.omanetapi.nc.BaseNCRequest, com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient) {
        return new CloudMessageCreateNotificationChannels(this.mIAPICallFlowListener, this.mIControllerCommonInterface, true, messageStoreClient);
    }
}
