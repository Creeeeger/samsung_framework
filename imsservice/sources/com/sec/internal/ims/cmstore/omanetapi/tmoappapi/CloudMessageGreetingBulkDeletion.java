package com.sec.internal.ims.cmstore.omanetapi.tmoappapi;

import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.sec.internal.constants.ims.cmstore.CommonErrorName;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.OMAObjectUpdateScheduler;
import com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.VvmHandler;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.BulkDeletion;
import com.sec.internal.omanetapi.nms.data.BulkDelete;
import com.sec.internal.omanetapi.nms.data.BulkResponseList;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

/* loaded from: classes.dex */
public class CloudMessageGreetingBulkDeletion extends BulkDeletion {
    private static final long serialVersionUID = 1;
    private String TAG;
    private final transient IAPICallFlowListener mIAPICallFlowListener;

    public CloudMessageGreetingBulkDeletion(final IAPICallFlowListener iAPICallFlowListener, BulkDelete bulkDelete, final String str, final SyncMsgType syncMsgType, final BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), str, messageStoreClient);
        this.TAG = CloudMessageGreetingBulkDeletion.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mIAPICallFlowListener = iAPICallFlowListener;
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(str));
        initDeleteRequest(bulkDelete, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageGreetingBulkDeletion.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                List<String> list;
                String str2;
                String dataString = httpResponseParams.getDataString();
                Log.d(CloudMessageGreetingBulkDeletion.this.TAG, "Result code = " + httpResponseParams.getStatusCode());
                if (httpResponseParams.getStatusCode() == 302) {
                    Log.d(CloudMessageGreetingBulkDeletion.this.TAG, "302 redirect");
                    List<String> list2 = httpResponseParams.getHeaders().get("Location");
                    if (list2 == null || list2.size() <= 0) {
                        str2 = null;
                    } else {
                        Log.i(CloudMessageGreetingBulkDeletion.this.TAG, list2.toString());
                        str2 = list2.get(0);
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            ((BaseNMSRequest) CloudMessageGreetingBulkDeletion.this).mStoreClient.getPrerenceManager().saveNcHost(new URL(str2).getHost());
                        } catch (MalformedURLException e) {
                            Log.d(CloudMessageGreetingBulkDeletion.this.TAG, "" + e.getMessage());
                            e.printStackTrace();
                        }
                        CloudMessageGreetingBulkDeletion.this.mIAPICallFlowListener.onFailedCall(this, String.valueOf(302));
                        return;
                    }
                    CloudMessageGreetingBulkDeletion.this.mIAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                    return;
                }
                if (httpResponseParams.getStatusCode() == 401) {
                    if (CloudMessageGreetingBulkDeletion.this.handleUnAuthorized(httpResponseParams)) {
                        return;
                    }
                    ParamOMAresponseforBufDB.Builder line = new ParamOMAresponseforBufDB.Builder().setBufferDBChangeParam(bufferDBChangeParam).setLine(CloudMessageGreetingBulkDeletion.this.getBoxId());
                    Message message = new Message();
                    message.obj = line.build();
                    message.what = OMASyncEventType.CREDENTIAL_EXPIRED.getId();
                    iAPICallFlowListener.onFixedFlowWithMessage(message);
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                    return;
                }
                if (((BaseNMSRequest) CloudMessageGreetingBulkDeletion.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryRequired(httpResponseParams.getStatusCode())) {
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam, SyncMsgType.VM_GREETINGS, httpResponseParams.getStatusCode());
                    return;
                }
                if (httpResponseParams.getStatusCode() == 429 && (list = httpResponseParams.getHeaders().get(HttpRequest.HEADER_RETRY_AFTER)) != null && list.size() > 0) {
                    Log.i(CloudMessageGreetingBulkDeletion.this.TAG, list.toString());
                    String str3 = list.get(0);
                    Log.d(CloudMessageGreetingBulkDeletion.this.TAG, "retryAfter is " + str3 + "seconds");
                    try {
                        int parseInt = Integer.parseInt(str3);
                        if (parseInt > 0) {
                            iAPICallFlowListener.onOverRequest(this, CommonErrorName.RETRY_HEADER, parseInt);
                            return;
                        } else {
                            iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                            return;
                        }
                    } catch (NumberFormatException e2) {
                        Log.e(CloudMessageGreetingBulkDeletion.this.TAG, e2.getMessage());
                        iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                        return;
                    }
                }
                if (httpResponseParams.getStatusCode() == 204) {
                    IAPICallFlowListener iAPICallFlowListener2 = iAPICallFlowListener;
                    if (iAPICallFlowListener2 instanceof OMAObjectUpdateScheduler) {
                        Message message2 = new Message();
                        message2.obj = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_BULK_UPDATE_COMPLETE).setLine(str).setSyncType(syncMsgType).setBufferDBChangeParam(bufferDBChangeParam).build();
                        message2.what = OMASyncEventType.UPDATE_ONE_SUCCESSFUL.getId();
                        CloudMessageGreetingBulkDeletion.this.mIAPICallFlowListener.onFixedFlowWithMessage(message2);
                        return;
                    }
                    if (iAPICallFlowListener2 instanceof VvmHandler) {
                        Message message3 = new Message();
                        message3.obj = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_BULK_UPDATE_COMPLETE).setLine(str).setSyncType(syncMsgType).setBufferDBChangeParam(bufferDBChangeParam).build();
                        message3.what = OMASyncEventType.UPLOAD_GREETING.getId();
                        CloudMessageGreetingBulkDeletion.this.mIAPICallFlowListener.onFixedFlowWithMessage(message3);
                        return;
                    }
                    return;
                }
                if (httpResponseParams.getStatusCode() != 200 && httpResponseParams.getStatusCode() != 206 && httpResponseParams.getStatusCode() != 400) {
                    CloudMessageGreetingBulkDeletion.this.mIAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                    return;
                }
                try {
                    OMAApiResponseParam oMAApiResponseParam = (OMAApiResponseParam) new Gson().fromJson(dataString, OMAApiResponseParam.class);
                    if (oMAApiResponseParam == null) {
                        return;
                    }
                    BulkResponseList bulkResponseList = oMAApiResponseParam.bulkResponseList;
                    IAPICallFlowListener iAPICallFlowListener3 = iAPICallFlowListener;
                    if (iAPICallFlowListener3 instanceof OMAObjectUpdateScheduler) {
                        Message message4 = new Message();
                        message4.obj = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_BULK_UPDATE_COMPLETE).setBulkResponseList(bulkResponseList).setLine(str).setSyncType(syncMsgType).build();
                        message4.what = OMASyncEventType.UPDATE_ONE_SUCCESSFUL.getId();
                        CloudMessageGreetingBulkDeletion.this.mIAPICallFlowListener.onFixedFlowWithMessage(message4);
                        return;
                    }
                    if (iAPICallFlowListener3 instanceof VvmHandler) {
                        Message message5 = new Message();
                        message5.obj = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_BULK_UPDATE_COMPLETE).setBulkResponseList(bulkResponseList).setLine(str).setSyncType(syncMsgType).setBufferDBChangeParam(bufferDBChangeParam).build();
                        message5.what = OMASyncEventType.UPLOAD_GREETING.getId();
                        CloudMessageGreetingBulkDeletion.this.mIAPICallFlowListener.onFixedFlowWithMessage(message5);
                    }
                } catch (Exception e3) {
                    Log.e(CloudMessageGreetingBulkDeletion.this.TAG, e3.toString() + " ");
                    e3.printStackTrace();
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageGreetingBulkDeletion.this.TAG, "Http request onFail: " + iOException.getMessage());
                CloudMessageGreetingBulkDeletion.this.mIAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
            }
        });
    }

    @Override // com.sec.internal.omanetapi.nms.BaseNMSRequest, com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient) {
        this.mStoreClient = messageStoreClient;
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(getBoxId()));
        return this;
    }
}
