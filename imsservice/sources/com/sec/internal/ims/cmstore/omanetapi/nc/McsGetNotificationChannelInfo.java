package com.sec.internal.ims.cmstore.omanetapi.nc;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.McsOMAApiResponseParam;
import com.sec.internal.omanetapi.nc.BaseNCRequest;
import com.sec.internal.omanetapi.nc.IndividualNotificationChannel;
import com.sec.internal.omanetapi.nc.data.ChannelDeleteData;
import com.sec.internal.omanetapi.nc.data.McsNotificationChannel;
import java.io.IOException;

/* loaded from: classes.dex */
public class McsGetNotificationChannelInfo extends IndividualNotificationChannel {
    private String TAG;
    private final IHttpAPICommonInterface mHttpInterface;
    private final IAPICallFlowListener mIAPICallFlowListener;
    private final int mPhoneId;

    public McsGetNotificationChannelInfo(IAPICallFlowListener iAPICallFlowListener, IControllerCommonInterface iControllerCommonInterface, String str, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getPrerenceManager().getOasisServerRoot(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getPrerenceManager().getUserTelCtn(), str, messageStoreClient);
        this.TAG = McsGetNotificationChannelInfo.class.getSimpleName();
        int clientID = messageStoreClient.getClientID();
        this.mPhoneId = clientID;
        this.TAG += "[" + clientID + "]";
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mHttpInterface = this;
        initMcsCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        initGetRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nc.McsGetNotificationChannelInfo.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                McsNotificationChannel mcsNotificationChannel;
                int statusCode = httpResponseParams.getStatusCode();
                IMSLog.i(McsGetNotificationChannelInfo.this.TAG, "onComplete: statusCode: " + statusCode);
                EventLogHelper.add(McsGetNotificationChannelInfo.this.TAG, McsGetNotificationChannelInfo.this.mPhoneId, "onComplete: statusCode: " + statusCode);
                if (statusCode == 200) {
                    ((BaseNCRequest) McsGetNotificationChannelInfo.this).mStoreClient.getMcsRetryMapAdapter().remove(McsGetNotificationChannelInfo.this.mHttpInterface);
                    String dataString = httpResponseParams.getDataString();
                    if (((BaseNCRequest) McsGetNotificationChannelInfo.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted()) {
                        String decrypt = ((BaseNCRequest) McsGetNotificationChannelInfo.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, true);
                        IMSLog.s(McsGetNotificationChannelInfo.this.TAG, "onComplete: decryptedData: " + decrypt);
                        if (TextUtils.isEmpty(decrypt)) {
                            EventLogHelper.add(McsGetNotificationChannelInfo.this.TAG, McsGetNotificationChannelInfo.this.mPhoneId, "decryptedData is empty");
                        } else {
                            dataString = decrypt;
                        }
                    }
                    try {
                        McsOMAApiResponseParam mcsOMAApiResponseParam = (McsOMAApiResponseParam) new Gson().fromJson(dataString, McsOMAApiResponseParam.class);
                        if (mcsOMAApiResponseParam == null || (mcsNotificationChannel = mcsOMAApiResponseParam.notificationChannel) == null) {
                            IMSLog.i(McsGetNotificationChannelInfo.this.TAG, "onComplete: there is no notificationChannel");
                            return;
                        }
                        String str2 = mcsNotificationChannel.resourceURL;
                        IMSLog.s(McsGetNotificationChannelInfo.this.TAG, "onComplete: notificationChannel resUrl: " + str2);
                        ChannelDeleteData channelDeleteData = new ChannelDeleteData();
                        channelDeleteData.channelUrl = str2;
                        channelDeleteData.isNeedRecreateChannel = false;
                        channelDeleteData.deleteReason = McsConstants.ChannelDeleteReason.NORMAL;
                        McsGetNotificationChannelInfo.this.mIAPICallFlowListener.onSuccessfulEvent(McsGetNotificationChannelInfo.this.mHttpInterface, OMASyncEventType.DELETE_NOTIFICATION_CHANNEL.getId(), channelDeleteData);
                        return;
                    } catch (JsonSyntaxException e) {
                        IMSLog.i(McsGetNotificationChannelInfo.this.TAG, "onComplete: Exception: " + e.getMessage());
                        return;
                    }
                }
                if (McsGetNotificationChannelInfo.this.isErrorCodeSupported(statusCode)) {
                    if (statusCode == 404) {
                        McsGetNotificationChannelInfo.this.mIAPICallFlowListener.onGoToEvent(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId(), null);
                    }
                    ((BaseNCRequest) McsGetNotificationChannelInfo.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().handleNCCommonError(McsGetNotificationChannelInfo.this.mIAPICallFlowListener, McsGetNotificationChannelInfo.this.mHttpInterface, statusCode, McsGetNotificationChannelInfo.this.checkRetryAfter(httpResponseParams, ((BaseNCRequest) McsGetNotificationChannelInfo.this).mStoreClient.getMcsRetryMapAdapter().getRetryCount(McsGetNotificationChannelInfo.this.mHttpInterface.getClass().getSimpleName())));
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(McsGetNotificationChannelInfo.this.TAG, " onFail: exception " + iOException.getMessage());
                EventLogHelper.add(McsGetNotificationChannelInfo.this.TAG, McsGetNotificationChannelInfo.this.mPhoneId, "onFail: IOException");
                McsGetNotificationChannelInfo.this.mIAPICallFlowListener.onFailedCall(McsGetNotificationChannelInfo.this.mHttpInterface, String.valueOf(802));
            }
        });
    }
}
