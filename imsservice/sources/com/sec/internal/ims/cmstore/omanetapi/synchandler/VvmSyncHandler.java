package com.sec.internal.ims.cmstore.omanetapi.synchandler;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetAllPayloads;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;

/* loaded from: classes.dex */
public class VvmSyncHandler extends BaseSyncHandler {
    private String TAG;

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected void makeBulkUploadparameter() {
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected HttpRequestParams peekBulkUploadQueue() {
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected Pair<HttpRequestParams, Boolean> peekUploadQueue() {
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected void setBulkUploadQueue(BufferDBChangeParamList bufferDBChangeParamList) {
    }

    public VvmSyncHandler(Looper looper, MessageStoreClient messageStoreClient, INetAPIEventListener iNetAPIEventListener, IUIEventCallback iUIEventCallback, String str, SyncMsgType syncMsgType, ICloudMessageManagerHelper iCloudMessageManagerHelper, boolean z) {
        super(looper, messageStoreClient, iNetAPIEventListener, iUIEventCallback, str, syncMsgType, iCloudMessageManagerHelper, z);
        this.TAG = VvmSyncHandler.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        Log.i(this.TAG, "message: " + valueOf);
        logWorkingStatus();
        if (valueOf != null && AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[valueOf.ordinal()] == 1) {
            this.mStoreClient.getRetryMapAdapter().retryApi((Pair) message.obj, this, this.mICloudMessageManagerHelper, null);
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.synchandler.VvmSyncHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType;

        static {
            int[] iArr = new int[OMASyncEventType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType = iArr;
            try {
                iArr[OMASyncEventType.VVM_FALLBACK_TO_LAST_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected void setWorkingQueue(BufferDBChangeParam bufferDBChangeParam, BaseSyncHandler.SyncOperation syncOperation) {
        this.mWorkingDownloadQueue.offer(bufferDBChangeParam);
        Log.i(this.TAG, "setWorkingQueue :: " + bufferDBChangeParam + " setMsgDownloadQueue size : " + this.mWorkingDownloadQueue.size());
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected Pair<HttpRequestParams, Boolean> peekDownloadQueue() {
        BufferDBChangeParam peek = this.mWorkingDownloadQueue.peek();
        if (peek == null) {
            return null;
        }
        if (peek.mDBIndex == 17) {
            return new Pair<>(CloudMessageGetAllPayloads.buildFromPayloadUrl(this, this.mBufferDBTranslation.getVVMpayLoadUrlFromBufDb(peek), peek, this.mStoreClient), Boolean.FALSE);
        }
        Log.e(this.TAG, "illegal message type from buffer DB");
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam, SyncMsgType syncMsgType, int i) {
        Log.i(this.TAG, "onFailedCall, SyncMsgType : " + syncMsgType);
        if (syncMsgType == SyncMsgType.VM || syncMsgType == SyncMsgType.VM_GREETINGS) {
            Pair<IHttpAPICommonInterface, SyncMsgType> pair = new Pair<>(iHttpAPICommonInterface, syncMsgType);
            boolean searchAndPush = this.mStoreClient.getRetryMapAdapter().searchAndPush(pair, i);
            long timerValue = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getTimerValue(i);
            Log.i(this.TAG, "Timer Value : " + timerValue + ", isRetryAvailable: " + searchAndPush);
            if (searchAndPush && timerValue != -1) {
                sendMessageDelayed(obtainMessage(OMASyncEventType.VVM_FALLBACK_TO_LAST_REQUEST.getId(), pair), timerValue);
            } else {
                sendEmptyMessage(OMASyncEventType.PAUSE_INITIAL_SYNC.getId());
            }
        }
    }
}
