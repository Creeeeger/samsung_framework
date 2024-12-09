package com.sec.internal.ims.cmstore.omanetapi.nc;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
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
import com.sec.internal.omanetapi.nc.IndividualNotificationChannelLifetime;
import com.sec.internal.omanetapi.nc.data.McsNotificationChannelLifetime;
import java.io.IOException;

/* loaded from: classes.dex */
public class McsUpdateNotificationChannelLifetime extends IndividualNotificationChannelLifetime {
    private String TAG;
    private final Context mContext;
    private final IControllerCommonInterface mControllerInterface;
    private final IHttpAPICommonInterface mHttpInterface;
    private final IAPICallFlowListener mIAPICallFlowListener;
    private final int mPhoneId;

    public McsUpdateNotificationChannelLifetime(IAPICallFlowListener iAPICallFlowListener, final IControllerCommonInterface iControllerCommonInterface, String str, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getPrerenceManager().getOasisServerRoot(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getPrerenceManager().getUserTelCtn(), str, messageStoreClient);
        this.TAG = McsUpdateNotificationChannelLifetime.class.getSimpleName();
        int clientID = messageStoreClient.getClientID();
        this.mPhoneId = clientID;
        this.TAG += "[" + clientID + "]";
        Context context = messageStoreClient.getContext();
        this.mContext = context;
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mControllerInterface = iControllerCommonInterface;
        this.mHttpInterface = this;
        McsNotificationChannelLifetime mcsNotificationChannelLifetime = new McsNotificationChannelLifetime();
        mcsNotificationChannelLifetime.channelLifetime = CmsUtil.getIntGlobalSettings(context, clientID, GlobalSettingsConstants.CMS.CMS_CHANNEL_LIFETIME, 86400);
        IMSLog.i(this.TAG, "notificationChannelLifetime.channelLifetime: " + mcsNotificationChannelLifetime.channelLifetime);
        initMcsCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        initPutRequest(mcsNotificationChannelLifetime, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nc.McsUpdateNotificationChannelLifetime.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                McsNotificationChannelLifetime mcsNotificationChannelLifetime2;
                int statusCode = httpResponseParams.getStatusCode();
                IMSLog.i(McsUpdateNotificationChannelLifetime.this.TAG, "onComplete: statusCode: " + statusCode);
                EventLogHelper.add(McsUpdateNotificationChannelLifetime.this.TAG, McsUpdateNotificationChannelLifetime.this.mPhoneId, "onComplete: statusCode: " + statusCode);
                if (statusCode == 200) {
                    ((BaseNCRequest) McsUpdateNotificationChannelLifetime.this).mStoreClient.getMcsRetryMapAdapter().remove(McsUpdateNotificationChannelLifetime.this.mHttpInterface);
                    String dataString = httpResponseParams.getDataString();
                    if (((BaseNCRequest) McsUpdateNotificationChannelLifetime.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted()) {
                        String decrypt = ((BaseNCRequest) McsUpdateNotificationChannelLifetime.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, true);
                        IMSLog.s(McsUpdateNotificationChannelLifetime.this.TAG, "onComplete: decryptedData: " + decrypt);
                        if (TextUtils.isEmpty(decrypt)) {
                            EventLogHelper.add(McsUpdateNotificationChannelLifetime.this.TAG, McsUpdateNotificationChannelLifetime.this.mPhoneId, "decryptedData is empty");
                        } else {
                            dataString = decrypt;
                        }
                    }
                    try {
                        McsOMAApiResponseParam mcsOMAApiResponseParam = (McsOMAApiResponseParam) new Gson().fromJson(dataString, McsOMAApiResponseParam.class);
                        if (mcsOMAApiResponseParam == null || (mcsNotificationChannelLifetime2 = mcsOMAApiResponseParam.notificationChannelLifetime) == null) {
                            IMSLog.i(McsUpdateNotificationChannelLifetime.this.TAG, "onComplete: there is no notificationChannel");
                            return;
                        }
                        int i = mcsNotificationChannelLifetime2.channelLifetime;
                        int intGlobalSettings = CmsUtil.getIntGlobalSettings(McsUpdateNotificationChannelLifetime.this.mContext, McsUpdateNotificationChannelLifetime.this.mPhoneId, GlobalSettingsConstants.CMS.CMS_CHANNEL_EXPIRATION, 1800);
                        int i2 = i - intGlobalSettings;
                        if (i2 <= 0) {
                            i2 = i;
                        }
                        IMSLog.i(McsUpdateNotificationChannelLifetime.this.TAG, "onComplete: channelLifetime: " + i + " channelExpiration: " + intGlobalSettings + " delay: " + i2);
                        CloudMessagePreferenceManager prerenceManager = ((BaseNCRequest) McsUpdateNotificationChannelLifetime.this).mStoreClient.getPrerenceManager();
                        prerenceManager.saveOMAChannelCreateTime(System.currentTimeMillis());
                        prerenceManager.saveOMAChannelLifeTime((long) i);
                        McsUpdateNotificationChannelLifetime.this.mControllerInterface.updateDelay(OMASyncEventType.CHECK_NOTIFICATION_CHANNEL_LIFETIME.getId(), ((long) i2) * 1000);
                        boolean z = i > 0;
                        McsUpdateNotificationChannelLifetime.this.mIAPICallFlowListener.onGoToEvent(OMASyncEventType.UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED.getId(), Boolean.valueOf(z));
                        EventLogHelper.add(McsUpdateNotificationChannelLifetime.this.TAG, McsUpdateNotificationChannelLifetime.this.mPhoneId, "NotificationChannel lifetime updated: " + z);
                        IMSLog.c(LogClass.MCS_NC_LIFETIME_UPDATED, McsUpdateNotificationChannelLifetime.this.mPhoneId + ",NC:LT_UP," + z);
                        return;
                    } catch (JsonSyntaxException e) {
                        IMSLog.i(McsUpdateNotificationChannelLifetime.this.TAG, "onComplete: Exception: " + e.getMessage());
                        return;
                    }
                }
                if (McsUpdateNotificationChannelLifetime.this.isErrorCodeSupported(statusCode)) {
                    if (statusCode != 404) {
                        ((BaseNCRequest) McsUpdateNotificationChannelLifetime.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().handleNCCommonError(McsUpdateNotificationChannelLifetime.this.mIAPICallFlowListener, McsUpdateNotificationChannelLifetime.this.mHttpInterface, statusCode, McsUpdateNotificationChannelLifetime.this.checkRetryAfter(httpResponseParams, ((BaseNCRequest) McsUpdateNotificationChannelLifetime.this).mStoreClient.getMcsRetryMapAdapter().getRetryCount(McsUpdateNotificationChannelLifetime.this.mHttpInterface.getClass().getSimpleName())));
                    } else {
                        iControllerCommonInterface.start();
                    }
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(McsUpdateNotificationChannelLifetime.this.TAG, " onFail: exception " + iOException.getMessage());
                EventLogHelper.add(McsUpdateNotificationChannelLifetime.this.TAG, McsUpdateNotificationChannelLifetime.this.mPhoneId, "onFail: IOException");
                McsUpdateNotificationChannelLifetime.this.mIAPICallFlowListener.onFailedCall(McsUpdateNotificationChannelLifetime.this.mHttpInterface, String.valueOf(802));
            }
        });
    }
}
