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
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.McsOMAApiResponseParam;
import com.sec.internal.omanetapi.nc.BaseNCRequest;
import com.sec.internal.omanetapi.nc.IndividualNotificationChannelLifetime;
import java.io.IOException;

/* loaded from: classes.dex */
public class McsGetNotificationChannelLifetime extends IndividualNotificationChannelLifetime {
    private String TAG;
    private final Context mContext;
    private final IHttpAPICommonInterface mHttpInterface;
    private final IAPICallFlowListener mIAPICallFlowListener;
    private final int mPhoneId;

    public McsGetNotificationChannelLifetime(IAPICallFlowListener iAPICallFlowListener, final IControllerCommonInterface iControllerCommonInterface, String str, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getPrerenceManager().getOasisServerRoot(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getPrerenceManager().getUserTelCtn(), str, messageStoreClient);
        this.TAG = McsGetNotificationChannelLifetime.class.getSimpleName();
        int clientID = messageStoreClient.getClientID();
        this.mPhoneId = clientID;
        this.TAG += "[" + clientID + "]";
        this.mContext = messageStoreClient.getContext();
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mHttpInterface = this;
        initMcsCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        initGetRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nc.McsGetNotificationChannelLifetime.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                int statusCode = httpResponseParams.getStatusCode();
                IMSLog.i(McsGetNotificationChannelLifetime.this.TAG, "onComplete: statusCode: " + statusCode);
                EventLogHelper.add(McsGetNotificationChannelLifetime.this.TAG, McsGetNotificationChannelLifetime.this.mPhoneId, "onComplete: statusCode: " + statusCode);
                if (statusCode == 200) {
                    ((BaseNCRequest) McsGetNotificationChannelLifetime.this).mStoreClient.getMcsRetryMapAdapter().remove(McsGetNotificationChannelLifetime.this.mHttpInterface);
                    String dataString = httpResponseParams.getDataString();
                    if (((BaseNCRequest) McsGetNotificationChannelLifetime.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted()) {
                        String decrypt = ((BaseNCRequest) McsGetNotificationChannelLifetime.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, true);
                        IMSLog.s(McsGetNotificationChannelLifetime.this.TAG, "onComplete: decryptedData: " + decrypt);
                        if (TextUtils.isEmpty(decrypt)) {
                            EventLogHelper.add(McsGetNotificationChannelLifetime.this.TAG, McsGetNotificationChannelLifetime.this.mPhoneId, "decryptedData is empty");
                        } else {
                            dataString = decrypt;
                        }
                    }
                    try {
                        McsOMAApiResponseParam mcsOMAApiResponseParam = (McsOMAApiResponseParam) new Gson().fromJson(dataString, McsOMAApiResponseParam.class);
                        if (mcsOMAApiResponseParam != null && mcsOMAApiResponseParam.notificationChannelLifetime != null) {
                            long oMAChannelCreateTime = ((BaseNCRequest) McsGetNotificationChannelLifetime.this).mStoreClient.getPrerenceManager().getOMAChannelCreateTime();
                            int i = mcsOMAApiResponseParam.notificationChannelLifetime.channelLifetime;
                            long currentTimeMillis = System.currentTimeMillis();
                            long j = (i + oMAChannelCreateTime) - currentTimeMillis;
                            int intGlobalSettings = CmsUtil.getIntGlobalSettings(McsGetNotificationChannelLifetime.this.mContext, McsGetNotificationChannelLifetime.this.mPhoneId, GlobalSettingsConstants.CMS.CMS_CHANNEL_EXPIRATION, 1800);
                            IMSLog.i(McsGetNotificationChannelLifetime.this.TAG, "onComplete: channelCreateTime: " + oMAChannelCreateTime + " channelLifetime: " + i + " currentTime: " + currentTimeMillis + " remainTime: " + j + " channelExpiration: " + intGlobalSettings);
                            if (j <= intGlobalSettings) {
                                IMSLog.i(McsGetNotificationChannelLifetime.this.TAG, "onComplete: send UPDATE_NOTIFICATION_CHANNEL_LIFETIME");
                                McsGetNotificationChannelLifetime.this.mIAPICallFlowListener.onSuccessfulEvent(McsGetNotificationChannelLifetime.this.mHttpInterface, OMASyncEventType.UPDATE_NOTIFICATION_CHANNEL_LIFETIME.getId(), null);
                                return;
                            }
                            return;
                        }
                        IMSLog.i(McsGetNotificationChannelLifetime.this.TAG, "onComplete: there is no notificationChannelLifetime");
                        return;
                    } catch (Exception e) {
                        IMSLog.i(McsGetNotificationChannelLifetime.this.TAG, "onComplete: Exception: " + e.getMessage());
                        return;
                    }
                }
                if (McsGetNotificationChannelLifetime.this.isErrorCodeSupported(statusCode)) {
                    if (statusCode != 404) {
                        ((BaseNCRequest) McsGetNotificationChannelLifetime.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().handleNCCommonError(McsGetNotificationChannelLifetime.this.mIAPICallFlowListener, McsGetNotificationChannelLifetime.this.mHttpInterface, statusCode, McsGetNotificationChannelLifetime.this.checkRetryAfter(httpResponseParams, ((BaseNCRequest) McsGetNotificationChannelLifetime.this).mStoreClient.getMcsRetryMapAdapter().getRetryCount(McsGetNotificationChannelLifetime.this.mHttpInterface.getClass().getSimpleName())));
                        return;
                    }
                    iControllerCommonInterface.start();
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(McsGetNotificationChannelLifetime.this.TAG, " onFail: exception " + iOException.getMessage());
                EventLogHelper.add(McsGetNotificationChannelLifetime.this.TAG, McsGetNotificationChannelLifetime.this.mPhoneId, "onFail: IOException");
                McsGetNotificationChannelLifetime.this.mIAPICallFlowListener.onFailedCall(McsGetNotificationChannelLifetime.this.mHttpInterface, String.valueOf(802));
            }
        });
    }
}
