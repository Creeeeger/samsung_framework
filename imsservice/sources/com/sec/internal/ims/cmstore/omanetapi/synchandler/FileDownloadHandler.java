package com.sec.internal.ims.cmstore.omanetapi.synchandler;

import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.FilePathGenerator;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetLargeFile;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageHeadLargeFile;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.CmsHttpController;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.omanetapi.file.LargeFileDownloadParams;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class FileDownloadHandler extends StateMachine implements IControllerCommonInterface, IAPICallFlowListener {
    private String TAG;
    String mAccessURL;
    BufferDBTranslation mBufferDBTranslation;
    IAPICallFlowListener mCallFlowListener;
    State mDefaultState;
    State mDownloadCompletedState;
    State mDownloadingPartsState;
    String mFileName;
    LargeFileDownloadParams mLargeFileDownloadParams;
    String mLocalFilePath;
    int mMaxRange;
    BufferDBChangeParam mParam;
    int mPartNum;
    State mRetrievingHeadState;
    MessageStoreClient mStoreClient;
    IAPICallFlowListener mSyncHandlerCallFlowListener;
    int mTotalLength;
    int mTotalParts;

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
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
    public void onFixedFlowWithMessage(Message message) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
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

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void pause() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void resume() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void setOnApiSucceedOnceListener(OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void stop() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean update(int i) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelay(int i, long j) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelayRetry(int i, long j) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateMessage(Message message) {
        return false;
    }

    public FileDownloadHandler(IAPICallFlowListener iAPICallFlowListener, Looper looper, MessageStoreClient messageStoreClient, BufferDBTranslation bufferDBTranslation) {
        super("FileDownloadHandler", looper);
        this.TAG = FileDownloadHandler.class.getSimpleName();
        this.mDefaultState = new DefaultState();
        this.mRetrievingHeadState = new RetrievingHeadState();
        this.mDownloadingPartsState = new DownloadingPartsState();
        this.mDownloadCompletedState = new DownloadCompletedState();
        String str = this.TAG + "[" + messageStoreClient.getClientID() + "]";
        this.TAG = str;
        Log.i(str, "FileDownloadHandler Constructor");
        this.mStoreClient = messageStoreClient;
        this.mCallFlowListener = this;
        this.mSyncHandlerCallFlowListener = iAPICallFlowListener;
        this.mBufferDBTranslation = bufferDBTranslation;
        this.mMaxRange = 5991763;
        resetAllParams();
        initStates();
        start();
    }

    private void initStates() {
        addState(this.mDefaultState);
        setInitialState(this.mDefaultState);
        addState(this.mRetrievingHeadState, this.mDefaultState);
        addState(this.mDownloadingPartsState, this.mRetrievingHeadState);
        addState(this.mDownloadCompletedState, this.mDownloadingPartsState);
        super.start();
    }

    @Override // com.sec.internal.helper.StateMachine, com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
        Log.i(this.TAG, "start()");
    }

    public void start(String str, BufferDBChangeParam bufferDBChangeParam) {
        Log.i(this.TAG, "start() mAccessURL: " + this.mAccessURL);
        this.mAccessURL = str;
        this.mParam = bufferDBChangeParam;
        sendMessage(OMASyncEventType.START_LARGE_FILE_DOWNLOAD.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetAllParams() {
        Log.i(this.TAG, "resetAllParams");
        this.mTotalLength = 0;
        this.mPartNum = 0;
        this.mTotalParts = 0;
        this.mLargeFileDownloadParams = null;
        this.mParam = null;
        this.mAccessURL = "";
    }

    public class DefaultState extends State {
        public DefaultState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = FileDownloadHandler.this.InitEvent(message);
            Log.i(FileDownloadHandler.this.TAG, "processMessage: event " + InitEvent);
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            boolean z = true;
            if (i == 1) {
                FileDownloadHandler.this.sendMessage(OMASyncEventType.DOWNLOAD_FILE_HEAD.getId());
                FileDownloadHandler fileDownloadHandler = FileDownloadHandler.this;
                fileDownloadHandler.transitionTo(fileDownloadHandler.mRetrievingHeadState);
            } else if (i == 2) {
                FileDownloadHandler.this.sendMessage(OMASyncEventType.RESET_STATE.getId());
                FileDownloadHandler.this.mSyncHandlerCallFlowListener.onGoToEvent(OMASyncEventType.DOWNLOAD_FILE_API_FAILED.getId(), null);
            } else if (i == 3) {
                FileDownloadHandler fileDownloadHandler2 = FileDownloadHandler.this;
                fileDownloadHandler2.transitionTo(fileDownloadHandler2.mDefaultState);
                FileUtils.removeFile(FileDownloadHandler.this.mLocalFilePath);
                FileDownloadHandler.this.resetAllParams();
            } else if (i != 4) {
                z = false;
            } else {
                IHttpAPICommonInterface iHttpAPICommonInterface = (IHttpAPICommonInterface) message.obj;
                if (iHttpAPICommonInterface != null) {
                    FileDownloadHandler.this.mStoreClient.getMcsRetryMapAdapter().retryApi(iHttpAPICommonInterface, FileDownloadHandler.this);
                }
            }
            if (z) {
                FileDownloadHandler.this.log("DefaultState, Handled : " + InitEvent);
            }
            return z;
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.synchandler.FileDownloadHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType;

        static {
            int[] iArr = new int[OMASyncEventType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType = iArr;
            try {
                iArr[OMASyncEventType.START_LARGE_FILE_DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DOWNLOAD_FILE_API_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.RESET_STATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DOWNLOAD_FILE_HEAD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DOWNLOAD_FILE_HEAD_COMPLETED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DOWNLOAD_FILE_PART.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DOWNLOADED_PART.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DOWNLOAD_FILE_PART_COMPLETED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    private class RetrievingHeadState extends State {
        private RetrievingHeadState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = FileDownloadHandler.this.InitEvent(message);
            Log.i(FileDownloadHandler.this.TAG, "RetrievingHeadState processMessage " + message.what);
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            boolean z = true;
            if (i == 5) {
                CmsHttpController httpController = FileDownloadHandler.this.mStoreClient.getHttpController();
                FileDownloadHandler fileDownloadHandler = FileDownloadHandler.this;
                httpController.execute(new CloudMessageHeadLargeFile(fileDownloadHandler.mCallFlowListener, fileDownloadHandler.mStoreClient, fileDownloadHandler.mAccessURL));
            } else if (i != 6) {
                z = false;
            } else {
                FileDownloadHandler fileDownloadHandler2 = FileDownloadHandler.this;
                LargeFileDownloadParams largeFileDownloadParams = (LargeFileDownloadParams) message.obj;
                fileDownloadHandler2.mLargeFileDownloadParams = largeFileDownloadParams;
                String str = largeFileDownloadParams.contentLength;
                if (str != null) {
                    fileDownloadHandler2.mTotalLength = Integer.parseInt(str);
                }
                FileDownloadHandler fileDownloadHandler3 = FileDownloadHandler.this;
                int i2 = fileDownloadHandler3.mTotalLength;
                if (i2 > 0 && fileDownloadHandler3.mLargeFileDownloadParams.acceptRanges != null) {
                    fileDownloadHandler3.mTotalParts = (int) Math.ceil(i2 / fileDownloadHandler3.mMaxRange);
                } else {
                    fileDownloadHandler3.sendMessage(OMASyncEventType.DOWNLOAD_FILE_API_FAILED.getId());
                }
                Log.i(FileDownloadHandler.this.TAG, "totalParts: " + FileDownloadHandler.this.mTotalParts + ", totalLength: " + FileDownloadHandler.this.mTotalLength + ", maxRange " + FileDownloadHandler.this.mMaxRange);
                String str2 = FileDownloadHandler.this.mLargeFileDownloadParams.contentDisposition;
                if (str2 != null && str2.contains(AuthenticationHeaders.HEADER_PRARAM_SPERATOR)) {
                    FileDownloadHandler fileDownloadHandler4 = FileDownloadHandler.this;
                    fileDownloadHandler4.mFileName = fileDownloadHandler4.mLargeFileDownloadParams.contentDisposition.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR)[1];
                    FileDownloadHandler fileDownloadHandler5 = FileDownloadHandler.this;
                    fileDownloadHandler5.mFileName = fileDownloadHandler5.mFileName.replaceAll(CmcConstants.E_NUM_STR_QUOTE, "");
                }
                Log.i(FileDownloadHandler.this.TAG, "fileName: " + FileDownloadHandler.this.mFileName + ", mAcceptRanges: " + FileDownloadHandler.this.mLargeFileDownloadParams.acceptRanges + ", mContentType: " + FileDownloadHandler.this.mLargeFileDownloadParams.contentType);
                FileDownloadHandler.this.sendMessage(OMASyncEventType.DOWNLOAD_FILE_PART.getId());
                FileDownloadHandler fileDownloadHandler6 = FileDownloadHandler.this;
                fileDownloadHandler6.transitionTo(fileDownloadHandler6.mDownloadingPartsState);
            }
            if (z) {
                Log.d(FileDownloadHandler.this.TAG, "RetrievingHeadState, Handled : " + InitEvent);
            }
            return z;
        }
    }

    private class DownloadingPartsState extends State {
        private DownloadingPartsState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = FileDownloadHandler.this.InitEvent(message);
            Log.i(FileDownloadHandler.this.TAG, "DownloadingPartsState processMessage " + message.what);
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            boolean z = true;
            if (i == 7) {
                FileDownloadHandler fileDownloadHandler = FileDownloadHandler.this;
                if (fileDownloadHandler.mBufferDBTranslation.isMessageStatusCancelledorDeleted(fileDownloadHandler.mParam.mRowId)) {
                    FileDownloadHandler.this.sendMessage(OMASyncEventType.DOWNLOAD_FILE_API_FAILED.getId());
                } else {
                    FileDownloadHandler fileDownloadHandler2 = FileDownloadHandler.this;
                    int i2 = fileDownloadHandler2.mPartNum;
                    if (i2 < fileDownloadHandler2.mTotalParts) {
                        fileDownloadHandler2.mPartNum = i2 + 1;
                        StringBuilder sb = new StringBuilder();
                        sb.append(FileDownloadHandler.this.mLargeFileDownloadParams.acceptRanges);
                        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                        FileDownloadHandler fileDownloadHandler3 = FileDownloadHandler.this;
                        sb.append((fileDownloadHandler3.mPartNum - 1) * fileDownloadHandler3.mMaxRange);
                        sb.append(CmcConstants.E_NUM_SLOT_SPLIT);
                        FileDownloadHandler fileDownloadHandler4 = FileDownloadHandler.this;
                        sb.append((fileDownloadHandler4.mMaxRange * fileDownloadHandler4.mPartNum) - 1);
                        String sb2 = sb.toString();
                        Log.i(FileDownloadHandler.this.TAG, "rangeHeader: " + sb2 + ", partNum: " + FileDownloadHandler.this.mPartNum);
                        CmsHttpController httpController = FileDownloadHandler.this.mStoreClient.getHttpController();
                        FileDownloadHandler fileDownloadHandler5 = FileDownloadHandler.this;
                        httpController.execute(new CloudMessageGetLargeFile(fileDownloadHandler5.mCallFlowListener, fileDownloadHandler5.mStoreClient, sb2, fileDownloadHandler5.mAccessURL, fileDownloadHandler5.mLargeFileDownloadParams.contentType));
                    } else {
                        Log.i(fileDownloadHandler2.TAG, "All parts downloaded:");
                        FileDownloadHandler.this.sendMessage(OMASyncEventType.DOWNLOAD_FILE_PART_COMPLETED.getId());
                        FileDownloadHandler fileDownloadHandler6 = FileDownloadHandler.this;
                        fileDownloadHandler6.transitionTo(fileDownloadHandler6.mDownloadCompletedState);
                    }
                }
            } else if (i != 8) {
                z = false;
            } else {
                FileDownloadHandler.this.handleLargeFileDownloadSuccess(((LargeFileDownloadParams) message.obj).strbody);
                FileDownloadHandler.this.sendMessage(OMASyncEventType.DOWNLOAD_FILE_PART.getId());
            }
            if (z) {
                Log.d(FileDownloadHandler.this.TAG, "DownloadingPartsState, Handled : " + InitEvent);
            }
            return z;
        }
    }

    private class DownloadCompletedState extends State {
        private DownloadCompletedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            boolean z;
            OMASyncEventType InitEvent = FileDownloadHandler.this.InitEvent(message);
            Log.i(FileDownloadHandler.this.TAG, "DownloadCompletedState processMessage " + message.what);
            if (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()] != 9) {
                z = false;
            } else {
                if (!FileDownloadHandler.this.sendPayloadDownloaded()) {
                    FileDownloadHandler.this.sendMessage(OMASyncEventType.DOWNLOAD_FILE_API_FAILED.getId());
                }
                FileDownloadHandler.this.resetAllParams();
                FileDownloadHandler fileDownloadHandler = FileDownloadHandler.this;
                fileDownloadHandler.transitionTo(fileDownloadHandler.mDefaultState);
                z = true;
            }
            if (z) {
                Log.d(FileDownloadHandler.this.TAG, "DownloadCompletedState, Handled : " + InitEvent);
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLargeFileDownloadSuccess(byte[] bArr) {
        Log.i(this.TAG, "handleLargeFileDownloadSuccess: partNum: " + this.mPartNum);
        if (this.mPartNum == 1) {
            File cacheDir = this.mStoreClient.getContext().getCacheDir();
            if (cacheDir == null) {
                Log.e(this.TAG, "handleLargeFileDownloadSuccess Unable to get Cache Dir!");
                return;
            }
            try {
                String generateUniqueFilePath = FilePathGenerator.generateUniqueFilePath(cacheDir.getAbsolutePath(), this.mFileName, 128);
                this.mLocalFilePath = generateUniqueFilePath;
                if (generateUniqueFilePath == null) {
                    Log.e(this.TAG, "handleLargeFileDownloadSuccess Create internal path failed!!!");
                    return;
                }
            } catch (NullPointerException | SecurityException e) {
                e.printStackTrace();
            }
        }
        try {
            if (!TextUtils.isEmpty(this.mLocalFilePath)) {
                Log.i(this.TAG, "handleLargeFileDownloadSuccess localFilePath isEmpty false");
            }
            FileOutputStream fileOutputStream = new FileOutputStream(this.mLocalFilePath, true);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendPayloadDownloaded() {
        Log.i(this.TAG, "sendPayloadDownloaded");
        if (!TextUtils.isEmpty(this.mLocalFilePath)) {
            ParamOMAresponseforBufDB.Builder bufferDBChangeParam = new ParamOMAresponseforBufDB.Builder().setPayloadUrl(this.mAccessURL).setFilePath(this.mLocalFilePath).setBufferDBChangeParam(this.mParam);
            bufferDBChangeParam.setActionType(ParamOMAresponseforBufDB.ActionType.ONE_PAYLOAD_DOWNLOAD);
            ParamOMAresponseforBufDB build = bufferDBChangeParam.build();
            IAPICallFlowListener iAPICallFlowListener = this.mSyncHandlerCallFlowListener;
            if (iAPICallFlowListener instanceof BaseSyncHandler) {
                iAPICallFlowListener.onSuccessfulEvent(null, OMASyncEventType.OBJECT_ONE_DOWNLOAD_COMPLETED.getId(), build);
                return true;
            }
            iAPICallFlowListener.onSuccessfulEvent(null, OMASyncEventType.DOWNLOAD_RETRIVED.getId(), build);
            return true;
        }
        Log.i(this.TAG, "sendPayloadDownloaded localFilePath empty case");
        return false;
    }

    OMASyncEventType InitEvent(Message message) {
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        return valueOf == null ? OMASyncEventType.DEFAULT : valueOf;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
        this.mSyncHandlerCallFlowListener.onFailedCall(iHttpAPICommonInterface, bufferDBChangeParam);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
        Log.i(this.TAG, "onFailedCall");
        this.mSyncHandlerCallFlowListener.onFailedCall(iHttpAPICommonInterface);
        sendMessage(OMASyncEventType.RESET_STATE.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
        Log.i(this.TAG, "onGoToEvent: " + i);
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendMessage(i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
        sendMessageDelayed(obtainMessage(OMASyncEventType.API_FAILED.getId(), iHttpAPICommonInterface), i);
    }
}
