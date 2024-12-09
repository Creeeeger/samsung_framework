package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.IndividualObject;
import java.io.IOException;

/* loaded from: classes.dex */
public class CloudMessageDeleteIndividualObject extends IndividualObject {
    private static final long serialVersionUID = 8158555957984259234L;
    private String TAG;

    public CloudMessageDeleteIndividualObject(final IAPICallFlowListener iAPICallFlowListener, String str, final BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), bufferDBChangeParam.mLine, str, messageStoreClient);
        this.TAG = CloudMessageDeleteIndividualObject.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(bufferDBChangeParam.mLine));
        initDeleteRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageDeleteIndividualObject.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                if (httpResponseParams.getStatusCode() == 401 && CloudMessageDeleteIndividualObject.this.handleUnAuthorized(httpResponseParams)) {
                    return;
                }
                if (httpResponseParams.getStatusCode() == 206) {
                    httpResponseParams.setStatusCode(200);
                }
                if (httpResponseParams.getStatusCode() == 204) {
                    httpResponseParams.setStatusCode(404);
                }
                ParamOMAresponseforBufDB build = (httpResponseParams.getStatusCode() == 200 || httpResponseParams.getStatusCode() == 404) ? new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_UPDATE_COMPLETE).setBufferDBChangeParam(bufferDBChangeParam).build() : null;
                if (!((BaseNMSRequest) CloudMessageDeleteIndividualObject.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isEnableATTHeader() && ((BaseNMSRequest) CloudMessageDeleteIndividualObject.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryRequired(httpResponseParams.getStatusCode())) {
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam, SyncMsgType.VM, httpResponseParams.getStatusCode());
                    return;
                }
                if (CloudMessageDeleteIndividualObject.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, build, bufferDBChangeParam, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onMoveOnToNext(CloudMessageDeleteIndividualObject.this, build);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageDeleteIndividualObject.this.TAG, "Http request onFail: " + iOException.getMessage());
                iAPICallFlowListener.onFailedCall(this);
            }
        });
    }
}
