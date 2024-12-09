package com.sec.internal.ims.cmstore.omanetapi.nc;

import android.text.TextUtils;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nc.BaseNCRequest;
import com.sec.internal.omanetapi.nc.IndividualNotificationChannel;
import java.io.IOException;

/* loaded from: classes.dex */
public class McsDeleteNotificationChannel extends IndividualNotificationChannel {
    private String TAG;
    private final IHttpAPICommonInterface mHttpInterface;
    private final IAPICallFlowListener mIAPICallFlowListener;

    public McsDeleteNotificationChannel(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, final String str, final boolean z, String str2, String str3) {
        super(messageStoreClient.getPrerenceManager().getOasisServerRoot(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getPrerenceManager().getUserTelCtn(), str, messageStoreClient);
        this.TAG = McsDeleteNotificationChannel.class.getSimpleName();
        ((BaseNCRequest) this).mPhoneId = messageStoreClient.getClientID();
        this.TAG += "[" + ((BaseNCRequest) this).mPhoneId + "]";
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mHttpInterface = this;
        if (TextUtils.isEmpty(messageStoreClient.getPrerenceManager().getUserTelCtn())) {
            this.mBaseUrl = str3;
            IMSLog.i(this.TAG, "mBaseUrl from OMA resUrl:" + IMSLog.numberChecker(this.mBaseUrl));
        }
        initMcsCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        initDeleteRequest(str2);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nc.McsDeleteNotificationChannel.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                int statusCode = httpResponseParams.getStatusCode();
                IMSLog.i(McsDeleteNotificationChannel.this.TAG, "onComplete: statusCode: " + statusCode);
                EventLogHelper.add(McsDeleteNotificationChannel.this.TAG, ((BaseNCRequest) McsDeleteNotificationChannel.this).mPhoneId, "onComplete: statusCode: " + statusCode + ", isNeedRecreateChannel: " + z);
                if (statusCode == 200 || statusCode == 204) {
                    ((BaseNCRequest) McsDeleteNotificationChannel.this).mStoreClient.getMcsRetryMapAdapter().remove(McsDeleteNotificationChannel.this.mHttpInterface);
                    McsDeleteNotificationChannel.this.updateChannelData(str);
                    if (z) {
                        IMSLog.i(McsDeleteNotificationChannel.this.TAG, "onComplete: notificationChannel is deleted: try to create notificationChannel");
                        McsDeleteNotificationChannel.this.mIAPICallFlowListener.onSuccessfulEvent(McsDeleteNotificationChannel.this.mHttpInterface, OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId(), null);
                    } else {
                        IMSLog.i(McsDeleteNotificationChannel.this.TAG, "onComplete: notificationChannel is deleted");
                        McsDeleteNotificationChannel.this.mIAPICallFlowListener.onSuccessfulCall(McsDeleteNotificationChannel.this.mHttpInterface);
                    }
                    IMSLog.c(LogClass.MCS_NC_DELETED, ((BaseNCRequest) McsDeleteNotificationChannel.this).mPhoneId + ",NC:DEL");
                    return;
                }
                if (McsDeleteNotificationChannel.this.isErrorCodeSupported(statusCode)) {
                    ((BaseNCRequest) McsDeleteNotificationChannel.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().handleNCCommonError(McsDeleteNotificationChannel.this.mIAPICallFlowListener, McsDeleteNotificationChannel.this.mHttpInterface, statusCode, McsDeleteNotificationChannel.this.checkRetryAfter(httpResponseParams, ((BaseNCRequest) McsDeleteNotificationChannel.this).mStoreClient.getMcsRetryMapAdapter().getRetryCount(McsDeleteNotificationChannel.this.mHttpInterface.getClass().getSimpleName())));
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(McsDeleteNotificationChannel.this.TAG, " onFail: exception " + iOException.getMessage());
                EventLogHelper.add(McsDeleteNotificationChannel.this.TAG, ((BaseNCRequest) McsDeleteNotificationChannel.this).mPhoneId, "onFail: IOException");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChannelData(String str) {
        CloudMessagePreferenceManager prerenceManager = this.mStoreClient.getPrerenceManager();
        String oMAChannelResURL = prerenceManager.getOMAChannelResURL();
        IMSLog.s(this.TAG, "updateChannelData: resUrl: " + oMAChannelResURL);
        if (TextUtils.isEmpty(oMAChannelResURL)) {
            return;
        }
        String substring = oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf("/") + 1);
        IMSLog.s(this.TAG, "updateChannelData: channelId: " + str + " currentChannelId: " + substring);
        if (TextUtils.isEmpty(str) || !str.equalsIgnoreCase(substring)) {
            return;
        }
        prerenceManager.saveOMAChannelResURL("");
        prerenceManager.saveOMACallBackURL("");
        prerenceManager.saveOMAChannelLifeTime(0L);
        prerenceManager.saveOMAChannelCreateTime(0L);
        prerenceManager.clearOMASubscriptionChannelDuration();
        prerenceManager.clearOMASubscriptionTime();
    }
}
