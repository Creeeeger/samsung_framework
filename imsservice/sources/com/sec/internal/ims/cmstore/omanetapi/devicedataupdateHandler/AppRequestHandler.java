package com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler;

import android.os.Message;
import android.text.TextUtils;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.appapi.McsAppRequest;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamAppResponseObject;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class AppRequestHandler implements IAPICallFlowListener {
    private String TAG;
    private final MessageStoreClient mStoreClient;
    private IBufferDBEventListener mcsCallback;

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam, SyncMsgType syncMsgType, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedEvent(int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlow(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
    }

    public AppRequestHandler(MessageStoreClient messageStoreClient, IBufferDBEventListener iBufferDBEventListener) {
        this.TAG = AppRequestHandler.class.getSimpleName();
        this.mStoreClient = messageStoreClient;
        this.mcsCallback = iBufferDBEventListener;
        this.TAG = "[" + messageStoreClient.getClientID() + "]";
    }

    public void processAppRequest(String str, String str2, int i) {
        if (!this.mStoreClient.getProvisionStatus() || !CmsUtil.isMcsSupported(this.mStoreClient.getContext(), this.mStoreClient.getClientID()) || TextUtils.isEmpty(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer())) {
            IMSLog.i(this.TAG, "processAppRequest, provision not completed");
        } else {
            this.mStoreClient.getHttpController().execute(new McsAppRequest(this.mStoreClient, this, str, str2, i));
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlowWithMessage(Message message) {
        ParamAppResponseObject paramAppResponseObject = (ParamAppResponseObject) message.obj;
        IMSLog.i(this.TAG, "onFixedFlowWithMessage code:" + paramAppResponseObject.errorCode + " body:" + paramAppResponseObject.jsonResult);
        this.mcsCallback.notifyAppOperationResult(paramAppResponseObject.jsonResult, paramAppResponseObject.errorCode);
    }
}
