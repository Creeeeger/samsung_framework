package com.sec.internal.ims.cmstore.omanetapi.nc;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.McsOMAApiResponseParam;
import com.sec.internal.omanetapi.nc.BaseNCRequest;
import com.sec.internal.omanetapi.nc.NotificationChannels;
import com.sec.internal.omanetapi.nc.data.McsChannelData;
import com.sec.internal.omanetapi.nc.data.McsLargeDataPolling;
import com.sec.internal.omanetapi.nc.data.McsNotificationChannel;
import java.io.IOException;

/* loaded from: classes.dex */
public class McsCreateNotificationChannel extends NotificationChannels {
    private String TAG;
    private final Context mContext;
    private final IControllerCommonInterface mControllerInterface;
    private final IHttpAPICommonInterface mHttpInterface;
    private final IAPICallFlowListener mIAPICallFlowListener;
    private final int mPhoneId;

    public McsCreateNotificationChannel(IAPICallFlowListener iAPICallFlowListener, IControllerCommonInterface iControllerCommonInterface, String str, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getPrerenceManager().getOasisServerRoot(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getPrerenceManager().getUserTelCtn(), messageStoreClient);
        this.TAG = McsCreateNotificationChannel.class.getSimpleName();
        int clientID = messageStoreClient.getClientID();
        this.mPhoneId = clientID;
        this.TAG += "[" + clientID + "]";
        Context context = messageStoreClient.getContext();
        this.mContext = context;
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mControllerInterface = iControllerCommonInterface;
        this.mHttpInterface = this;
        McsNotificationChannel mcsNotificationChannel = new McsNotificationChannel();
        mcsNotificationChannel.channelType = CmsUtil.getStringGlobalSettings(context, clientID, GlobalSettingsConstants.CMS.CMS_CHANNEL_TYPE, "NativeChannel");
        McsChannelData mcsChannelData = new McsChannelData();
        mcsChannelData.channelSubType = CmsUtil.getStringGlobalSettings(context, clientID, GlobalSettingsConstants.CMS.CMS_CHANNEL_SUB_TYPE, "FCM");
        mcsChannelData.channelSubTypeVersion = CmsUtil.getStringGlobalSettings(context, clientID, GlobalSettingsConstants.CMS.CMS_CHANNEL_SUB_TYPE_VERSION, "1.0");
        mcsChannelData.maxNotifications = CmsUtil.getIntGlobalSettings(context, clientID, GlobalSettingsConstants.CMS.CMS_MAX_NOTIFICATIONS, 3);
        mcsChannelData.registrationToken = str;
        McsLargeDataPolling mcsLargeDataPolling = new McsLargeDataPolling();
        mcsLargeDataPolling.maxPollingNotifications = CmsUtil.getIntGlobalSettings(context, clientID, GlobalSettingsConstants.CMS.CMS_MAX_POLLING_NOTIFICATIONS, 20);
        mcsLargeDataPolling.pollingEnabled = CmsUtil.getBooleanGlobalSettings(context, clientID, GlobalSettingsConstants.CMS.CMS_POLLING_ENABLED, true);
        mcsChannelData.largeDataPolling = mcsLargeDataPolling;
        mcsNotificationChannel.channelData = mcsChannelData;
        mcsNotificationChannel.channelLifetime = CmsUtil.getIntGlobalSettings(context, clientID, GlobalSettingsConstants.CMS.CMS_CHANNEL_LIFETIME, 86400);
        mcsNotificationChannel.toString();
        initMcsCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        initPostRequest(mcsNotificationChannel, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nc.McsCreateNotificationChannel.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                McsNotificationChannel mcsNotificationChannel2;
                int statusCode = httpResponseParams.getStatusCode();
                IMSLog.i(McsCreateNotificationChannel.this.TAG, "onComplete: statusCode: " + statusCode);
                EventLogHelper.add(McsCreateNotificationChannel.this.TAG, McsCreateNotificationChannel.this.mPhoneId, "onComplete: statusCode: " + statusCode);
                if (statusCode == 200 || statusCode == 201) {
                    ((BaseNCRequest) McsCreateNotificationChannel.this).mStoreClient.getMcsRetryMapAdapter().remove(McsCreateNotificationChannel.this.mHttpInterface);
                    String dataString = httpResponseParams.getDataString();
                    if (((BaseNCRequest) McsCreateNotificationChannel.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted()) {
                        String decrypt = ((BaseNCRequest) McsCreateNotificationChannel.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, true);
                        IMSLog.s(McsCreateNotificationChannel.this.TAG, "onComplete: decryptedData: " + decrypt);
                        if (TextUtils.isEmpty(decrypt)) {
                            EventLogHelper.add(McsCreateNotificationChannel.this.TAG, McsCreateNotificationChannel.this.mPhoneId, "decryptedData is empty");
                        } else {
                            dataString = decrypt;
                        }
                    }
                    try {
                        McsOMAApiResponseParam mcsOMAApiResponseParam = (McsOMAApiResponseParam) new Gson().fromJson(dataString, McsOMAApiResponseParam.class);
                        if (mcsOMAApiResponseParam != null && (mcsNotificationChannel2 = mcsOMAApiResponseParam.notificationChannel) != null) {
                            CloudMessagePreferenceManager prerenceManager = ((BaseNCRequest) McsCreateNotificationChannel.this).mStoreClient.getPrerenceManager();
                            String str2 = mcsNotificationChannel2.resourceURL;
                            if (str2 == null) {
                                str2 = "";
                            }
                            prerenceManager.saveOMAChannelResURL(str2);
                            String str3 = mcsNotificationChannel2.callbackURL;
                            String str4 = str3 != null ? str3 : "";
                            IMSLog.s(McsCreateNotificationChannel.this.TAG, "onComplete: callbackUrl: " + str4 + " resUrl:" + str2);
                            prerenceManager.saveOMACallBackURL(str4);
                            int i = mcsNotificationChannel2.channelLifetime;
                            int intGlobalSettings = CmsUtil.getIntGlobalSettings(McsCreateNotificationChannel.this.mContext, McsCreateNotificationChannel.this.mPhoneId, GlobalSettingsConstants.CMS.CMS_CHANNEL_EXPIRATION, 1800);
                            int i2 = i - intGlobalSettings;
                            if (i2 <= 0) {
                                i2 = i;
                            }
                            IMSLog.i(McsCreateNotificationChannel.this.TAG, "onComplete: channelLifetime: " + i + " channelExpiration: " + intGlobalSettings + " delay: " + i2);
                            prerenceManager.saveOMAChannelLifeTime((long) i);
                            prerenceManager.saveOMAChannelCreateTime(System.currentTimeMillis());
                            prerenceManager.clearOMASubscriptionChannelDuration();
                            prerenceManager.clearOMASubscriptionTime();
                            McsCreateNotificationChannel.this.mControllerInterface.updateDelay(OMASyncEventType.CHECK_NOTIFICATION_CHANNEL_LIFETIME.getId(), ((long) i2) * 1000);
                            McsCreateNotificationChannel.this.mIAPICallFlowListener.onSuccessfulEvent(McsCreateNotificationChannel.this.mHttpInterface, OMASyncEventType.CREATE_NOTIFICATION_CHANNEL_FINISHED.getId(), null);
                            EventLogHelper.add(McsCreateNotificationChannel.this.TAG, McsCreateNotificationChannel.this.mPhoneId, "NotificationChannel created");
                            IMSLog.c(LogClass.MCS_NC_CREATED, McsCreateNotificationChannel.this.mPhoneId + ",NC:CRT");
                            return;
                        }
                        IMSLog.i(McsCreateNotificationChannel.this.TAG, "onComplete: there is no notificationChannel");
                        return;
                    } catch (Exception e) {
                        IMSLog.i(McsCreateNotificationChannel.this.TAG, "onComplete: Exception: " + e.getMessage());
                        return;
                    }
                }
                if (McsCreateNotificationChannel.this.isErrorCodeSupported(statusCode)) {
                    ((BaseNCRequest) McsCreateNotificationChannel.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().handleNCCommonError(McsCreateNotificationChannel.this.mIAPICallFlowListener, McsCreateNotificationChannel.this.mHttpInterface, statusCode, McsCreateNotificationChannel.this.checkRetryAfter(httpResponseParams, ((BaseNCRequest) McsCreateNotificationChannel.this).mStoreClient.getMcsRetryMapAdapter().getRetryCount(McsCreateNotificationChannel.this.mHttpInterface.getClass().getSimpleName())));
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(McsCreateNotificationChannel.this.TAG, " onFail: exception " + iOException.getMessage());
                EventLogHelper.add(McsCreateNotificationChannel.this.TAG, McsCreateNotificationChannel.this.mPhoneId, "onFail: IOException");
                McsCreateNotificationChannel.this.mIAPICallFlowListener.onFailedCall(McsCreateNotificationChannel.this.mHttpInterface, String.valueOf(802));
            }
        });
    }
}
