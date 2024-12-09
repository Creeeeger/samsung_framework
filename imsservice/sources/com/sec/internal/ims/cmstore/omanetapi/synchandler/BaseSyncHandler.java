package com.sec.internal.ims.cmstore.omanetapi.synchandler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslationMcs;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageBulkCreation;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateAllObjects;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateFile;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetAllPayloads;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetLargeFile;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageHeadLargeFile;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageObjectsOpSearch;
import com.sec.internal.ims.cmstore.omanetapi.nms.McsSyncMessageStatus;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.HttpResParamsWrapper;
import com.sec.internal.ims.cmstore.params.ParamBulkCreation;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.SyncMessageStatus;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.data.Response;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public abstract class BaseSyncHandler extends Handler implements IControllerCommonInterface, IAPICallFlowListener {
    private final int NO_RETRY_AFTER_VALUE;
    private String TAG;
    private final String TAG_CN;
    protected boolean isCmsEnabled;
    protected final BufferDBTranslation mBufferDBTranslation;
    protected ParamBulkCreation mBulkCreation;
    protected final Queue<BufferDBChangeParam> mBulkUploadQueue;
    protected OMASyncEventType mEventType;
    FileHandler mFileHandler;
    protected ICloudMessageManagerHelper mICloudMessageManagerHelper;
    protected final INetAPIEventListener mINetAPIEventListener;
    protected boolean mIsFTThumbnailDownload;
    protected boolean mIsFullSync;
    protected boolean mIsHandlerRunning;
    protected boolean mIsSearchFinished;
    protected final String mLine;
    private OMANetAPIHandler.OnApiSucceedOnceListener mOnApiSucceedOnceListener;
    protected String mSearchCursor;
    protected MessageStoreClient mStoreClient;
    protected final SyncMsgType mSyncMsgType;
    protected final IUIEventCallback mUIInterface;
    protected final Queue<BufferDBChangeParam> mWorkingDownloadQueue;
    protected final HashSet<Pair<Integer, Long>> mWorkingDownloadSet;
    protected final Queue<BufferDBChangeParam> mWorkingUploadQueue;

    public enum SyncOperation {
        DOWNLOAD,
        UPLOAD,
        BULK_UPLOAD,
        SEARCH,
        SYNC_MESSAGE_STATUS
    }

    protected abstract void makeBulkUploadparameter();

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
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

    protected abstract HttpRequestParams peekBulkUploadQueue();

    protected abstract Pair<HttpRequestParams, Boolean> peekDownloadQueue();

    protected abstract Pair<HttpRequestParams, Boolean> peekUploadQueue();

    protected abstract void setBulkUploadQueue(BufferDBChangeParamList bufferDBChangeParamList);

    protected abstract void setWorkingQueue(BufferDBChangeParam bufferDBChangeParam, SyncOperation syncOperation);

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelayRetry(int i, long j) {
        return false;
    }

    BaseSyncHandler(Looper looper, MessageStoreClient messageStoreClient, INetAPIEventListener iNetAPIEventListener, IUIEventCallback iUIEventCallback, String str, SyncMsgType syncMsgType, ICloudMessageManagerHelper iCloudMessageManagerHelper, boolean z) {
        super(looper);
        this.TAG = BaseSyncHandler.class.getSimpleName();
        this.TAG_CN = BaseSyncHandler.class.getSimpleName();
        this.mWorkingDownloadQueue = new LinkedList();
        this.mWorkingUploadQueue = new LinkedList();
        this.mBulkUploadQueue = new LinkedList();
        this.mWorkingDownloadSet = new HashSet<>();
        this.mBulkCreation = null;
        this.mIsHandlerRunning = false;
        this.mIsSearchFinished = false;
        this.mOnApiSucceedOnceListener = null;
        this.NO_RETRY_AFTER_VALUE = -1;
        this.mIsFTThumbnailDownload = false;
        this.mIsFullSync = false;
        this.isCmsEnabled = false;
        this.mStoreClient = messageStoreClient;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mINetAPIEventListener = iNetAPIEventListener;
        boolean isMcsSupported = CmsUtil.isMcsSupported(this.mStoreClient.getContext(), this.mStoreClient.getClientID());
        this.isCmsEnabled = isMcsSupported;
        if (isMcsSupported) {
            BufferDBTranslationMcs bufferDBTranslationMcs = new BufferDBTranslationMcs(this.mStoreClient, iCloudMessageManagerHelper);
            this.mBufferDBTranslation = bufferDBTranslationMcs;
            this.mFileHandler = new FileHandler(this, looper, bufferDBTranslationMcs, messageStoreClient);
        } else {
            this.mBufferDBTranslation = new BufferDBTranslation(this.mStoreClient, iCloudMessageManagerHelper);
        }
        this.mUIInterface = iUIEventCallback;
        this.mICloudMessageManagerHelper = iCloudMessageManagerHelper;
        this.mLine = str;
        this.mIsFullSync = z;
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEnableFolderIdInSearch()) {
            this.mSyncMsgType = syncMsgType;
        } else {
            this.mSyncMsgType = SyncMsgType.DEFAULT;
        }
        this.mSearchCursor = this.mBufferDBTranslation.getSearchCursorByLine(str, this.mSyncMsgType);
        OMASyncEventType initialSyncStatusByLine = this.mBufferDBTranslation.getInitialSyncStatusByLine(str, this.mSyncMsgType, CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCSTATUS);
        this.mEventType = initialSyncStatusByLine;
        if (OMASyncEventType.INITIAL_SYNC_COMPLETE.equals(initialSyncStatusByLine) || OMASyncEventType.INITIAL_SYNC_SUMMARY_COMPLETE.equals(this.mEventType)) {
            this.mIsSearchFinished = true;
        }
    }

    public void resetSearchParam() {
        this.mSearchCursor = this.mBufferDBTranslation.getSearchCursorByLine(this.mLine, this.mSyncMsgType);
        this.mEventType = this.mBufferDBTranslation.getInitialSyncStatusByLine(this.mLine, this.mSyncMsgType, CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCSTATUS);
        this.mWorkingDownloadQueue.clear();
        this.mWorkingUploadQueue.clear();
        this.mWorkingDownloadSet.clear();
        Log.d(this.TAG, "resetSearchParam, cursor: " + this.mSearchCursor + " event: " + this.mEventType);
    }

    public void setIsFullSyncParam(boolean z) {
        this.mIsFullSync = z;
        Log.i(this.TAG, "setIsFullSyncParam, mIsFullSync: " + this.mIsFullSync);
    }

    public boolean getIsFullSyncParam() {
        return this.mIsFullSync;
    }

    public void setInitSyncComplete() {
        this.mIsHandlerRunning = false;
        this.mIsSearchFinished = true;
        this.mWorkingDownloadQueue.clear();
        if (!this.isCmsEnabled) {
            this.mWorkingUploadQueue.clear();
        }
        this.mWorkingDownloadSet.clear();
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldClearCursorUponInitSyncDone()) {
            this.mSearchCursor = "";
        }
        this.mEventType = null;
        logWorkingStatus();
    }

    public void appendToWorkingQueue(BufferDBChangeParamList bufferDBChangeParamList, SyncOperation syncOperation) {
        Log.d(this.TAG, "appendToWorkingQueue: " + syncOperation);
        if (SyncOperation.BULK_UPLOAD.equals(syncOperation)) {
            Message message = new Message();
            message.obj = bufferDBChangeParamList;
            message.what = OMASyncEventType.ADD_TO_QUEUE_BULKUPLOAD.getId();
            sendMessage(message);
        }
    }

    public void appendToWorkingQueue(BufferDBChangeParam bufferDBChangeParam, SyncOperation syncOperation) {
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        bufferDBChangeParamList.mChangelst.add(bufferDBChangeParam);
        if (SyncOperation.DOWNLOAD.equals(syncOperation)) {
            Message message = new Message();
            message.obj = bufferDBChangeParamList;
            message.what = OMASyncEventType.ADD_TO_WORKINGQUEUE.getId();
            sendMessage(message);
            return;
        }
        if (SyncOperation.UPLOAD.equals(syncOperation)) {
            Message message2 = new Message();
            message2.obj = bufferDBChangeParamList;
            message2.what = OMASyncEventType.ADD_TO_UPLOADWORKINGQUEUE.getId();
            sendMessage(message2);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        SyncMessageStatus syncRequestParam;
        boolean z;
        int id;
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
                this.mINetAPIEventListener.onInitialSyncStarted();
                if (this.isCmsEnabled) {
                    sendSyncMessageStatusRequest(SyncOperation.SEARCH);
                } else {
                    this.mStoreClient.getHttpController().execute(new CloudMessageObjectsOpSearch(this, this.mSearchCursor, this.mLine, this.mSyncMsgType, false, this.mStoreClient, this.mIsFullSync));
                }
                this.mIsSearchFinished = false;
                this.mUIInterface.showInitsyncIndicator(true);
                break;
            case 2:
                if (this.mIsHandlerRunning) {
                    this.mINetAPIEventListener.onPartialSyncSummaryCompleted((ParamOMAresponseforBufDB) message.obj);
                    this.mStoreClient.getHttpController().execute(new CloudMessageObjectsOpSearch(this, this.mSearchCursor, this.mLine, this.mSyncMsgType, false, this.mStoreClient, this.mIsFullSync));
                    this.mUIInterface.showInitsyncIndicator(true);
                }
                this.mIsSearchFinished = false;
                break;
            case 3:
                this.mStoreClient.getHttpController().execute(new CloudMessageObjectsOpSearch(this, this.mSearchCursor, this.mLine, this.mSyncMsgType, true, this.mStoreClient, this.mIsFullSync));
                this.mIsSearchFinished = false;
                this.mUIInterface.showInitsyncIndicator(true);
                break;
            case 4:
                this.mIsHandlerRunning = false;
                this.mINetAPIEventListener.onSyncFailed(new ParamOMAresponseforBufDB.Builder().setOMASyncEventType(OMASyncEventType.PAUSE_INITIAL_SYNC).setLine(this.mLine).setSyncType(this.mSyncMsgType).setIsFullSync(this.mIsFullSync).setActionType(ParamOMAresponseforBufDB.ActionType.SYNC_FAILED).build());
                break;
            case 5:
                if (!this.mIsHandlerRunning) {
                    this.mIsHandlerRunning = true;
                    if (this.isCmsEnabled) {
                        if (this.mIsSearchFinished) {
                            if (!this.mWorkingDownloadQueue.isEmpty()) {
                                sendSyncMessageStatusRequest(SyncOperation.DOWNLOAD);
                                break;
                            } else if (!this.mWorkingUploadQueue.isEmpty()) {
                                sendSyncMessageStatusRequest(SyncOperation.UPLOAD);
                                break;
                            }
                        } else {
                            sendSyncMessageStatusRequest(SyncOperation.SEARCH);
                            break;
                        }
                    } else if (this.mIsSearchFinished) {
                        if (!this.mWorkingDownloadQueue.isEmpty()) {
                            checkNextMsgFromDownloadWorkingQueue(SyncOperation.DOWNLOAD);
                            this.mUIInterface.showInitsyncIndicator(true);
                            break;
                        } else if (!this.mWorkingUploadQueue.isEmpty()) {
                            checkNextMsgFromUploadWorkingQueue(SyncOperation.UPLOAD);
                            this.mUIInterface.showInitsyncIndicator(true);
                            break;
                        } else if (this.mBulkCreation != null) {
                            retryBulkUploadRequest();
                            this.mUIInterface.showInitsyncIndicator(true);
                            break;
                        } else if (!this.mBulkUploadQueue.isEmpty()) {
                            checkNextBulkUploadWorkingQueue();
                            this.mUIInterface.showInitsyncIndicator(true);
                            break;
                        }
                    } else {
                        this.mStoreClient.getHttpController().execute(new CloudMessageObjectsOpSearch(this, this.mSearchCursor, this.mLine, this.mSyncMsgType, false, this.mStoreClient, this.mIsFullSync));
                        this.mUIInterface.showInitsyncIndicator(true);
                        break;
                    }
                }
                break;
            case 6:
                this.mIsHandlerRunning = false;
                break;
            case 7:
                this.mIsHandlerRunning = false;
                this.mWorkingDownloadQueue.clear();
                this.mWorkingUploadQueue.clear();
                this.mWorkingDownloadSet.clear();
                if (this.isCmsEnabled) {
                    this.mFileHandler.stop();
                }
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldClearCursorUponInitSyncDone()) {
                    this.mSearchCursor = "";
                }
                this.mEventType = null;
                ParamOMAresponseforBufDB build = new ParamOMAresponseforBufDB.Builder().setOMASyncEventType(OMASyncEventType.CANCEL_INITIAL_SYNC).setMStoreClient(this.mStoreClient).setLine(this.mLine).setSyncType(this.mSyncMsgType).setIsFullSync(this.mIsFullSync).setActionType(ParamOMAresponseforBufDB.ActionType.SYNC_FAILED).build();
                this.mUIInterface.showInitsyncIndicator(false);
                this.mINetAPIEventListener.onSyncFailed(build);
                break;
            case 8:
                this.mINetAPIEventListener.onInitSyncCompleted(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.INIT_SYNC_COMPLETE).setOMASyncEventType(valueOf).setMStoreClient(this.mStoreClient).setLine(this.mLine).setIsFullSync(this.mIsFullSync).setSyncType(this.mSyncMsgType).build());
                sendEmptyMessage(OMASyncEventType.ONE_LINE_INIT_SYNC_COMPLETE.getId());
                break;
            case 9:
                this.mIsSearchFinished = true;
                this.mINetAPIEventListener.onInitSyncSummaryCompleted((ParamOMAresponseforBufDB) message.obj);
                break;
            case 10:
                Log.i(this.TAG, "empty queue: " + this.mWorkingUploadQueue.isEmpty());
                if (this.mWorkingUploadQueue.isEmpty()) {
                    sendEmptyMessage(OMASyncEventType.OBJECT_END_UPLOAD.getId());
                    break;
                } else if (this.mIsHandlerRunning) {
                    checkNextMsgFromUploadWorkingQueue(SyncOperation.UPLOAD);
                    break;
                }
                break;
            case 11:
                Object obj = message.obj;
                if (obj instanceof SyncMessageStatus) {
                    syncRequestParam = (SyncMessageStatus) obj;
                } else {
                    syncRequestParam = getSyncRequestParam(this.mBufferDBTranslation.getInitialSyncStatusByLine(this.mLine, SyncMsgType.DEFAULT, CloudMessageProviderContract.BufferDBExtensionBase.SYNCMESSAGESTATUS));
                }
                if (syncRequestParam != null) {
                    handleSyncMessageStatusResponse(syncRequestParam);
                    break;
                }
                break;
            case 12:
                this.mINetAPIEventListener.onOneMessageUploaded((ParamOMAresponseforBufDB) message.obj);
                this.mWorkingUploadQueue.poll();
                checkNextMsgFromUploadWorkingQueue(SyncOperation.UPLOAD);
                break;
            case 13:
                this.mWorkingUploadQueue.poll();
                if (this.mIsHandlerRunning) {
                    checkNextMsgFromUploadWorkingQueue(SyncOperation.UPLOAD);
                    break;
                }
                break;
            case 14:
                this.mINetAPIEventListener.onOneMessageUploaded((ParamOMAresponseforBufDB) message.obj);
                this.mBulkCreation = null;
                checkIndividualResponseCodeUpload((ParamOMAresponseforBufDB) message.obj);
                checkNextBulkUploadWorkingQueue();
                break;
            case 15:
                this.mBulkCreation = null;
                fallbackOneMessageUplaod((ParamOMAresponseforBufDB) message.obj);
                checkNextMsgFromUploadWorkingQueue(SyncOperation.UPLOAD);
                break;
            case 16:
                this.mINetAPIEventListener.onMessageUploadCompleted(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.MESSAGE_UPLOAD_COMPLETE).setLine(this.mLine).build());
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkCreationEnabled() && !this.mBulkUploadQueue.isEmpty()) {
                    gotoHandlerEvent(OMASyncEventType.OBJECT_BULK_UPLOAD_COMPLETED.getId(), null);
                    break;
                } else if (this.isCmsEnabled) {
                    BufferDBTranslation bufferDBTranslation = this.mBufferDBTranslation;
                    String str = this.mLine;
                    SyncMsgType syncMsgType = SyncMsgType.DEFAULT;
                    OMASyncEventType initialSyncStatusByLine = bufferDBTranslation.getInitialSyncStatusByLine(str, syncMsgType, CloudMessageProviderContract.BufferDBExtensionBase.SYNCMESSAGESTATUS);
                    Log.d(this.TAG, " OBJECT_END_UPLOAD eventType " + initialSyncStatusByLine);
                    if (initialSyncStatusByLine == OMASyncEventType.SYNC_MESSAGE_INIT_STARTED) {
                        this.mStoreClient.getHttpController().execute(new McsSyncMessageStatus(this, McsConstants.PushMessages.VALUE_INIT, McsConstants.SyncMessageStatus.DONE, this.mStoreClient));
                        break;
                    } else if (initialSyncStatusByLine == OMASyncEventType.SYNC_MESSAGE_INIT_PENDING) {
                        this.mBufferDBTranslation.updateSyncStatusByLine(this.mLine, syncMsgType, CloudMessageProviderContract.BufferDBExtensionBase.SYNCMESSAGESTATUS, OMASyncEventType.SYNC_MESSAGE_INIT_DONE);
                        break;
                    } else if (initialSyncStatusByLine == OMASyncEventType.SYNC_MESSAGE_FORCE_ALL_STARTED) {
                        this.mStoreClient.getHttpController().execute(new McsSyncMessageStatus(this, McsConstants.PushMessages.VALUE_FORCE_ALL, McsConstants.SyncMessageStatus.DONE, this.mStoreClient));
                        break;
                    }
                } else {
                    sendEmptyMessage(OMASyncEventType.INITIAL_SYNC_COMPLETE.getId());
                    break;
                }
                break;
            case 17:
                Log.i(this.TAG, "empty queue: " + this.mWorkingUploadQueue.isEmpty());
                if (this.mWorkingDownloadQueue.isEmpty()) {
                    if (this.isCmsEnabled) {
                        sendEmptyMessage(OMASyncEventType.OBJECT_FETCH_DOWNLOAD_DONE.getId());
                        break;
                    } else {
                        sendEmptyMessage(OMASyncEventType.OBJECT_END_DOWNLOAD.getId());
                        break;
                    }
                } else {
                    checkNextMsgFromDownloadWorkingQueue(SyncOperation.DOWNLOAD);
                    break;
                }
            case 18:
                Object obj2 = message.obj;
                if (obj2 != null) {
                    this.mINetAPIEventListener.onOneMessageDownloaded((ParamOMAresponseforBufDB) obj2);
                    if (!this.mIsFTThumbnailDownload) {
                        pollFromDownloadSet();
                        this.mWorkingDownloadQueue.poll();
                    }
                    checkNextMsgFromDownloadWorkingQueue(SyncOperation.DOWNLOAD);
                    break;
                }
                break;
            case 19:
                pollFromDownloadSet();
                this.mWorkingDownloadQueue.poll();
                checkNextMsgFromDownloadWorkingQueue(SyncOperation.DOWNLOAD);
                break;
            case 20:
                this.mINetAPIEventListener.onMessageDownloadCompleted(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.MESSAGE_DOWNLOAD_COMPLETE).setLine(this.mLine).setSyncType(this.mSyncMsgType).build());
                break;
            case 21:
                this.mINetAPIEventListener.onMessageDownloadCompleted(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.ALL_PAYLOAD_NOTIFY).setLine(this.mLine).setSyncType(this.mSyncMsgType).build());
                break;
            case 22:
                if (this.mIsHandlerRunning) {
                    pause();
                    resume();
                    break;
                }
                break;
            case 23:
                ParamOMAresponseforBufDB build2 = new ParamOMAresponseforBufDB.Builder().setLine(this.mLine).build();
                Object obj3 = message.obj;
                this.mINetAPIEventListener.onOmaAuthenticationFailed(build2, (obj3 == null || !(obj3 instanceof Number)) ? 0L : ((Number) obj3).longValue());
                break;
            case 24:
                this.mUIInterface.notifyAppUIScreen(ATTConstants.AttAmbsUIScreenNames.SteadyStateError_ErrMsg7.getId(), IUIEventCallback.POP_UP, 0);
                break;
            case 26:
                this.mINetAPIEventListener.onPauseCMNNetApiWithResumeDelay(((Integer) message.obj).intValue());
                break;
            case 27:
                z = this.mWorkingDownloadQueue.size() == 0;
                BufferDBChangeParamList bufferDBChangeParamList = (BufferDBChangeParamList) message.obj;
                SyncOperation syncOperation = SyncOperation.DOWNLOAD;
                setWorkingQueue(bufferDBChangeParamList, syncOperation);
                if (this.mIsHandlerRunning && z) {
                    checkNextMsgFromDownloadWorkingQueue(syncOperation);
                    this.mUIInterface.showInitsyncIndicator(true);
                    break;
                }
                break;
            case 28:
                z = this.mWorkingUploadQueue.size() == 0;
                BufferDBChangeParamList bufferDBChangeParamList2 = (BufferDBChangeParamList) message.obj;
                SyncOperation syncOperation2 = SyncOperation.UPLOAD;
                setWorkingQueue(bufferDBChangeParamList2, syncOperation2);
                if (z) {
                    this.mINetAPIEventListener.onInitUploadStarted(new ParamOMAresponseforBufDB.Builder().setLine(this.mLine).setOMASyncEventType(OMASyncEventType.INITIAL_UPLOAD_STARTED).setActionType(ParamOMAresponseforBufDB.ActionType.INIT_UPLOAD_STARTED).build());
                    if (this.mIsHandlerRunning) {
                        checkNextMsgFromUploadWorkingQueue(syncOperation2);
                        this.mUIInterface.showInitsyncIndicator(true);
                        break;
                    }
                }
                break;
            case 29:
                z = this.mBulkUploadQueue.size() == 0;
                setBulkUploadQueue((BufferDBChangeParamList) message.obj);
                if (this.mIsHandlerRunning && z) {
                    checkNextBulkUploadWorkingQueue();
                    this.mUIInterface.showInitsyncIndicator(true);
                    break;
                }
                break;
            case 30:
                Object obj4 = message.obj;
                if (obj4 != null) {
                    onApiTreatAsSucceed((IHttpAPICommonInterface) obj4);
                    break;
                }
                break;
            case 31:
                IHttpAPICommonInterface iHttpAPICommonInterface = (IHttpAPICommonInterface) message.obj;
                if (iHttpAPICommonInterface != null) {
                    this.mStoreClient.getMcsRetryMapAdapter().retryApi(iHttpAPICommonInterface, this);
                    break;
                }
                break;
            case 32:
                Object obj5 = message.obj;
                if (obj5 != null) {
                    HttpResParamsWrapper httpResParamsWrapper = (HttpResParamsWrapper) obj5;
                    onApiTreatAsSucceed(httpResParamsWrapper.mApi);
                    IHttpAPICommonInterface iHttpAPICommonInterface2 = httpResParamsWrapper.mApi;
                    if (iHttpAPICommonInterface2 instanceof CloudMessageCreateAllObjects) {
                        id = OMASyncEventType.OBJECT_ONE_UPLOAD_COMPLETED.getId();
                    } else if (iHttpAPICommonInterface2 instanceof CloudMessageObjectsOpSearch) {
                        id = OMASyncEventType.INITIAL_SYNC_SUMMARY_COMPLETE.getId();
                    } else if (iHttpAPICommonInterface2 instanceof CloudMessageBulkCreation) {
                        ParamOMAresponseforBufDB paramOMAresponseforBufDB = (ParamOMAresponseforBufDB) httpResParamsWrapper.mBufDbParams;
                        if (paramOMAresponseforBufDB != null && ParamOMAresponseforBufDB.ActionType.FALLBACK_MESSAGES_UPLOADED == paramOMAresponseforBufDB.getActionType()) {
                            id = OMASyncEventType.FALLBACK_ONE_UPLOAD.getId();
                        } else {
                            id = OMASyncEventType.OBJECT_BULK_UPLOAD_COMPLETED.getId();
                        }
                    } else if (iHttpAPICommonInterface2 instanceof CloudMessageCreateFile) {
                        id = OMASyncEventType.OBJECT_FT_UPLOAD_FAILED.getId();
                    } else if ((iHttpAPICommonInterface2 instanceof CloudMessageGetLargeFile) || (iHttpAPICommonInterface2 instanceof CloudMessageHeadLargeFile)) {
                        id = OMASyncEventType.DOWNLOAD_FILE_API_FAILED.getId();
                    } else if (iHttpAPICommonInterface2 instanceof McsSyncMessageStatus) {
                        id = OMASyncEventType.SYNC_MESSAGE_ACK.getId();
                    } else {
                        id = OMASyncEventType.OBJECT_ONE_DOWNLOAD_COMPLETED.getId();
                    }
                    gotoHandlerEvent(id, httpResParamsWrapper.mBufDbParams);
                    break;
                }
                break;
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType;

        static {
            int[] iArr = new int[OMASyncEventType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType = iArr;
            try {
                iArr[OMASyncEventType.START_INITIAL_SYNC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.INITIAL_SYNC_CONTINUE_SEARCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.REQUEST_OPSEARCH_AFTER_PSF_REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.PAUSE_INITIAL_SYNC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.TRANSIT_TO_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.TRANSIT_TO_PAUSE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CANCEL_INITIAL_SYNC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.INITIAL_SYNC_COMPLETE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.INITIAL_SYNC_SUMMARY_COMPLETE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_START_UPLOAD.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_MESSAGE_ACK.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_ONE_UPLOAD_COMPLETED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_FT_UPLOAD_FAILED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_BULK_UPLOAD_COMPLETED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.FALLBACK_ONE_UPLOAD.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_END_UPLOAD.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_START_DOWNLOAD.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_ONE_DOWNLOAD_COMPLETED.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DOWNLOAD_FILE_API_FAILED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_END_DOWNLOAD.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.OBJECT_FETCH_DOWNLOAD_DONE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MSTORE_REDIRECT.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREDENTIAL_EXPIRED.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_ERR.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ONE_LINE_INIT_SYNC_COMPLETE.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SELF_RETRY.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ADD_TO_WORKINGQUEUE.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ADD_TO_UPLOADWORKINGQUEUE.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ADD_TO_QUEUE_BULKUPLOAD.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_SUCCEED.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_FAILED.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MOVE_ON.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_MESSAGE_INIT_PENDING.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_MESSAGE_INIT_STARTED.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_MESSAGE_INIT_DONE.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_MESSAGE_FORCE_ALL_PENDING.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_MESSAGE_FORCE_ALL_STARTED.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_MESSAGE_FORCE_ALL_DONE.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
    
        if (r12.equals("start") == false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x009e, code lost:
    
        if (r12.equals("start") == false) goto L27;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleSyncMessageStatusResponse(com.sec.internal.omanetapi.common.data.SyncMessageStatus r12) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler.handleSyncMessageStatusResponse(com.sec.internal.omanetapi.common.data.SyncMessageStatus):void");
    }

    private void gotoHandlerEvent(int i, Object obj) {
        if (obj != null) {
            if (obj instanceof ParamOMAresponseforBufDB) {
                ParamOMAresponseforBufDB paramOMAresponseforBufDB = (ParamOMAresponseforBufDB) obj;
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldClearCursorUponInitSyncDone()) {
                    this.mSearchCursor = paramOMAresponseforBufDB.getSearchCursor();
                } else if (!TextUtils.isEmpty(paramOMAresponseforBufDB.getSearchCursor())) {
                    this.mSearchCursor = paramOMAresponseforBufDB.getSearchCursor();
                }
                this.mEventType = paramOMAresponseforBufDB.getOMASyncEventType();
                Log.i(this.TAG, "update cursor: [" + this.mSearchCursor + "], and event type: [" + this.mEventType + "]");
            }
            sendMessage(obtainMessage(i, obj));
            return;
        }
        sendEmptyMessage(i);
    }

    private void gotoHandlerEventOnFailure(IHttpAPICommonInterface iHttpAPICommonInterface) {
        boolean isRetryEnabled = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled();
        boolean isGbaSupported = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isGbaSupported();
        Log.i(this.TAG, "gotoHandlerEventOnFailure isGbaSupported: " + isGbaSupported + ", isRetryEnabled: " + isRetryEnabled);
        if (isGbaSupported && ((iHttpAPICommonInterface instanceof CloudMessageObjectsOpSearch) || (iHttpAPICommonInterface instanceof CloudMessageGetAllPayloads))) {
            Log.i(this.TAG, "gotoHandlerEventOnFailure for TMO fail case");
            sendEmptyMessage(OMASyncEventType.CANCEL_INITIAL_SYNC.getId());
        } else if (isRetryEnabled) {
            this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, -1);
        } else {
            sendEmptyMessage(OMASyncEventType.PAUSE_INITIAL_SYNC.getId());
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
        start(this.mLine);
    }

    protected void start(String str) {
        EventLogHelper.infoLogAndAdd(this.TAG_CN, this.mStoreClient.getClientID(), "start: " + IMSLog.checker(str) + " mEventType: " + this.mEventType);
        OMASyncEventType oMASyncEventType = this.mEventType;
        if (oMASyncEventType == null) {
            sendEmptyMessage(OMASyncEventType.START_INITIAL_SYNC.getId());
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[oMASyncEventType.ordinal()];
        if (i == 2) {
            this.mIsHandlerRunning = true;
            if (this.isCmsEnabled) {
                sendSyncMessageStatusRequest(SyncOperation.SEARCH);
                return;
            } else {
                sendEmptyMessage(OMASyncEventType.INITIAL_SYNC_CONTINUE_SEARCH.getId());
                return;
            }
        }
        if (i == 8) {
            sendEmptyMessage(OMASyncEventType.ONE_LINE_INIT_SYNC_COMPLETE.getId());
        } else if (i != 9) {
            sendEmptyMessage(OMASyncEventType.START_INITIAL_SYNC.getId());
        }
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
        sendEmptyMessage(OMASyncEventType.CANCEL_INITIAL_SYNC.getId());
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
        OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener;
        this.mINetAPIEventListener.onOmaSuccess(iHttpAPICommonInterface);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled() && this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getControllerOfLastFailedApi() == null && (onApiSucceedOnceListener = this.mOnApiSucceedOnceListener) != null) {
            onApiSucceedOnceListener.onMoveOn();
            this.mOnApiSucceedOnceListener = null;
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
        Log.d(this.TAG, "onMoveOnToNext  " + iHttpAPICommonInterface.getClass().getSimpleName());
        gotoHandlerEvent(OMASyncEventType.MOVE_ON.getId(), new HttpResParamsWrapper(iHttpAPICommonInterface, obj));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendEmptyMessage(i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
        gotoHandlerEvent(OMASyncEventType.API_SUCCEED.getId(), iHttpAPICommonInterface);
        gotoHandlerEvent(i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        Log.i(this.TAG, "onFailedCall code :" + str);
        gotoHandlerEventOnFailure(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
        gotoHandlerEventOnFailure(iHttpAPICommonInterface);
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
        gotoHandlerEvent(i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
        Log.i(this.TAG, iHttpAPICommonInterface.getClass().getSimpleName() + str + ", retry after isRetryEnabled: " + this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled());
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled()) {
            if (this.isCmsEnabled) {
                sendMessageDelayed(obtainMessage(OMASyncEventType.API_FAILED.getId(), iHttpAPICommonInterface), i);
                return;
            } else {
                this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, i);
                return;
            }
        }
        gotoHandlerEvent(OMASyncEventType.MOVE_ON.getId(), new HttpResParamsWrapper(iHttpAPICommonInterface, null));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlow(int i) {
        Log.i(this.TAG, "onFixedFlow event is " + i);
        sendEmptyMessage(i);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlowWithMessage(Message message) {
        Object obj;
        if (message == null || (obj = message.obj) == null) {
            Log.e(this.TAG, "onFixedFlowWithMessage message is null");
            return;
        }
        if (!(obj instanceof ParamOMAresponseforBufDB)) {
            Log.e(this.TAG, "onFixedFlowWithMessage message not ParamOMAresponseforBufDB");
            return;
        }
        Log.i(this.TAG, "onFixedFlowWithMessage message is " + ((ParamOMAresponseforBufDB) message.obj).getActionType());
        ParamOMAresponseforBufDB paramOMAresponseforBufDB = (ParamOMAresponseforBufDB) message.obj;
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldClearCursorUponInitSyncDone()) {
            this.mSearchCursor = paramOMAresponseforBufDB.getSearchCursor();
        } else if (!TextUtils.isEmpty(paramOMAresponseforBufDB.getSearchCursor())) {
            this.mSearchCursor = paramOMAresponseforBufDB.getSearchCursor();
        }
        this.mEventType = paramOMAresponseforBufDB.getOMASyncEventType();
        sendMessage(message);
    }

    protected void pollFromDownloadSet() {
        BufferDBChangeParam peek = this.mWorkingDownloadQueue.peek();
        if (peek == null) {
            return;
        }
        Pair pair = new Pair(Integer.valueOf(peek.mDBIndex), Long.valueOf(peek.mRowId));
        if (this.mWorkingDownloadSet.contains(pair)) {
            this.mWorkingDownloadSet.remove(pair);
        }
    }

    protected void checkNextMsgFromDownloadWorkingQueue(SyncOperation syncOperation) {
        Log.i(this.TAG, "checkNextMsgFromDownloadWorkingQueue: " + syncOperation);
        if (!this.mWorkingDownloadQueue.isEmpty()) {
            Pair<HttpRequestParams, Boolean> peekDownloadQueue = peekDownloadQueue();
            String str = this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("checkNextMsgFromDownloadWorkingQueue: fileReq:");
            sb.append(peekDownloadQueue != null ? (Boolean) peekDownloadQueue.second : null);
            Log.i(str, sb.toString());
            if (peekDownloadQueue != null && ((Boolean) peekDownloadQueue.second).booleanValue()) {
                Log.i(this.TAG, "checkNextMsgFromDownloadWorkingQueue largefile download case ");
                return;
            }
            if (peekDownloadQueue == null) {
                Log.i(this.TAG, "checkNextMsgFromDownloadWorkingQueue httpparam null ");
                this.mIsFTThumbnailDownload = false;
                pollFromDownloadSet();
                this.mWorkingDownloadQueue.poll();
                checkNextMsgFromDownloadWorkingQueue(syncOperation);
                return;
            }
            Object obj = peekDownloadQueue.first;
            if (obj instanceof BaseNMSRequest) {
                ((BaseNMSRequest) obj).updateToken();
                ((BaseNMSRequest) peekDownloadQueue.first).replaceUrlPrefix();
            }
            Log.i(this.TAG, "url : " + IMSLog.checker(((HttpRequestParams) peekDownloadQueue.first).getUrl()) + " ; method: " + ((HttpRequestParams) peekDownloadQueue.first).getMethod());
            if (TextUtils.isEmpty(((HttpRequestParams) peekDownloadQueue.first).getUrl()) || ((HttpRequestParams) peekDownloadQueue.first).getMethod() == null) {
                pollFromDownloadSet();
                this.mWorkingDownloadQueue.poll();
                checkNextMsgFromDownloadWorkingQueue(syncOperation);
                return;
            }
            this.mStoreClient.getHttpController().execute((HttpRequestParams) peekDownloadQueue.first);
            return;
        }
        if (SyncOperation.DOWNLOAD.equals(syncOperation)) {
            if (this.isCmsEnabled) {
                sendEmptyMessage(OMASyncEventType.OBJECT_FETCH_DOWNLOAD_DONE.getId());
                return;
            } else {
                sendEmptyMessage(OMASyncEventType.OBJECT_END_DOWNLOAD.getId());
                return;
            }
        }
        if (SyncOperation.UPLOAD.equals(syncOperation)) {
            sendEmptyMessage(OMASyncEventType.OBJECT_END_UPLOAD.getId());
        }
    }

    private void sendSyncMessageStatusRequest(SyncOperation syncOperation) {
        OMASyncEventType initialSyncStatusByLine = this.mBufferDBTranslation.getInitialSyncStatusByLine(this.mLine, SyncMsgType.DEFAULT, CloudMessageProviderContract.BufferDBExtensionBase.SYNCMESSAGESTATUS);
        EventLogHelper.infoLogAndAddWoPhoneId(this.TAG, this.mStoreClient.getClientID(), "sendSyncMessageStatusRequest init sync message status " + initialSyncStatusByLine);
        SyncMessageStatus syncRequestParam = getSyncRequestParam(initialSyncStatusByLine);
        if (syncRequestParam == null || (syncRequestParam.syncType.equalsIgnoreCase(McsConstants.PushMessages.VALUE_INIT) && !SyncOperation.UPLOAD.equals(syncOperation))) {
            if (SyncOperation.SEARCH.equals(syncOperation)) {
                this.mStoreClient.getHttpController().execute(new CloudMessageObjectsOpSearch(this, this.mSearchCursor, this.mLine, this.mSyncMsgType, false, this.mStoreClient, this.mIsFullSync));
                return;
            }
            SyncOperation syncOperation2 = SyncOperation.DOWNLOAD;
            if (syncOperation2.equals(syncOperation)) {
                checkNextMsgFromDownloadWorkingQueue(syncOperation2);
                return;
            }
            SyncOperation syncOperation3 = SyncOperation.UPLOAD;
            if (syncOperation3.equals(syncOperation)) {
                checkNextMsgFromUploadWorkingQueue(syncOperation3);
                return;
            }
            return;
        }
        this.mStoreClient.getHttpController().execute(new McsSyncMessageStatus(this, syncRequestParam.syncType, syncRequestParam.status, this.mStoreClient));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private SyncMessageStatus getSyncRequestParam(OMASyncEventType oMASyncEventType) {
        Log.d(this.TAG, "getSyncRequestParam eventType " + oMASyncEventType);
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[oMASyncEventType.ordinal()];
        String str = McsConstants.SyncMessageStatus.RESUME;
        String str2 = McsConstants.PushMessages.VALUE_FORCE_ALL;
        switch (i) {
            case 33:
                str = "start";
                str2 = McsConstants.PushMessages.VALUE_INIT;
                return new SyncMessageStatus(str2, str);
            case 34:
                str2 = McsConstants.PushMessages.VALUE_INIT;
                return new SyncMessageStatus(str2, str);
            case 35:
                str2 = McsConstants.PushMessages.VALUE_INIT;
                str = "";
                return new SyncMessageStatus(str2, str);
            case 36:
                str = "start";
                return new SyncMessageStatus(str2, str);
            case 37:
                return new SyncMessageStatus(str2, str);
            case 38:
                str = "";
                return new SyncMessageStatus(str2, str);
            default:
                return null;
        }
    }

    protected void checkNextMsgFromUploadWorkingQueue(SyncOperation syncOperation) {
        Log.i(this.TAG, "checkNextMsgFromUploadWorkingQueue: " + syncOperation);
        if (!this.mWorkingUploadQueue.isEmpty()) {
            Pair<HttpRequestParams, Boolean> peekUploadQueue = peekUploadQueue();
            String str = this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("checkNextMsgFromUploadWorkingQueue: fileReq:");
            sb.append(peekUploadQueue != null ? (Boolean) peekUploadQueue.second : null);
            Log.i(str, sb.toString());
            if (peekUploadQueue == null || !((Boolean) peekUploadQueue.second).booleanValue()) {
                if (peekUploadQueue == null) {
                    Log.i(this.TAG, "checkNextMsgFromUploadWorkingQueue: http param is null");
                    this.mWorkingUploadQueue.poll();
                    checkNextMsgFromUploadWorkingQueue(syncOperation);
                    return;
                }
                HttpRequestParams httpRequestParams = (HttpRequestParams) peekUploadQueue.first;
                if (httpRequestParams instanceof BaseNMSRequest) {
                    BaseNMSRequest baseNMSRequest = (BaseNMSRequest) httpRequestParams;
                    baseNMSRequest.updateToken();
                    baseNMSRequest.replaceUrlPrefix();
                }
                Log.i(this.TAG, "url : " + IMSLog.checker(httpRequestParams.getUrl()) + " ; method: " + httpRequestParams.getMethod());
                if (TextUtils.isEmpty(httpRequestParams.getUrl()) || httpRequestParams.getMethod() == null) {
                    this.mWorkingUploadQueue.poll();
                    checkNextMsgFromUploadWorkingQueue(syncOperation);
                    return;
                } else {
                    this.mStoreClient.getHttpController().execute(httpRequestParams);
                    return;
                }
            }
            return;
        }
        if (SyncOperation.DOWNLOAD.equals(syncOperation)) {
            if (this.isCmsEnabled) {
                sendEmptyMessage(OMASyncEventType.OBJECT_FETCH_DOWNLOAD_DONE.getId());
                return;
            } else {
                sendEmptyMessage(OMASyncEventType.OBJECT_END_DOWNLOAD.getId());
                return;
            }
        }
        if (SyncOperation.UPLOAD.equals(syncOperation)) {
            sendEmptyMessage(OMASyncEventType.OBJECT_END_UPLOAD.getId());
        }
    }

    protected void checkNextBulkUploadWorkingQueue() {
        Log.i(this.TAG, "checkNextBulkUploadWorkingQueue: mBulkUploadQueue is empty: " + this.mBulkUploadQueue.isEmpty());
        if (!this.mBulkUploadQueue.isEmpty()) {
            makeBulkUploadparameter();
            retryBulkUploadRequest();
        } else {
            sendEmptyMessage(OMASyncEventType.OBJECT_END_UPLOAD.getId());
        }
    }

    protected void retryBulkUploadRequest() {
        HttpRequestParams peekBulkUploadQueue = peekBulkUploadQueue();
        if (peekBulkUploadQueue == null) {
            checkNextBulkUploadWorkingQueue();
            return;
        }
        if (peekBulkUploadQueue instanceof BaseNMSRequest) {
            BaseNMSRequest baseNMSRequest = (BaseNMSRequest) peekBulkUploadQueue;
            baseNMSRequest.updateToken();
            baseNMSRequest.replaceUrlPrefix();
        }
        Log.i(this.TAG, "retryBulkUploadRequest url : " + peekBulkUploadQueue.getUrl() + " ; method: " + peekBulkUploadQueue.getMethod());
        if (TextUtils.isEmpty(peekBulkUploadQueue.getUrl()) || peekBulkUploadQueue.getMethod() == null) {
            checkNextBulkUploadWorkingQueue();
        } else {
            this.mStoreClient.getHttpController().execute(peekBulkUploadQueue);
        }
    }

    protected void setWorkingQueue(BufferDBChangeParamList bufferDBChangeParamList, SyncOperation syncOperation) {
        Iterator<BufferDBChangeParam> it = bufferDBChangeParamList.mChangelst.iterator();
        while (it.hasNext()) {
            BufferDBChangeParam next = it.next();
            if (next != null) {
                setWorkingQueue(next, syncOperation);
            }
        }
    }

    protected void logWorkingStatus() {
        Log.d(this.TAG, "logWorkingStatus: [mSyncMsgType: " + this.mSyncMsgType + " mIsHandlerRunning: " + this.mIsHandlerRunning + " mEventType: " + this.mEventType + " mIsSearchFinished: " + this.mIsSearchFinished + " mWorkingDownloadQueue size: " + this.mWorkingDownloadQueue.size() + " mWorkingDownloadSet size: " + this.mWorkingDownloadSet.size() + " mWorkingUploadQueue size: " + this.mWorkingUploadQueue.size() + " mBulkUploadQueue size: " + this.mBulkUploadQueue.size() + " mLine: " + IMSLog.checker(this.mLine) + "]");
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void setOnApiSucceedOnceListener(OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener) {
        this.mOnApiSucceedOnceListener = onApiSucceedOnceListener;
    }

    private void fallbackOneMessageUplaod(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB == null || paramOMAresponseforBufDB.getBufferDBChangeParamList() == null || paramOMAresponseforBufDB.getBufferDBChangeParamList().mChangelst == null) {
            Log.d(this.TAG, "DBchange list is empty: do nothting ");
        } else {
            setWorkingQueue(paramOMAresponseforBufDB.getBufferDBChangeParamList(), SyncOperation.UPLOAD);
        }
    }

    private void checkIndividualResponseCodeUpload(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        Log.i(this.TAG, "checkIndividualResponseCodeUpload: ");
        if (paramOMAresponseforBufDB == null || paramOMAresponseforBufDB.getBufferDBChangeParamList() == null || paramOMAresponseforBufDB.getBufferDBChangeParamList().mChangelst == null) {
            return;
        }
        int i = 0;
        for (int i2 = 0; i2 < paramOMAresponseforBufDB.getBulkResponseList().response.length; i2++) {
            Response response = paramOMAresponseforBufDB.getBulkResponseList().response[i2];
            short s = response.code;
            if ((s == 403 || s == 503) && !this.mStoreClient.getCloudMessageStrategyManager().getStrategy().bulkOpTreatSuccessIndividualResponse(response.code)) {
                setWorkingQueue(paramOMAresponseforBufDB.getBufferDBChangeParamList().mChangelst.get(i2), SyncOperation.UPLOAD);
                i++;
            }
        }
        if (i > 0) {
            checkNextMsgFromUploadWorkingQueue(SyncOperation.UPLOAD);
        }
    }
}
