package com.sec.internal.ims.servicemodules.im;

import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.servicemodules.im.ImCacheAction;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.event.FtIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.FtTransferProgressEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendImdnParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendReportMsgParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.FtRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.result.FtResult;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.FilePathGenerator;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.FingerprintGenerator;
import com.sec.internal.helper.IState;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.PublicAccountUri;
import com.sec.internal.helper.State;
import com.sec.internal.helper.translate.MappingTranslator;
import com.sec.internal.ims.servicemodules.im.FtMessage;
import com.sec.internal.ims.servicemodules.im.data.FtResumableOption;
import com.sec.internal.ims.servicemodules.im.data.response.FileResizeResponse;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.im.util.FileDurationUtil;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.ims.util.StringIdGenerator;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.imscr.LogClass;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class FtMsrpMessage extends FtMessage {
    private final String LOG_TAG;
    private ImsUri mConferenceUri;
    private int mRetryTimer;
    private boolean mSwapUriType;

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    public int getTransferMech() {
        return 0;
    }

    protected FtMsrpMessage(Builder<?> builder) {
        super(builder);
        this.mRetryTimer = -1;
        this.LOG_TAG = FtMsrpMessage.class.getSimpleName() + "#" + ((TextUtils.isEmpty(this.mImdnId) || this.mImdnId.length() < 4) ? "" : TextUtils.substring(this.mImdnId, 0, 4));
        this.mRawHandle = builder.mRawHandle;
    }

    public static Builder<?> builder() {
        return new Builder2();
    }

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    public void receiveTransfer(Message message, FtIncomingSessionEvent ftIncomingSessionEvent, boolean z) {
        this.mIsResuming = z;
        this.mFtCompleteCallback = message;
        FtMessage.FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(10, ftIncomingSessionEvent));
    }

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    public void startFileTransferTimer() {
        Log.i(this.LOG_TAG, "startFileTransferTimer() : " + this.mId);
        this.mStateMachine.getHandler().removeMessages(23);
        FtMessage.FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessageDelayed(ftStateMachine.obtainMessage(23), 300000L);
    }

    @Override // com.sec.internal.ims.servicemodules.im.MessageBase
    protected void sendDeliveredNotification(Object obj, String str, String str2, Message message, String str3, boolean z, boolean z2) {
        ImsUri networkPreferredUri = this.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, this.mRemoteUri.getMsisdn(), (String) null);
        String str4 = this.mChatId;
        String str5 = this.mConversationId;
        SendImdnParams sendImdnParams = new SendImdnParams(obj, networkPreferredUri, str4, str5 == null ? str : str5, StringIdGenerator.generateContributionId(), str3, message, this.mDeviceId, getNewImdnData(NotificationStatus.DELIVERED), z, new Date(), z2, this.mModule.getUserAlias(this.mConfig.getPhoneId(), true));
        if (this.mIsSlmSvcMsg) {
            this.mSlmService.sendSlmDeliveredNotification(sendImdnParams);
        } else {
            this.mImsService.sendFtDeliveredNotification(sendImdnParams);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.MessageBase
    protected void sendDisplayedNotification(Object obj, String str, String str2, Message message, String str3, boolean z, boolean z2) {
        ImsUri networkPreferredUri = this.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, this.mRemoteUri.getMsisdn(), (String) null);
        String str4 = this.mChatId;
        String str5 = this.mConversationId;
        SendImdnParams sendImdnParams = new SendImdnParams(obj, networkPreferredUri, str4, str5 == null ? str : str5, StringIdGenerator.generateContributionId(), str3, message, this.mDeviceId, getNewImdnData(NotificationStatus.DISPLAYED), z, new Date(), z2, this.mModule.getUserAlias(this.mConfig.getPhoneId(), true));
        if (this.mIsSlmSvcMsg) {
            this.mSlmService.sendSlmDisplayedNotification(sendImdnParams);
        } else {
            this.mImsService.sendFtDisplayedNotification(sendImdnParams);
        }
    }

    protected void sendRejectFtSession(FtRejectReason ftRejectReason) {
        FtIncomingSessionEvent ftIncomingSessionEvent = new FtIncomingSessionEvent();
        ftIncomingSessionEvent.mRawHandle = this.mRawHandle;
        ftIncomingSessionEvent.mIsSlmSvcMsg = this.mIsSlmSvcMsg;
        sendRejectFtSession(ftRejectReason, ftIncomingSessionEvent);
    }

    protected void sendRejectFtSession(FtRejectReason ftRejectReason, FtIncomingSessionEvent ftIncomingSessionEvent) {
        this.mRejectReason = ftRejectReason;
        RejectFtSessionParams rejectFtSessionParams = new RejectFtSessionParams(ftIncomingSessionEvent.mRawHandle, this.mStateMachine.obtainMessage(7), ftRejectReason, this.mFileTransferId, this.mImdnId);
        if (ftIncomingSessionEvent.mIsSlmSvcMsg) {
            this.mSlmService.rejectFtSlmMessage(rejectFtSessionParams);
        } else {
            this.mImsService.rejectFtSession(rejectFtSessionParams);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    protected boolean renameFile() {
        try {
            File file = new File(this.mFilePath);
            Log.i(this.LOG_TAG, "temporary file path: " + this.mFilePath);
            String parent = file.getParent();
            File file2 = new File(parent);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            this.mFilePath = FilePathGenerator.generateUniqueFilePath(parent, this.mFileName, 128);
            Log.i(this.LOG_TAG, "new file path: " + this.mFilePath);
            if (file.renameTo(new File(this.mFilePath))) {
                Log.i(this.LOG_TAG, "file rename success");
                return true;
            }
            Log.e(this.LOG_TAG, "file rename fail");
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public void setConferenceUri(ImsUri imsUri) {
        this.mConferenceUri = imsUri;
    }

    public Object getRawHandle() {
        return this.mRawHandle;
    }

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    protected FtMessage.FtStateMachine createFtStateMachine(String str, Looper looper) {
        return new FtMsrpStateMachine("FtMsrpMessage#" + str, looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCancelReasonBasedOnLineType() {
        if (!isChatbotMessage() && this.mCancelReason != CancelReason.REJECTED_BY_REMOTE) {
            this.mCancelReason = CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE;
        } else {
            this.mCancelReason = CancelReason.FORBIDDEN_NO_RETRY_FALLBACK;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFtMessageInfo(FtIncomingSessionEvent ftIncomingSessionEvent) {
        this.mRawHandle = ftIncomingSessionEvent.mRawHandle;
        this.mFilePath = ftIncomingSessionEvent.mFilePath;
        this.mFileName = ftIncomingSessionEvent.mFileName;
        this.mFileSize = ftIncomingSessionEvent.mFileSize;
        this.mContributionId = ftIncomingSessionEvent.mContributionId;
        this.mConversationId = ftIncomingSessionEvent.mConversationId;
        this.mContentType = ftIncomingSessionEvent.mContentType;
        setSlmSvcMsg(ftIncomingSessionEvent.mIsSlmSvcMsg);
    }

    @Override // com.sec.internal.ims.servicemodules.im.MessageBase
    public void setSlmSvcMsg(boolean z) {
        this.mIsSlmSvcMsg = z;
        if (z) {
            setMessagingTech(this.mFileSize > ((long) this.mConfig.getPagerModeLimit()) ? ImConstants.MessagingTech.SLM_LARGE_MODE : ImConstants.MessagingTech.SLM_PAGER_MODE);
        } else {
            setMessagingTech(ImConstants.MessagingTech.NORMAL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isChatbotMessage() {
        return !this.mIsGroupChat && ChatbotUriUtil.hasChatbotUri(this.mListener.onRequestParticipantUris(this.mChatId), this.mConfig.getPhoneId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveCachedFileToApp() {
        if (this.mContentUri != null) {
            long copyFile = FileUtils.copyFile(getContext(), this.mFilePath, this.mContentUri);
            if (copyFile != this.mFileSize) {
                Log.i(this.LOG_TAG, "Incoming file move to APP failed. FileSize=" + this.mFileSize + ", Copied=" + copyFile);
                return;
            }
            deleteFile();
            return;
        }
        Log.i(this.LOG_TAG, "Incoming file copy to APP failed. mContentUri=null");
    }

    public static abstract class Builder<T extends Builder<T>> extends FtMessage.Builder<T> {
        Object mRawHandle;

        public T rawHandle(Object obj) {
            this.mRawHandle = obj;
            return (T) self();
        }

        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.Builder
        public FtMsrpMessage build() {
            return new FtMsrpMessage(this);
        }
    }

    private static class Builder2 extends Builder<Builder2> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.sec.internal.ims.servicemodules.im.MessageBase.Builder
        public Builder2 self() {
            return this;
        }

        private Builder2() {
        }
    }

    private class FtMsrpStateMachine extends FtMessage.FtStateMachine {
        private final State mAcceptingState;
        private final State mAttachedState;
        private final State mCanceledState;
        private final State mCancelingState;
        private final State mCompletedState;
        protected final MappingTranslator<Integer, State> mDbStateTranslator;
        private final State mDefaultState;
        private final State mInProgressState;
        private final State mInitialState;
        private final State mSendingState;
        protected final MappingTranslator<IState, Integer> mStateTranslator;

        protected FtMsrpStateMachine(String str, Looper looper) {
            super(str, looper);
            this.mDefaultState = new DefaultState();
            InitialState initialState = new InitialState();
            this.mInitialState = initialState;
            AttachedState attachedState = new AttachedState();
            this.mAttachedState = attachedState;
            SendingState sendingState = new SendingState();
            this.mSendingState = sendingState;
            AcceptingState acceptingState = new AcceptingState();
            this.mAcceptingState = acceptingState;
            InProgressState inProgressState = new InProgressState();
            this.mInProgressState = inProgressState;
            CompletedState completedState = new CompletedState();
            this.mCompletedState = completedState;
            CancelingState cancelingState = new CancelingState();
            this.mCancelingState = cancelingState;
            CanceledState canceledState = new CanceledState();
            this.mCanceledState = canceledState;
            this.mStateTranslator = new MappingTranslator.Builder().map(initialState, 0).map(attachedState, 6).map(sendingState, 9).map(acceptingState, 1).map(inProgressState, 2).map(completedState, 3).map(cancelingState, 7).map(canceledState, 4).buildTranslator();
            this.mDbStateTranslator = new MappingTranslator.Builder().map(0, initialState).map(6, canceledState).map(2, canceledState).map(1, canceledState).map(3, completedState).map(7, canceledState).map(4, canceledState).map(5, canceledState).map(9, canceledState).buildTranslator();
        }

        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.FtStateMachine
        protected void initState(State state) {
            addState(this.mDefaultState);
            addState(this.mInitialState, this.mDefaultState);
            addState(this.mAttachedState, this.mDefaultState);
            addState(this.mSendingState, this.mDefaultState);
            addState(this.mAcceptingState, this.mDefaultState);
            addState(this.mInProgressState, this.mDefaultState);
            addState(this.mCompletedState, this.mDefaultState);
            addState(this.mCancelingState, this.mDefaultState);
            addState(this.mCanceledState, this.mDefaultState);
            logi("setting current state as " + state.getName() + " for messageId : " + FtMsrpMessage.this.mId);
            setInitialState(state);
            start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onAttachSlmFile() {
            logi("onAttachSlmFile()");
            if (FtMsrpMessage.this.isChatbotMessage()) {
                loge("onAttachSlmFile: Chatbot, Display Error");
                FtMsrpMessage.this.mCancelReason = CancelReason.FORBIDDEN_NO_RETRY_FALLBACK;
                transitionTo(this.mCanceledState);
                return;
            }
            FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
            if (ftMsrpMessage.mFileSize > ftMsrpMessage.mConfig.getSlmMaxMsgSize()) {
                FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                if (ftMsrpMessage2.mIsResizable && ftMsrpMessage2.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_LARGE_MSG_RESIZING)) {
                    logi("request resizing for LMM");
                    FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
                    ftMsrpMessage3.mListener.onFileResizingNeeded(ftMsrpMessage3, ftMsrpMessage3.mConfig.getSlmMaxMsgSize());
                    FtMsrpMessage.this.setSlmSvcMsg(true);
                    return;
                }
                Log.i(FtMsrpMessage.this.LOG_TAG, "File size is greater than allowed MaxSlmSize mFileSize:" + FtMsrpMessage.this.mFileSize + ", SLMMaxMsgSize:" + FtMsrpMessage.this.mConfig.getSlmMaxMsgSize());
                FtMsrpMessage.this.setCancelReasonBasedOnLineType();
                transitionTo(this.mCanceledState);
                return;
            }
            FtMsrpMessage.this.setSlmSvcMsg(true);
            transitionTo(this.mAttachedState);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onAttachFile(boolean z) {
            if (z) {
                IMnoStrategy rcsStrategy = FtMsrpMessage.this.getRcsStrategy();
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                IMnoStrategy.StatusCode statusCode = rcsStrategy.checkCapability(ftMsrpMessage.mListener.onRequestParticipantUris(ftMsrpMessage.mChatId), Capabilities.FEATURE_FT_SERVICE).getStatusCode();
                if (statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY || statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_SLM) {
                    logi("onAttachFile: Capability checking failed.");
                    if (FtMsrpMessage.this.isChatbotMessage()) {
                        log("onAttachFile: Chatbot messgage no fallback");
                        FtMsrpMessage.this.mCancelReason = CancelReason.FORBIDDEN_NO_RETRY_FALLBACK;
                    } else if (statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_SLM && !FtMsrpMessage.this.mIsResuming) {
                        logi("onAttachFile: fallback to SLM");
                        onAttachSlmFile();
                        return;
                    } else {
                        FtMsrpMessage.this.setCancelReasonBasedOnLineType();
                        logi("onAttachFile: mCancelReason = " + FtMsrpMessage.this.mCancelReason);
                    }
                    transitionTo(this.mCanceledState);
                    return;
                }
            }
            long max = Math.max(FtMsrpMessage.this.mConfig.getMaxSizeExtraFileTr(), FtMsrpMessage.this.mConfig.getMaxSizeFileTr());
            if (FtMsrpMessage.this.isOutgoing() && max != 0 && FtMsrpMessage.this.mFileSize > max) {
                loge("Attached file (" + FtMsrpMessage.this.mFileSize + ") exceeds MaxSizeFileTr (" + max + ")");
                FtMsrpMessage.this.mCancelReason = CancelReason.TOO_LARGE;
                transitionTo(this.mCanceledState);
                return;
            }
            if (FtMsrpMessage.this.isOutgoing() && (FtMsrpMessage.this.mContentType.startsWith(SipMsg.FEATURE_TAG_MMTEL_VIDEO) || FtMsrpMessage.this.mContentType.startsWith("audio"))) {
                FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                ftMsrpMessage2.mTimeDuration = FileDurationUtil.getFileDurationTime(ftMsrpMessage2.mFilePath);
            }
            FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
            if (ftMsrpMessage3.mIsResuming) {
                ftMsrpMessage3.mContributionId = StringIdGenerator.generateContributionId();
            }
            if (FtMsrpMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_QUICKFT)) {
                FtMsrpMessage.this.mFileFingerPrint = FingerprintGenerator.generateFromFile(new File(FtMsrpMessage.this.mFilePath), "SHA1");
                log("getFileMD5: mFilePath: " + FtMsrpMessage.this.mFilePath + " mFileFingerPrint: " + FtMsrpMessage.this.mFileFingerPrint);
                FtMsrpMessage ftMsrpMessage4 = FtMsrpMessage.this;
                if (ftMsrpMessage4.mFileFingerPrint == null) {
                    ftMsrpMessage4.mFileFingerPrint = "";
                }
            }
            if (FtMsrpMessage.this.isOutgoing() && FtMsrpMessage.this.mConfig.isFtThumb()) {
                FtMsrpMessage ftMsrpMessage5 = FtMsrpMessage.this;
                if (ftMsrpMessage5.mThumbnailPath == null && ftMsrpMessage5.mThumbnailTool.isSupported(ftMsrpMessage5.mContentType)) {
                    String thumbSavedDirectory = FtMsrpMessage.this.mThumbnailTool.getThumbSavedDirectory();
                    FtMsrpMessage ftMsrpMessage6 = FtMsrpMessage.this;
                    ftMsrpMessage6.mThumbnailTool.createThumb(ftMsrpMessage6.mFilePath, thumbSavedDirectory, ftMsrpMessage6.MAX_SIZE_THUMBNAIL, obtainMessage(19));
                    return;
                }
            }
            transitionTo(this.mAttachedState);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onCreateThumbnail() {
            transitionTo(this.mAttachedState);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFileTransferInviteReceived(boolean z) {
            FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
            ftMsrpMessage.mListener.onNotifyCloudMsgFtEvent(ftMsrpMessage);
            FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
            if (ftMsrpMessage2.mStatus == ImConstants.Status.BLOCKED) {
                logi("Auto reject file transfer, session blocked");
                FtMsrpMessage.this.sendRejectFtSession(FtRejectReason.DECLINE);
                FtMsrpMessage.this.mCancelReason = CancelReason.CANCELED_BY_SYSTEM;
                transitionTo(this.mCancelingState);
                return;
            }
            long max = Math.max(ftMsrpMessage2.mConfig.getMaxSizeExtraFileTr(), FtMsrpMessage.this.mConfig.getMaxSizeFileTr());
            if (FtMsrpMessage.this.mConfig.getMaxSizeFileTrIncoming() != -1) {
                max = FtMsrpMessage.this.mConfig.getMaxSizeFileTrIncoming();
            }
            logi("onFileTransferInviteReceived(): mFileSize = " + FtMsrpMessage.this.mFileSize + " maxSizeFileTr = " + max);
            if (max != 0 && FtMsrpMessage.this.mFileSize > max) {
                loge("Auto reject file transfer, larger than max size mFileSize:" + FtMsrpMessage.this.mFileSize + ",MaxSizeFileTr:" + max);
                FtMsrpMessage.this.sendRejectFtSession(FtRejectReason.FORBIDDEN_MAX_SIZE_EXCEEDED);
                FtMsrpMessage.this.mCancelReason = CancelReason.CANCELED_BY_SYSTEM;
                transitionTo(this.mCancelingState);
                return;
            }
            if (!FtMsrpMessage.this.isExternalStorageAvailable()) {
                loge("Auto reject file transfer, ExternalStorage is not Available");
                FtMsrpMessage.this.sendRejectFtSession(FtRejectReason.DECLINE);
                FtMsrpMessage.this.mCancelReason = CancelReason.CANCELED_BY_SYSTEM;
                transitionTo(this.mCancelingState);
                return;
            }
            try {
                String incomingFileDestinationDir = FilePathGenerator.getIncomingFileDestinationDir(FtMsrpMessage.this.getContext(), FtMsrpMessage.this.mListener.onRequestIncomingFtTransferPath());
                if (!z) {
                    if (FtMsrpMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.USE_TEMPFILE_WHEN_DOWNLOAD)) {
                        FtMsrpMessage.this.mFilePath = FilePathGenerator.generateUniqueFilePath(incomingFileDestinationDir, FtMsrpMessage.this.mFileName + ".tmp", 128);
                    } else {
                        FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
                        ftMsrpMessage3.mFilePath = FilePathGenerator.generateUniqueFilePath(incomingFileDestinationDir, ftMsrpMessage3.mFileName, 128);
                    }
                    if (new File(FtMsrpMessage.this.mFilePath).createNewFile()) {
                        logi("Created a file for received FT: " + FtMsrpMessage.this.mFilePath);
                    } else {
                        loge("Auto reject file transfer, Failed to create a file for received FT");
                        FtMsrpMessage.this.sendRejectFtSession(FtRejectReason.DECLINE);
                        FtMsrpMessage.this.mCancelReason = CancelReason.CANCELED_BY_SYSTEM;
                        transitionTo(this.mCancelingState);
                        return;
                    }
                }
                FtMsrpMessage ftMsrpMessage4 = FtMsrpMessage.this;
                if (!FtMessage.checkAvailableStorage(incomingFileDestinationDir, ftMsrpMessage4.mFileSize - ftMsrpMessage4.mTransferredBytes)) {
                    loge("Auto reject file transfer, disk space not available");
                    FtMsrpMessage.this.sendRejectFtSession(FtRejectReason.DECLINE);
                    FtMsrpMessage.this.mCancelReason = CancelReason.CANCELED_BY_SYSTEM;
                    transitionTo(this.mCancelingState);
                    return;
                }
                IMnoStrategy rcsStrategy = FtMsrpMessage.this.getRcsStrategy();
                FtMsrpMessage ftMsrpMessage5 = FtMsrpMessage.this;
                rcsStrategy.forceRefreshCapability(ftMsrpMessage5.mListener.onRequestParticipantUris(ftMsrpMessage5.mChatId), true, null);
                FtMsrpMessage ftMsrpMessage6 = FtMsrpMessage.this;
                ftMsrpMessage6.mListener.onTransferReceived(ftMsrpMessage6);
                FtMsrpMessage ftMsrpMessage7 = FtMsrpMessage.this;
                NotificationStatus notificationStatus = ftMsrpMessage7.mLastNotificationType;
                if (notificationStatus == NotificationStatus.CANCELED) {
                    ftMsrpMessage7.mListener.onImdnNotificationReceived(ftMsrpMessage7, ftMsrpMessage7.mRemoteUri, notificationStatus, ftMsrpMessage7.mIsGroupChat);
                    FtMsrpMessage.this.mCancelReason = CancelReason.CANCELED_NOTIFICATION;
                    transitionTo(this.mCanceledState);
                    return;
                }
                transitionTo(this.mAcceptingState);
            } catch (IOException unused) {
                loge("Auto reject file transfer, internal error");
                FtMsrpMessage.this.sendRejectFtSession(FtRejectReason.NOT_ACCEPTABLE_HERE);
                FtMsrpMessage.this.mCancelReason = CancelReason.CANCELED_BY_SYSTEM;
                transitionTo(this.mCancelingState);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSendFile() {
            Log.i(FtMsrpMessage.this.LOG_TAG, "onSendFile");
            FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
            boolean z = ftMsrpMessage.mIsResuming;
            Set<ImsUri> networkPreferredUri = ftMsrpMessage.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, ftMsrpMessage.mListener.onRequestParticipantUris(ftMsrpMessage.mChatId));
            if (FtMsrpMessage.this.mSwapUriType) {
                Set<ImsUri> swapUriType = FtMsrpMessage.this.mUriGenerator.swapUriType(new ArrayList(networkPreferredUri));
                networkPreferredUri.clear();
                networkPreferredUri.addAll(swapUriType);
                FtMsrpMessage.this.mSwapUriType = false;
            }
            boolean z2 = FtMsrpMessage.this.getRcsStrategy().isResendFTResume(FtMsrpMessage.this.mIsGroupChat) ? false : z;
            if (FtMsrpMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.RESUME_WITH_COMPLETE_FILE)) {
                logi("resume resend complete file ");
                FtMsrpMessage.this.mTransferredBytes = 0L;
            }
            if (FtMsrpMessage.this.getType() == ImConstants.Type.MULTIMEDIA_PUBLICACCOUNT) {
                HashSet hashSet = new HashSet();
                Iterator<ImsUri> it = networkPreferredUri.iterator();
                while (it.hasNext()) {
                    hashSet.add(PublicAccountUri.convertToPublicAccountUri(it.next().toString()));
                }
                networkPreferredUri = hashSet;
            }
            FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
            int i = ftMsrpMessage2.mId;
            String str = ftMsrpMessage2.mContributionId;
            String str2 = ftMsrpMessage2.mConversationId;
            String str3 = ftMsrpMessage2.mInReplyToContributionId;
            Message obtainMessage = obtainMessage(2);
            Message obtainMessage2 = obtainMessage(22);
            ArrayList arrayList = new ArrayList(networkPreferredUri);
            ImsUri imsUri = FtMsrpMessage.this.mConferenceUri;
            FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
            String str4 = ftMsrpMessage3.mUserAlias;
            String str5 = ftMsrpMessage3.mFileName;
            String str6 = ftMsrpMessage3.mFilePath;
            long j = ftMsrpMessage3.mFileSize;
            String str7 = ftMsrpMessage3.mContentType;
            ImDirection imDirection = ftMsrpMessage3.mDirection;
            long j2 = ftMsrpMessage3.mTransferredBytes;
            Set<NotificationStatus> set = ftMsrpMessage3.mDispNotification;
            String str8 = ftMsrpMessage3.mImdnId;
            Date date = new Date();
            FtMsrpMessage ftMsrpMessage4 = FtMsrpMessage.this;
            String str9 = ftMsrpMessage4.mFileTransferId;
            String str10 = ftMsrpMessage4.mThumbnailPath;
            int i2 = ftMsrpMessage4.mTimeDuration;
            boolean z3 = ftMsrpMessage4.getType() == ImConstants.Type.MULTIMEDIA_PUBLICACCOUNT;
            FtMsrpMessage ftMsrpMessage5 = FtMsrpMessage.this;
            SendFtSessionParams sendFtSessionParams = new SendFtSessionParams(i, str, str2, str3, obtainMessage, obtainMessage2, arrayList, imsUri, str4, str5, str6, j, str7, imDirection, z2, j2, set, str8, date, str9, str10, i2, z3, ftMsrpMessage5.mFileFingerPrint, ftMsrpMessage5.mSimIMSI);
            FtMsrpMessage ftMsrpMessage6 = FtMsrpMessage.this;
            SendReportMsgParams sendReportMsgParams = ftMsrpMessage6.mReportMsgParams;
            if (sendReportMsgParams != null) {
                sendFtSessionParams.mReportMsgParams = sendReportMsgParams;
            }
            ftMsrpMessage6.mImsService.sendFtSession(sendFtSessionParams);
            if (FtMsrpMessage.this.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.SESSION_ESTABLISH_TIMER) > 0 && FtMsrpMessage.this.mListener.onRequestRegistrationType() != null && FtMsrpMessage.this.mListener.onRequestRegistrationType().intValue() != 18) {
                logi(getName() + " Stack response timer starts");
                removeMessages(17);
                sendMessageDelayed(obtainMessage(17), ((long) FtMsrpMessage.this.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.SESSION_ESTABLISH_TIMER)) * 1000);
            }
            transitionTo(this.mSendingState);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSendSlmFile() {
            if (FtMsrpMessage.this.sendSlmFile(obtainMessage(12))) {
                transitionTo(this.mSendingState);
            } else {
                transitionTo(this.mCanceledState);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleFTFailure(IMnoStrategy.StatusCode statusCode, ImError imError) {
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[statusCode.ordinal()];
            if (i == 1) {
                if (imError == ImError.UNSUPPORTED_URI_SCHEME) {
                    logi("onSendFileDone retry with other URI format");
                    FtMsrpMessage.this.mSwapUriType = true;
                }
                sendMessage(obtainMessage(18));
                return;
            }
            if (i == 2) {
                sendMessageDelayed(obtainMessage(18), FtMsrpMessage.this.mRetryTimer * 1000);
                return;
            }
            if (i == 3) {
                sendMessageDelayed(obtainMessage(18), 1000L);
                return;
            }
            if (i != 4) {
                if (i == 5) {
                    setCancelReason(imError, true);
                    return;
                } else {
                    setCancelReason(imError, false);
                    return;
                }
            }
            FtMsrpMessage.this.mCancelReason = FtMessage.translateToCancelReason(imError);
            IMnoStrategy rcsStrategy = FtMsrpMessage.this.getRcsStrategy();
            FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
            rcsStrategy.forceRefreshCapability(ftMsrpMessage.mListener.onRequestParticipantUris(ftMsrpMessage.mChatId), false, imError);
            if (FtMsrpMessage.this.mDirection == ImDirection.INCOMING) {
                transitionTo(this.mCanceledState);
                return;
            }
            logi("SendingState: fallback to FtSLM: " + FtMsrpMessage.this.mCancelReason);
            FtMsrpMessage.this.mCancelReason = CancelReason.UNKNOWN;
            handleFallbackToSlm();
        }

        private void setCancelReason(ImError imError, boolean z) {
            FtMsrpMessage.this.mCancelReason = FtMessage.translateToCancelReason(imError);
            IMnoStrategy rcsStrategy = FtMsrpMessage.this.getRcsStrategy();
            FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
            rcsStrategy.forceRefreshCapability(ftMsrpMessage.mListener.onRequestParticipantUris(ftMsrpMessage.mChatId), false, imError);
            if (z) {
                FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                if (ftMsrpMessage2.mDirection == ImDirection.OUTGOING) {
                    ftMsrpMessage2.setCancelReasonBasedOnLineType();
                }
            }
            transitionTo(this.mCanceledState);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleFallbackToSlm() {
            if (FtMsrpMessage.this.isChatbotMessage()) {
                logi("handleFallbackToSlm: Chatbot, Display Error");
                FtMsrpMessage.this.mCancelReason = CancelReason.FORBIDDEN_NO_RETRY_FALLBACK;
                transitionTo(this.mCanceledState);
                return;
            }
            FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
            if (ftMsrpMessage.mFileSize > ftMsrpMessage.mConfig.getSlmMaxMsgSize()) {
                FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                if (ftMsrpMessage2.mIsResizable && ftMsrpMessage2.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_LARGE_MSG_RESIZING)) {
                    FtMsrpMessage.this.setSlmSvcMsg(true);
                    FtMsrpMessage.this.mRawHandle = null;
                    logi("request resizing for LMM");
                    FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
                    ftMsrpMessage3.mListener.onFileResizingNeeded(ftMsrpMessage3, ftMsrpMessage3.mConfig.getSlmMaxMsgSize());
                    transitionTo(this.mSendingState);
                    return;
                }
                Log.i(FtMsrpMessage.this.LOG_TAG, "File size is greater than allowed MaxSlmSize mFileSize:" + FtMsrpMessage.this.mFileSize + ", SLMMaxMsgSize:" + FtMsrpMessage.this.mConfig.getSlmMaxMsgSize());
                FtMsrpMessage.this.setCancelReasonBasedOnLineType();
                transitionTo(this.mCanceledState);
                return;
            }
            FtMsrpMessage.this.setSlmSvcMsg(true);
            onSendSlmFile();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleRaceCondition(FtIncomingSessionEvent ftIncomingSessionEvent) {
            logi("handleRaceCondition msgId=" + FtMsrpMessage.this.mId);
            if (FtMsrpMessage.this.isOutgoing()) {
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                if (ftMsrpMessage.mTransferredBytes != 0) {
                    ftMsrpMessage.mRawHandle = ftIncomingSessionEvent.mRawHandle;
                    transitionTo(this.mAcceptingState);
                    sendMessage(4);
                    return;
                }
            }
            if (!FtMsrpMessage.this.isOutgoing() && !FtMsrpMessage.this.getIsSlmSvcMsg() && ftIncomingSessionEvent.mIsSlmSvcMsg) {
                Log.i(FtMsrpMessage.this.LOG_TAG, "updateFtMsrpMessageInfo: service has been changed to SLM by sender.");
                FtMsrpMessage.this.updateFtMessageInfo(ftIncomingSessionEvent);
                transitionTo(this.mAcceptingState);
                sendMessage(4);
                return;
            }
            logi("Cancel Incoming FT");
            FtMsrpMessage.this.sendRejectFtSession(FtRejectReason.BUSY_HERE, ftIncomingSessionEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onHandleFileResizeResponse(FileResizeResponse fileResizeResponse) {
            if (FtMsrpMessage.this.validateFileResizeResponse(fileResizeResponse)) {
                FtMsrpMessage.this.deleteFile();
                File file = new File(fileResizeResponse.resizedFilePath);
                FtMsrpMessage.this.mFileSize = file.length();
                FtMsrpMessage.this.mFileName = file.getName();
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                ftMsrpMessage.mFilePath = fileResizeResponse.resizedFilePath;
                ftMsrpMessage.triggerObservers(ImCacheAction.UPDATED);
                if (getCurrentState() == this.mInitialState) {
                    transitionTo(this.mAttachedState);
                    return;
                } else {
                    onSendSlmFile();
                    return;
                }
            }
            FtMsrpMessage.this.setSlmSvcMsg(false);
            FtMsrpMessage.this.setCancelReasonBasedOnLineType();
            transitionTo(this.mCanceledState);
        }

        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.FtStateMachine
        protected int getStateId() {
            Integer translate = this.mStateTranslator.translate(getCurrentState());
            if (translate == null) {
                return 0;
            }
            return translate.intValue();
        }

        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.FtStateMachine
        protected State getState(Integer num) {
            return this.mDbStateTranslator.translate(num);
        }

        final class DefaultState extends State {
            DefaultState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 13) {
                    FtMsrpMessage.this.onSendDeliveredNotificationDone();
                } else if (i == 15) {
                    FtMsrpStateMachine.this.logi(getName() + " EVENT_AUTOACCEPT_RESUMING : " + FtMsrpMessage.this.mId);
                    FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                    FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                    int i2 = ftMsrpMessage.mId;
                    Object obj = ftMsrpMessage.mRawHandle;
                    String str = ftMsrpMessage.mFilePath;
                    String str2 = ftMsrpMessage.mUserAlias;
                    Message obtainMessage = ftMsrpStateMachine.obtainMessage(5);
                    FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                    FtMsrpMessage.this.mImsService.acceptFtSession(new AcceptFtSessionParams(i2, obj, str, str2, obtainMessage, ftMsrpMessage2.mTransferredBytes + 1, ftMsrpMessage2.mFileSize));
                    FtMsrpMessage.this.acquireWakeLock();
                    FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                    ftMsrpStateMachine2.transitionTo(ftMsrpStateMachine2.mAcceptingState);
                } else if (i == 23) {
                    FtMsrpStateMachine.this.logi("EVENT_TRANSFER_TIMER_TIMEOUT : " + FtMsrpMessage.this.mId);
                    FtMsrpMessage.this.cancelTransfer(CancelReason.CANCELED_BY_SYSTEM);
                } else {
                    if (FtMsrpStateMachine.this.getCurrentState() != null) {
                        FtMsrpStateMachine.this.loge("Unexpected event, current state is " + FtMsrpStateMachine.this.getCurrentState().getName() + " event: " + message.what);
                    }
                    return false;
                }
                return true;
            }
        }

        final class InitialState extends State {
            InitialState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i != 1) {
                    if (i == 8) {
                        FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                        FtMsrpMessage.this.mCancelReason = (CancelReason) message.obj;
                        ftMsrpStateMachine.transitionTo(ftMsrpStateMachine.mCanceledState);
                    } else if (i == 14) {
                        FtMsrpMessage.this.updateStatus(ImConstants.Status.QUEUED);
                    } else if (i == 16) {
                        FtMsrpStateMachine.this.onAttachSlmFile();
                    } else if (i == 10) {
                        FtMsrpStateMachine.this.onFileTransferInviteReceived(false);
                    } else if (i == 11) {
                        FtMsrpStateMachine.this.deferMessage(message);
                    } else if (i == 19) {
                        AsyncResult asyncResult = (AsyncResult) message.obj;
                        FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                        FtMsrpMessage.this.mThumbnailPath = (String) asyncResult.result;
                        ftMsrpStateMachine2.onCreateThumbnail();
                    } else {
                        if (i != 20) {
                            return false;
                        }
                        FtMsrpStateMachine.this.onHandleFileResizeResponse((FileResizeResponse) message.obj);
                    }
                } else if (FtMsrpMessage.this.isBroadcastMsg()) {
                    FtMsrpStateMachine.this.onAttachSlmFile();
                } else {
                    FtMsrpStateMachine.this.onAttachFile(message.arg1 == 1);
                }
                return true;
            }
        }

        final class AttachedState extends State {
            AttachedState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                FtMsrpStateMachine.this.logi(getName() + " enter msgId : " + FtMsrpMessage.this.mId);
                FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                if (ftMsrpMessage.mIsResuming) {
                    ftMsrpStateMachine.sendMessage(11);
                } else {
                    ftMsrpMessage.mListener.onTransferCreated(ftMsrpMessage);
                }
                FtMsrpMessage.this.updateState();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 8) {
                    FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                    FtMsrpMessage.this.mCancelReason = (CancelReason) message.obj;
                    ftMsrpStateMachine.transitionTo(ftMsrpStateMachine.mCanceledState);
                } else if (i == 10) {
                    FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                    FtMsrpMessage.this.mRawHandle = ((FtIncomingSessionEvent) message.obj).mRawHandle;
                    ftMsrpStateMachine2.transitionTo(ftMsrpStateMachine2.mAcceptingState);
                    FtMsrpStateMachine.this.sendMessage(4);
                } else {
                    if (i != 11) {
                        return false;
                    }
                    FtMsrpStateMachine ftMsrpStateMachine3 = FtMsrpStateMachine.this;
                    if (FtMsrpMessage.this.mIsSlmSvcMsg) {
                        ftMsrpStateMachine3.onSendSlmFile();
                    } else {
                        ftMsrpStateMachine3.onSendFile();
                    }
                }
                return true;
            }
        }

        final class SendingState extends State {
            SendingState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                FtMsrpStateMachine.this.logi(getName() + " enter msgId : " + FtMsrpMessage.this.mId);
                FtMsrpMessage.this.updateStatus(ImConstants.Status.SENDING);
                FtMsrpMessage.this.updateState();
                FtMsrpMessage.this.acquireWakeLock();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 2) {
                    onSendFileDone((AsyncResult) message.obj);
                } else if (i == 3) {
                    FtTransferProgressEvent ftTransferProgressEvent = (FtTransferProgressEvent) message.obj;
                    if (!Objects.equals(FtMsrpMessage.this.mRawHandle, ftTransferProgressEvent.mRawHandle)) {
                        FtMsrpStateMachine.this.logi("EVENT_TRANSFER_PROGRESS: unknown rawHandle, ignore it: mRawHandle=" + FtMsrpMessage.this.mRawHandle + ", event.mRawHandle=" + ftTransferProgressEvent.mRawHandle);
                    } else {
                        FtMsrpStateMachine.this.removeMessages(17);
                        FtMsrpStateMachine.this.logi("SendingState: EVENT_TRANSFER_PROGRESS event.mState = " + ftTransferProgressEvent.mState);
                        FtTransferProgressEvent.State state = ftTransferProgressEvent.mState;
                        if (state == FtTransferProgressEvent.State.COMPLETED) {
                            FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                            ftMsrpStateMachine.transitionTo(ftMsrpStateMachine.mCompletedState);
                        } else if (state == FtTransferProgressEvent.State.TRANSFERRING) {
                            FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                            ftMsrpStateMachine2.transitionTo(ftMsrpStateMachine2.mInProgressState);
                        } else {
                            FtMsrpMessage.this.mCancelReason = FtMessage.translateToCancelReason(ftTransferProgressEvent.mReason.getImError());
                            FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                            if (ftMsrpMessage.mIsSlmSvcMsg) {
                                ftMsrpMessage.setCancelReasonBasedOnLineType();
                            }
                            FtMsrpStateMachine ftMsrpStateMachine3 = FtMsrpStateMachine.this;
                            ftMsrpStateMachine3.transitionTo(ftMsrpStateMachine3.mCanceledState);
                        }
                    }
                } else if (i == 8) {
                    FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                    CancelReason cancelReason = (CancelReason) message.obj;
                    ftMsrpMessage2.mCancelReason = cancelReason;
                    if (ftMsrpMessage2.mRawHandle == null) {
                        Log.i(ftMsrpMessage2.LOG_TAG, "mRawHandle is null");
                        FtMsrpStateMachine ftMsrpStateMachine4 = FtMsrpStateMachine.this;
                        ftMsrpStateMachine4.transitionTo(ftMsrpStateMachine4.mCanceledState);
                    } else {
                        ftMsrpMessage2.sendCancelFtSession(cancelReason);
                        FtMsrpStateMachine ftMsrpStateMachine5 = FtMsrpStateMachine.this;
                        if (FtMsrpMessage.this.mCancelReason == CancelReason.CANCELED_BY_SYSTEM) {
                            ftMsrpStateMachine5.transitionTo(ftMsrpStateMachine5.mCanceledState);
                        } else {
                            ftMsrpStateMachine5.transitionTo(ftMsrpStateMachine5.mCancelingState);
                        }
                    }
                } else if (i == 10) {
                    FtMsrpStateMachine.this.handleRaceCondition((FtIncomingSessionEvent) message.obj);
                } else if (i == 12) {
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    if (asyncResult.exception == null) {
                        FtResult ftResult = (FtResult) asyncResult.result;
                        FtMsrpStateMachine.this.logi("SLM send file done : " + ftResult.mRawHandle);
                        if (ftResult.getImError() == ImError.SUCCESS) {
                            FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
                            ftMsrpMessage3.mRawHandle = ftResult.mRawHandle;
                            if (ftMsrpMessage3.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.SESSION_ESTABLISH_TIMER) > 0 && FtMsrpMessage.this.mListener.onRequestRegistrationType() != null && FtMsrpMessage.this.mListener.onRequestRegistrationType().intValue() != 18) {
                                FtMsrpStateMachine.this.logi(getName() + " Stack response timer starts");
                                FtMsrpStateMachine.this.removeMessages(17);
                                FtMsrpStateMachine ftMsrpStateMachine6 = FtMsrpStateMachine.this;
                                ftMsrpStateMachine6.sendMessageDelayed(ftMsrpStateMachine6.obtainMessage(17), ((long) FtMsrpMessage.this.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.SESSION_ESTABLISH_TIMER)) * 1000);
                            } else {
                                FtMsrpStateMachine ftMsrpStateMachine7 = FtMsrpStateMachine.this;
                                ftMsrpStateMachine7.transitionTo(ftMsrpStateMachine7.mInProgressState);
                            }
                        } else {
                            FtMsrpMessage.this.setCancelReasonBasedOnLineType();
                            FtMsrpStateMachine ftMsrpStateMachine8 = FtMsrpStateMachine.this;
                            ftMsrpStateMachine8.transitionTo(ftMsrpStateMachine8.mCanceledState);
                        }
                    }
                } else if (i == 20) {
                    FtMsrpStateMachine.this.onHandleFileResizeResponse((FileResizeResponse) message.obj);
                } else if (i == 22) {
                    AsyncResult asyncResult2 = (AsyncResult) message.obj;
                    FtMsrpStateMachine ftMsrpStateMachine9 = FtMsrpStateMachine.this;
                    FtMsrpMessage.this.mRawHandle = ((FtResult) asyncResult2.result).mRawHandle;
                    ftMsrpStateMachine9.logi("update session handle mRawHandle=" + FtMsrpMessage.this.mRawHandle + " id = " + FtMsrpMessage.this.getId());
                } else if (i == 17) {
                    FtMsrpStateMachine.this.logi("Stack response timer expires, cancel file and fallback");
                    FtMsrpMessage.this.sendCancelFtSession(CancelReason.DEDICATED_BEARER_UNAVAILABLE_TIMEOUT);
                    FtMsrpStateMachine ftMsrpStateMachine10 = FtMsrpStateMachine.this;
                    ftMsrpStateMachine10.transitionTo(ftMsrpStateMachine10.mCancelingState);
                } else {
                    if (i != 18) {
                        return false;
                    }
                    FtMsrpMessage.this.mContributionId = StringIdGenerator.generateContributionId();
                    FtMsrpStateMachine.this.onSendFile();
                    FtMsrpMessage.this.incrementRetryCount();
                }
                return true;
            }

            private void onSendFileDone(AsyncResult asyncResult) {
                if (asyncResult.exception != null) {
                    FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                    ftMsrpStateMachine.transitionTo(ftMsrpStateMachine.mCanceledState);
                    return;
                }
                FtResult ftResult = (FtResult) asyncResult.result;
                ImError imError = ftResult.getImError();
                FtMsrpMessage.this.mRetryTimer = ftResult.mRetryTimer;
                FtMsrpStateMachine.this.removeMessages(17);
                FtMsrpStateMachine.this.logi("onSendFileDone : " + imError + " retryTimer: " + FtMsrpMessage.this.mRetryTimer);
                if (imError == ImError.SUCCESS) {
                    FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                    FtMsrpMessage.this.mRawHandle = ftResult.mRawHandle;
                    ftMsrpStateMachine2.transitionTo(ftMsrpStateMachine2.mInProgressState);
                    return;
                }
                IMnoStrategy rcsStrategy = FtMsrpMessage.this.getRcsStrategy();
                int currentRetryCount = FtMsrpMessage.this.getCurrentRetryCount();
                int i = FtMsrpMessage.this.mRetryTimer;
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                IMnoStrategy.StrategyResponse handleSendingFtMsrpMessageFailure = rcsStrategy.handleSendingFtMsrpMessageFailure(imError, currentRetryCount, i, ftMsrpMessage.mListener.onRequestChatType(ftMsrpMessage.mChatId), false);
                FtMsrpMessage.this.mErrorNotificationId = handleSendingFtMsrpMessageFailure.getErrorNotificationId();
                IMnoStrategy.StatusCode statusCode = handleSendingFtMsrpMessageFailure.getStatusCode();
                FtMsrpStateMachine.this.logi("SendingState: onSendFileDone. statusCode : " + statusCode);
                if (FtMsrpMessage.this.getRcsStrategy().isNeedToReportToRegiGvn(imError)) {
                    FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                    if (ftMsrpMessage2.mDirection == ImDirection.OUTGOING) {
                        ftMsrpMessage2.mListener.onFtErrorReport(imError);
                    }
                }
                if (FtMsrpMessage.this.isChatbotMessage() && (statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY || statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_SLM || imError == ImError.GONE || imError == ImError.REQUEST_PENDING)) {
                    FtMsrpStateMachine.this.handleFTFailure(IMnoStrategy.StatusCode.DISPLAY_ERROR, ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED);
                } else {
                    FtMsrpStateMachine.this.handleFTFailure(statusCode, imError);
                }
            }
        }

        final class AcceptingState extends State {
            AcceptingState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                FtMsrpStateMachine.this.logi(getName() + " enter msgId : " + FtMsrpMessage.this.mId);
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                ftMsrpMessage.mImsService.setFtMessageId(ftMsrpMessage.mRawHandle, ftMsrpMessage.mId);
                FtMsrpMessage.this.updateState();
            }

            /* JADX WARN: Removed duplicated region for block: B:30:0x00d4  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x0108  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x012c  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x00e4  */
            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public boolean processMessage(android.os.Message r23) {
                /*
                    Method dump skipped, instructions count: 455
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.FtMsrpMessage.FtMsrpStateMachine.AcceptingState.processMessage(android.os.Message):boolean");
            }
        }

        final class InProgressState extends State {
            InProgressState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                FtMsrpStateMachine.this.logi(getName() + " enter msgId : " + FtMsrpMessage.this.mId + " isSlm : " + FtMsrpMessage.this.mIsSlmSvcMsg);
                FtMsrpMessage.this.updateState();
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                ftMsrpMessage.mListener.onTransferInProgress(ftMsrpMessage);
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i != 3) {
                    if (i != 8) {
                        if (i != 10) {
                            return false;
                        }
                        FtMsrpStateMachine.this.handleRaceCondition((FtIncomingSessionEvent) message.obj);
                        return true;
                    }
                    FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                    CancelReason cancelReason = (CancelReason) message.obj;
                    ftMsrpMessage.mCancelReason = cancelReason;
                    ftMsrpMessage.sendCancelFtSession(cancelReason);
                    FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                    if (FtMsrpMessage.this.mCancelReason == CancelReason.CANCELED_BY_SYSTEM) {
                        ftMsrpStateMachine.transitionTo(ftMsrpStateMachine.mCanceledState);
                        return true;
                    }
                    ftMsrpStateMachine.transitionTo(ftMsrpStateMachine.mCancelingState);
                    return true;
                }
                FtTransferProgressEvent ftTransferProgressEvent = (FtTransferProgressEvent) message.obj;
                if (!Objects.equals(FtMsrpMessage.this.mRawHandle, ftTransferProgressEvent.mRawHandle)) {
                    FtMsrpStateMachine.this.logi("EVENT_TRANSFER_PROGRESS: unknown rawHandle, ignore it: mRawHandle=" + FtMsrpMessage.this.mRawHandle + ", event.mRawHandle=" + ftTransferProgressEvent.mRawHandle);
                    return true;
                }
                FtMsrpStateMachine.this.removeMessages(23);
                FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                ftMsrpStateMachine2.sendMessageDelayed(ftMsrpStateMachine2.obtainMessage(23), 300000L);
                int i2 = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State[ftTransferProgressEvent.mState.ordinal()];
                if (i2 == 1) {
                    FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                    ftMsrpMessage2.updateTransferredBytes((ftMsrpMessage2.mFileSize - ftTransferProgressEvent.mTotal) + ftTransferProgressEvent.mTransferred);
                    FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
                    ftMsrpMessage3.mListener.onTransferProgressReceived(ftMsrpMessage3);
                    return true;
                }
                if (i2 == 2) {
                    FtMsrpMessage.this.mCancelReason = FtMessage.translateToCancelReason(ftTransferProgressEvent.mReason.getImError());
                    FtMsrpMessage ftMsrpMessage4 = FtMsrpMessage.this;
                    if (ftMsrpMessage4.mIsSlmSvcMsg) {
                        ftMsrpMessage4.setCancelReasonBasedOnLineType();
                    }
                    FtMsrpStateMachine ftMsrpStateMachine3 = FtMsrpStateMachine.this;
                    ftMsrpStateMachine3.transitionTo(ftMsrpStateMachine3.mCanceledState);
                    return true;
                }
                if (i2 == 3) {
                    FtMsrpMessage ftMsrpMessage5 = FtMsrpMessage.this;
                    if ((ftMsrpMessage5.mDirection != ImDirection.INCOMING && !ftMsrpMessage5.mFilePath.endsWith(".tmp")) || FtMsrpMessage.this.renameFile()) {
                        FtMsrpStateMachine ftMsrpStateMachine4 = FtMsrpStateMachine.this;
                        ftMsrpStateMachine4.transitionTo(ftMsrpStateMachine4.mCompletedState);
                        return true;
                    }
                    FtMsrpStateMachine ftMsrpStateMachine5 = FtMsrpStateMachine.this;
                    FtMsrpMessage.this.mCancelReason = CancelReason.CANCELED_BY_SYSTEM;
                    ftMsrpStateMachine5.transitionTo(ftMsrpStateMachine5.mCanceledState);
                    return true;
                }
                if (i2 != 4) {
                    return true;
                }
                FtMsrpStateMachine ftMsrpStateMachine6 = FtMsrpStateMachine.this;
                FtMsrpMessage ftMsrpMessage6 = FtMsrpMessage.this;
                ftMsrpMessage6.mTransferredBytes = (ftMsrpMessage6.mFileSize - ftTransferProgressEvent.mTotal) + ftTransferProgressEvent.mTransferred;
                ftMsrpStateMachine6.logi("INTERRUPTED mFileSize: " + FtMsrpMessage.this.mFileSize + " mTotal: " + ftTransferProgressEvent.mTotal + " mTransferred: " + ftTransferProgressEvent.mTransferred);
                FtMsrpMessage.this.mCancelReason = FtMessage.translateToCancelReason(ftTransferProgressEvent.mReason.getImError());
                FtMsrpMessage ftMsrpMessage7 = FtMsrpMessage.this;
                if (ftMsrpMessage7.mIsSlmSvcMsg) {
                    if (ftMsrpMessage7.mCancelReason != CancelReason.REJECTED_BY_REMOTE) {
                        ftMsrpMessage7.setCancelReasonBasedOnLineType();
                    }
                    FtMsrpStateMachine ftMsrpStateMachine7 = FtMsrpStateMachine.this;
                    ftMsrpStateMachine7.transitionTo(ftMsrpStateMachine7.mCanceledState);
                    return true;
                }
                if (ftMsrpMessage7.mDirection == ImDirection.INCOMING && ftMsrpMessage7.mFilePath.endsWith(".tmp") && ftTransferProgressEvent.mTotal == ftTransferProgressEvent.mTransferred && FtMsrpMessage.this.renameFile()) {
                    FtMsrpStateMachine.this.logi("Transferred size is same with total size");
                    FtMsrpStateMachine ftMsrpStateMachine8 = FtMsrpStateMachine.this;
                    ftMsrpStateMachine8.transitionTo(ftMsrpStateMachine8.mCompletedState);
                    return true;
                }
                onTransferInterrupted(ftTransferProgressEvent);
                return true;
            }

            private void onTransferInterrupted(FtTransferProgressEvent ftTransferProgressEvent) {
                Result result = ftTransferProgressEvent.mReason;
                IMnoStrategy.StatusCode statusCode = FtMsrpMessage.this.getRcsStrategy().handleFtMsrpInterruption(result.getImError()).getStatusCode();
                FtMsrpStateMachine.this.logi("onTransferInterrupted() : errorReason : " + result + ", statusCode : " + statusCode);
                ArrayList arrayList = new ArrayList();
                arrayList.add(String.valueOf(result.getReasonHdr() != null ? result.getReasonHdr().getCode() : 0));
                arrayList.add(String.valueOf(FtMsrpMessage.this.getRetryCount()));
                FtMsrpMessage.this.listToDumpFormat(LogClass.FT_MSRP_CANCEL, 0, arrayList);
                int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[statusCode.ordinal()];
                if (i != 4) {
                    if (i == 5) {
                        FtMsrpMessage.this.setCancelReasonBasedOnLineType();
                        FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                        ftMsrpStateMachine.transitionTo(ftMsrpStateMachine.mCanceledState);
                        return;
                    } else {
                        FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                        ftMsrpStateMachine2.transitionTo(ftMsrpStateMachine2.mCanceledState);
                        return;
                    }
                }
                FtMsrpStateMachine ftMsrpStateMachine3 = FtMsrpStateMachine.this;
                if (FtMsrpMessage.this.mDirection == ImDirection.INCOMING) {
                    ftMsrpStateMachine3.transitionTo(ftMsrpStateMachine3.mCanceledState);
                    return;
                }
                ftMsrpStateMachine3.logi("onTransferInterrupted : fallback to FtSLM: " + FtMsrpMessage.this.mCancelReason);
                FtMsrpStateMachine ftMsrpStateMachine4 = FtMsrpStateMachine.this;
                FtMsrpMessage.this.mCancelReason = CancelReason.UNKNOWN;
                ftMsrpStateMachine4.handleFallbackToSlm();
            }
        }

        final class CompletedState extends State {
            CompletedState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                FtMsrpStateMachine.this.log(getName() + " enter msgId : " + FtMsrpMessage.this.mId);
                FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                if (ftMsrpMessage.mIsBootup) {
                    ftMsrpStateMachine.logi("Message is loaded from bootup, no need for notifications");
                    FtMsrpMessage.this.mIsBootup = false;
                    return;
                }
                if (ftMsrpMessage.getDirection() == ImDirection.OUTGOING) {
                    FtMsrpMessage.this.setSentTimestamp(System.currentTimeMillis());
                    FtMsrpMessage.this.updateStatus(ImConstants.Status.SENT);
                    FtMsrpMessage.this.deleteThumbnail();
                    FtMsrpMessage.this.deleteFile();
                } else {
                    FtMsrpMessage.this.moveCachedFileToApp();
                    FtMsrpMessage.this.updateStatus(ImConstants.Status.UNREAD);
                }
                if (FtMsrpMessage.this.isDeliveredNotificationRequired()) {
                    FtMsrpMessage.this.setDesiredNotificationStatus(NotificationStatus.DELIVERED);
                    FtMsrpMessage.this.updateDeliveredTimestamp(System.currentTimeMillis());
                    FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                    ftMsrpMessage2.mListener.onSendDeliveredNotification(ftMsrpMessage2);
                }
                FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
                ftMsrpMessage3.mIsConferenceUriChanged = false;
                ftMsrpMessage3.invokeFtQueueCallBack();
                FtMsrpStateMachine.this.removeMessages(21);
                FtMsrpStateMachine.this.removeMessages(23);
                PreciseAlarmManager.getInstance(FtMsrpMessage.this.getContext()).removeMessage(FtMsrpStateMachine.this.obtainMessage(21));
                FtMsrpMessage.this.updateState();
                FtMsrpMessage.this.listToDumpFormat(LogClass.FT_MSRP_COMPLETE, 0, new ArrayList());
                FtMsrpMessage.this.releaseWakeLock();
                FtMsrpMessage ftMsrpMessage4 = FtMsrpMessage.this;
                ftMsrpMessage4.mListener.onTransferCompleted(ftMsrpMessage4);
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 4) {
                    FtMsrpStateMachine.this.logi("FT already complete. Try to file copy to APP. msgId : " + FtMsrpMessage.this.mId);
                    FtMsrpMessage.this.moveCachedFileToApp();
                    return true;
                }
                if (i == 8) {
                    FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                    ftMsrpMessage.mListener.onCancelRequestFailed(ftMsrpMessage);
                    return true;
                }
                if (i != 10) {
                    return false;
                }
                FtMsrpStateMachine.this.logi(getName() + " msgId : " + FtMsrpMessage.this.mId + " resuming request after ft is completed");
                FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                if (ftMsrpMessage2.mDirection == ImDirection.OUTGOING && !ftMsrpMessage2.mIsSlmSvcMsg) {
                    ftMsrpMessage2.mRawHandle = ((FtIncomingSessionEvent) message.obj).mRawHandle;
                    ftMsrpStateMachine.onFileTransferInviteReceived(true);
                    return true;
                }
                ftMsrpMessage2.sendRejectFtSession(FtRejectReason.DECLINE, (FtIncomingSessionEvent) message.obj);
                FtMsrpMessage.this.invokeFtQueueCallBack();
                return true;
            }
        }

        final class CancelingState extends State {
            CancelingState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                FtMsrpStateMachine.this.logi(getName() + " enter msgId : " + FtMsrpMessage.this.mId);
                FtMsrpMessage.this.updateState();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 2) {
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    if (asyncResult == null) {
                        return true;
                    }
                    ImError imError = ((FtResult) asyncResult.result).getImError();
                    FtMsrpStateMachine.this.logi("onSendFileDone in CancelingState: " + imError);
                    return true;
                }
                if (i != 3) {
                    if (i == 7) {
                        AsyncResult asyncResult2 = (AsyncResult) message.obj;
                        if (asyncResult2 == null) {
                            return true;
                        }
                        if (((FtResult) asyncResult2.result).getImError() != ImError.SUCCESS) {
                            FtMsrpStateMachine.this.loge("CancelingState: Failed to cancel transfer.");
                        }
                        FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                        ftMsrpStateMachine.transitionTo(ftMsrpStateMachine.mCanceledState);
                        return true;
                    }
                    if (i == 8) {
                        CancelReason cancelReason = (CancelReason) message.obj;
                        FtMsrpStateMachine.this.logi("cancel transfer in cancelingState reason = " + cancelReason);
                        CancelReason cancelReason2 = CancelReason.CANCELED_BY_SYSTEM;
                        if (cancelReason != cancelReason2) {
                            return true;
                        }
                        FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                        FtMsrpMessage.this.mCancelReason = cancelReason2;
                        ftMsrpStateMachine2.transitionTo(ftMsrpStateMachine2.mCanceledState);
                        return true;
                    }
                    if (i != 9) {
                        return false;
                    }
                    AsyncResult asyncResult3 = (AsyncResult) message.obj;
                    if (asyncResult3 == null) {
                        return true;
                    }
                    FtResult ftResult = (FtResult) asyncResult3.result;
                    Log.i(FtMsrpMessage.this.LOG_TAG, "CancelingState: cancel transfer result = " + ftResult);
                    FtMsrpStateMachine ftMsrpStateMachine3 = FtMsrpStateMachine.this;
                    if (FtMsrpMessage.this.mCancelReason == CancelReason.DEDICATED_BEARER_UNAVAILABLE_TIMEOUT) {
                        handleFTTimeout(ImError.DEDICATED_BEARER_FALLBACK);
                        return true;
                    }
                    ftMsrpStateMachine3.transitionTo(ftMsrpStateMachine3.mCanceledState);
                    return true;
                }
                FtTransferProgressEvent ftTransferProgressEvent = (FtTransferProgressEvent) message.obj;
                if (!Objects.equals(FtMsrpMessage.this.mRawHandle, ftTransferProgressEvent.mRawHandle)) {
                    FtMsrpStateMachine.this.logi("EVENT_TRANSFER_PROGRESS: unknown rawHandle, ignore it: mRawHandle=" + FtMsrpMessage.this.mRawHandle + ", event.mRawHandle=" + ftTransferProgressEvent.mRawHandle);
                    return true;
                }
                FtMsrpStateMachine.this.removeMessages(23);
                FtMsrpStateMachine ftMsrpStateMachine4 = FtMsrpStateMachine.this;
                ftMsrpStateMachine4.sendMessageDelayed(ftMsrpStateMachine4.obtainMessage(23), 300000L);
                int i2 = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State[ftTransferProgressEvent.mState.ordinal()];
                if (i2 == 1) {
                    FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                    ftMsrpMessage.updateTransferredBytes((ftMsrpMessage.mFileSize - ftTransferProgressEvent.mTotal) + ftTransferProgressEvent.mTransferred);
                    return true;
                }
                if (i2 != 2) {
                    if (i2 == 3) {
                        FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                        if ((ftMsrpMessage2.mDirection != ImDirection.INCOMING && !ftMsrpMessage2.mFilePath.endsWith(".tmp")) || FtMsrpMessage.this.renameFile()) {
                            FtMsrpStateMachine ftMsrpStateMachine5 = FtMsrpStateMachine.this;
                            ftMsrpStateMachine5.transitionTo(ftMsrpStateMachine5.mCompletedState);
                            return true;
                        }
                        FtMsrpStateMachine ftMsrpStateMachine6 = FtMsrpStateMachine.this;
                        FtMsrpMessage.this.mCancelReason = CancelReason.CANCELED_BY_SYSTEM;
                        ftMsrpStateMachine6.transitionTo(ftMsrpStateMachine6.mCanceledState);
                        return true;
                    }
                    if (i2 != 4) {
                        return true;
                    }
                }
                FtMsrpStateMachine ftMsrpStateMachine7 = FtMsrpStateMachine.this;
                if (FtMsrpMessage.this.mCancelReason == CancelReason.DEDICATED_BEARER_UNAVAILABLE_TIMEOUT) {
                    handleFTTimeout(ImError.DEDICATED_BEARER_FALLBACK);
                    return true;
                }
                ftMsrpStateMachine7.transitionTo(ftMsrpStateMachine7.mCanceledState);
                return true;
            }

            private void handleFTTimeout(ImError imError) {
                IMnoStrategy rcsStrategy = FtMsrpMessage.this.getRcsStrategy();
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                IMnoStrategy.StrategyResponse handleFtFailure = rcsStrategy.handleFtFailure(imError, ftMsrpMessage.mListener.onRequestChatType(ftMsrpMessage.mChatId));
                if (handleFtFailure.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_SLM) {
                    FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                    if (FtMsrpMessage.this.mIsSlmSvcMsg) {
                        ftMsrpStateMachine.logi("handleFTTimeout: FALLBACK_TO_LEGACY for slm FT");
                        FtMsrpStateMachine.this.handleFTFailure(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY, imError);
                        return;
                    }
                }
                FtMsrpStateMachine.this.handleFTFailure(handleFtFailure.getStatusCode(), imError);
            }
        }

        final class CanceledState extends State {
            CanceledState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                FtMsrpStateMachine.this.logi(getName() + " enter msgId : " + FtMsrpMessage.this.mId);
                FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                if (ftMsrpMessage.mIsBootup) {
                    ftMsrpStateMachine.logi("Message is loaded from bootup, no need for notifications");
                    FtMsrpMessage.this.mIsBootup = false;
                    return;
                }
                IMnoStrategy rcsStrategy = ftMsrpMessage.getRcsStrategy();
                if (rcsStrategy == null) {
                    FtMsrpStateMachine.this.loge("mnoStrategy is null");
                    return;
                }
                FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                if (ftMsrpMessage2.mIsSlmSvcMsg) {
                    ftMsrpMessage2.mResumableOptionCode = FtResumableOption.NOTRESUMABLE.getId();
                } else {
                    ftMsrpMessage2.mResumableOptionCode = rcsStrategy.getftResumableOption(ftMsrpMessage2.mCancelReason, ftMsrpMessage2.mIsGroupChat, ftMsrpMessage2.mDirection, ftMsrpMessage2.getTransferMech()).getId();
                }
                FtMsrpStateMachine.this.logi(getName() + " mResumableOptionCode: " + FtMsrpMessage.this.mResumableOptionCode);
                FtMsrpMessage.this.updateStatus(ImConstants.Status.FAILED);
                FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
                int nextFileTransferAutoResumeTimer = rcsStrategy.getNextFileTransferAutoResumeTimer(ftMsrpMessage3.mDirection, ftMsrpMessage3.mRetryCount);
                if (FtMsrpMessage.this.mResumableOptionCode == FtResumableOption.MANUALLY_AUTOMATICALLY_RESUMABLE.getId() && nextFileTransferAutoResumeTimer >= 0) {
                    FtMsrpStateMachine.this.logi(getName() + " start ft auto resume timer: " + nextFileTransferAutoResumeTimer);
                    if (nextFileTransferAutoResumeTimer < 10) {
                        FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                        ftMsrpStateMachine2.sendMessageDelayed(ftMsrpStateMachine2.obtainMessage(21), nextFileTransferAutoResumeTimer * 1000);
                    } else {
                        PreciseAlarmManager.getInstance(FtMsrpMessage.this.getContext()).sendMessageDelayed(FtMsrpStateMachine.this.obtainMessage(21), nextFileTransferAutoResumeTimer * 1000);
                    }
                    FtMsrpMessage.this.mRetryCount++;
                } else {
                    FtMsrpMessage ftMsrpMessage4 = FtMsrpMessage.this;
                    if (ftMsrpMessage4.mDirection == ImDirection.OUTGOING && !ftMsrpMessage4.isAutoResumable()) {
                        FtMsrpMessage.this.deleteThumbnail();
                        FtMsrpMessage.this.deleteFile();
                    } else {
                        FtMsrpMessage ftMsrpMessage5 = FtMsrpMessage.this;
                        if (ftMsrpMessage5.mDirection == ImDirection.INCOMING && ftMsrpMessage5.mTransferredBytes > 0) {
                            ftMsrpMessage5.moveCachedFileToApp();
                        }
                    }
                }
                FtMsrpMessage.this.mSwapUriType = false;
                FtMsrpMessage ftMsrpMessage6 = FtMsrpMessage.this;
                ftMsrpMessage6.mListener.onTransferCanceled(ftMsrpMessage6);
                FtMsrpStateMachine ftMsrpStateMachine3 = FtMsrpStateMachine.this;
                FtMsrpMessage.this.mIsConferenceUriChanged = false;
                ftMsrpStateMachine3.removeMessages(23);
                FtMsrpMessage.this.invokeFtQueueCallBack();
                FtMsrpMessage.this.updateState();
                FtMsrpMessage.this.releaseWakeLock();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    FtMsrpStateMachine.this.onAttachFile(message.arg1 == 1);
                } else if (i == 4) {
                    FtMsrpStateMachine ftMsrpStateMachine = FtMsrpStateMachine.this;
                    if (FtMsrpMessage.this.mTransferredBytes > 0) {
                        ftMsrpStateMachine.logi("FT already canceled. Try to file copy to APP. msgId : " + FtMsrpMessage.this.mId);
                        FtMsrpMessage.this.moveCachedFileToApp();
                    }
                } else if (i == 8) {
                    FtMsrpMessage ftMsrpMessage = FtMsrpMessage.this;
                    ftMsrpMessage.mCancelReason = (CancelReason) message.obj;
                    ftMsrpMessage.mListener.onTransferCanceled(ftMsrpMessage);
                    FtMsrpMessage.this.invokeFtQueueCallBack();
                } else if (i == 10) {
                    FtMsrpStateMachine.this.removeMessages(21);
                    FtIncomingSessionEvent ftIncomingSessionEvent = (FtIncomingSessionEvent) message.obj;
                    if (!FtMsrpMessage.this.isOutgoing() && !FtMsrpMessage.this.getIsSlmSvcMsg() && ftIncomingSessionEvent.mIsSlmSvcMsg) {
                        Log.i(FtMsrpMessage.this.LOG_TAG, "updateFtMsrpMessageInfo: service has been changed to SLM by sender.");
                        FtMsrpMessage.this.updateFtMessageInfo(ftIncomingSessionEvent);
                        FtMsrpStateMachine.this.onFileTransferInviteReceived(false);
                    } else if (FtMsrpMessage.this.isOutgoing() && !ftIncomingSessionEvent.mIsSlmSvcMsg && FtMsrpMessage.this.getIsSlmSvcMsg()) {
                        FtMsrpMessage.this.sendRejectFtSession(FtRejectReason.DECLINE, (FtIncomingSessionEvent) message.obj);
                        FtMsrpMessage.this.invokeFtQueueCallBack();
                    } else {
                        FtMsrpStateMachine ftMsrpStateMachine2 = FtMsrpStateMachine.this;
                        FtMsrpMessage.this.mRawHandle = ftIncomingSessionEvent.mRawHandle;
                        ftMsrpStateMachine2.onFileTransferInviteReceived(true);
                    }
                } else if (i == 16) {
                    FtMsrpStateMachine.this.onAttachSlmFile();
                } else {
                    switch (i) {
                        case 19:
                            AsyncResult asyncResult = (AsyncResult) message.obj;
                            FtMsrpStateMachine ftMsrpStateMachine3 = FtMsrpStateMachine.this;
                            FtMsrpMessage.this.mThumbnailPath = (String) asyncResult.result;
                            ftMsrpStateMachine3.onCreateThumbnail();
                            break;
                        case 20:
                            FtMsrpStateMachine.this.onHandleFileResizeResponse((FileResizeResponse) message.obj);
                            break;
                        case 21:
                            if (FtMsrpMessage.this.mListener.onRequestRegistrationType() != null) {
                                FtMsrpStateMachine.this.removeMessages(21);
                                PreciseAlarmManager.getInstance(FtMsrpMessage.this.getContext()).removeMessage(FtMsrpStateMachine.this.obtainMessage(21));
                                FtMsrpMessage ftMsrpMessage2 = FtMsrpMessage.this;
                                ftMsrpMessage2.mListener.onAutoResumeTransfer(ftMsrpMessage2);
                                break;
                            } else {
                                FtMsrpStateMachine.this.logi("unregistered, schedule auto resume");
                                IMnoStrategy rcsStrategy = FtMsrpMessage.this.getRcsStrategy();
                                FtMsrpMessage ftMsrpMessage3 = FtMsrpMessage.this;
                                int nextFileTransferAutoResumeTimer = rcsStrategy.getNextFileTransferAutoResumeTimer(ftMsrpMessage3.mDirection, ftMsrpMessage3.mRetryCount);
                                if (FtMsrpMessage.this.mResumableOptionCode == FtResumableOption.MANUALLY_AUTOMATICALLY_RESUMABLE.getId() && nextFileTransferAutoResumeTimer >= 0) {
                                    FtMsrpStateMachine.this.logi(getName() + " start ft auto resume timer: " + nextFileTransferAutoResumeTimer);
                                    if (nextFileTransferAutoResumeTimer < 10) {
                                        FtMsrpStateMachine ftMsrpStateMachine4 = FtMsrpStateMachine.this;
                                        ftMsrpStateMachine4.sendMessageDelayed(ftMsrpStateMachine4.obtainMessage(21), nextFileTransferAutoResumeTimer * 1000);
                                    } else {
                                        PreciseAlarmManager.getInstance(FtMsrpMessage.this.getContext()).sendMessageDelayed(FtMsrpStateMachine.this.obtainMessage(21), nextFileTransferAutoResumeTimer * 1000);
                                    }
                                    FtMsrpMessage.this.mRetryCount++;
                                    break;
                                }
                            }
                            break;
                        default:
                            return false;
                    }
                }
                return true;
            }
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.FtMsrpMessage$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode;

        static {
            int[] iArr = new int[FtTransferProgressEvent.State.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State = iArr;
            try {
                iArr[FtTransferProgressEvent.State.TRANSFERRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State[FtTransferProgressEvent.State.CANCELED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State[FtTransferProgressEvent.State.COMPLETED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State[FtTransferProgressEvent.State.INTERRUPTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[IMnoStrategy.StatusCode.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode = iArr2;
            try {
                iArr2[IMnoStrategy.StatusCode.RETRY_IMMEDIATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.RETRY_AFTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.RETRY_AFTER_SESSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.FALLBACK_TO_SLM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.DISPLAY_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    public void acceptTransfer(Uri uri) {
        this.mContentUri = uri;
        if (this.mDirection == ImDirection.OUTGOING || this.mTransferredBytes > 0) {
            this.mFilePath = FileUtils.copyFileToCacheFromUri(getContext(), getFileName(), this.mContentUri);
        }
        FtMessage.FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(4));
    }
}
