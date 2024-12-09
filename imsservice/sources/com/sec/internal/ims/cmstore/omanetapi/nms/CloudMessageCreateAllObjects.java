package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.util.Log;
import android.util.Pair;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.params.ParamObjectUpload;
import com.sec.internal.ims.servicemodules.euc.test.EucTestIntent;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nms.AllObjects;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.data.Object;
import com.sec.internal.omanetapi.nms.data.Reference;
import java.io.IOException;

/* loaded from: classes.dex */
public class CloudMessageCreateAllObjects extends AllObjects {
    private static final long serialVersionUID = 3193513166884750667L;
    private String TAG;

    public CloudMessageCreateAllObjects(final IAPICallFlowListener iAPICallFlowListener, ParamObjectUpload paramObjectUpload, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), paramObjectUpload.bufferDbParam.mLine, messageStoreClient);
        this.TAG = CloudMessageCreateAllObjects.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        Pair<Object, HttpPostBody> pair = paramObjectUpload.uploadObjectInfo;
        final Object object = (Object) pair.first;
        HttpPostBody httpPostBody = (HttpPostBody) pair.second;
        String validTokenByLine = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(paramObjectUpload.bufferDbParam.mLine);
        if (this.isCmsMcsEnabled) {
            initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        } else {
            initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), validTokenByLine);
        }
        initPostRequest(object, true, httpPostBody);
        final BufferDBChangeParam bufferDBChangeParam = paramObjectUpload.bufferDbParam;
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateAllObjects.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                ParamOMAresponseforBufDB paramOMAresponseforBufDB;
                Log.i(CloudMessageCreateAllObjects.this.TAG, "onComplete status  " + httpResponseParams.getStatusCode());
                if (httpResponseParams.getStatusCode() == 201) {
                    OMAApiResponseParam response = CloudMessageCreateAllObjects.this.getResponse(httpResponseParams);
                    if (!((BaseNMSRequest) CloudMessageCreateAllObjects.this).isCmsMcsEnabled || response != null) {
                        if (!((BaseNMSRequest) CloudMessageCreateAllObjects.this).isCmsMcsEnabled && (response == null || response.reference == null)) {
                            iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                            return;
                        }
                        Reference reference = response.reference;
                        if (((BaseNMSRequest) CloudMessageCreateAllObjects.this).isCmsMcsEnabled && reference == null) {
                            reference = new Reference();
                            Object object2 = response.object;
                            reference.path = object2.path;
                            reference.resourceURL = object2.resourceURL;
                        }
                        paramOMAresponseforBufDB = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.ONE_MESSAGE_UPLOADED).setReference(reference).setObject(object).setBufferDBChangeParam(bufferDBChangeParam).build();
                    } else {
                        iAPICallFlowListener.onFailedCall(this);
                        return;
                    }
                } else if (httpResponseParams.getStatusCode() != 401) {
                    paramOMAresponseforBufDB = null;
                } else if (CloudMessageCreateAllObjects.this.handleUnAuthorized(httpResponseParams)) {
                    return;
                } else {
                    paramOMAresponseforBufDB = new ParamOMAresponseforBufDB.Builder().setBufferDBChangeParam(bufferDBChangeParam).setLine(CloudMessageCreateAllObjects.this.getBoxId()).build();
                }
                if (CloudMessageCreateAllObjects.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, paramOMAresponseforBufDB, bufferDBChangeParam, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onMoveOnToNext(CloudMessageCreateAllObjects.this, paramOMAresponseforBufDB);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageCreateAllObjects.this.TAG, "Http request onFail: " + iOException.getMessage());
                if (!iOException.getMessage().equals(EucTestIntent.Extras.TIMEOUT)) {
                    if (((BaseNMSRequest) CloudMessageCreateAllObjects.this).isCmsMcsEnabled) {
                        iAPICallFlowListener.onFailedCall(this);
                        return;
                    } else {
                        iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                        return;
                    }
                }
                iAPICallFlowListener.onMoveOnToNext(CloudMessageCreateAllObjects.this, null);
            }
        });
    }
}
