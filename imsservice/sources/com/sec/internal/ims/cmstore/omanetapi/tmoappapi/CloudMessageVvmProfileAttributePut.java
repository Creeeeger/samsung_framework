package com.sec.internal.ims.cmstore.omanetapi.tmoappapi;

import android.os.Message;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.CommonErrorName;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.data.VvmServiceProfile;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class CloudMessageVvmProfileAttributePut extends IndividualVvmProfile {
    private static final long serialVersionUID = -622276329732847902L;
    private String LOG_TAG;

    public CloudMessageVvmProfileAttributePut(final IAPICallFlowListener iAPICallFlowListener, final VvmServiceProfile vvmServiceProfile, final BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), bufferDBChangeParam.mLine, messageStoreClient);
        this.LOG_TAG = CloudMessageVvmProfileAttributePut.class.getSimpleName();
        this.LOG_TAG += "[" + messageStoreClient.getClientID() + "]";
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(bufferDBChangeParam.mLine));
        initPutRequest(vvmServiceProfile, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageVvmProfileAttributePut.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                List<String> list;
                if (httpResponseParams.getStatusCode() == 401) {
                    if (CloudMessageVvmProfileAttributePut.this.handleUnAuthorized(httpResponseParams)) {
                        return;
                    }
                    ParamOMAresponseforBufDB.Builder line = new ParamOMAresponseforBufDB.Builder().setBufferDBChangeParam(bufferDBChangeParam).setLine(CloudMessageVvmProfileAttributePut.this.getBoxId());
                    Message message = new Message();
                    message.obj = line.build();
                    message.what = OMASyncEventType.CREDENTIAL_EXPIRED.getId();
                    iAPICallFlowListener.onFixedFlowWithMessage(message);
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                    return;
                }
                if (((BaseNMSRequest) CloudMessageVvmProfileAttributePut.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryRequired(httpResponseParams.getStatusCode())) {
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam, SyncMsgType.VM, httpResponseParams.getStatusCode());
                    return;
                }
                if (httpResponseParams.getStatusCode() == 429 && (list = httpResponseParams.getHeaders().get(HttpRequest.HEADER_RETRY_AFTER)) != null && list.size() > 0) {
                    Log.i(CloudMessageVvmProfileAttributePut.this.LOG_TAG, list.toString());
                    String str = list.get(0);
                    Log.d(CloudMessageVvmProfileAttributePut.this.LOG_TAG, "retryAfter is " + str + "seconds");
                    try {
                        int parseInt = Integer.parseInt(str);
                        if (parseInt > 0) {
                            iAPICallFlowListener.onOverRequest(this, CommonErrorName.RETRY_HEADER, parseInt);
                            return;
                        } else {
                            iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                            return;
                        }
                    } catch (NumberFormatException e) {
                        Log.e(CloudMessageVvmProfileAttributePut.this.LOG_TAG, e.getMessage());
                        iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                        return;
                    }
                }
                if (httpResponseParams.getStatusCode() != 200 && httpResponseParams.getStatusCode() != 201 && httpResponseParams.getStatusCode() != 202) {
                    EventLogHelper.add(CloudMessageVvmProfileAttributePut.this.LOG_TAG, ((BaseNMSRequest) CloudMessageVvmProfileAttributePut.this).mStoreClient.getClientID(), " statusCode: " + httpResponseParams.getStatusCode() + " mDataString: " + httpResponseParams.getDataString());
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                    return;
                }
                ParamOMAresponseforBufDB.Builder bufferDBChangeParam2 = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.ONE_MESSAGE_UPLOADED).setVvmServiceProfile(vvmServiceProfile).setBufferDBChangeParam(bufferDBChangeParam);
                Message message2 = new Message();
                message2.obj = bufferDBChangeParam2.build();
                message2.what = OMASyncEventType.VVM_CHANGE_SUCCEED.getId();
                iAPICallFlowListener.onFixedFlowWithMessage(message2);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageVvmProfileAttributePut.this.LOG_TAG, "Http request onFail: " + iOException.getMessage());
                iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
            }
        });
    }
}
