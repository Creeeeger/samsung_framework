package com.sec.internal.ims.servicemodules.im;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.net.TelephonyNetworkSpecifier;
import android.net.Uri;
import android.os.Environment;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.data.MessageContextValues;
import com.sec.internal.constants.ims.servicemodules.im.FileDisposition;
import com.sec.internal.constants.ims.servicemodules.im.FtHttpFileInfo;
import com.sec.internal.constants.ims.servicemodules.im.ImCacheAction;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.event.FtIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.FtTransferProgressEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendSlmFileTransferParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.FtRejectReason;
import com.sec.internal.helper.FilePathGenerator;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.Iso8601;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.helper.translate.MappingTranslator;
import com.sec.internal.ims.servicemodules.im.MessageBase;
import com.sec.internal.ims.servicemodules.im.data.response.FileResizeResponse;
import com.sec.internal.ims.servicemodules.im.listener.FtMessageListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.im.util.FtHttpXmlParser;
import com.sec.internal.ims.servicemodules.im.util.TidGenerator;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class FtMessage extends MessageBase {
    public static final int DEFAULT_PLAYING_LENGTH = 0;
    protected static final long DEFAULT_TRANSFER_TIMEOUT = 300000;
    protected static final long DEFAULT_WAKE_LOCK_TIMEOUT = 10000;
    protected static final int EVENT_ACCEPT_TRANSFER = 4;
    protected static final int EVENT_ACCEPT_TRANSFER_DONE = 5;
    protected static final int EVENT_ATTACH_FILE = 1;
    protected static final int EVENT_ATTACH_FILE_ON_CREATE_THUMBNAIL = 19;
    protected static final int EVENT_ATTACH_SLM_FILE = 16;
    protected static final int EVENT_AUTOACCEPT_RESUMING = 15;
    protected static final int EVENT_AUTO_RESUME_FILE_TIMER_TIMEOUT = 21;
    protected static final int EVENT_CANCEL_TRANSFER = 8;
    protected static final int EVENT_CANCEL_TRANSFER_DONE = 9;
    protected static final int EVENT_DELAY_CANCEL_TRANSFER = 52;
    protected static final int EVENT_HANDLE_FILE_RESIZE_RESPONSE = 20;
    protected static final int EVENT_QUEUED_FILE = 14;
    protected static final int EVENT_RECEIVE_TRANSFER = 10;
    protected static final int EVENT_REJECT_TRANSFER = 6;
    protected static final int EVENT_REJECT_TRANSFER_DONE = 7;
    protected static final int EVENT_RETRY_SEND_FILE = 18;
    protected static final int EVENT_SEND_DELIVERED_NOTIFICATION_DONE = 13;
    protected static final int EVENT_SEND_FILE = 11;
    protected static final int EVENT_SEND_FILE_DONE = 2;
    protected static final int EVENT_SEND_FILE_REQUEST_TIMEOUT = 17;
    protected static final int EVENT_SEND_FILE_SESSION_HANDLE = 22;
    protected static final int EVENT_SEND_SLM_FILE_DONE = 12;
    protected static final int EVENT_SET_UP_NETWORK_FAILURE_FOR_FT = 51;
    protected static final int EVENT_SET_UP_NETWORK_SUCCESS_FOR_FT = 50;
    protected static final int EVENT_TRANSFER_PROGRESS = 3;
    protected static final int EVENT_TRANSFER_TIMER_TIMEOUT = 23;
    protected static final int MAX_FILE_NAME_LEN = 128;
    protected static final int MAX_RETRY_COUNT = 3;
    protected static final int SET_UP_NETWORK_TIMEOUT = 15000;
    private static final MappingTranslator<ImError, CancelReason> sCancelReasonTranslator;
    protected long FT_SIZE_MARGIN;
    protected long MAX_SIZE_DOWNLOAD_THUMBNAIL;
    protected long MAX_SIZE_THUMBNAIL;
    protected CancelReason mCancelReason;
    protected Uri mContentUri;
    protected IMnoStrategy.ErrorNotificationId mErrorNotificationId;
    protected boolean mExtraFt;
    protected String mFileBrandedUrl;
    protected String mFileDataUrl;
    protected FileDisposition mFileDisposition;
    protected String mFileExpire;
    protected String mFileFingerPrint;
    protected String mFileName;
    protected String mFilePath;
    protected long mFileSize;
    protected String mFileTransferId;
    protected Message mFtCompleteCallback;
    protected final String mInReplyToContributionId;
    protected boolean mIsAutoDownload;
    protected boolean mIsBootup;
    protected boolean mIsConferenceUriChanged;
    protected boolean mIsGroupChat;
    protected boolean mIsNetworkConnected;
    protected boolean mIsNetworkRequested;
    protected boolean mIsResizable;
    protected boolean mIsResuming;
    protected boolean mIsWifiUsed;
    protected FtMessageListener mListener;
    private ConnectivityManager.NetworkCallback mNetworkStateCallback;
    protected int mPlayingLength;
    protected Object mRawHandle;
    protected FtRejectReason mRejectReason;
    protected int mResumableOptionCode;
    protected int mRetryCount;
    protected int mStateId;
    protected FtStateMachine mStateMachine;
    protected String mThumbnailContentType;
    protected String mThumbnailPath;
    protected int mTimeDuration;
    protected long mTransferredBytes;
    protected final PowerManager.WakeLock mWakeLock;
    protected static final TidGenerator sTidGenerator = new TidGenerator();
    private static final String LOG_TAG = FtMessage.class.getSimpleName();

    protected abstract FtStateMachine createFtStateMachine(String str, Looper looper);

    @Override // com.sec.internal.ims.servicemodules.im.MessageBase
    public String getServiceTag() {
        return "FT";
    }

    public abstract int getTransferMech();

    public void startFileTransferTimer() {
    }

    static {
        MappingTranslator.Builder builder = new MappingTranslator.Builder();
        ImError imError = ImError.REMOTE_PARTY_CANCELED;
        CancelReason cancelReason = CancelReason.CANCELED_BY_REMOTE;
        MappingTranslator.Builder map = builder.map(imError, cancelReason);
        ImError imError2 = ImError.REMOTE_PARTY_REJECTED;
        CancelReason cancelReason2 = CancelReason.REJECTED_BY_REMOTE;
        MappingTranslator.Builder map2 = map.map(imError2, cancelReason2).map(ImError.REMOTE_PARTY_DECLINED, cancelReason2).map(ImError.SESSION_TIMED_OUT, CancelReason.TIME_OUT).map(ImError.ENGINE_ERROR, CancelReason.UNKNOWN);
        ImError imError3 = ImError.NETWORK_ERROR;
        CancelReason cancelReason3 = CancelReason.ERROR;
        MappingTranslator.Builder map3 = map2.map(imError3, cancelReason3).map(ImError.NORMAL_RELEASE, cancelReason3).map(ImError.SERVICE_UNAVAILABLE, cancelReason3).map(ImError.CONNECTION_RELEASED, CancelReason.CONNECTION_RELEASED).map(ImError.FORBIDDEN_NO_WARNING_HEADER, CancelReason.NOT_AUTHORIZED);
        ImError imError4 = ImError.REMOTE_TEMPORARILY_UNAVAILABLE;
        CancelReason cancelReason4 = CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE;
        MappingTranslator.Builder map4 = map3.map(imError4, cancelReason4).map(ImError.REMOTE_USER_INVALID, CancelReason.REMOTE_USER_INVALID).map(ImError.NO_RESPONSE, CancelReason.NO_RESPONSE).map(ImError.CANCELED_BY_LOCAL, CancelReason.CANCELED_BY_USER).map(ImError.REMOTE_PARTY_CLOSED, cancelReason);
        ImError imError5 = ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED;
        CancelReason cancelReason5 = CancelReason.FORBIDDEN_NO_RETRY_FALLBACK;
        MappingTranslator.Builder map5 = map4.map(imError5, cancelReason5).map(ImError.FORBIDDEN_VERSION_NOT_SUPPORTED, cancelReason5).map(ImError.CONTENT_REACHED_DOWNSIZE, CancelReason.CONTENT_REACHED_DOWNSIZE).map(ImError.INVALID_REQUEST, CancelReason.INVALID_REQUEST).map(ImError.DEVICE_UNREGISTERED, CancelReason.DEVICE_UNREGISTERED).map(ImError.MSRP_REQUEST_UNINTELLIGIBLE, cancelReason3).map(ImError.MSRP_TRANSACTION_TIMED_OUT, cancelReason3);
        ImError imError6 = ImError.MSRP_ACTION_NOT_ALLOWED;
        CancelReason cancelReason6 = CancelReason.MSRP_SESSION_ERROR_NO_RESUME;
        sCancelReasonTranslator = map5.map(imError6, cancelReason6).map(ImError.MSRP_UNKNOWN_CONTENT_TYPE, cancelReason6).map(ImError.MSRP_SESSION_DOES_NOT_EXIST, cancelReason3).map(ImError.MSRP_SESSION_ON_OTHER_CONNECTION, cancelReason6).map(ImError.MSRP_PARAMETERS_OUT_OF_BOUND, cancelReason4).map(ImError.MSRP_UNKNOWN_METHOD, cancelReason4).map(ImError.METHOD_NOT_ALLOWED, cancelReason4).map(ImError.MSRP_DO_NOT_SEND_THIS_MESSAGE, cancelReason6).map(ImError.DEDICATED_BEARER_ERROR, cancelReason3).buildTranslator();
    }

    protected FtMessage(Builder<?> builder) {
        super(builder);
        this.MAX_SIZE_THUMBNAIL = 9216L;
        this.MAX_SIZE_DOWNLOAD_THUMBNAIL = 102400L;
        this.FT_SIZE_MARGIN = 10240L;
        this.mPlayingLength = 0;
        this.mErrorNotificationId = IMnoStrategy.ErrorNotificationId.NONE;
        this.mNetworkStateCallback = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.servicemodules.im.FtMessage.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                Log.i(FtMessage.LOG_TAG, "ConnectivityManager.NetworkCallback: onAvailable");
                FtMessage.this.onConnectionChanged(network, true);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Log.i(FtMessage.LOG_TAG, "ConnectivityManager.NetworkCallback: onLost");
                FtMessage.this.onConnectionChanged(network, false);
            }
        };
        Preconditions.checkNotNull(((Builder) builder).mListener);
        this.mListener = ((Builder) builder).mListener;
        this.mFilePath = ((Builder) builder).mFilePath;
        this.mContentUri = ((Builder) builder).mContentUri;
        this.mFileName = ((Builder) builder).mFileName;
        this.mFileSize = ((Builder) builder).mFileSize;
        this.mFileDisposition = ((Builder) builder).mFileDisposition;
        this.mPlayingLength = ((Builder) builder).mPlayingLength;
        this.mThumbnailPath = ((Builder) builder).mThumbnailPath;
        this.mExtraFt = ((Builder) builder).mExtraFt;
        this.mTimeDuration = ((Builder) builder).mTimeDuration;
        this.mTransferredBytes = ((Builder) builder).mTransferredBytes;
        this.mInReplyToContributionId = ((Builder) builder).mInReplyToContributionId;
        this.mFileTransferId = ((Builder) builder).mFileTransferId;
        this.mResumableOptionCode = ((Builder) builder).mResumableOptionCode;
        this.mCancelReason = CancelReason.valueOf(((Builder) builder).mCancelReason);
        this.mIsResizable = ((Builder) builder).mIsResizable;
        this.mIsGroupChat = ((Builder) builder).mIsGroupChat;
        PowerManager.WakeLock newWakeLock = ((PowerManager) getContext().getSystemService("power")).newWakeLock(1, FtMessage.class.getSimpleName());
        this.mWakeLock = newWakeLock;
        newWakeLock.setReferenceCounted(false);
        initStateMachine(((Builder) builder).mLooper, ((Builder) builder).mCurrentStateMachineState);
        this.mFileFingerPrint = "";
    }

    protected static CancelReason translateToCancelReason(ImError imError) {
        MappingTranslator<ImError, CancelReason> mappingTranslator = sCancelReasonTranslator;
        if (mappingTranslator.isTranslationDefined(imError)) {
            return mappingTranslator.translate(imError);
        }
        return CancelReason.UNKNOWN;
    }

    protected static boolean checkAvailableStorage(String str, long j) {
        try {
            long availableBytes = new StatFs(str).getAvailableBytes();
            Log.i(LOG_TAG, "checkAvailableStorage: reqSize=" + j + " available=" + availableBytes);
            return j <= availableBytes;
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static ImConstants.Type getType(String str) {
        if (MIMEContentType.LOCATION_PUSH.equals(str)) {
            return ImConstants.Type.LOCATION;
        }
        return ImConstants.Type.MULTIMEDIA;
    }

    protected void initStateMachine(Looper looper, int i) {
        FtStateMachine createFtStateMachine = createFtStateMachine((TextUtils.isEmpty(this.mImdnId) || this.mImdnId.length() < 4) ? "" : TextUtils.substring(this.mImdnId, 0, 4), looper);
        this.mStateMachine = createFtStateMachine;
        if (i == 4 || i == 3 || i == 2) {
            this.mIsBootup = true;
        }
        createFtStateMachine.initState(createFtStateMachine.getState(Integer.valueOf(i)));
        this.mStateId = this.mStateMachine.getStateId();
    }

    public void attachFile(boolean z) {
        FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(1, z ? 1 : 0));
    }

    public void attachSlmFile() {
        FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(16));
    }

    public void setFtCompleteCallback(Message message) {
        this.mFtCompleteCallback = message;
    }

    public void sendFile() {
        if (this.mIsResuming) {
            FtStateMachine ftStateMachine = this.mStateMachine;
            ftStateMachine.sendMessage(ftStateMachine.obtainMessage(1, 1));
        } else {
            FtStateMachine ftStateMachine2 = this.mStateMachine;
            ftStateMachine2.sendMessage(ftStateMachine2.obtainMessage(11));
        }
    }

    public void acceptTransfer(Uri uri) {
        this.mContentUri = uri;
        FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(4));
    }

    public void rejectTransfer() {
        FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(6));
    }

    public void cancelTransfer(CancelReason cancelReason) {
        FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(8, cancelReason));
    }

    public void handleFileResizeResponse(boolean z, Uri uri) {
        FileResizeResponse fileResizeResponse = new FileResizeResponse(z, z ? FileUtils.copyFileToCacheFromUri(this.mModule.getContext(), this.mFileName, uri) : null);
        FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(20, fileResizeResponse));
    }

    public void receiveTransfer(Message message, FtIncomingSessionEvent ftIncomingSessionEvent, boolean z) {
        this.mIsResuming = z;
        this.mFtCompleteCallback = message;
        if (z && this.mStatus == ImConstants.Status.FAILED) {
            updateStatus(ImConstants.Status.UNREAD);
        }
        FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(10, ftIncomingSessionEvent));
    }

    public void handleTransferProgress(FtTransferProgressEvent ftTransferProgressEvent) {
        FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(3, ftTransferProgressEvent));
    }

    public void removeAutoResumeFileTimer() {
        this.mStateMachine.getHandler().removeMessages(21);
    }

    public Message getFtCallback() {
        return this.mFtCompleteCallback;
    }

    public String getFilePath() {
        return this.mFilePath;
    }

    public Uri getContentUri() {
        return this.mContentUri;
    }

    public void setContentUri(Uri uri) {
        this.mContentUri = uri;
    }

    public long getFileSize() {
        return this.mFileSize;
    }

    public String getFileExpire() {
        return this.mFileExpire;
    }

    public String getFileDataUrl() {
        return this.mFileDataUrl;
    }

    public String getFileBrandedUrl() {
        return this.mFileBrandedUrl;
    }

    public FileDisposition getFileDisposition() {
        return this.mFileDisposition;
    }

    public int getPlayingLength() {
        return this.mPlayingLength;
    }

    @Override // com.sec.internal.ims.servicemodules.im.MessageBase
    public String getBody() {
        return this.mBody;
    }

    public void updateBody(String str) {
        this.mBody = str;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public String getStateName() {
        return this.mStateMachine.getState();
    }

    public int getStateId() {
        return this.mStateMachine.getStateId();
    }

    public FtRejectReason getRejectReason() {
        return this.mRejectReason;
    }

    public CancelReason getCancelReason() {
        return this.mCancelReason;
    }

    public int getReasonId() {
        CancelReason cancelReason = this.mCancelReason;
        if (cancelReason == null) {
            return CancelReason.UNKNOWN.getId();
        }
        return cancelReason.getId();
    }

    public long getTransferredBytes() {
        return this.mTransferredBytes;
    }

    public void setTransferredBytes(int i) {
        this.mTransferredBytes = i;
    }

    public String getThumbnailPath() {
        return this.mThumbnailPath;
    }

    public boolean getExtraFt() {
        return this.mExtraFt;
    }

    public int getTimeDuration() {
        return this.mTimeDuration;
    }

    public int getResumableOptionCode() {
        return this.mResumableOptionCode;
    }

    public String getFileName() {
        return this.mFileName;
    }

    public String getFileTransferId() {
        return this.mFileTransferId;
    }

    public void setConversationId(String str) {
        this.mConversationId = str;
    }

    public void setContributionId(String str) {
        this.mContributionId = str;
    }

    public int getRetryCount() {
        return this.mRetryCount;
    }

    public void setRetryCount(int i) {
        this.mRetryCount = i;
    }

    public void updateQueued() {
        Log.i(LOG_TAG, "updateQueued");
        FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(14));
    }

    public void updateState() {
        int stateId = getStateId();
        if (this.mStateId != stateId) {
            this.mStateId = stateId;
            triggerObservers(ImCacheAction.UPDATED);
        }
    }

    public void updateResumeableOptionCode(int i) {
        if (this.mResumableOptionCode != i) {
            this.mResumableOptionCode = i;
            triggerObservers(ImCacheAction.UPDATED);
        }
    }

    public void updateTransferredBytes(long j) {
        this.mTransferredBytes = j;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public boolean isResuming() {
        return this.mIsResuming;
    }

    public void setIsResuming(boolean z) {
        this.mIsResuming = z;
    }

    public boolean isAutoResumable() {
        return this.mConfig.getEnableFtAutoResumable();
    }

    public boolean getIsResizable() {
        return this.mIsResizable;
    }

    public void setIsResizable(boolean z) {
        this.mIsResizable = z;
    }

    public void setIsGroupChat(boolean z) {
        this.mIsGroupChat = z;
    }

    protected boolean isExternalStorageAvailable() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    protected boolean renameFile() {
        File file = new File(this.mFilePath);
        String str = LOG_TAG;
        Log.i(str, "temporary file path: " + this.mFilePath);
        String onRequestIncomingFtTransferPath = this.mListener.onRequestIncomingFtTransferPath();
        if (onRequestIncomingFtTransferPath != null) {
            File file2 = new File(onRequestIncomingFtTransferPath);
            if (!file2.exists() && !file2.mkdirs()) {
                Log.e(str, "Fail to create folder");
            }
            this.mFilePath = FilePathGenerator.generateUniqueFilePath(onRequestIncomingFtTransferPath, this.mFileName, 128);
            Log.i(str, "new file path: " + this.mFilePath);
            if (file.renameTo(new File(this.mFilePath))) {
                Log.i(str, "file rename success");
                return true;
            }
            Log.e(str, "file rename failure");
            return false;
        }
        Log.e(str, "Error in getting directory");
        return false;
    }

    protected boolean deleteFile() {
        if (this.mFilePath != null) {
            File file = new File(this.mFilePath);
            if (file.exists()) {
                boolean delete = file.delete();
                this.mFilePath = null;
                return delete;
            }
        }
        return false;
    }

    protected boolean deleteThumbnail() {
        if (this.mThumbnailPath != null) {
            File file = new File(this.mThumbnailPath);
            if (file.exists()) {
                boolean delete = file.delete();
                this.mThumbnailPath = null;
                return delete;
            }
        }
        return false;
    }

    protected void invokeFtQueueCallBack() {
        Message message = this.mFtCompleteCallback;
        if (message != null) {
            message.obj = this;
            message.sendToTarget();
        } else {
            Log.i(LOG_TAG, "mFtCompleteCallback is not set");
        }
        this.mFtCompleteCallback = null;
    }

    protected boolean checkValidPeriod() {
        try {
            String fileExpire = getFileExpire();
            if (fileExpire == null) {
                FtHttpFileInfo parse = FtHttpXmlParser.parse(this.mBody);
                if (parse != null && parse.getDataUntil() != null) {
                    fileExpire = parse.getDataUntil();
                }
                Log.e(LOG_TAG, "Failed to parse FtHttpFileInfo or fileExpire is null");
                return true;
            }
            Date parse2 = Iso8601.parse(fileExpire);
            Date date = new Date(System.currentTimeMillis());
            Log.i(LOG_TAG, "checkValidPeriod: expiredDate=" + parse2 + " currentDate=" + date);
            return parse2.after(date);
        } catch (IOException | NullPointerException | ParseException | XmlPullParserException e) {
            e.printStackTrace();
            return true;
        }
    }

    protected boolean checkAvailableRetry() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        Network network = this.mNetwork;
        if (network == null) {
            network = connectivityManager.getActiveNetwork();
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
        if (networkCapabilities != null) {
            return networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(1);
        }
        return false;
    }

    public void conferenceUriChanged() {
        this.mIsConferenceUriChanged = true;
    }

    public boolean isConferenceUriChanged() {
        return this.mIsConferenceUriChanged;
    }

    protected void acquireWakeLock() {
        Log.i(LOG_TAG, "acquireWakeLock: " + getId());
        this.mWakeLock.acquire(10000L);
    }

    protected void releaseWakeLock() {
        if (this.mWakeLock.isHeld()) {
            Log.i(LOG_TAG, "releaseWakeLock: " + getId());
            this.mWakeLock.release();
        }
    }

    protected String getFtHttpUserAgent() {
        return getRcsStrategy().getFtHttpUserAgent(this.mConfig);
    }

    public IMnoStrategy.ErrorNotificationId getErrorNotificationId() {
        return this.mErrorNotificationId;
    }

    protected boolean sendSlmFile(Message message) {
        Set<ImsUri> networkPreferredUri = getRcsStrategy().getNetworkPreferredUri(this.mUriGenerator, this.mListener.onRequestParticipantUris(this.mChatId));
        if (!getRcsStrategy().checkSlmFileType(this.mContentType) || TextUtils.isEmpty(this.mFilePath)) {
            Log.i(LOG_TAG, "can't send slm. mContentType = " + this.mContentType + "mFilePath = " + this.mFilePath);
            this.mCancelReason = CancelReason.FORBIDDEN_NO_RETRY_FALLBACK;
            return false;
        }
        ISlmServiceInterface iSlmServiceInterface = this.mSlmService;
        int i = this.mId;
        String str = this.mFileName;
        String str2 = this.mFilePath;
        long j = this.mFileSize;
        String str3 = this.mContentType;
        iSlmServiceInterface.sendFtSlmMessage(new SendSlmFileTransferParams(i, networkPreferredUri, null, null, str, str2, j, str3, str3, this.mContributionId, this.mConversationId, this.mInReplyToContributionId, this.mImdnId, this.mDispNotification, message, isBroadcastMsg(), this.mSimIMSI));
        return true;
    }

    protected boolean validateFileResizeResponse(FileResizeResponse fileResizeResponse) {
        if (!this.mIsSlmSvcMsg) {
            Log.e(LOG_TAG, "validateFileResizeResponse called for non SLM msg, return");
            return false;
        }
        if (!fileResizeResponse.isResizeSuccessful) {
            Log.e(LOG_TAG, "validateFileResizeResponse File resizing failed id:" + this.mId);
            return false;
        }
        if (fileResizeResponse.resizedFilePath == null) {
            Log.e(LOG_TAG, "validateFileResizeResponse no resized filepath, id:" + this.mId);
            return false;
        }
        File file = new File(fileResizeResponse.resizedFilePath);
        if (file.exists() && file.length() <= this.mConfig.getSlmMaxMsgSize()) {
            return true;
        }
        Log.e(LOG_TAG, "validateFileResizeResponse File resizing failed id:" + this.mId + ", length:" + file.length());
        return false;
    }

    protected void sendCancelFtSession(CancelReason cancelReason) {
        FtRejectReason ftRejectReason;
        this.mCancelReason = cancelReason;
        if (AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[cancelReason.ordinal()] == 1) {
            ftRejectReason = FtRejectReason.SESSION_TIMEOUT;
        } else {
            ftRejectReason = FtRejectReason.DECLINE;
        }
        RejectFtSessionParams rejectFtSessionParams = new RejectFtSessionParams(this.mRawHandle, this.mStateMachine.obtainMessage(9), ftRejectReason, this.mFileTransferId);
        if (this.mIsSlmSvcMsg) {
            this.mSlmService.cancelFtSlmMessage(rejectFtSessionParams);
        } else {
            this.mImsService.cancelFtSession(rejectFtSessionParams);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.FtMessage$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason;

        static {
            int[] iArr = new int[CancelReason.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason = iArr;
            try {
                iArr[CancelReason.DEDICATED_BEARER_UNAVAILABLE_TIMEOUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    protected boolean needToAcquireNetworkForFT() {
        return (getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.FT_INTERNET_PDN) || getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.FT_NET_CAPABILITY) == 4 || this.mIsNetworkConnected || isWifiConnected()) ? false : true;
    }

    protected void acquireNetworkForFT(int i) {
        int subId;
        Log.i(LOG_TAG, "acquireNetworkForFT");
        this.mIsNetworkRequested = true;
        try {
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addTransportType(0).addCapability(i);
            if (SimUtil.isDualIMS() && (subId = SimUtil.getSubId(this.mConfig.getPhoneId())) > 0) {
                builder.setNetworkSpecifier(new TelephonyNetworkSpecifier.Builder().setSubscriptionId(subId).build());
            }
            NetworkRequest build = builder.build();
            ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
            connectivityManager.registerNetworkCallback(build, this.mNetworkStateCallback);
            connectivityManager.requestNetwork(build, this.mNetworkStateCallback);
            this.mStateMachine.sendMessageDelayed(51, 15000L);
        } catch (Exception e) {
            e.printStackTrace();
            this.mStateMachine.sendMessage(51);
        }
    }

    protected void releaseNetworkAcquiredForFT() {
        Log.i(LOG_TAG, "releaseNetworkAcquiredForFT");
        ((ConnectivityManager) getContext().getSystemService("connectivity")).unregisterNetworkCallback(this.mNetworkStateCallback);
        setNetwork(null);
        this.mIsNetworkRequested = false;
        this.mIsNetworkConnected = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConnectionChanged(Network network, boolean z) {
        Log.i(LOG_TAG, "onConnectionChanged: network = " + network + ", available = " + z);
        if (z) {
            if (!this.mIsNetworkRequested || this.mIsNetworkConnected) {
                return;
            }
            if (network != null) {
                setNetwork(network);
                this.mIsNetworkConnected = true;
                this.mStateMachine.sendMessage(50);
                return;
            }
            this.mStateMachine.sendMessage(51);
            return;
        }
        if (this.mIsNetworkRequested) {
            setNetwork(null);
            this.mIsNetworkConnected = false;
        }
    }

    public void listToDumpFormat(int i, int i2, List<String> list) {
        int lastIndexOf;
        try {
            list.add(0, Integer.toString(i2));
            String str = this.mChatId;
            String str2 = MessageContextValues.none;
            list.add(1, str != null ? str.substring(0, 4) : MessageContextValues.none);
            String str3 = this.mImdnId;
            if (str3 != null) {
                str2 = str3.substring(0, 4);
            }
            list.add(2, str2);
            list.add(3, this.mDirection == ImDirection.INCOMING ? "MT" : "MO");
            list.add(4, Long.toString(this.mFileSize));
            String str4 = "";
            String str5 = this.mFileName;
            if (str5 != null && (lastIndexOf = str5.lastIndexOf(46)) > -1) {
                str4 = this.mFileName.substring(lastIndexOf + 1, lastIndexOf + 4);
            }
            list.add(5, str4);
            IMSLog.c(i, String.join(",", list));
        } catch (Exception e) {
            Log.e(LOG_TAG, "listToDumpFormat has an exception");
            e.printStackTrace();
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.MessageBase
    public String toString() {
        return "FtMessage [mFileName=" + IMSLog.checker(this.mFileName) + ", State=" + getStateName() + ", mTransferredBytes=" + this.mTransferredBytes + ", mFileSize=" + this.mFileSize + ", mFilePath=" + IMSLog.checker(this.mFilePath) + ", mContentUri=" + IMSLog.checker(this.mContentUri) + ", mThumbnailPath=" + this.mThumbnailPath + ", mIsGroupChat=" + this.mIsGroupChat + ", mTimeDuration=" + this.mTimeDuration + ", mContributionId=" + this.mContributionId + ", mConversationId=" + this.mConversationId + ", mInReplyToContributionId=" + this.mInReplyToContributionId + ", mRejectReason=" + this.mRejectReason + ", mCancelReason=" + this.mCancelReason + ", mIsResuming=" + this.mIsResuming + ", mWakeLock=" + this.mWakeLock + ", mExtInfo=" + this.mExtInfo + ", mExtraFt=" + this.mExtraFt + ", mFileFingerPrint=" + this.mFileFingerPrint + ", mFileDisposition=" + this.mFileDisposition + ", " + super.toString() + "]";
    }

    public static abstract class Builder<T extends Builder<T>> extends MessageBase.Builder<T> {
        private int mCancelReason;
        private Uri mContentUri;
        private int mCurrentStateMachineState;
        private boolean mExtraFt;
        private FileDisposition mFileDisposition;
        private String mFileName;
        private String mFilePath;
        private long mFileSize;
        private String mFileTransferId;
        private String mInReplyToContributionId;
        private boolean mIsGroupChat;
        private boolean mIsResizable;
        private FtMessageListener mListener;
        private Looper mLooper;
        private int mPlayingLength;
        private int mResumableOptionCode;
        private String mThumbnailPath;
        private int mTimeDuration;
        private long mTransferredBytes;

        public T looper(Looper looper) {
            this.mLooper = looper;
            return (T) self();
        }

        public T listener(FtMessageListener ftMessageListener) {
            this.mListener = ftMessageListener;
            return (T) self();
        }

        public T filePath(String str) {
            this.mFilePath = str;
            return (T) self();
        }

        public T contentUri(Uri uri) {
            this.mContentUri = uri;
            return (T) self();
        }

        public T fileName(String str) {
            this.mFileName = str;
            return (T) self();
        }

        public T fileSize(long j) {
            this.mFileSize = j;
            return (T) self();
        }

        public T thumbnailPath(String str) {
            this.mThumbnailPath = str;
            return (T) self();
        }

        public T extraFt(boolean z) {
            this.mExtraFt = z;
            return (T) self();
        }

        public T timeDuration(int i) {
            this.mTimeDuration = i;
            return (T) self();
        }

        public T transferredBytes(long j) {
            this.mTransferredBytes = j;
            return (T) self();
        }

        public T fileTransferId(String str) {
            this.mFileTransferId = str;
            return (T) self();
        }

        public T inReplyToConversationId(String str) {
            this.mInReplyToContributionId = str;
            return (T) self();
        }

        public T setState(int i) {
            this.mCurrentStateMachineState = i;
            return (T) self();
        }

        public T setCancelReason(int i) {
            this.mCancelReason = i;
            return (T) self();
        }

        public T setResumableOptions(int i) {
            this.mResumableOptionCode = i;
            return (T) self();
        }

        public T isResizable(boolean z) {
            this.mIsResizable = z;
            return (T) self();
        }

        public T isGroupChat(boolean z) {
            this.mIsGroupChat = z;
            return (T) self();
        }

        public T setFileDisposition(FileDisposition fileDisposition) {
            this.mFileDisposition = fileDisposition;
            return (T) self();
        }

        public T setPlayingLength(int i) {
            this.mPlayingLength = i;
            return (T) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public FtMessage build() {
            return ((Builder) self()).build();
        }
    }

    protected abstract class FtStateMachine extends StateMachine {
        protected abstract State getState(Integer num);

        protected abstract int getStateId();

        protected abstract void initState(State state);

        protected FtStateMachine(String str, Looper looper) {
            super(str, looper);
        }

        public String getState() {
            if (getCurrentState() == null) {
                return null;
            }
            return getCurrentState().getName();
        }
    }
}
