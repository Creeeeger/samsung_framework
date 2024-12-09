package com.sec.internal.ims.cmstore.omanetapi.nc;

import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nc.BaseNCRequest;
import com.sec.internal.omanetapi.nc.IndividualNotificationChannel;
import java.io.IOException;

/* loaded from: classes.dex */
public class CloudMessageDeleteIndividualChannel extends IndividualNotificationChannel {
    private static final long serialVersionUID = 1;
    private String TAG;
    private final transient IAPICallFlowListener mIAPICallFlowListener;
    private final transient IControllerCommonInterface mIControllerCommonInterface;

    public CloudMessageDeleteIndividualChannel(final IAPICallFlowListener iAPICallFlowListener, IControllerCommonInterface iControllerCommonInterface, final String str, final boolean z, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNcHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getPrerenceManager().getUserTelCtn(), str, messageStoreClient);
        this.TAG = CloudMessageDeleteIndividualChannel.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mIControllerCommonInterface = iControllerCommonInterface;
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(this.mStoreClient.getPrerenceManager().getUserTelCtn()));
        initDeleteRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageDeleteIndividualChannel.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                Log.i(CloudMessageDeleteIndividualChannel.this.TAG, "isNeedRecreateChannel: " + z);
                if (httpResponseParams.getStatusCode() == 200 || httpResponseParams.getStatusCode() == 204) {
                    clearChannelData();
                    if (z) {
                        CloudMessageDeleteIndividualChannel.this.mIAPICallFlowListener.onGoToEvent(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId(), null);
                        return;
                    } else {
                        iAPICallFlowListener.onSuccessfulCall(this);
                        return;
                    }
                }
                if (CloudMessageDeleteIndividualChannel.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, null, null, Integer.MIN_VALUE)) {
                    if (z) {
                        clearChannelData();
                        CloudMessageDeleteIndividualChannel.this.mIAPICallFlowListener.onGoToEvent(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId(), null);
                    } else {
                        iAPICallFlowListener.onMoveOnToNext(CloudMessageDeleteIndividualChannel.this, null);
                    }
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.i(CloudMessageDeleteIndividualChannel.this.TAG, "onFail isNeedRecreateChannel: " + z);
                if (z) {
                    clearChannelData();
                    CloudMessageDeleteIndividualChannel.this.mIAPICallFlowListener.onGoToEvent(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId(), null);
                }
            }

            private void clearChannelData() {
                CloudMessagePreferenceManager prerenceManager = ((BaseNCRequest) CloudMessageDeleteIndividualChannel.this).mStoreClient.getPrerenceManager();
                String oMAChannelResURL = prerenceManager.getOMAChannelResURL();
                if (TextUtils.isEmpty(oMAChannelResURL)) {
                    return;
                }
                String substring = oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf("/") + 1);
                IMSLog.s(CloudMessageDeleteIndividualChannel.this.TAG, "clearChannelData resUrl: " + oMAChannelResURL + " mChannelId: " + str + " nativeChannelId: " + substring);
                if (str.equalsIgnoreCase(substring)) {
                    prerenceManager.saveOMAChannelResURL("");
                    prerenceManager.saveOMAChannelURL("");
                    prerenceManager.saveOMACallBackURL("");
                    prerenceManager.saveOMAChannelCreateTime(0L);
                    prerenceManager.saveOMAChannelLifeTime(0L);
                    prerenceManager.clearOMASubscriptionChannelDuration();
                    prerenceManager.clearOMASubscriptionTime();
                }
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
