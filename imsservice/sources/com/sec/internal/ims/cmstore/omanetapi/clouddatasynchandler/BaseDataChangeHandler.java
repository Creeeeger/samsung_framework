package com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslationMcs;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.FileDownloadHandler;
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
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public abstract class BaseDataChangeHandler extends Handler implements IControllerCommonInterface, IAPICallFlowListener {
    private final int NO_RETRY_AFTER_VALUE;
    private String TAG;
    protected boolean isCmsEnabled;
    protected final BufferDBTranslation mBufferDBTranslation;
    FileDownloadHandler mFileDownloadHandler;
    protected ICloudMessageManagerHelper mICloudMessageManagerHelper;
    private INetAPIEventListener mINetAPIEventListener;
    protected boolean mIsFTThumbnailDownload;
    protected boolean mIsHandlerRunning;
    protected final String mLine;
    private OMANetAPIHandler.OnApiSucceedOnceListener mOnApiSucceedOnceListener;
    protected MessageStoreClient mStoreClient;
    protected final SyncMsgType mSyncMsgType;
    private final IUIEventCallback mUIInterface;
    protected final Queue<BufferDBChangeParam> mWorkingQueue;

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam, SyncMsgType syncMsgType, int i) {
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

    protected abstract Pair<HttpRequestParams, Boolean> peekWorkingQueue();

    protected abstract void setWorkingQueue(BufferDBChangeParam bufferDBChangeParam);

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelayRetry(int i, long j) {
        return false;
    }

    public BaseDataChangeHandler(Looper looper, MessageStoreClient messageStoreClient, INetAPIEventListener iNetAPIEventListener, IUIEventCallback iUIEventCallback, String str, SyncMsgType syncMsgType, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(looper);
        this.TAG = BaseDataChangeHandler.class.getSimpleName();
        this.mWorkingQueue = new LinkedList();
        this.mINetAPIEventListener = null;
        this.mICloudMessageManagerHelper = null;
        this.mIsHandlerRunning = false;
        this.mOnApiSucceedOnceListener = null;
        this.NO_RETRY_AFTER_VALUE = -1;
        this.isCmsEnabled = false;
        this.mIsFTThumbnailDownload = false;
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
        this.mUIInterface = iUIEventCallback;
        this.mSyncMsgType = syncMsgType;
        this.mICloudMessageManagerHelper = iCloudMessageManagerHelper;
        this.mFileDownloadHandler = new FileDownloadHandler(this, looper, messageStoreClient, this.mBufferDBTranslation);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ArrayList<BufferDBChangeParam> arrayList;
        super.handleMessage(message);
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        Log.i(this.TAG, "message: " + valueOf);
        logWorkingStatus();
        if (valueOf == null) {
            valueOf = OMASyncEventType.DEFAULT;
        }
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[valueOf.ordinal()]) {
            case 1:
                this.mIsHandlerRunning = true;
                BufferDBChangeParamList bufferDBChangeParamList = (BufferDBChangeParamList) message.obj;
                if (bufferDBChangeParamList == null || (arrayList = bufferDBChangeParamList.mChangelst) == null || arrayList.size() <= 0) {
                    sendEmptyMessage(OMASyncEventType.OBJECTS_AND_PAYLOAD_DOWNLOAD_COMPLETE.getId());
                    break;
                } else {
                    Log.i(this.TAG, "mWorkingQueue empty: " + this.mWorkingQueue.isEmpty());
                    if (this.mWorkingQueue.isEmpty()) {
                        setWorkingQueue(bufferDBChangeParamList);
                        checkNextMsgFromWorkingQueue();
                        break;
                    } else {
                        setWorkingQueue(bufferDBChangeParamList);
                        break;
                    }
                }
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
            case 5:
                ParamOMAresponseforBufDB paramOMAresponseforBufDB = (ParamOMAresponseforBufDB) message.obj;
                this.mINetAPIEventListener.onNotificationObjectDownloaded(paramOMAresponseforBufDB);
                Log.i(this.TAG, "mIsFTThumbnailDownload: " + this.mIsFTThumbnailDownload);
                if (!this.mIsFTThumbnailDownload) {
                    this.mWorkingQueue.poll();
                }
                if (this.isCmsEnabled && paramOMAresponseforBufDB != null && paramOMAresponseforBufDB.getActionType() == ParamOMAresponseforBufDB.ActionType.NOTIFICATION_ALL_PAYLOAD_DOWNLOADED) {
                    sendEmptyMessage(OMASyncEventType.OBJECT_FETCH_DOWNLOAD_DONE.getId());
                    break;
                } else if (this.mIsHandlerRunning) {
                    checkNextMsgFromWorkingQueue();
                    break;
                }
                break;
            case 6:
                this.mINetAPIEventListener.onMessageDownloadCompleted(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.ALL_PAYLOAD_NOTIFY).setLine(this.mLine).setSyncType(this.mSyncMsgType).build());
                break;
            case 7:
                this.mINetAPIEventListener.onMessageDownloadCompleted(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.NOTIFICATION_OBJECTS_DOWNLOAD_COMPLETE).build());
                sendEmptyMessage(OMASyncEventType.NORMAL_SYNC_COMPLETE.getId());
                break;
            case 8:
                this.mINetAPIEventListener.onNormalSyncComplete(false);
                sendEmptyMessage(OMASyncEventType.ONE_LINE_NORMAL_SYNC_COMPLETE.getId());
                break;
            case 9:
                this.mIsHandlerRunning = false;
                ParamOMAresponseforBufDB build = new ParamOMAresponseforBufDB.Builder().setLine(this.mLine).build();
                Object obj = message.obj;
                this.mINetAPIEventListener.onOmaAuthenticationFailed(build, (obj == null || !(obj instanceof Number)) ? 0L : ((Number) obj).longValue());
                break;
            case 11:
                this.mWorkingQueue.clear();
                break;
            case 12:
                this.mINetAPIEventListener.onPauseCMNNetApiWithResumeDelay(((Integer) message.obj).intValue());
                break;
            case 13:
                this.mUIInterface.notifyAppUIScreen(ATTConstants.AttAmbsUIScreenNames.SteadyStateError_ErrMsg7.getId(), IUIEventCallback.POP_UP, 0);
                break;
            case 14:
                boolean z = this.mWorkingQueue.size() == 0;
                setWorkingQueue((BufferDBChangeParamList) message.obj);
                if (this.mIsHandlerRunning && z) {
                    checkNextMsgFromWorkingQueue();
                    break;
                }
                break;
            case 15:
                if (this.mIsHandlerRunning) {
                    pause();
                    resume();
                    break;
                }
                break;
            case 16:
                Object obj2 = message.obj;
                if (obj2 != null) {
                    onApiTreatAsSucceed((IHttpAPICommonInterface) obj2);
                    break;
                }
                break;
            case 17:
                IHttpAPICommonInterface iHttpAPICommonInterface = (IHttpAPICommonInterface) message.obj;
                if (iHttpAPICommonInterface != null) {
                    this.mStoreClient.getMcsRetryMapAdapter().retryApi(iHttpAPICommonInterface, this);
                    break;
                }
                break;
            case 18:
                Object obj3 = message.obj;
                if (obj3 != null) {
                    HttpResParamsWrapper httpResParamsWrapper = (HttpResParamsWrapper) obj3;
                    onApiTreatAsSucceed(httpResParamsWrapper.mApi);
                    gotoHandlerEvent(OMASyncEventType.DOWNLOAD_RETRIVED.getId(), httpResParamsWrapper.mBufDbParams);
                    break;
                }
                break;
            case 19:
                this.mWorkingQueue.poll();
                if (this.mIsHandlerRunning) {
                    checkNextMsgFromWorkingQueue();
                    break;
                }
                break;
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.BaseDataChangeHandler$1, reason: invalid class name */
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
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DOWNLOAD_RETRIVED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_FETCH_DOWNLOAD_DONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECTS_AND_PAYLOAD_DOWNLOAD_COMPLETE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.NORMAL_SYNC_COMPLETE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREDENTIAL_EXPIRED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ONE_LINE_NORMAL_SYNC_COMPLETE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CANCEL_DOWNLOADING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SELF_RETRY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_ERR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ADD_TO_WORKINGQUEUE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MSTORE_REDIRECT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_SUCCEED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_FAILED.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MOVE_ON.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DOWNLOAD_FILE_API_FAILED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    private void gotoHandlerEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendEmptyMessage(i);
        }
    }

    private void gotoHandlerEventOnFailure(IHttpAPICommonInterface iHttpAPICommonInterface) {
        Log.i(this.TAG, "gotoHandlerEventOnFailure: isRetryEnabled: " + this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled());
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled()) {
            this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, -1);
        } else {
            sendEmptyMessage(OMASyncEventType.DOWNLOAD_RETRIVED.getId());
        }
    }

    private boolean checkNonAdhocPayloadFail(Object obj) {
        BufferDBChangeParam bufferDBChangeParam;
        boolean isGbaSupported = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isGbaSupported();
        Log.i(this.TAG, "checkNonAdhocPayloadFail isGbaSupported: " + isGbaSupported);
        if (!isGbaSupported) {
            return true;
        }
        if (obj instanceof ParamOMAresponseforBufDB) {
            bufferDBChangeParam = ((ParamOMAresponseforBufDB) obj).getBufferDBChangeParam();
        } else {
            bufferDBChangeParam = (BufferDBChangeParam) obj;
        }
        ParamOMAresponseforBufDB.Builder bufferDBChangeParam2 = new ParamOMAresponseforBufDB.Builder().setBufferDBChangeParam(bufferDBChangeParam);
        bufferDBChangeParam2.setActionType(ParamOMAresponseforBufDB.ActionType.ADHOC_PAYLOAD_DOWNLOAD_FAILED);
        gotoHandlerEvent(OMASyncEventType.DOWNLOAD_RETRIVED.getId(), bufferDBChangeParam2.build());
        return false;
    }

    public void appendToWorkingQueue(BufferDBChangeParam bufferDBChangeParam) {
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        bufferDBChangeParamList.mChangelst.add(bufferDBChangeParam);
        Message message = new Message();
        message.obj = bufferDBChangeParamList;
        message.what = OMASyncEventType.ADD_TO_WORKINGQUEUE.getId();
        sendMessage(message);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
        sendEmptyMessage(OMASyncEventType.OBJECT_AND_PAYLOAD_DOWNLOAD.getId());
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
        pause();
        sendEmptyMessage(OMASyncEventType.TRANSIT_TO_STOP.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendEmptyMessage(i);
        }
    }

    private void onApiTreatAsSucceed(IHttpAPICommonInterface iHttpAPICommonInterface) {
        this.mINetAPIEventListener.onOmaSuccess(iHttpAPICommonInterface);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled() && this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getControllerOfLastFailedApi() == null && this.mOnApiSucceedOnceListener != null) {
            Log.i(this.TAG, "API in BaseDataChangeHandler succeed, ready to move on");
            this.mOnApiSucceedOnceListener.onMoveOn();
            this.mOnApiSucceedOnceListener = null;
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
        Log.d(this.TAG, "onMoveOnToNext  " + iHttpAPICommonInterface.getClass().getSimpleName());
        if (checkNonAdhocPayloadFail(obj)) {
            gotoHandlerEvent(OMASyncEventType.MOVE_ON.getId(), new HttpResParamsWrapper(iHttpAPICommonInterface, obj));
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        Log.d(this.TAG, "not used in this handler");
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
        gotoHandlerEvent(OMASyncEventType.API_SUCCEED.getId(), iHttpAPICommonInterface);
        gotoHandlerEvent(i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        gotoHandlerEventOnFailure(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
        if (checkNonAdhocPayloadFail(bufferDBChangeParam)) {
            gotoHandlerEventOnFailure(iHttpAPICommonInterface);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
        if (this.isCmsEnabled) {
            if (this.mIsHandlerRunning) {
                onMoveOnToNext(iHttpAPICommonInterface, null);
                return;
            }
            return;
        }
        gotoHandlerEventOnFailure(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedEvent(int i, Object obj) {
        if (checkNonAdhocPayloadFail(obj)) {
            gotoHandlerEvent(i, obj);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled()) {
            Log.d(this.TAG, " on Over Request : " + iHttpAPICommonInterface.getClass().getSimpleName() + " errorCode " + str + " retryAfter " + i);
            if (this.isCmsEnabled) {
                sendMessageDelayed(obtainMessage(OMASyncEventType.API_FAILED.getId(), iHttpAPICommonInterface), i);
                return;
            } else {
                Log.i(this.TAG, "onOverRequest, go to session gen API if necessary");
                this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, i);
                return;
            }
        }
        sendEmptyMessage(OMASyncEventType.DOWNLOAD_RETRIVED.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlowWithMessage(Message message) {
        if (message != null && message.obj != null) {
            Log.i(this.TAG, "onFixedFlowWithMessage action is " + ((ParamOMAresponseforBufDB) message.obj).getActionType() + " event is " + message.what);
        }
        sendMessage(message);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlow(int i) {
        Log.i(this.TAG, "onFixedFlow event is " + i);
        sendEmptyMessage(i);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean update(int i) {
        return sendEmptyMessage(i);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelay(int i, long j) {
        return sendEmptyMessageDelayed(i, j);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateMessage(Message message) {
        return sendMessage(message);
    }

    protected void checkNextMsgFromWorkingQueue() {
        boolean z;
        if (!this.mWorkingQueue.isEmpty()) {
            Pair<HttpRequestParams, Boolean> peekWorkingQueue = peekWorkingQueue();
            if (peekWorkingQueue == null) {
                this.mIsFTThumbnailDownload = false;
                this.mWorkingQueue.poll();
                checkNextMsgFromWorkingQueue();
                return;
            }
            if (((Boolean) peekWorkingQueue.second).booleanValue()) {
                Log.i(this.TAG, "checkNextMsgFromWorkingQueue largefile download case");
                return;
            }
            Object obj = peekWorkingQueue.first;
            if (obj instanceof BaseNMSRequest) {
                z = ((BaseNMSRequest) obj).updateToken();
                if (!z) {
                    Log.i(this.TAG, "updateToken is null, again using mLine: " + IMSLog.checker(this.mLine));
                    z = ((BaseNMSRequest) peekWorkingQueue.first).updateToken(this.mLine);
                }
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEnableATTHeader()) {
                    ((BaseNMSRequest) peekWorkingQueue.first).updateServerRoot(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost());
                }
            } else {
                z = true;
            }
            if (z) {
                this.mStoreClient.getHttpController().execute((HttpRequestParams) peekWorkingQueue.first);
                return;
            }
            Log.d(this.TAG, "Url: " + IMSLog.checker(((HttpRequestParams) peekWorkingQueue.first).getUrl()));
            this.mWorkingQueue.poll();
            checkNextMsgFromWorkingQueue();
            return;
        }
        sendEmptyMessage(OMASyncEventType.OBJECTS_AND_PAYLOAD_DOWNLOAD_COMPLETE.getId());
    }

    protected void setWorkingQueue(BufferDBChangeParamList bufferDBChangeParamList) {
        Log.d(this.TAG, "setWorkingQueue: " + bufferDBChangeParamList);
        Iterator<BufferDBChangeParam> it = bufferDBChangeParamList.mChangelst.iterator();
        while (it.hasNext()) {
            BufferDBChangeParam next = it.next();
            if (next != null) {
                setWorkingQueue(next);
            }
        }
    }

    protected void logWorkingStatus() {
        Log.d(this.TAG, "logWorkingStatus: [mLine: " + IMSLog.checker(this.mLine) + ", mSyncMsgType: " + this.mSyncMsgType + ", mIsHandlerRunning: " + this.mIsHandlerRunning + ", mWorkingQueue size: " + this.mWorkingQueue.size() + "]");
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void setOnApiSucceedOnceListener(OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener) {
        this.mOnApiSucceedOnceListener = onApiSucceedOnceListener;
    }
}
