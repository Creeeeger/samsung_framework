package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.util.Log;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.BaseDataChangeHandler;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.IndividualPayload;
import java.io.IOException;

/* loaded from: classes.dex */
public class CloudMessageGetIndividualPayLoad extends IndividualPayload {
    private static final long serialVersionUID = -5816641182872600506L;
    private String TAG;

    public static CloudMessageGetIndividualPayLoad buildFromPayloadUrl(IAPICallFlowListener iAPICallFlowListener, String str, BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        return new CloudMessageGetIndividualPayLoad(iAPICallFlowListener, str, bufferDBChangeParam, messageStoreClient);
    }

    private CloudMessageGetIndividualPayLoad(IAPICallFlowListener iAPICallFlowListener, String str, BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        super(str, messageStoreClient);
        this.TAG = CloudMessageGetIndividualPayLoad.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mBaseUrl = Util.replaceUrlPrefix(this.mBaseUrl, messageStoreClient);
        buildInternal(iAPICallFlowListener, bufferDBChangeParam);
    }

    private void buildInternal(final IAPICallFlowListener iAPICallFlowListener, final BufferDBChangeParam bufferDBChangeParam) {
        String validTokenByLine = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(bufferDBChangeParam.mLine);
        if (this.isCmsMcsEnabled) {
            initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
            setProtocol(true);
        } else {
            initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), validTokenByLine);
        }
        initGetRequest();
        Log.i(this.TAG, ImsConstants.FtDlParams.FT_DL_URL + IMSLog.checker(this.mBaseUrl));
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetIndividualPayLoad.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                ParamOMAresponseforBufDB build;
                if (httpResponseParams.getStatusCode() == 401 && CloudMessageGetIndividualPayLoad.this.handleUnAuthorized(httpResponseParams)) {
                    return;
                }
                byte[] dataBinary = httpResponseParams.getDataBinary();
                if (httpResponseParams.getStatusCode() == 206) {
                    httpResponseParams.setStatusCode(200);
                }
                if (httpResponseParams.getStatusCode() == 404 || httpResponseParams.getStatusCode() == 403) {
                    build = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_NOT_FOUND).setBufferDBChangeParam(bufferDBChangeParam).build();
                } else if (httpResponseParams.getStatusCode() != 200) {
                    build = null;
                } else {
                    if (dataBinary == null) {
                        if (((BaseNMSRequest) CloudMessageGetIndividualPayLoad.this).isCmsMcsEnabled) {
                            iAPICallFlowListener.onFailedCall(this);
                            return;
                        } else {
                            iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                            return;
                        }
                    }
                    ParamOMAresponseforBufDB.Builder bufferDBChangeParam2 = new ParamOMAresponseforBufDB.Builder().setPayloadUrl(((BaseNMSRequest) CloudMessageGetIndividualPayLoad.this).mBaseUrl).setByte(dataBinary).setBufferDBChangeParam(bufferDBChangeParam);
                    IAPICallFlowListener iAPICallFlowListener2 = iAPICallFlowListener;
                    if (iAPICallFlowListener2 instanceof BaseSyncHandler) {
                        bufferDBChangeParam2.setActionType(ParamOMAresponseforBufDB.ActionType.ONE_PAYLOAD_DOWNLOAD);
                    } else if (iAPICallFlowListener2 instanceof BaseDataChangeHandler) {
                        bufferDBChangeParam2.setActionType(ParamOMAresponseforBufDB.ActionType.NOTIFICATION_PAYLOAD_DOWNLOADED);
                    }
                    build = bufferDBChangeParam2.build();
                }
                if (CloudMessageGetIndividualPayLoad.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, build, bufferDBChangeParam, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onMoveOnToNext(CloudMessageGetIndividualPayLoad.this, build);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageGetIndividualPayLoad.this.TAG, "Http request onFail: " + iOException.getMessage());
                iAPICallFlowListener.onFailedCall(this);
            }
        });
    }
}
