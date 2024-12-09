package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.util.Log;
import android.util.Pair;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.ParamBulkCreation;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.servicemodules.euc.test.EucTestIntent;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nms.BulkCreation;
import com.sec.internal.omanetapi.nms.data.ObjectList;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class CloudMessageBulkCreation extends BulkCreation {
    private static final long serialVersionUID = 3193513166884750667L;
    private String TAG;

    public CloudMessageBulkCreation(final IAPICallFlowListener iAPICallFlowListener, ParamBulkCreation paramBulkCreation, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), paramBulkCreation.mLine, messageStoreClient);
        this.TAG = CloudMessageBulkCreation.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        Pair<ObjectList, List<HttpPostBody>> pair = paramBulkCreation.uploadObjectInfo;
        final ObjectList objectList = (ObjectList) pair.first;
        List<HttpPostBody> list = (List) pair.second;
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(paramBulkCreation.mLine));
        initPostRequest(objectList, true, list);
        setWriteTimeout(300000L);
        final BufferDBChangeParamList bufferDBChangeParamList = paramBulkCreation.bufferDbParamList;
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageBulkCreation.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                ParamOMAresponseforBufDB paramOMAresponseforBufDB;
                if (httpResponseParams.getStatusCode() == 200) {
                    OMAApiResponseParam response = CloudMessageBulkCreation.this.getResponse(httpResponseParams);
                    if (response == null) {
                        return;
                    } else {
                        paramOMAresponseforBufDB = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.BULK_MESSAGES_UPLOADED).setObjectList(objectList).setBufferDBChangeParam(bufferDBChangeParamList).setBulkResponseList(response.bulkResponseList).build();
                    }
                } else if (httpResponseParams.getStatusCode() == 401) {
                    if (CloudMessageBulkCreation.this.handleUnAuthorized(httpResponseParams)) {
                        return;
                    } else {
                        paramOMAresponseforBufDB = new ParamOMAresponseforBufDB.Builder().setBufferDBChangeParam(bufferDBChangeParamList).setLine(CloudMessageBulkCreation.this.getBoxId()).build();
                    }
                } else {
                    if (httpResponseParams.getStatusCode() == 403 || httpResponseParams.getStatusCode() == 503) {
                        iAPICallFlowListener.onMoveOnToNext(CloudMessageBulkCreation.this, new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.FALLBACK_MESSAGES_UPLOADED).setObjectList(objectList).setBufferDBChangeParam(bufferDBChangeParamList).setBulkResponseList(null).build());
                        return;
                    }
                    paramOMAresponseforBufDB = null;
                }
                if (CloudMessageBulkCreation.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, paramOMAresponseforBufDB, null, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onMoveOnToNext(CloudMessageBulkCreation.this, paramOMAresponseforBufDB);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageBulkCreation.this.TAG, "Http request onFail: " + iOException.getMessage());
                if (iOException.getMessage().equals(EucTestIntent.Extras.TIMEOUT)) {
                    iAPICallFlowListener.onMoveOnToNext(CloudMessageBulkCreation.this, new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.FALLBACK_MESSAGES_UPLOADED).setObjectList(objectList).setBufferDBChangeParam(bufferDBChangeParamList).setBulkResponseList(null).build());
                } else {
                    iAPICallFlowListener.onFailedCall(this);
                }
            }
        });
    }
}
