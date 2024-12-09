package com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.data.OperationEnum;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslationMcs;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageBulkDeletion;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageBulkUpdate;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageDeleteIndividualObject;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessagePutObjectFlag;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.HttpResParamsWrapper;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.data.BulkDelete;
import com.sec.internal.omanetapi.nms.data.BulkUpdate;
import com.sec.internal.omanetapi.nms.data.FlagList;
import com.sec.internal.omanetapi.nms.data.ObjectReferenceList;
import com.sec.internal.omanetapi.nms.data.Reference;
import com.sec.internal.omanetapi.nms.data.Response;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/* loaded from: classes.dex */
public abstract class BaseDeviceDataUpdateHandler extends Handler implements IAPICallFlowListener, IControllerCommonInterface {
    private final int NO_RETRY_AFTER_VALUE;
    public String TAG;
    protected boolean isCmsEnabled;
    protected final BufferDBTranslation mBufferDBTranslation;
    private final INetAPIEventListener mINetAPIEventListener;
    protected boolean mIsHandlerRunning;
    protected String mLine;
    private OMANetAPIHandler.OnApiSucceedOnceListener mOnApiSucceedOnceListener;
    protected MessageStoreClient mStoreClient;
    protected SyncMsgType mSyncMsgType;
    protected final Queue<HttpRequestParams> mWorkingQueue;

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlow(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
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

    protected abstract void setWorkingQueue(BufferDBChangeParam bufferDBChangeParam);

    protected abstract void setWorkingQueue(BufferDBChangeParamList bufferDBChangeParamList);

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelayRetry(int i, long j) {
        return false;
    }

    public BaseDeviceDataUpdateHandler(Looper looper, MessageStoreClient messageStoreClient, INetAPIEventListener iNetAPIEventListener, String str, SyncMsgType syncMsgType, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(looper);
        this.TAG = BaseDeviceDataUpdateHandler.class.getSimpleName();
        this.mIsHandlerRunning = false;
        this.mWorkingQueue = new LinkedList();
        this.mOnApiSucceedOnceListener = null;
        this.NO_RETRY_AFTER_VALUE = -1;
        this.isCmsEnabled = false;
        this.mStoreClient = messageStoreClient;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mINetAPIEventListener = iNetAPIEventListener;
        boolean isMcsSupported = CmsUtil.isMcsSupported(this.mStoreClient.getContext(), this.mStoreClient.getClientID());
        this.isCmsEnabled = isMcsSupported;
        if (isMcsSupported) {
            this.mBufferDBTranslation = new BufferDBTranslationMcs(this.mStoreClient, iCloudMessageManagerHelper);
        } else {
            this.mBufferDBTranslation = new BufferDBTranslation(this.mStoreClient, iCloudMessageManagerHelper);
        }
        this.mLine = str;
        this.mSyncMsgType = syncMsgType;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z;
        super.handleMessage(message);
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        Log.i(this.TAG, "message :: " + valueOf);
        logWorkingStatus();
        if (valueOf == null) {
            valueOf = OMASyncEventType.DEFAULT;
        }
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[valueOf.ordinal()]) {
            case 1:
                this.mIsHandlerRunning = true;
                this.mINetAPIEventListener.onDeviceFlagUpdateSchedulerStarted();
                checkNextMsgFromWorkingQueue();
                break;
            case 2:
                if (!this.mIsHandlerRunning) {
                    this.mIsHandlerRunning = true;
                    checkNextMsgFromWorkingQueue();
                    break;
                }
                break;
            case 3:
                this.mIsHandlerRunning = false;
                break;
            case 4:
                this.mIsHandlerRunning = false;
                this.mWorkingQueue.clear();
                break;
            case 6:
                this.mINetAPIEventListener.onOneDeviceFlagUpdated((ParamOMAresponseforBufDB) message.obj);
                this.mWorkingQueue.poll();
                if (this.mIsHandlerRunning) {
                    sendEmptyMessage(OMASyncEventType.UPDATE_NEXT.getId());
                    break;
                }
                break;
            case 7:
                this.mINetAPIEventListener.onOneDeviceFlagUpdated((ParamOMAresponseforBufDB) message.obj);
                this.mWorkingQueue.poll();
                sendEmptyMessage(OMASyncEventType.UPDATE_NEXT.getId());
                break;
            case 8:
                if (this.mWorkingQueue.isEmpty()) {
                    sendEmptyMessage(OMASyncEventType.UPDATE_COMPLETED.getId());
                    break;
                } else {
                    checkNextMsgFromWorkingQueue();
                    break;
                }
            case 9:
                this.mINetAPIEventListener.onDeviceFlagUpdateCompleted((ParamOMAresponseforBufDB) message.obj);
                sendEmptyMessage(OMASyncEventType.ONE_LINE_FLAG_SYNC_COMPLETE.getId());
                break;
            case 11:
                this.mIsHandlerRunning = false;
                ParamOMAresponseforBufDB build = new ParamOMAresponseforBufDB.Builder().setLine(this.mLine).build();
                Object obj = message.obj;
                this.mINetAPIEventListener.onOmaAuthenticationFailed(build, (obj == null || !(obj instanceof Number)) ? 0L : ((Number) obj).longValue());
                break;
            case 12:
                if (this.mIsHandlerRunning) {
                    pause();
                    resume();
                    break;
                }
                break;
            case 13:
                z = this.mWorkingQueue.size() == 0;
                setWorkingQueue((BufferDBChangeParamList) message.obj);
                if (this.mIsHandlerRunning && z) {
                    checkNextMsgFromWorkingQueue();
                    break;
                }
                break;
            case 14:
                z = this.mWorkingQueue.size() == 0;
                this.mWorkingQueue.offer((CloudMessageBulkDeletion) message.obj);
                if (this.mIsHandlerRunning && z) {
                    checkNextMsgFromWorkingQueue();
                    break;
                }
                break;
            case 15:
                z = this.mWorkingQueue.size() == 0;
                this.mWorkingQueue.offer((CloudMessageBulkUpdate) message.obj);
                if (this.mIsHandlerRunning && z) {
                    checkNextMsgFromWorkingQueue();
                    break;
                }
                break;
            case 16:
                this.mWorkingQueue.poll();
                z = this.mWorkingQueue.size() == 0;
                fallbackOneMessageUpdate(message.obj);
                if (this.mIsHandlerRunning && z) {
                    checkNextMsgFromWorkingQueue();
                    break;
                }
                break;
            case 17:
                this.mINetAPIEventListener.onOneDeviceFlagUpdated((ParamOMAresponseforBufDB) message.obj);
                this.mWorkingQueue.poll();
                handleSuccessBulkOpResponse(message.obj);
                if (this.mIsHandlerRunning) {
                    sendEmptyMessage(OMASyncEventType.UPDATE_NEXT.getId());
                    break;
                }
                break;
            case 18:
                this.mINetAPIEventListener.onPauseCMNNetApiWithResumeDelay(((Integer) message.obj).intValue());
                break;
            case 19:
                Object obj2 = message.obj;
                if (obj2 != null) {
                    onApiTreatAsSucceed((IHttpAPICommonInterface) obj2);
                    break;
                }
                break;
            case 20:
                IHttpAPICommonInterface iHttpAPICommonInterface = (IHttpAPICommonInterface) message.obj;
                if (iHttpAPICommonInterface != null) {
                    this.mStoreClient.getMcsRetryMapAdapter().retryApi(iHttpAPICommonInterface, this);
                    break;
                }
                break;
            case 21:
                Object obj3 = message.obj;
                if (obj3 != null) {
                    HttpResParamsWrapper httpResParamsWrapper = (HttpResParamsWrapper) obj3;
                    onApiTreatAsSucceed(httpResParamsWrapper.mApi);
                    sendMessage(obtainMessage(OMASyncEventType.UPDATE_ONE_SUCCESSFUL.getId(), httpResParamsWrapper.mBufDbParams));
                    break;
                }
                break;
            case 22:
                this.mStoreClient.getRetryMapAdapter().retryApi((Pair) message.obj, this, null, null);
                break;
            case 23:
                this.mINetAPIEventListener.onOneMessageUploaded((ParamOMAresponseforBufDB) message.obj);
                this.mWorkingQueue.poll();
                checkNextMsgFromWorkingQueue();
                break;
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.BaseDeviceDataUpdateHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType;

        static {
            int[] iArr = new int[OMASyncEventType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType = iArr;
            try {
                iArr[OMASyncEventType.TRANSIT_TO_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.TRANSIT_TO_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.TRANSIT_TO_PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.TRANSIT_TO_STOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.PUT_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_ONE_SUCCESSFUL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_FAILED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_NEXT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_COMPLETED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ONE_LINE_FLAG_SYNC_COMPLETE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREDENTIAL_EXPIRED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MSTORE_REDIRECT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ADD_TO_WORKINGQUEUE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ADD_TO_QUEUE_BULKDELETE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ADD_TO_QUEUE_BULKUPDATE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.FALLBACK_ONE_UPDATE_OR_DELETE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.BULK_UPDATE_OR_DELETE_SUCCESSFUL.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SELF_RETRY.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_SUCCEED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_FAILED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MOVE_ON.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.VVM_FALLBACK_TO_LAST_REQUEST.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_ONE_UPLOAD_COMPLETED.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    public void appendToWorkingQueue(BufferDBChangeParamList bufferDBChangeParamList) {
        Message message = new Message();
        message.obj = bufferDBChangeParamList;
        message.what = OMASyncEventType.ADD_TO_WORKINGQUEUE.getId();
        sendMessage(message);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean update(int i) {
        Log.i(this.TAG, "update with " + i);
        return sendEmptyMessage(i);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelay(int i, long j) {
        Log.i(this.TAG, "update with " + i + " delayed " + j);
        return sendEmptyMessageDelayed(i, j);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateMessage(Message message) {
        return sendMessage(message);
    }

    private void onApiTreatAsSucceed(IHttpAPICommonInterface iHttpAPICommonInterface) {
        this.mINetAPIEventListener.onOmaSuccess(iHttpAPICommonInterface);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled() && this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getControllerOfLastFailedApi() == null && this.mOnApiSucceedOnceListener != null) {
            Log.i(this.TAG, "API in BaseDeviceDataUpdateHandler succeed, ready to move on");
            this.mOnApiSucceedOnceListener.onMoveOn();
            this.mOnApiSucceedOnceListener = null;
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
        sendMessage(obtainMessage(OMASyncEventType.MOVE_ON.getId(), new HttpResParamsWrapper(iHttpAPICommonInterface, obj)));
    }

    private void handleFailedBulkDeleteResponse(IHttpAPICommonInterface iHttpAPICommonInterface) {
        if (iHttpAPICommonInterface == null || !(iHttpAPICommonInterface instanceof CloudMessageBulkDeletion)) {
            return;
        }
        CloudMessageBulkDeletion cloudMessageBulkDeletion = (CloudMessageBulkDeletion) iHttpAPICommonInterface;
        boolean z = !this.mStoreClient.getCloudMessageStrategyManager().getStrategy().bulkOpTreatSuccessRequestResponse(cloudMessageBulkDeletion.getResponseCode());
        Log.i(this.TAG, "shouldRetry: " + z + " getRetryCount: " + cloudMessageBulkDeletion.getRetryCount());
        if (!z || cloudMessageBulkDeletion.getRetryCount() >= 1) {
            return;
        }
        cloudMessageBulkDeletion.increaseRetryCount();
        sendMessage(obtainMessage(OMASyncEventType.ADD_TO_QUEUE_BULKDELETE.getId(), cloudMessageBulkDeletion));
    }

    private void handleFailedBulkUpdateResponse(IHttpAPICommonInterface iHttpAPICommonInterface) {
        if (iHttpAPICommonInterface instanceof CloudMessageBulkUpdate) {
            CloudMessageBulkUpdate cloudMessageBulkUpdate = (CloudMessageBulkUpdate) iHttpAPICommonInterface;
            boolean z = !this.mStoreClient.getCloudMessageStrategyManager().getStrategy().bulkOpTreatSuccessRequestResponse(cloudMessageBulkUpdate.getResponseCode());
            Log.i(this.TAG, "handleSuccessBulkOpResponse shouldRetry: " + z + " getRetryCount: " + cloudMessageBulkUpdate.getRetryCount());
            if (!z || cloudMessageBulkUpdate.getRetryCount() >= 1) {
                return;
            }
            cloudMessageBulkUpdate.increaseRetryCount();
            sendMessage(obtainMessage(OMASyncEventType.ADD_TO_QUEUE_BULKUPDATE.getId(), cloudMessageBulkUpdate));
        }
    }

    private void handleSuccessBulkOpResponse(Object obj) {
        if (obj != null && (obj instanceof ParamOMAresponseforBufDB)) {
            ParamOMAresponseforBufDB paramOMAresponseforBufDB = (ParamOMAresponseforBufDB) obj;
            if (paramOMAresponseforBufDB.getBulkResponseList() == null) {
                return;
            }
            for (int i = 0; i < paramOMAresponseforBufDB.getBulkResponseList().response.length; i++) {
                Response response = paramOMAresponseforBufDB.getBulkResponseList().response[i];
                if (response.code == 403 && !this.mStoreClient.getCloudMessageStrategyManager().getStrategy().bulkOpTreatSuccessIndividualResponse(response.code)) {
                    setWorkingQueue(paramOMAresponseforBufDB.getBufferDBChangeParamList().mChangelst.get(i));
                }
            }
        }
    }

    private void gotoHandlerEventOnSuccess(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendEmptyMessage(i);
        }
    }

    private void gotoHandlerEventOnFailure(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendEmptyMessage(i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
        sendMessage(obtainMessage(OMASyncEventType.API_SUCCEED.getId(), iHttpAPICommonInterface));
        gotoHandlerEventOnSuccess(iHttpAPICommonInterface, i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        onFailedCall(iHttpAPICommonInterface);
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
                return;
            }
            ParamOMAresponseforBufDB.Builder line = new ParamOMAresponseforBufDB.Builder().setLine(this.mLine);
            if (iHttpAPICommonInterface instanceof CloudMessageDeleteIndividualObject) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_DELETE_UPDATE_FAILED).setBufferDBChangeParam(bufferDBChangeParam);
            } else if (iHttpAPICommonInterface instanceof CloudMessagePutObjectFlag) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_READ_UPDATE_FAILED).setBufferDBChangeParam(bufferDBChangeParam);
            } else if ((iHttpAPICommonInterface instanceof CloudMessageBulkDeletion) || (iHttpAPICommonInterface instanceof CloudMessageBulkUpdate)) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_BULK_UPDATE_COMPLETE);
            }
            sendMessage(obtainMessage(OMASyncEventType.UPDATE_FAILED.getId(), line.build()));
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled()) {
            this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, -1);
            return;
        }
        if (this.mIsHandlerRunning) {
            ParamOMAresponseforBufDB.Builder line = new ParamOMAresponseforBufDB.Builder().setLine(this.mLine);
            if (iHttpAPICommonInterface instanceof CloudMessageDeleteIndividualObject) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_DELETE_UPDATE_FAILED).setBufferDBChangeParam(bufferDBChangeParam);
            } else if (iHttpAPICommonInterface instanceof CloudMessagePutObjectFlag) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_READ_UPDATE_FAILED).setBufferDBChangeParam(bufferDBChangeParam);
            } else if (iHttpAPICommonInterface instanceof CloudMessageBulkDeletion) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_BULK_UPDATE_COMPLETE);
                handleFailedBulkDeleteResponse(iHttpAPICommonInterface);
            } else if (iHttpAPICommonInterface instanceof CloudMessageBulkUpdate) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_BULK_UPDATE_COMPLETE);
                handleFailedBulkUpdateResponse(iHttpAPICommonInterface);
            }
            sendMessage(obtainMessage(OMASyncEventType.UPDATE_FAILED.getId(), line.build()));
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedEvent(int i, Object obj) {
        gotoHandlerEventOnFailure(i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled() && !this.isCmsEnabled) {
            this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, -1);
            return;
        }
        if (this.mIsHandlerRunning) {
            ParamOMAresponseforBufDB.Builder line = new ParamOMAresponseforBufDB.Builder().setLine(this.mLine);
            if (iHttpAPICommonInterface instanceof CloudMessageDeleteIndividualObject) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_DELETE_UPDATE_FAILED);
            } else if (iHttpAPICommonInterface instanceof CloudMessagePutObjectFlag) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_READ_UPDATE_FAILED);
            } else if (iHttpAPICommonInterface instanceof CloudMessageBulkDeletion) {
                line.setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_BULK_UPDATE_COMPLETE);
                handleFailedBulkDeleteResponse(iHttpAPICommonInterface);
            }
            sendMessage(obtainMessage(OMASyncEventType.UPDATE_FAILED.getId(), line.build()));
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled()) {
            Log.i(this.TAG, " on Over Request : " + iHttpAPICommonInterface.getClass().getSimpleName() + " errorCode " + str + " retryAfter " + i);
            if (this.isCmsEnabled) {
                sendMessageDelayed(obtainMessage(OMASyncEventType.API_FAILED.getId(), iHttpAPICommonInterface), i);
                return;
            } else {
                this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, i);
                return;
            }
        }
        sendEmptyMessage(OMASyncEventType.UPDATE_ONE_SUCCESSFUL.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlowWithMessage(Message message) {
        if (message != null && message.obj != null) {
            Log.i(this.TAG, "onFixedFlowWithMessage message is " + ((ParamOMAresponseforBufDB) message.obj).getActionType());
        }
        sendMessage(message);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
        this.mIsHandlerRunning = true;
        sendEmptyMessage(OMASyncEventType.TRANSIT_TO_START.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void pause() {
        sendEmptyMessage(OMASyncEventType.TRANSIT_TO_PAUSE.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void resume() {
        sendEmptyMessage(OMASyncEventType.TRANSIT_TO_RESUME.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void stop() {
        this.mIsHandlerRunning = false;
        sendEmptyMessage(OMASyncEventType.TRANSIT_TO_STOP.getId());
    }

    protected void checkNextMsgFromWorkingQueue() {
        boolean z;
        if (!this.mWorkingQueue.isEmpty()) {
            HttpRequestParams peek = this.mWorkingQueue.peek();
            if (peek == null) {
                this.mWorkingQueue.poll();
                Log.e(this.TAG, " Should not be Null. Skip the current and plz check enqueue");
                checkNextMsgFromWorkingQueue();
                return;
            }
            if (peek instanceof BaseNMSRequest) {
                BaseNMSRequest baseNMSRequest = (BaseNMSRequest) peek;
                z = baseNMSRequest.updateToken();
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEnableATTHeader()) {
                    baseNMSRequest.updateServerRoot(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost());
                }
            } else {
                z = true;
            }
            if (z) {
                this.mStoreClient.getHttpController().execute(peek);
                return;
            }
            Log.d(this.TAG, "Url: " + IMSLog.checker(peek.getUrl()));
            this.mWorkingQueue.poll();
            checkNextMsgFromWorkingQueue();
            return;
        }
        sendEmptyMessage(OMASyncEventType.UPDATE_COMPLETED.getId());
    }

    protected void logWorkingStatus() {
        Log.i(this.TAG, "mLine: " + IMSLog.checker(this.mLine) + " logWorkingStatus: [mSyncMsgType: " + this.mSyncMsgType + " mIsHandlerRunning: " + this.mIsHandlerRunning + " mWorkingQueue size: " + this.mWorkingQueue.size() + "]");
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void setOnApiSucceedOnceListener(OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener) {
        this.mOnApiSucceedOnceListener = onApiSucceedOnceListener;
    }

    protected BulkUpdate createNewBulkUpdateParam(List<Reference> list, String[] strArr, OperationEnum operationEnum) {
        BulkUpdate bulkUpdate = new BulkUpdate();
        bulkUpdate.operation = operationEnum;
        FlagList flagList = new FlagList();
        bulkUpdate.flags = flagList;
        flagList.flag = strArr;
        ObjectReferenceList objectReferenceList = new ObjectReferenceList();
        bulkUpdate.objects = objectReferenceList;
        objectReferenceList.objectReference = (Reference[]) list.toArray(new Reference[list.size()]);
        return bulkUpdate;
    }

    protected BulkDelete createNewBulkDeleteParam(List<Reference> list) {
        BulkDelete bulkDelete = new BulkDelete();
        ObjectReferenceList objectReferenceList = new ObjectReferenceList();
        bulkDelete.objects = objectReferenceList;
        objectReferenceList.objectReference = (Reference[]) list.toArray(new Reference[list.size()]);
        return bulkDelete;
    }

    private void fallbackOneMessageUpdate(Object obj) {
        if (obj != null && (obj instanceof ParamOMAresponseforBufDB)) {
            ParamOMAresponseforBufDB paramOMAresponseforBufDB = (ParamOMAresponseforBufDB) obj;
            if (paramOMAresponseforBufDB.getBufferDBChangeParamList() == null || paramOMAresponseforBufDB.getBufferDBChangeParamList().mChangelst == null) {
                return;
            }
            Iterator<BufferDBChangeParam> it = paramOMAresponseforBufDB.getBufferDBChangeParamList().mChangelst.iterator();
            while (it.hasNext()) {
                setWorkingQueue(it.next());
            }
        }
    }
}
