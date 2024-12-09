package com.sec.internal.ims.cmstore.omanetapi.synchandler;

import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateAllObjects;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateFile;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessagePostLargeFileComplete;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessagePostLargeFilePart;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.HttpResParamsWrapper;
import com.sec.internal.ims.cmstore.params.ParamObjectUpload;
import com.sec.internal.ims.cmstore.utils.CmsHttpController;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.FileUploadResponse;
import com.sec.internal.omanetapi.file.FileData;
import com.sec.internal.omanetapi.file.UploadPartInfo;
import com.sec.internal.omanetapi.file.UploadPartInfos;
import com.sec.internal.omanetapi.nms.data.Object;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class FileHandler extends StateMachine implements IControllerCommonInterface, IAPICallFlowListener {
    private String TAG;
    File file;
    BufferDBTranslation mBufferDBTranslation;
    IAPICallFlowListener mCallFlowListener;
    private String mContentDisposition;
    String mContentType;
    State mDefaultState;
    String mFileName;
    List<FileUploadResponse> mFileUploadData;
    boolean mIsRunning;
    String mLocalFilePath;
    int mPartSize;
    State mRetrievingKeyState;
    MessageStoreClient mStoreClient;
    IAPICallFlowListener mSyncHandlerCallFlowListener;
    int mTotalLength;
    int mTotalParts;
    State mUploadCompleteState;
    String mUploadKeyId;
    List<UploadPartInfo> mUploadPartInfoList;
    UploadPartInfos mUploadPartInfos;
    State mUploadingPartsState;
    State mUploadingSmallFileState;
    BufferDBChangeParam param;

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

    public FileHandler(IAPICallFlowListener iAPICallFlowListener, Looper looper, BufferDBTranslation bufferDBTranslation, MessageStoreClient messageStoreClient) {
        super("FileHandler", looper);
        this.mDefaultState = new DefaultState();
        this.mUploadingSmallFileState = new UploadingSmallFileState();
        this.mRetrievingKeyState = new RetrievingKeyState();
        this.mUploadingPartsState = new UploadingPartsState();
        this.mUploadCompleteState = new UploadCompleteState();
        this.file = null;
        this.mFileUploadData = new ArrayList(2);
        this.TAG = FileHandler.class.getSimpleName();
        this.mIsRunning = false;
        String str = this.TAG + "[" + messageStoreClient.getClientID() + "]";
        this.TAG = str;
        Log.i(str, " File Handler Constructor");
        this.mStoreClient = messageStoreClient;
        this.mCallFlowListener = this;
        this.mBufferDBTranslation = bufferDBTranslation;
        this.mSyncHandlerCallFlowListener = iAPICallFlowListener;
        initStates();
    }

    private void initStates() {
        Log.i(this.TAG, " initStates ");
        addState(this.mDefaultState);
        setInitialState(this.mDefaultState);
        addState(this.mUploadingSmallFileState, this.mDefaultState);
        addState(this.mRetrievingKeyState, this.mDefaultState);
        addState(this.mUploadingPartsState, this.mRetrievingKeyState);
        addState(this.mUploadCompleteState, this.mUploadingPartsState);
        super.start();
    }

    @Override // com.sec.internal.helper.StateMachine, com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
        Log.i(this.TAG, " start");
    }

    public void start(BufferDBChangeParam bufferDBChangeParam) {
        this.mIsRunning = true;
        Log.i(this.TAG, " start param " + bufferDBChangeParam);
        this.param = bufferDBChangeParam;
        this.mUploadPartInfoList = new ArrayList();
        this.mUploadPartInfos = new UploadPartInfos();
        FileData localFileData = this.mBufferDBTranslation.getLocalFileData(bufferDBChangeParam);
        if (localFileData != null) {
            String str = localFileData.filePath;
            this.mLocalFilePath = str;
            if (!TextUtils.isEmpty(str)) {
                this.file = new File(this.mLocalFilePath);
            }
            File file = this.file;
            if (file != null && file.exists()) {
                this.mTotalLength = (int) this.file.length();
                this.mContentType = localFileData.contentType;
                this.mContentDisposition = localFileData.contentDisposition;
                this.mFileName = localFileData.fileName;
            }
        }
        this.mFileUploadData.add(0, null);
        this.mFileUploadData.add(1, null);
        ParamObjectUpload thumbnailPart = this.mBufferDBTranslation.getThumbnailPart(bufferDBChangeParam);
        if (thumbnailPart != null) {
            sendMessage(OMASyncEventType.START_THUMBNAIL_UPLOAD.getId(), thumbnailPart);
            return;
        }
        if (TextUtils.isEmpty(this.mLocalFilePath)) {
            Log.i(this.TAG, " invalid File Data, upload failed");
            sendMessage(OMASyncEventType.FILE_API_FAILED.getId());
        } else if (!CmsUtil.isLargeSizeFile(this.mStoreClient, this.mTotalLength)) {
            sendMessage(OMASyncEventType.START_SMALL_FILE_UPLOAD.getId());
        } else {
            Log.i(this.TAG, " no thumbnail exits and file size greater than 5 MB ");
            sendMessage(OMASyncEventType.FILE_API_FAILED.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetAllParams() {
        Log.i(this.TAG, "reset All Params");
        this.mUploadPartInfoList.clear();
        this.mUploadPartInfos = null;
        this.mUploadKeyId = "";
        this.mContentType = "";
        this.mFileName = "";
        this.mTotalLength = 0;
        this.mTotalParts = 0;
        this.mPartSize = 0;
        this.mLocalFilePath = null;
        this.param = null;
        this.file = null;
        this.mContentDisposition = null;
        this.mFileUploadData.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ParamObjectUpload getMcsFtPayLoadData() {
        ArrayList arrayList = new ArrayList();
        Log.i(this.TAG, "getMcsFtPayLoadData localFilePath : " + this.mLocalFilePath);
        File file = this.file;
        if (file != null && file.exists()) {
            String str = "form-data; name=\"file\"; filename=\"" + this.mFileName + CmcConstants.E_NUM_STR_QUOTE;
            if (!TextUtils.isEmpty(this.mContentType) && MIMEContentType.FT_HTTP.equals(this.mContentType)) {
                this.mContentType = FileUtils.getContentType(this.file);
            }
            byte[] fileContentInBytes = getFileContentInBytes(this.mLocalFilePath, CloudMessageBufferDBConstants.PayloadEncoding.None);
            if (fileContentInBytes != null && fileContentInBytes.length != 0 && !TextUtils.isEmpty(this.mContentType)) {
                arrayList.add(new HttpPostBody(str, this.mContentType, fileContentInBytes));
                IMSLog.i(this.TAG, "data len: " + fileContentInBytes.length + " contentType:" + this.mContentType);
            }
        }
        Log.i(this.TAG, "Filepath: " + this.file + " File payload size: " + arrayList.size());
        FileUtils.removeFile(this.mLocalFilePath);
        if (arrayList.size() <= 0) {
            IMSLog.i(this.TAG, "multibody part is empty");
            return null;
        }
        ParamObjectUpload paramObjectUpload = new ParamObjectUpload(new Pair(null, new HttpPostBody(arrayList)), this.param);
        IMSLog.i(this.TAG, "full body is added!!!!");
        return paramObjectUpload;
    }

    protected byte[] getFileContentInBytes(String str, CloudMessageBufferDBConstants.PayloadEncoding payloadEncoding) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    byte[] bArr = new byte[256];
                    int read = fileInputStream.read(bArr);
                    while (read >= 0) {
                        byteArrayOutputStream.write(bArr, 0, read);
                        read = fileInputStream.read(bArr);
                    }
                    Log.i(this.TAG, "getFileContentInBytes: " + str + " " + payloadEncoding + " bytes " + read + " getRcsFilePayloadFromPath, all bytes: " + byteArrayOutputStream.size());
                    if (CloudMessageBufferDBConstants.PayloadEncoding.Base64.equals(payloadEncoding)) {
                        byte[] encode = Base64.encode(byteArrayOutputStream.toByteArray(), 0);
                        fileInputStream.close();
                        byteArrayOutputStream.close();
                        return encode;
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    fileInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            Log.e(this.TAG, "getFileContentInBytes :: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int calculatePartSize(Integer num, Integer num2) {
        return (num.intValue() + num2.intValue()) / 2;
    }

    OMASyncEventType InitEvent(Message message) {
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        return valueOf == null ? OMASyncEventType.DEFAULT : valueOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HttpPostBody getFilePartPayload(int i) throws IOException {
        FileInputStream fileInputStream;
        long j;
        long skip;
        int ceil = (int) Math.ceil(this.mTotalLength / this.mPartSize);
        this.mTotalParts = ceil;
        if (i < 0 || i >= ceil) {
            Log.i(this.TAG, " getFilePartPayload failed invalid partNumber " + i);
            return null;
        }
        try {
            fileInputStream = new FileInputStream(this.file);
            try {
                j = i * this.mPartSize;
                skip = fileInputStream.skip(j);
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (skip >= 0 && skip == j) {
            byte[] bArr = new byte[this.mPartSize];
            int read = fileInputStream.read(bArr);
            if (read < this.mPartSize) {
                bArr = Arrays.copyOf(bArr, read);
            }
            if (bArr != null && bArr.length != 0 && !TextUtils.isEmpty(this.mContentType)) {
                IMSLog.i(this.TAG, "data len: " + bArr.length + " contentType:" + this.mContentType);
                HttpPostBody httpPostBody = new HttpPostBody(this.mContentDisposition, this.mContentType, bArr);
                fileInputStream.close();
                return httpPostBody;
            }
            fileInputStream.close();
            IMSLog.e(this.TAG, "getFilePartPayload failed invalid partNumber " + i);
            return null;
        }
        IMSLog.e(this.TAG, "bytes skipped count not correct: count: " + j + ", bytes: " + skip + ", partSize: " + this.mPartSize);
        fileInputStream.close();
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
        Log.i(this.TAG, " onSuccessfulEvent: " + i);
        sendMessage(OMASyncEventType.MOVE_ON.getId(), new HttpResParamsWrapper(iHttpAPICommonInterface, obj));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
        this.mSyncHandlerCallFlowListener.onFailedCall(iHttpAPICommonInterface, bufferDBChangeParam);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
        sendMessage(OMASyncEventType.RESET_STATE.getId());
        this.mSyncHandlerCallFlowListener.onFailedCall(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
        sendMessage(OMASyncEventType.MOVE_ON.getId(), new HttpResParamsWrapper(iHttpAPICommonInterface, obj));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
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

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void stop() {
        sendMessage(OMASyncEventType.STOP.getId());
    }

    public class DefaultState extends State {
        public DefaultState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.d(FileHandler.this.TAG, "DefaultState, enter");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            FileHandler fileHandler = FileHandler.this;
            boolean z = false;
            if (!fileHandler.mIsRunning) {
                return false;
            }
            OMASyncEventType InitEvent = fileHandler.InitEvent(message);
            Log.i(FileHandler.this.TAG, "Default State processMessage " + message.what);
            switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()]) {
                case 1:
                    z = true;
                    break;
                case 2:
                    ParamObjectUpload paramObjectUpload = (ParamObjectUpload) message.obj;
                    CmsHttpController httpController = FileHandler.this.mStoreClient.getHttpController();
                    FileHandler fileHandler2 = FileHandler.this;
                    httpController.execute(new CloudMessageCreateFile(fileHandler2.mCallFlowListener, paramObjectUpload, true, fileHandler2.mStoreClient));
                    z = true;
                    break;
                case 3:
                    FileHandler.this.mFileUploadData.set(0, (FileUploadResponse) message.obj);
                    if (!TextUtils.isEmpty(FileHandler.this.mLocalFilePath)) {
                        if (!CmsUtil.isLargeSizeFile(FileHandler.this.mStoreClient, r7.mTotalLength)) {
                            FileHandler.this.sendMessage(OMASyncEventType.START_SMALL_FILE_UPLOAD.getId());
                        } else {
                            FileHandler.this.sendMessage(OMASyncEventType.CREATE_ALL_OBJECT.getId());
                        }
                    } else {
                        FileHandler.this.sendMessage(OMASyncEventType.CREATE_ALL_OBJECT.getId());
                    }
                    z = true;
                    break;
                case 4:
                    FileHandler.this.sendMessage(OMASyncEventType.GET_UPLOAD_KEY_ID.getId());
                    FileHandler fileHandler3 = FileHandler.this;
                    fileHandler3.transitionTo(fileHandler3.mRetrievingKeyState);
                    z = true;
                    break;
                case 5:
                    Object obj = message.obj;
                    if (obj != null) {
                        HttpResParamsWrapper httpResParamsWrapper = (HttpResParamsWrapper) obj;
                        if (httpResParamsWrapper.mApi instanceof CloudMessageCreateAllObjects) {
                            FileHandler.this.sendMessage(OMASyncEventType.RESET_STATE.getId());
                            FileHandler.this.mSyncHandlerCallFlowListener.onGoToEvent(OMASyncEventType.OBJECT_ONE_UPLOAD_COMPLETED.getId(), httpResParamsWrapper.mBufDbParams);
                        }
                    }
                    z = true;
                    break;
                case 6:
                    ParamObjectUpload mcsFtPayLoadData = FileHandler.this.getMcsFtPayLoadData();
                    if (mcsFtPayLoadData == null) {
                        FileHandler.this.sendMessage(OMASyncEventType.FILE_API_FAILED.getId());
                    } else {
                        FileHandler.this.sendMessage(OMASyncEventType.UPLOADING_FILE.getId(), mcsFtPayLoadData);
                    }
                    FileHandler fileHandler4 = FileHandler.this;
                    fileHandler4.transitionTo(fileHandler4.mUploadingSmallFileState);
                    z = true;
                    break;
                case 7:
                    FileHandler fileHandler5 = FileHandler.this;
                    Pair<Object, HttpPostBody> rCSObjectPairFromCursor = fileHandler5.mBufferDBTranslation.getRCSObjectPairFromCursor(fileHandler5.param, fileHandler5.mFileUploadData);
                    if (rCSObjectPairFromCursor == null || rCSObjectPairFromCursor.first == null) {
                        IMSLog.e(FileHandler.this.TAG, "invalid parameters, request not processed");
                    } else {
                        IMSLog.i(FileHandler.this.TAG, " CREATE_ALL_OBJECT CloudMessageCreateAllObjects " + rCSObjectPairFromCursor.first);
                        ParamObjectUpload paramObjectUpload2 = new ParamObjectUpload(rCSObjectPairFromCursor, FileHandler.this.param);
                        CmsHttpController httpController2 = FileHandler.this.mStoreClient.getHttpController();
                        FileHandler fileHandler6 = FileHandler.this;
                        httpController2.execute(new CloudMessageCreateAllObjects(fileHandler6.mCallFlowListener, paramObjectUpload2, fileHandler6.mStoreClient));
                    }
                    z = true;
                    break;
                case 8:
                    FileHandler.this.resetAllParams();
                    FileHandler fileHandler7 = FileHandler.this;
                    fileHandler7.transitionTo(fileHandler7.mDefaultState);
                    z = true;
                    break;
                case 9:
                    FileHandler.this.resetAllParams();
                    FileHandler.this.mSyncHandlerCallFlowListener.onGoToEvent(OMASyncEventType.OBJECT_FT_UPLOAD_FAILED.getId(), null);
                    FileHandler fileHandler8 = FileHandler.this;
                    fileHandler8.transitionTo(fileHandler8.mDefaultState);
                    z = true;
                    break;
                case 10:
                    IHttpAPICommonInterface iHttpAPICommonInterface = (IHttpAPICommonInterface) message.obj;
                    if (iHttpAPICommonInterface != null) {
                        FileHandler.this.mStoreClient.getMcsRetryMapAdapter().retryApi(iHttpAPICommonInterface, FileHandler.this);
                    }
                    z = true;
                    break;
                case 11:
                    FileHandler fileHandler9 = FileHandler.this;
                    fileHandler9.mIsRunning = false;
                    fileHandler9.transitionTo(fileHandler9.mDefaultState);
                    z = true;
                    break;
            }
            if (z) {
                Log.d(FileHandler.this.TAG, "DefaultState, Handled : " + InitEvent);
            }
            return z;
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType;

        static {
            int[] iArr = new int[OMASyncEventType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType = iArr;
            try {
                iArr[OMASyncEventType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.START_THUMBNAIL_UPLOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.THUMBNAIL_UPLOADED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.START_LARGE_FILE_UPLOAD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MOVE_ON.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.START_SMALL_FILE_UPLOAD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_ALL_OBJECT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.RESET_STATE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.FILE_API_FAILED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_FAILED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.STOP.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPLOADING_FILE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.FILE_UPLOADED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.GET_UPLOAD_KEY_ID.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPLOAD_KEY_ID_RECEIVED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPLOAD_FILE_PART.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.PART_UPLOADED.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPLOAD_FILE_COMPLETE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.LARGE_FILE_UPLOAD_COMPLETED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    private class UploadingSmallFileState extends State {
        private UploadingSmallFileState() {
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0070  */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean processMessage(android.os.Message r8) {
            /*
                r7 = this;
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r0 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r0 = r0.InitEvent(r8)
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                java.lang.String r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.m356$$Nest$fgetTAG(r1)
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "UploadingSmallFileState processMessage "
                r2.append(r3)
                int r3 = r8.what
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                android.util.Log.i(r1, r2)
                int[] r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType
                int r2 = r0.ordinal()
                r1 = r1[r2]
                r2 = 12
                r3 = 0
                r4 = 1
                if (r1 == r2) goto L53
                r2 = 13
                if (r1 == r2) goto L35
                goto L6e
            L35:
                java.lang.Object r8 = r8.obj
                com.sec.internal.omanetapi.common.data.FileUploadResponse r8 = (com.sec.internal.omanetapi.common.data.FileUploadResponse) r8
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                java.util.List<com.sec.internal.omanetapi.common.data.FileUploadResponse> r1 = r1.mFileUploadData
                r1.set(r4, r8)
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r8 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r1 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.CREATE_ALL_OBJECT
                int r1 = r1.getId()
                r8.sendMessage(r1)
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r8 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.helper.State r1 = r8.mDefaultState
                r8.transitionTo(r1)
                goto L6d
            L53:
                java.lang.Object r8 = r8.obj
                com.sec.internal.ims.cmstore.params.ParamObjectUpload r8 = (com.sec.internal.ims.cmstore.params.ParamObjectUpload) r8
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.ims.cmstore.MessageStoreClient r1 = r1.mStoreClient
                com.sec.internal.ims.cmstore.utils.CmsHttpController r1 = r1.getHttpController()
                com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateFile r2 = new com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateFile
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r5 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener r6 = r5.mCallFlowListener
                com.sec.internal.ims.cmstore.MessageStoreClient r5 = r5.mStoreClient
                r2.<init>(r6, r8, r3, r5)
                r1.execute(r2)
            L6d:
                r3 = r4
            L6e:
                if (r3 == 0) goto L8a
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r7 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                java.lang.String r7 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.m356$$Nest$fgetTAG(r7)
                java.lang.StringBuilder r8 = new java.lang.StringBuilder
                r8.<init>()
                java.lang.String r1 = "UploadingSmallFileState, Handled : "
                r8.append(r1)
                r8.append(r0)
                java.lang.String r8 = r8.toString()
                android.util.Log.d(r7, r8)
            L8a:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.UploadingSmallFileState.processMessage(android.os.Message):boolean");
        }
    }

    private class RetrievingKeyState extends State {
        private RetrievingKeyState() {
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x00ba  */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean processMessage(android.os.Message r12) {
            /*
                r11 = this;
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r0 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r0 = r0.InitEvent(r12)
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                java.lang.String r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.m356$$Nest$fgetTAG(r1)
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "RetrievingKeyState processMessage "
                r2.append(r3)
                int r3 = r12.what
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                android.util.Log.i(r1, r2)
                int[] r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType
                int r2 = r0.ordinal()
                r1 = r1[r2]
                r2 = 14
                r3 = 1
                if (r1 == r2) goto L95
                r2 = 15
                r4 = 0
                if (r1 == r2) goto L37
                r3 = r4
                goto Lb8
            L37:
                java.lang.Object r12 = r12.obj
                com.sec.internal.omanetapi.common.data.LargeFileResponse r12 = (com.sec.internal.omanetapi.common.data.LargeFileResponse) r12
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                java.lang.String r2 = r12.uploadKeyId
                r1.mUploadKeyId = r2
                int r2 = r12.partSizeMin
                int r12 = r12.partSizeMax
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Integer r12 = java.lang.Integer.valueOf(r12)
                int r12 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.m357$$Nest$mcalculatePartSize(r1, r2, r12)
                r1.mPartSize = r12
                r12 = 0
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this     // Catch: java.io.IOException -> L77
                com.sec.internal.helper.httpclient.HttpPostBody r1 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.m358$$Nest$mgetFilePartPayload(r1, r4)     // Catch: java.io.IOException -> L77
                if (r1 != 0) goto L7e
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r2 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this     // Catch: java.io.IOException -> L75
                java.lang.String r2 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.m356$$Nest$fgetTAG(r2)     // Catch: java.io.IOException -> L75
                java.lang.String r4 = " unable to get payload upload failed "
                android.util.Log.i(r2, r4)     // Catch: java.io.IOException -> L75
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r2 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this     // Catch: java.io.IOException -> L75
                com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener r2 = r2.mSyncHandlerCallFlowListener     // Catch: java.io.IOException -> L75
                com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r4 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.OBJECT_FT_UPLOAD_FAILED     // Catch: java.io.IOException -> L75
                int r4 = r4.getId()     // Catch: java.io.IOException -> L75
                r2.onGoToEvent(r4, r12)     // Catch: java.io.IOException -> L75
                goto L7e
            L75:
                r12 = move-exception
                goto L7b
            L77:
                r1 = move-exception
                r10 = r1
                r1 = r12
                r12 = r10
            L7b:
                r12.printStackTrace()
            L7e:
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r12 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r2 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.UPLOAD_FILE_PART
                int r2 = r2.getId()
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r4 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                int r4 = r4.mPartSize
                r12.sendMessage(r2, r3, r4, r1)
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r12 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.helper.State r1 = r12.mUploadingPartsState
                r12.transitionTo(r1)
                goto Lb8
            L95:
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r12 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.ims.cmstore.MessageStoreClient r12 = r12.mStoreClient
                com.sec.internal.ims.cmstore.utils.CmsHttpController r12 = r12.getHttpController()
                com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessagePostLargeFile r1 = new com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessagePostLargeFile
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r2 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener r5 = r2.mCallFlowListener
                java.lang.String r6 = r2.mContentType
                java.lang.String r7 = r2.mFileName
                int r2 = r2.mTotalLength
                java.lang.Integer r8 = java.lang.Integer.valueOf(r2)
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r2 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                com.sec.internal.ims.cmstore.MessageStoreClient r9 = r2.mStoreClient
                r4 = r1
                r4.<init>(r5, r6, r7, r8, r9)
                r12.execute(r1)
            Lb8:
                if (r3 == 0) goto Ld4
                com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler r11 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.this
                java.lang.String r11 = com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.m356$$Nest$fgetTAG(r11)
                java.lang.StringBuilder r12 = new java.lang.StringBuilder
                r12.<init>()
                java.lang.String r1 = "RetrievingKeyState, Handled : "
                r12.append(r1)
                r12.append(r0)
                java.lang.String r12 = r12.toString()
                android.util.Log.d(r11, r12)
            Ld4:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.synchandler.FileHandler.RetrievingKeyState.processMessage(android.os.Message):boolean");
        }
    }

    private class UploadingPartsState extends State {
        private UploadingPartsState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            HttpPostBody httpPostBody;
            OMASyncEventType InitEvent = FileHandler.this.InitEvent(message);
            Log.i(FileHandler.this.TAG, " processMessage " + message.what);
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            boolean z = true;
            if (i == 16) {
                String valueOf = String.valueOf(message.arg1);
                HttpPostBody httpPostBody2 = (HttpPostBody) message.obj;
                CmsHttpController httpController = FileHandler.this.mStoreClient.getHttpController();
                FileHandler fileHandler = FileHandler.this;
                httpController.execute(new CloudMessagePostLargeFilePart(fileHandler.mCallFlowListener, fileHandler.mUploadKeyId, valueOf, httpPostBody2, fileHandler.mStoreClient));
            } else if (i != 17) {
                z = false;
            } else {
                UploadPartInfo uploadPartInfo = (UploadPartInfo) message.obj;
                if (uploadPartInfo == null) {
                    FileHandler.this.sendMessage(OMASyncEventType.UPLOAD_FILE_COMPLETE.getId());
                    FileHandler fileHandler2 = FileHandler.this;
                    fileHandler2.transitionTo(fileHandler2.mUploadCompleteState);
                } else {
                    FileHandler.this.mUploadPartInfoList.add(uploadPartInfo);
                    int i2 = uploadPartInfo.partNum + 1;
                    Log.i(FileHandler.this.TAG, " part uploaded for partNum " + uploadPartInfo.partNum + "partTag " + uploadPartInfo.partTag);
                    FileHandler fileHandler3 = FileHandler.this;
                    if (i2 <= fileHandler3.mTotalParts) {
                        try {
                            httpPostBody = fileHandler3.getFilePartPayload(i2 - 1);
                        } catch (IOException e) {
                            e.printStackTrace();
                            httpPostBody = null;
                        }
                        FileHandler.this.sendMessage(OMASyncEventType.UPLOAD_FILE_PART.getId(), i2, FileHandler.this.mPartSize, httpPostBody);
                    } else {
                        fileHandler3.sendMessage(OMASyncEventType.UPLOAD_FILE_COMPLETE.getId());
                        FileHandler fileHandler4 = FileHandler.this;
                        fileHandler4.transitionTo(fileHandler4.mUploadCompleteState);
                    }
                }
            }
            if (z) {
                Log.d(FileHandler.this.TAG, "UploadingPartsState, Handled : " + InitEvent);
            }
            return z;
        }
    }

    private class UploadCompleteState extends State {
        private UploadCompleteState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = FileHandler.this.InitEvent(message);
            Log.i(FileHandler.this.TAG, " processMessage " + message.what);
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            boolean z = true;
            if (i == 18) {
                FileHandler fileHandler = FileHandler.this;
                UploadPartInfos uploadPartInfos = fileHandler.mUploadPartInfos;
                if (uploadPartInfos == null) {
                    Log.i(fileHandler.TAG, " upload failed ");
                    FileHandler.this.mSyncHandlerCallFlowListener.onGoToEvent(OMASyncEventType.OBJECT_FT_UPLOAD_FAILED.getId(), null);
                } else {
                    uploadPartInfos.uploadPartInfoArray = new UploadPartInfo[fileHandler.mUploadPartInfoList.size()];
                    FileHandler fileHandler2 = FileHandler.this;
                    UploadPartInfos uploadPartInfos2 = fileHandler2.mUploadPartInfos;
                    uploadPartInfos2.uploadPartInfoArray = (UploadPartInfo[]) fileHandler2.mUploadPartInfoList.toArray(uploadPartInfos2.uploadPartInfoArray);
                    CmsHttpController httpController = FileHandler.this.mStoreClient.getHttpController();
                    FileHandler fileHandler3 = FileHandler.this;
                    httpController.execute(new CloudMessagePostLargeFileComplete(fileHandler3.mCallFlowListener, fileHandler3.mUploadKeyId, fileHandler3.mUploadPartInfos, fileHandler3.mStoreClient));
                }
            } else if (i != 19) {
                z = false;
            } else {
                try {
                    URL url = new URL((String) message.obj);
                    FileUploadResponse fileUploadResponse = new FileUploadResponse();
                    FileHandler fileHandler4 = FileHandler.this;
                    fileUploadResponse.contentType = fileHandler4.mContentType;
                    fileUploadResponse.fileName = fileHandler4.mFileName;
                    fileUploadResponse.size = fileHandler4.mTotalLength;
                    fileUploadResponse.href = url;
                    fileHandler4.mFileUploadData.add(1, fileUploadResponse);
                    FileHandler.this.sendMessage(OMASyncEventType.CREATE_ALL_OBJECT.getId());
                    FileUtils.removeFile(FileHandler.this.mLocalFilePath);
                    FileHandler fileHandler5 = FileHandler.this;
                    fileHandler5.transitionTo(fileHandler5.mDefaultState);
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                }
            }
            if (z) {
                Log.d(FileHandler.this.TAG, "UploadCompleteState, Handled : " + InitEvent);
            }
            return z;
        }
    }
}
