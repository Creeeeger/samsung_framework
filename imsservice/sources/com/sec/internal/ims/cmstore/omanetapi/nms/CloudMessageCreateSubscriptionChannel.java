package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.util.Log;
import com.google.gson.Gson;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.ims.cmstore.utils.McsNotificationListContainer;
import com.sec.internal.ims.cmstore.utils.NotificationListContainer;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.CallbackReference;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nms.AllSubscriptions;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.data.NmsSubscription;
import com.sec.internal.omanetapi.nms.data.SearchCriteria;
import com.sec.internal.omanetapi.nms.data.SearchCriterion;
import java.io.IOException;
import java.net.URL;

/* loaded from: classes.dex */
public class CloudMessageCreateSubscriptionChannel extends AllSubscriptions {
    private static final long serialVersionUID = 3483856569808284340L;
    private String TAG;
    private final transient IControllerCommonInterface mIControllerCommonInterface;

    public CloudMessageCreateSubscriptionChannel(final IAPICallFlowListener iAPICallFlowListener, String str, String str2, IControllerCommonInterface iControllerCommonInterface, boolean z, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNcHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), messageStoreClient.getPrerenceManager().getUserTelCtn(), messageStoreClient);
        this.TAG = CloudMessageCreateSubscriptionChannel.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mIControllerCommonInterface = iControllerCommonInterface;
        NmsSubscription nmsSubscription = new NmsSubscription();
        CallbackReference callbackReference = new CallbackReference();
        callbackReference.notifyURL = str;
        if (ATTGlobalVariables.isGcmReplacePolling()) {
            callbackReference.callbackData = "custom_data";
        } else if (this.isCmsMcsEnabled) {
            callbackReference.callbackData = "abc";
        } else {
            callbackReference.notificationFormat = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getNotificaitonFormat();
        }
        nmsSubscription.callbackReference = callbackReference;
        nmsSubscription.duration = 86400;
        nmsSubscription.clientCorrelator = "";
        nmsSubscription.restartToken = str2;
        Log.i(this.TAG, "notifyURL " + IMSLog.numberChecker(str) + " request restartToken " + str2 + " isGcmReplacePolling: " + ATTGlobalVariables.isGcmReplacePolling() + " needPresetSearchRemove" + z);
        if (ATTGlobalVariables.isGcmReplacePolling() && !z) {
            SearchCriteria searchCriteria = new SearchCriteria();
            SearchCriterion[] searchCriterionArr = {new SearchCriterion()};
            SearchCriterion searchCriterion = searchCriterionArr[0];
            searchCriterion.type = "PresetSearch";
            searchCriterion.name = "UPOneDotO";
            searchCriterion.value = "";
            searchCriteria.criterion = searchCriterionArr;
            nmsSubscription.filter = searchCriteria;
        }
        String authorizationBearer = this.isCmsMcsEnabled ? this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer() : this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(this.mStoreClient.getPrerenceManager().getUserTelCtn());
        if (ATTGlobalVariables.isGcmReplacePolling()) {
            initSubscribeRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), authorizationBearer);
        } else if (this.isCmsMcsEnabled) {
            initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), authorizationBearer);
        } else {
            initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), authorizationBearer);
        }
        initPostRequest(nmsSubscription, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateSubscriptionChannel.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                String responseMessageId;
                Log.i(CloudMessageCreateSubscriptionChannel.this.TAG, "The content of the response = " + IMSLog.numberChecker(httpResponseParams.getDataString()));
                if (httpResponseParams.getStatusCode() == 401 && CloudMessageCreateSubscriptionChannel.this.handleUnAuthorized(httpResponseParams)) {
                    return;
                }
                iAPICallFlowListener.onGoToEvent(OMASyncEventType.CREATE_SUBSCRIPTION_FINISHED.getId(), null);
                if (httpResponseParams.getStatusCode() != 201) {
                    if (!((BaseNMSRequest) CloudMessageCreateSubscriptionChannel.this).isCmsMcsEnabled && httpResponseParams.getStatusCode() == 400) {
                        try {
                            OMAApiResponseParam oMAApiResponseParam = (OMAApiResponseParam) new Gson().fromJson(httpResponseParams.getDataString(), OMAApiResponseParam.class);
                            responseMessageId = oMAApiResponseParam != null ? oMAApiResponseParam.requestError.serviceException.messageId : null;
                        } catch (RuntimeException e) {
                            e.printStackTrace();
                            responseMessageId = CloudMessageCreateSubscriptionChannel.this.getResponseMessageId(httpResponseParams.getDataString());
                        }
                        if (responseMessageId != null && responseMessageId.equals("SVC0003")) {
                            Log.d(CloudMessageCreateSubscriptionChannel.this.TAG, "messageId is " + responseMessageId + ", remove PresetSearch Filter and resend subscription HTTP request");
                            iAPICallFlowListener.onFailedEvent(OMASyncEventType.REQUEST_SUBSCRIPTION_AFTER_PSF_REMOVED.getId(), null);
                            return;
                        }
                    }
                    if (!CloudMessageCreateSubscriptionChannel.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, null, null, Integer.MIN_VALUE) || ((BaseNMSRequest) CloudMessageCreateSubscriptionChannel.this).isCmsMcsEnabled) {
                        return;
                    }
                    iAPICallFlowListener.onFailedCall(CloudMessageCreateSubscriptionChannel.this);
                    return;
                }
                OMAApiResponseParam response = CloudMessageCreateSubscriptionChannel.this.getResponse(httpResponseParams);
                if (response == null) {
                    iAPICallFlowListener.onFailedCall(this);
                    return;
                }
                NmsSubscription nmsSubscription2 = response.nmsSubscription;
                if (nmsSubscription2 != null) {
                    String str3 = nmsSubscription2.restartToken;
                    int intValue = nmsSubscription2.duration.intValue();
                    long j = (intValue * 1000) - 360000;
                    if (!ATTGlobalVariables.isGcmReplacePolling()) {
                        if (((BaseNMSRequest) CloudMessageCreateSubscriptionChannel.this).isCmsMcsEnabled) {
                            CloudMessageCreateSubscriptionChannel.this.mIControllerCommonInterface.updateDelay(OMASyncEventType.CHECK_SUBSCRIPTION_CHANNEL.getId(), j);
                        }
                    } else {
                        CloudMessageCreateSubscriptionChannel.this.mIControllerCommonInterface.updateDelay(OMASyncEventType.CHECK_SUBSCRIPTION_AND_START_LONG_POLLING.getId(), j);
                    }
                    CloudMessagePreferenceManager prerenceManager = ((BaseNMSRequest) CloudMessageCreateSubscriptionChannel.this).mStoreClient.getPrerenceManager();
                    prerenceManager.saveOMASubscriptionIndex(nmsSubscription2.index.longValue() - 1);
                    prerenceManager.saveOMASubscriptionRestartToken(str3);
                    prerenceManager.saveOMASubscriptionTime(System.currentTimeMillis());
                    prerenceManager.saveOMASubscriptionChannelDuration(intValue);
                    URL url = nmsSubscription2.resourceURL;
                    if (url != null) {
                        prerenceManager.saveOMASubscriptionResUrl(url.toString());
                        if (((BaseNMSRequest) CloudMessageCreateSubscriptionChannel.this).isCmsMcsEnabled) {
                            McsNotificationListContainer.getInstance(((BaseNMSRequest) CloudMessageCreateSubscriptionChannel.this).mStoreClient.getClientID()).clear(((BaseNMSRequest) CloudMessageCreateSubscriptionChannel.this).mStoreClient.getClientID());
                        } else {
                            NotificationListContainer.getInstance(((BaseNMSRequest) CloudMessageCreateSubscriptionChannel.this).mStoreClient.getClientID()).clear();
                        }
                    }
                    if (ATTGlobalVariables.isGcmReplacePolling() || ((BaseNMSRequest) CloudMessageCreateSubscriptionChannel.this).isCmsMcsEnabled) {
                        iAPICallFlowListener.onSuccessfulCall(this, (String) null);
                        return;
                    } else {
                        iAPICallFlowListener.onSuccessfulEvent(this, OMASyncEventType.SEND_LONG_POLLING_REQUEST.getId(), null);
                        return;
                    }
                }
                iAPICallFlowListener.onFailedCall(this);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageCreateSubscriptionChannel.this.TAG, "Http request onFail: " + iOException.getMessage());
                iAPICallFlowListener.onFailedCall(this);
            }
        });
    }
}
