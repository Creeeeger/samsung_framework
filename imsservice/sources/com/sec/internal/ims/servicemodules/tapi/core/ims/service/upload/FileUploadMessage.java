package com.sec.internal.ims.servicemodules.tapi.core.ims.service.upload;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.gsma.services.rcs.upload.FileUpload;
import com.gsma.services.rcs.upload.FileUploadInfo;
import com.sec.internal.constants.ims.servicemodules.im.FtHttpFileInfo;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.helper.Iso8601;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.servicemodules.im.UploadFileTask;
import com.sec.internal.ims.servicemodules.im.UploadResumeFileTask;
import com.sec.internal.ims.servicemodules.im.util.AsyncFileTask;
import com.sec.internal.ims.servicemodules.im.util.FtHttpXmlParser;
import com.sec.internal.ims.servicemodules.im.util.TidGenerator;
import com.sec.internal.ims.servicemodules.tapi.service.utils.FileUtils;
import java.io.IOException;
import java.text.ParseException;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class FileUploadMessage {
    private static final int EVENT_CANCEL_UPLOAD = 2;
    private static final int EVENT_RETRY_UPLOAD = 7;
    private static final int EVENT_UPLOAD_CANCELED = 6;
    private static final int EVENT_UPLOAD_COMPLETED = 5;
    private static final int EVENT_UPLOAD_FILE = 1;
    private static final int EVENT_UPLOAD_PROGRESS = 3;
    private static final int EVENT_UPLOAD_STARTED = 4;
    private static final String LOG_TAG = "FileUploadMessage";
    private static final int MAX_RETRY_COUNT = 3;
    private boolean bFileIconRequired;
    private boolean bRetryEvent;
    private UploadFileTask.UploadTaskCallback mCallback;
    private Uri mContentUri;
    private final Context mContext;
    private String mFilePath;
    private long mFileSize;
    private String mFileUploadId;
    private FileUploadInfo mFileUploadInfo;
    private final Handler mHandler;
    private final ImConfig mImConfig;
    private IFileUploadTaskListener mListener;
    private final int mPhoneId;
    private int mRetryCnt;
    private FileUpload.State mState;
    private final TidGenerator mTidGenerator;
    private long mUploadBytes;
    private UploadFileTask mUploadTask;

    public FileUploadMessage(int i, Context context, ImConfig imConfig, Looper looper, Uri uri, String str, String str2, long j, boolean z) {
        TidGenerator tidGenerator = new TidGenerator();
        this.mTidGenerator = tidGenerator;
        this.mFileUploadInfo = null;
        this.mUploadTask = null;
        this.mState = FileUpload.State.INITIATING;
        this.mUploadBytes = 0L;
        this.mRetryCnt = 0;
        this.bRetryEvent = false;
        this.mCallback = new UploadFileTask.UploadTaskCallback() { // from class: com.sec.internal.ims.servicemodules.tapi.core.ims.service.upload.FileUploadMessage.1
            @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
            public void onStarted() {
                FileUploadMessage.this.mHandler.sendMessage(FileUploadMessage.this.mHandler.obtainMessage(4));
            }

            @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
            public void onProgressUpdate(long j2) {
                FileUploadMessage.this.mHandler.sendMessage(FileUploadMessage.this.mHandler.obtainMessage(3, Long.valueOf(j2)));
            }

            @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
            public void onCompleted(String str3) {
                FileUploadMessage.this.mHandler.sendMessage(FileUploadMessage.this.mHandler.obtainMessage(5, str3));
            }

            @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
            public void onCanceled(CancelReason cancelReason, int i2, int i3, boolean z2) {
                if (z2) {
                    FileUploadMessage.this.mUploadBytes = 0L;
                }
                FileUploadMessage.this.mHandler.sendMessage(FileUploadMessage.this.mHandler.obtainMessage(6, i2, i3));
            }

            @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
            public void onFinished() {
                if (FileUploadMessage.this.isUploadCompleted() || FileUploadMessage.this.bRetryEvent) {
                    return;
                }
                FileUploadMessage.this.mHandler.sendMessage(FileUploadMessage.this.mHandler.obtainMessage(6, -1, 0));
            }
        };
        this.mPhoneId = i;
        this.mContext = context;
        this.mImConfig = imConfig;
        this.mFileUploadId = tidGenerator.generate().toString();
        this.mContentUri = uri;
        this.mFilePath = str;
        this.mFileSize = j;
        this.bFileIconRequired = z;
        this.mHandler = new Handler(looper) { // from class: com.sec.internal.ims.servicemodules.tapi.core.ims.service.upload.FileUploadMessage.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (FileUploadMessage.this.isUploadCompleted()) {
                }
                switch (message.what) {
                    case 1:
                        FileUploadMessage.this.tryUpload();
                        break;
                    case 2:
                        FileUploadMessage.this.tryAbort();
                        break;
                    case 3:
                        FileUploadMessage.this.handleProgressUpadate(((Long) message.obj).longValue());
                        break;
                    case 4:
                        if (!FileUploadMessage.this.isUploadStated()) {
                            FileUploadMessage.this.handleTransferStarted();
                            break;
                        }
                        break;
                    case 5:
                        String str3 = (String) message.obj;
                        if (str3 != null) {
                            FileUploadMessage.this.handleTransferCompleted(str3);
                            break;
                        }
                        break;
                    case 6:
                        removeMessages(6);
                        FileUploadMessage.this.handleTransferCanceled(message.arg1, message.arg2);
                        break;
                    case 7:
                        FileUploadMessage.this.bRetryEvent = false;
                        if (FileUploadMessage.this.mRetryCnt < 3) {
                            FileUploadMessage.this.mRetryCnt++;
                            FileUploadMessage.this.tryUpload();
                            break;
                        } else {
                            FileUploadMessage.this.handleTransferCanceled(-1, 0);
                            break;
                        }
                }
            }
        };
    }

    public void addListener(IFileUploadTaskListener iFileUploadTaskListener) {
        this.mListener = iFileUploadTaskListener;
    }

    public void startUploadTask() {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(1));
    }

    public void abortUploadTask() {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryUpload() {
        UploadFileTask uploadFileTask = this.mUploadTask;
        if (uploadFileTask == null || uploadFileTask.getState() == AsyncFileTask.State.FINISHED) {
            String filePathFromUri = FileUtils.getFilePathFromUri(this.mContext, this.mContentUri);
            UploadFileTask.UploadRequest uploadRequest = new UploadFileTask.UploadRequest(this.mImConfig.getFtHttpCsUri().toString(), this.mFileSize, !TextUtils.isEmpty(filePathFromUri) ? filePathFromUri.substring(filePathFromUri.lastIndexOf("/") + 1) : null, this.mContentUri, this.bFileIconRequired, this.mFileUploadId, RcsPolicyManager.getRcsStrategy(this.mPhoneId).getFtHttpUserAgent(this.mImConfig), null, this.mImConfig.isFtHttpTrustAllCerts(), this.mCallback, null);
            if (uploadRequest.isValid()) {
                if (this.mUploadBytes > 0) {
                    this.mUploadTask = new UploadResumeFileTask(this.mImConfig.getPhoneId(), this.mContext, this.mHandler.getLooper(), uploadRequest);
                } else {
                    this.mUploadTask = new UploadFileTask(this.mImConfig.getPhoneId(), this.mContext, this.mHandler.getLooper(), uploadRequest);
                }
                this.mUploadTask.execute(AsyncFileTask.SERIAL_EXECUTOR);
                FileUpload.State state = FileUpload.State.INITIATING;
                this.mState = state;
                IFileUploadTaskListener iFileUploadTaskListener = this.mListener;
                if (iFileUploadTaskListener != null) {
                    iFileUploadTaskListener.onUploadStateChanged(this.mFileUploadId, state, false);
                    return;
                }
                return;
            }
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(6, -1, -1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryAbort() {
        Log.d(LOG_TAG, "Abort uploading: " + this.mFileUploadId);
        UploadFileTask uploadFileTask = this.mUploadTask;
        if (uploadFileTask != null) {
            uploadFileTask.cancel(true);
            this.mUploadTask = null;
        }
        if (this.mFileUploadInfo == null) {
            handleTransferAborted();
        }
    }

    private boolean parseResult(String str) {
        try {
            FtHttpFileInfo parse = FtHttpXmlParser.parse(str);
            if (parse == null) {
                return false;
            }
            if (parse.isThumbnailExist()) {
                this.mFileUploadInfo = new FileUploadInfo(Uri.parse(parse.getDataUrl().toString()), convertTimeToLong(parse.getDataUntil()), parse.getFileName(), parse.getFileSize(), parse.getContentType(), Uri.parse(parse.getThumbnailDataUrl().toString()), convertTimeToLong(parse.getThumbnailDataUntil()), parse.getThumbnailFileSize(), parse.getThumbnailContentType(), 0L, 0L);
                return true;
            }
            this.mFileUploadInfo = new FileUploadInfo(Uri.parse(parse.getDataUrl().toString()), convertTimeToLong(parse.getDataUntil()), parse.getFileName(), parse.getFileSize(), parse.getContentType(), Uri.EMPTY, 0L, 0L, "", 0L, 0L);
            return true;
        } catch (IOException e) {
            Log.e(LOG_TAG, e.toString() + ": " + e.getMessage());
            e.printStackTrace();
            return false;
        } catch (XmlPullParserException e2) {
            Log.e(LOG_TAG, "Can't parse upload result: " + str);
            e2.printStackTrace();
            return false;
        }
    }

    private long convertTimeToLong(String str) {
        try {
            return Iso8601.parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleProgressUpadate(long j) {
        this.mUploadBytes = j;
        IFileUploadTaskListener iFileUploadTaskListener = this.mListener;
        if (iFileUploadTaskListener != null) {
            iFileUploadTaskListener.onUploadProgress(this.mFileUploadId, j, this.mFileSize);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTransferStarted() {
        FileUpload.State state = FileUpload.State.STARTED;
        this.mState = state;
        IFileUploadTaskListener iFileUploadTaskListener = this.mListener;
        if (iFileUploadTaskListener != null) {
            iFileUploadTaskListener.onUploadStateChanged(this.mFileUploadId, state, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTransferCompleted(String str) {
        if (parseResult(str)) {
            this.mState = FileUpload.State.TRANSFERRED;
        } else {
            this.mState = FileUpload.State.FAILED;
        }
        IFileUploadTaskListener iFileUploadTaskListener = this.mListener;
        if (iFileUploadTaskListener != null) {
            iFileUploadTaskListener.onUploadStateChanged(this.mFileUploadId, this.mState, true);
            if (FileUpload.State.TRANSFERRED == this.mState) {
                this.mListener.onUploadComplete(this.mFileUploadId, this.mFileUploadInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTransferCanceled(int i, int i2) {
        String str = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Handle file upload state: ");
        sb.append(this.mFileUploadId);
        sb.append(", CANCELED, retry: ");
        sb.append(i >= 0);
        Log.d(str, sb.toString());
        if (i < 0) {
            FileUpload.State state = FileUpload.State.FAILED;
            this.mState = state;
            IFileUploadTaskListener iFileUploadTaskListener = this.mListener;
            if (iFileUploadTaskListener != null) {
                iFileUploadTaskListener.onUploadStateChanged(this.mFileUploadId, state, true);
                return;
            }
            return;
        }
        this.bRetryEvent = true;
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(handler.obtainMessage(7, Integer.valueOf(i2)), i * 1000);
    }

    private void handleTransferAborted() {
        FileUpload.State state = FileUpload.State.ABORTED;
        this.mState = state;
        IFileUploadTaskListener iFileUploadTaskListener = this.mListener;
        if (iFileUploadTaskListener != null) {
            iFileUploadTaskListener.onUploadStateChanged(this.mFileUploadId, state, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUploadStated() {
        return this.mState != FileUpload.State.INITIATING;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUploadCompleted() {
        FileUpload.State state = this.mState;
        return (state == FileUpload.State.INITIATING || state == FileUpload.State.STARTED) ? false : true;
    }

    public Uri getContentUri() {
        return this.mContentUri;
    }

    public String getFileUploadId() {
        return this.mFileUploadId;
    }

    public FileUpload.State getState() {
        return this.mState;
    }

    public FileUploadInfo getFileUploadInfo() {
        return this.mFileUploadInfo;
    }
}
