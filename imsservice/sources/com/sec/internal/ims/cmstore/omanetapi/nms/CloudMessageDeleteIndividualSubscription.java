package com.sec.internal.ims.cmstore.omanetapi.nms;

import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.IndividualSubscription;
import java.io.IOException;

/* loaded from: classes.dex */
public class CloudMessageDeleteIndividualSubscription extends IndividualSubscription {
    private static final long serialVersionUID = 1;

    public CloudMessageDeleteIndividualSubscription(final IAPICallFlowListener iAPICallFlowListener, String str, MessageStoreClient messageStoreClient) {
        super(str, messageStoreClient);
        this.mBaseUrl = Util.replaceUrlPrefix(this.mBaseUrl, messageStoreClient);
        String validTokenByLine = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(this.mStoreClient.getPrerenceManager().getUserTelCtn());
        if (this.isCmsMcsEnabled) {
            initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        } else {
            initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), validTokenByLine);
        }
        initCommonDeleteRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageDeleteIndividualSubscription.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                if (httpResponseParams.getStatusCode() == 401 && CloudMessageDeleteIndividualSubscription.this.handleUnAuthorized(httpResponseParams)) {
                    return;
                }
                if (((BaseNMSRequest) CloudMessageDeleteIndividualSubscription.this).isCmsMcsEnabled || CloudMessageDeleteIndividualSubscription.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, null, null, Integer.MIN_VALUE)) {
                    ((BaseNMSRequest) CloudMessageDeleteIndividualSubscription.this).mStoreClient.getPrerenceManager().saveOMASubscriptionTime(0L);
                    ((BaseNMSRequest) CloudMessageDeleteIndividualSubscription.this).mStoreClient.getPrerenceManager().saveOMASubscriptionChannelDuration(0);
                    if (httpResponseParams.getStatusCode() == 200 || httpResponseParams.getStatusCode() == 204) {
                        iAPICallFlowListener.onSuccessfulCall(this);
                    } else {
                        iAPICallFlowListener.onMoveOnToNext(CloudMessageDeleteIndividualSubscription.this, null);
                    }
                }
            }
        });
    }
}
