package com.sec.internal.ims.cmstore.omanetapi.nc;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.McsOMAApiResponseParam;
import com.sec.internal.omanetapi.nc.BaseNCRequest;
import com.sec.internal.omanetapi.nc.IndividualNotificationChannel;
import com.sec.internal.omanetapi.nc.data.ChannelDeleteData;
import com.sec.internal.omanetapi.nc.data.McsNotificationChannel;
import com.sec.internal.omanetapi.nc.data.McsNotificationChannelList;
import java.io.IOException;

/* loaded from: classes.dex */
public class McsGetNotificationChannelListInfo extends IndividualNotificationChannel {
    private String TAG;
    private final IHttpAPICommonInterface mHttpInterface;
    private final IAPICallFlowListener mIAPICallFlowListener;
    private final int mPhoneId;

    public McsGetNotificationChannelListInfo(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getPrerenceManager().getOasisServerRoot(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getPrerenceManager().getUserTelCtn(), messageStoreClient);
        this.TAG = McsGetNotificationChannelListInfo.class.getSimpleName();
        int clientID = messageStoreClient.getClientID();
        this.mPhoneId = clientID;
        this.TAG += "[" + clientID + "]";
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mHttpInterface = this;
        initMcsCommonRequestHeaders("application/json", this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        initGetRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nc.McsGetNotificationChannelListInfo.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                McsNotificationChannelList mcsNotificationChannelList;
                McsNotificationChannel[] mcsNotificationChannelArr;
                int statusCode = httpResponseParams.getStatusCode();
                IMSLog.i(McsGetNotificationChannelListInfo.this.TAG, "onComplete: statusCode: " + statusCode);
                EventLogHelper.add(McsGetNotificationChannelListInfo.this.TAG, McsGetNotificationChannelListInfo.this.mPhoneId, "onComplete: statusCode: " + statusCode);
                if (statusCode == 200) {
                    ((BaseNCRequest) McsGetNotificationChannelListInfo.this).mStoreClient.getMcsRetryMapAdapter().remove(McsGetNotificationChannelListInfo.this.mHttpInterface);
                    String dataString = httpResponseParams.getDataString();
                    if (((BaseNCRequest) McsGetNotificationChannelListInfo.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isEncrypted()) {
                        String decrypt = ((BaseNCRequest) McsGetNotificationChannelListInfo.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().decrypt(dataString, true);
                        IMSLog.s(McsGetNotificationChannelListInfo.this.TAG, "onComplete: decryptedData: " + decrypt);
                        if (TextUtils.isEmpty(decrypt)) {
                            EventLogHelper.add(McsGetNotificationChannelListInfo.this.TAG, McsGetNotificationChannelListInfo.this.mPhoneId, "decryptedData is empty");
                        } else {
                            dataString = decrypt;
                        }
                    }
                    try {
                        McsOMAApiResponseParam mcsOMAApiResponseParam = (McsOMAApiResponseParam) new Gson().fromJson(dataString, McsOMAApiResponseParam.class);
                        if (mcsOMAApiResponseParam == null || (mcsNotificationChannelList = mcsOMAApiResponseParam.notificationChannelList) == null || (mcsNotificationChannelArr = mcsNotificationChannelList.notificationChannel) == null || mcsNotificationChannelArr.length == 0) {
                            IMSLog.i(McsGetNotificationChannelListInfo.this.TAG, "onComplete: there is no notificationChannelList: try to create notificationChannel");
                            McsGetNotificationChannelListInfo.this.mIAPICallFlowListener.onSuccessfulEvent(McsGetNotificationChannelListInfo.this.mHttpInterface, OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId(), null);
                            return;
                        }
                        IMSLog.i(McsGetNotificationChannelListInfo.this.TAG, "onComplete: there is notificationChannelList: notificationChannelList length: " + mcsNotificationChannelArr.length);
                        ChannelDeleteData channelDeleteData = new ChannelDeleteData();
                        int length = mcsNotificationChannelArr.length;
                        int i = 0;
                        for (int i2 = 0; i2 < length; i2++) {
                            String str = mcsNotificationChannelArr[i2].resourceURL;
                            i++;
                            if (str != null) {
                                channelDeleteData.channelUrl = str;
                                channelDeleteData.isNeedRecreateChannel = i == mcsNotificationChannelArr.length;
                                channelDeleteData.deleteReason = McsConstants.ChannelDeleteReason.NORMAL;
                                McsGetNotificationChannelListInfo.this.mIAPICallFlowListener.onSuccessfulEvent(McsGetNotificationChannelListInfo.this.mHttpInterface, OMASyncEventType.DELETE_NOTIFICATION_CHANNEL.getId(), channelDeleteData);
                            }
                        }
                        return;
                    } catch (JsonParseException e) {
                        IMSLog.i(McsGetNotificationChannelListInfo.this.TAG, "onComplete: JsonParseException: " + e.getMessage());
                        return;
                    }
                }
                if (McsGetNotificationChannelListInfo.this.isErrorCodeSupported(statusCode)) {
                    if (statusCode != 404) {
                        ((BaseNCRequest) McsGetNotificationChannelListInfo.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().handleNCCommonError(McsGetNotificationChannelListInfo.this.mIAPICallFlowListener, McsGetNotificationChannelListInfo.this.mHttpInterface, statusCode, McsGetNotificationChannelListInfo.this.checkRetryAfter(httpResponseParams, ((BaseNCRequest) McsGetNotificationChannelListInfo.this).mStoreClient.getMcsRetryMapAdapter().getRetryCount(McsGetNotificationChannelListInfo.this.mHttpInterface.getClass().getSimpleName())));
                    } else {
                        McsGetNotificationChannelListInfo.this.mIAPICallFlowListener.onGoToEvent(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId(), null);
                    }
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.e(McsGetNotificationChannelListInfo.this.TAG, " onFail: exception " + iOException.getMessage());
                EventLogHelper.add(McsGetNotificationChannelListInfo.this.TAG, McsGetNotificationChannelListInfo.this.mPhoneId, "onFail: IOException");
                McsGetNotificationChannelListInfo.this.mIAPICallFlowListener.onFailedCall(McsGetNotificationChannelListInfo.this.mHttpInterface, String.valueOf(802));
            }
        });
    }
}
