package com.sec.internal.ims.cmstore.omanetapi.tmoappapi;

import android.os.Message;
import android.util.Log;
import com.google.gson.Gson;
import com.sec.internal.constants.ims.cmstore.CommonErrorName;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.BaseDataChangeHandler;
import com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.VvmHandler;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.data.VvmServiceProfile;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class CloudMessageGetVvmProfile extends IndividualVvmProfile {
    private static final long serialVersionUID = 60807758423482299L;
    private String LOG_TAG;

    public CloudMessageGetVvmProfile(final IAPICallFlowListener iAPICallFlowListener, final BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), bufferDBChangeParam.mLine, messageStoreClient);
        this.LOG_TAG = CloudMessageGetVvmProfile.class.getSimpleName();
        this.LOG_TAG += "[" + messageStoreClient.getClientID() + "]";
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(bufferDBChangeParam.mLine));
        initGetRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageGetVvmProfile.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                List<String> list;
                String dataString = httpResponseParams.getDataString();
                int statusCode = httpResponseParams.getStatusCode();
                if (statusCode == 404 || statusCode == 400) {
                    EventLogHelper.add(CloudMessageGetVvmProfile.this.LOG_TAG, ((BaseNMSRequest) CloudMessageGetVvmProfile.this).mStoreClient.getClientID(), " onComplete: statusCode: " + statusCode + " mDataString: " + dataString);
                    IAPICallFlowListener iAPICallFlowListener2 = iAPICallFlowListener;
                    if (iAPICallFlowListener2 instanceof BaseSyncHandler) {
                        ParamOMAresponseforBufDB.Builder bufferDBChangeParam2 = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_NOT_FOUND).setBufferDBChangeParam(bufferDBChangeParam);
                        Message message = new Message();
                        message.obj = bufferDBChangeParam2.build();
                        message.what = OMASyncEventType.VVM_CHANGE_ERROR.getId();
                        iAPICallFlowListener.onFixedFlowWithMessage(message);
                        return;
                    }
                    if (iAPICallFlowListener2 instanceof BaseDataChangeHandler) {
                        ParamOMAresponseforBufDB.Builder bufferDBChangeParam3 = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_NOT_FOUND).setBufferDBChangeParam(bufferDBChangeParam);
                        Message message2 = new Message();
                        message2.obj = bufferDBChangeParam3.build();
                        message2.what = OMASyncEventType.VVM_CHANGE_ERROR.getId();
                        iAPICallFlowListener.onFixedFlowWithMessage(message2);
                        return;
                    }
                } else {
                    if (statusCode == 401) {
                        if (CloudMessageGetVvmProfile.this.handleUnAuthorized(httpResponseParams)) {
                            return;
                        }
                        ParamOMAresponseforBufDB.Builder line = new ParamOMAresponseforBufDB.Builder().setBufferDBChangeParam(bufferDBChangeParam).setLine(CloudMessageGetVvmProfile.this.getBoxId());
                        Message message3 = new Message();
                        message3.obj = line.build();
                        message3.what = OMASyncEventType.CREDENTIAL_EXPIRED.getId();
                        iAPICallFlowListener.onFixedFlowWithMessage(message3);
                        iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                        return;
                    }
                    if (((BaseNMSRequest) CloudMessageGetVvmProfile.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryRequired(statusCode)) {
                        iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam, SyncMsgType.VM, statusCode);
                        return;
                    }
                    if (statusCode == 429 && (list = httpResponseParams.getHeaders().get(HttpRequest.HEADER_RETRY_AFTER)) != null && list.size() > 0) {
                        Log.i(CloudMessageGetVvmProfile.this.LOG_TAG, list.toString());
                        String str = list.get(0);
                        Log.d(CloudMessageGetVvmProfile.this.LOG_TAG, "retryAfter is " + str + "seconds");
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
                            Log.e(CloudMessageGetVvmProfile.this.LOG_TAG, e.getMessage());
                            iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                            return;
                        }
                    }
                }
                if (statusCode != 200) {
                    EventLogHelper.add(CloudMessageGetVvmProfile.this.LOG_TAG, ((BaseNMSRequest) CloudMessageGetVvmProfile.this).mStoreClient.getClientID(), " statusCode: " + statusCode + " mDataString: " + dataString);
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                    return;
                }
                try {
                    VvmServiceProfile vvmServiceProfile = ((OMAApiResponseParam) new Gson().fromJson(dataString, OMAApiResponseParam.class)).vvmserviceProfile;
                    if (vvmServiceProfile != null) {
                        if (iAPICallFlowListener instanceof VvmHandler) {
                            ParamOMAresponseforBufDB.Builder bufferDBChangeParam4 = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.VVM_PROFILE_DOWNLOADED).setVvmServiceProfile(vvmServiceProfile).setBufferDBChangeParam(bufferDBChangeParam);
                            Message message4 = new Message();
                            message4.obj = bufferDBChangeParam4.build();
                            message4.what = OMASyncEventType.VVM_CHANGE_SUCCEED.getId();
                            iAPICallFlowListener.onFixedFlowWithMessage(message4);
                            return;
                        }
                        return;
                    }
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                } catch (Exception e2) {
                    Log.e(CloudMessageGetVvmProfile.this.LOG_TAG, e2.toString() + " ");
                    e2.printStackTrace();
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageGetVvmProfile.this.LOG_TAG, "Http request onFail: " + iOException.getMessage());
                iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
            }
        });
    }
}
