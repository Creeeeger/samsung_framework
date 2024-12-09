package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.ims.servicemodules.im.ImCacheAction;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.event.FtTransferProgressEvent;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.result.FtResult;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.IState;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.State;
import com.sec.internal.helper.translate.MappingTranslator;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.FtMessage;
import com.sec.internal.ims.servicemodules.im.UploadFileTask;
import com.sec.internal.ims.servicemodules.im.data.response.FileResizeResponse;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.im.util.AsyncFileTask;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class FtHttpOutgoingMessage extends FtMessage {
    private static final int EVENT_RETRY_UPLOAD = 305;
    private static final int EVENT_SEND_MESSAGE_DONE = 304;
    private static final int EVENT_UPLOAD_CANCELED = 303;
    private static final int EVENT_UPLOAD_COMPLETED = 302;
    private static final int EVENT_UPLOAD_PROGRESS = 201;
    private static final String LOG_TAG = FtHttpOutgoingMessage.class.getSimpleName();

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    public int getTransferMech() {
        return 1;
    }

    @Override // com.sec.internal.ims.servicemodules.im.MessageBase
    protected void sendDeliveredNotification(Object obj, String str, String str2, Message message, String str3, boolean z, boolean z2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.MessageBase
    protected void sendDisplayedNotification(Object obj, String str, String str2, Message message, String str3, boolean z, boolean z2) {
    }

    protected FtHttpOutgoingMessage(Builder<?> builder) {
        super(builder);
    }

    public static Builder<?> builder() {
        return new Builder2();
    }

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    public boolean isAutoResumable() {
        return !getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FOR_DEREGI_PROMPTLY);
    }

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    protected FtMessage.FtStateMachine createFtStateMachine(String str, Looper looper) {
        return new FtHttpStateMachine("FtHttpOutgoingMessage#" + str, looper);
    }

    @Override // com.sec.internal.ims.servicemodules.im.MessageBase
    public void onSendMessageDone(Result result, IMnoStrategy.StrategyResponse strategyResponse) {
        Log.i(LOG_TAG, "onSendMessageDone: mid = " + this.mId + ", mStatus = " + this.mStatus + ", mBody = " + IMSLog.checker(this.mBody));
        if (result.getImError() == ImError.SUCCESS) {
            ImConstants.Status status = this.mStatus;
            ImConstants.Status status2 = ImConstants.Status.SENT;
            if (status != status2) {
                this.mListener.onTransferCompleted(this);
                setSentTimestamp(System.currentTimeMillis());
                updateStatus(status2);
                this.mListener.onMessageSendingSucceeded(this);
                return;
            }
            return;
        }
        updateStatus(ImConstants.Status.FAILED);
        this.mListener.onMessageSendingFailed(this, strategyResponse, result);
    }

    private int getImsRegistrationCurrentRat(int i) {
        try {
            ImsRegistration[] registrationInfoByPhoneId = ImsRegistry.getRegistrationManager().getRegistrationInfoByPhoneId(i);
            if (registrationInfoByPhoneId == null) {
                return -1;
            }
            for (ImsRegistration imsRegistration : registrationInfoByPhoneId) {
                if (imsRegistration.hasService("ft_http")) {
                    return imsRegistration.getCurrentRat();
                }
            }
            return -1;
        } catch (NullPointerException e) {
            Log.e(LOG_TAG, "getImsRegistrationCurrentRat: NullPointerException e = " + e);
            return -1;
        }
    }

    public static abstract class Builder<T extends Builder<T>> extends FtMessage.Builder<T> {
        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.Builder
        public FtHttpOutgoingMessage build() {
            return new FtHttpOutgoingMessage(this);
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

    private class FtHttpStateMachine extends FtMessage.FtStateMachine {
        private final AttachedState mAttachedState;
        private final CanceledNeedToNotifyState mCanceledNeedToNotifyState;
        private final CanceledState mCanceledState;
        private final CancelingState mCancelingState;
        private final CompletedState mCompletedState;
        protected final MappingTranslator<Integer, State> mDbStateTranslator;
        private final DefaultState mDefaultState;
        private final InProgressState mInProgressState;
        private final InitialState mInitialState;
        private final SendingState mSendingState;
        protected final MappingTranslator<IState, Integer> mStateTranslator;

        protected FtHttpStateMachine(String str, Looper looper) {
            super(str, looper);
            this.mDefaultState = new DefaultState();
            InitialState initialState = new InitialState();
            this.mInitialState = initialState;
            AttachedState attachedState = new AttachedState();
            this.mAttachedState = attachedState;
            SendingState sendingState = new SendingState();
            this.mSendingState = sendingState;
            InProgressState inProgressState = new InProgressState();
            this.mInProgressState = inProgressState;
            CancelingState cancelingState = new CancelingState();
            this.mCancelingState = cancelingState;
            CanceledState canceledState = new CanceledState();
            this.mCanceledState = canceledState;
            CompletedState completedState = new CompletedState();
            this.mCompletedState = completedState;
            CanceledNeedToNotifyState canceledNeedToNotifyState = new CanceledNeedToNotifyState();
            this.mCanceledNeedToNotifyState = canceledNeedToNotifyState;
            this.mStateTranslator = new MappingTranslator.Builder().map(initialState, 0).map(attachedState, 6).map(sendingState, 9).map(inProgressState, 2).map(cancelingState, 7).map(canceledState, 4).map(completedState, 3).map(canceledNeedToNotifyState, 10).buildTranslator();
            this.mDbStateTranslator = new MappingTranslator.Builder().map(0, initialState).map(6, attachedState).map(9, canceledState).map(2, inProgressState).map(7, canceledState).map(4, canceledState).map(3, completedState).map(10, canceledNeedToNotifyState).buildTranslator();
        }

        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.FtStateMachine
        protected void initState(State state) {
            addState(this.mDefaultState);
            addState(this.mInitialState, this.mDefaultState);
            addState(this.mAttachedState, this.mDefaultState);
            addState(this.mSendingState, this.mDefaultState);
            addState(this.mInProgressState, this.mDefaultState);
            addState(this.mCancelingState, this.mDefaultState);
            addState(this.mCanceledState, this.mInitialState);
            addState(this.mCompletedState, this.mInitialState);
            addState(this.mCanceledNeedToNotifyState, this.mDefaultState);
            Log.i(FtHttpOutgoingMessage.LOG_TAG, "setting current state as " + state.getName() + " for messageId : " + FtHttpOutgoingMessage.this.mId);
            setInitialState(state);
            start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleFTHttpFailure() {
            logi("handleFTHttpFailure");
            IMnoStrategy rcsStrategy = FtHttpOutgoingMessage.this.getRcsStrategy();
            FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
            IMnoStrategy.StrategyResponse handleFtHttpRequestFailure = rcsStrategy.handleFtHttpRequestFailure(ftHttpOutgoingMessage.mCancelReason, ftHttpOutgoingMessage.mDirection, ftHttpOutgoingMessage.mIsGroupChat);
            FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
            boolean hasChatbotUri = ChatbotUriUtil.hasChatbotUri(ftHttpOutgoingMessage2.mListener.onRequestParticipantUris(ftHttpOutgoingMessage2.mChatId), FtHttpOutgoingMessage.this.mConfig.getPhoneId());
            if (handleFtHttpRequestFailure.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_SLM && !hasChatbotUri) {
                FtHttpOutgoingMessage ftHttpOutgoingMessage3 = FtHttpOutgoingMessage.this;
                if (ftHttpOutgoingMessage3.mFileSize > ftHttpOutgoingMessage3.mConfig.getSlmMaxMsgSize()) {
                    FtHttpOutgoingMessage ftHttpOutgoingMessage4 = FtHttpOutgoingMessage.this;
                    if (ftHttpOutgoingMessage4.mIsResizable && ftHttpOutgoingMessage4.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_LARGE_MSG_RESIZING)) {
                        FtHttpOutgoingMessage.this.mIsSlmSvcMsg = true;
                        logi("request resizing for LMM");
                        FtHttpOutgoingMessage ftHttpOutgoingMessage5 = FtHttpOutgoingMessage.this;
                        ftHttpOutgoingMessage5.mListener.onFileResizingNeeded(ftHttpOutgoingMessage5, ftHttpOutgoingMessage5.mConfig.getSlmMaxMsgSize());
                        transitionTo(this.mSendingState);
                        return;
                    }
                    Log.i(FtHttpOutgoingMessage.LOG_TAG, "File size is greater than allowed MaxSlmSize mFileSize:" + FtHttpOutgoingMessage.this.mFileSize + ", SLMMaxMsgSize:" + FtHttpOutgoingMessage.this.mConfig.getSlmMaxMsgSize());
                    if (FtHttpOutgoingMessage.this.mConfig.getFtFallbackAllFail()) {
                        FtHttpOutgoingMessage ftHttpOutgoingMessage6 = FtHttpOutgoingMessage.this;
                        if (!ftHttpOutgoingMessage6.mIsGroupChat) {
                            ftHttpOutgoingMessage6.mCancelReason = CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE;
                        }
                    }
                    transitionTo(this.mCanceledState);
                    return;
                }
                FtHttpOutgoingMessage ftHttpOutgoingMessage7 = FtHttpOutgoingMessage.this;
                ftHttpOutgoingMessage7.mIsSlmSvcMsg = true;
                Context context = ftHttpOutgoingMessage7.mModule.getContext();
                FtHttpOutgoingMessage ftHttpOutgoingMessage8 = FtHttpOutgoingMessage.this;
                ftHttpOutgoingMessage7.mFilePath = FileUtils.copyFileToCacheFromUri(context, ftHttpOutgoingMessage8.mFileName, ftHttpOutgoingMessage8.mContentUri);
                if (FtHttpOutgoingMessage.this.sendSlmFile(obtainMessage(12))) {
                    FtHttpOutgoingMessage.this.mCancelReason = CancelReason.UNKNOWN;
                    transitionTo(this.mSendingState);
                    return;
                } else {
                    if (FtHttpOutgoingMessage.this.mConfig.getFtFallbackAllFail()) {
                        FtHttpOutgoingMessage ftHttpOutgoingMessage9 = FtHttpOutgoingMessage.this;
                        if (!ftHttpOutgoingMessage9.mIsGroupChat) {
                            ftHttpOutgoingMessage9.mCancelReason = CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE;
                        }
                    }
                    transitionTo(this.mCanceledState);
                    return;
                }
            }
            if (FtHttpOutgoingMessage.this.mConfig.getFtFallbackAllFail()) {
                FtHttpOutgoingMessage ftHttpOutgoingMessage10 = FtHttpOutgoingMessage.this;
                if (!ftHttpOutgoingMessage10.mIsGroupChat && !hasChatbotUri) {
                    ftHttpOutgoingMessage10.mCancelReason = CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE;
                }
            }
            transitionTo(this.mCanceledState);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleTransferProgress(FtTransferProgressEvent ftTransferProgressEvent) {
            if (!Objects.equals(FtHttpOutgoingMessage.this.mRawHandle, ftTransferProgressEvent.mRawHandle)) {
                logi("EVENT_TRANSFER_PROGRESS: unknown rawHandle, ignore it: mRawHandle=" + FtHttpOutgoingMessage.this.mRawHandle + ", event.mRawHandle=" + ftTransferProgressEvent.mRawHandle);
                return;
            }
            removeMessages(23);
            sendMessageDelayed(obtainMessage(23), 300000L);
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State[ftTransferProgressEvent.mState.ordinal()];
            if (i == 1) {
                FtHttpOutgoingMessage.this.updateTransferredBytes(ftTransferProgressEvent.mTransferred);
                FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                ftHttpOutgoingMessage.mListener.onTransferProgressReceived(ftHttpOutgoingMessage);
                return;
            }
            if (i == 2) {
                if (getCurrentState() == this.mInProgressState) {
                    FtHttpOutgoingMessage.this.mCancelReason = FtMessage.translateToCancelReason(ftTransferProgressEvent.mReason.getImError());
                }
                if (FtHttpOutgoingMessage.this.mConfig.getFtFallbackAllFail()) {
                    FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                    if (!ftHttpOutgoingMessage2.mIsGroupChat) {
                        ftHttpOutgoingMessage2.mCancelReason = CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE;
                    }
                }
                transitionTo(this.mCanceledState);
                return;
            }
            if (i == 3) {
                transitionTo(this.mCompletedState);
                return;
            }
            if (i != 4) {
                return;
            }
            FtHttpOutgoingMessage ftHttpOutgoingMessage3 = FtHttpOutgoingMessage.this;
            ftHttpOutgoingMessage3.mTransferredBytes = (ftHttpOutgoingMessage3.mFileSize - ftTransferProgressEvent.mTotal) + ftTransferProgressEvent.mTransferred;
            logi("INTERRUPTED mFileSize: " + FtHttpOutgoingMessage.this.mFileSize + " mTotal: " + ftTransferProgressEvent.mTotal + " mTransferred: " + ftTransferProgressEvent.mTransferred);
            if (getCurrentState() == this.mInProgressState) {
                FtHttpOutgoingMessage.this.mCancelReason = FtMessage.translateToCancelReason(ftTransferProgressEvent.mReason.getImError());
            }
            if (FtHttpOutgoingMessage.this.mConfig.getFtFallbackAllFail()) {
                FtHttpOutgoingMessage ftHttpOutgoingMessage4 = FtHttpOutgoingMessage.this;
                if (!ftHttpOutgoingMessage4.mIsGroupChat) {
                    ftHttpOutgoingMessage4.mCancelReason = CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE;
                }
            }
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

        private final class DefaultState extends State {
            private DefaultState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (FtHttpStateMachine.this.getCurrentState() == null) {
                    return false;
                }
                Log.e(FtHttpOutgoingMessage.LOG_TAG, "Unexpected event, current state is " + FtHttpStateMachine.this.getCurrentState().getName() + " event: " + message.what);
                return false;
            }
        }

        private final class InitialState extends State {
            private InitialState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i != 1) {
                    if (i == 8) {
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        FtHttpOutgoingMessage.this.mCancelReason = (CancelReason) message.obj;
                        ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                        return true;
                    }
                    if (i != 16) {
                        return false;
                    }
                    FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                    FtHttpOutgoingMessage.this.mCancelReason = CancelReason.ERROR;
                    ftHttpStateMachine2.handleFTHttpFailure();
                    return true;
                }
                long max = Math.max(FtHttpOutgoingMessage.this.mConfig.getMaxSizeExtraFileTr(), FtHttpOutgoingMessage.this.mConfig.getMaxSizeFileTr());
                if (max != 0 && FtHttpOutgoingMessage.this.mFileSize > max) {
                    Log.e(FtHttpOutgoingMessage.LOG_TAG, "Attached file (" + FtHttpOutgoingMessage.this.mFileSize + ") exceeds MaxSizeFileTr (" + max + ")");
                    FtHttpStateMachine ftHttpStateMachine3 = FtHttpStateMachine.this;
                    FtHttpOutgoingMessage.this.mCancelReason = CancelReason.TOO_LARGE;
                    ftHttpStateMachine3.transitionTo(ftHttpStateMachine3.mCanceledState);
                    return true;
                }
                FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                ftHttpOutgoingMessage.mListener.onTransferCreated(ftHttpOutgoingMessage);
                FtHttpStateMachine ftHttpStateMachine4 = FtHttpStateMachine.this;
                ftHttpStateMachine4.transitionTo(ftHttpStateMachine4.mAttachedState);
                return true;
            }
        }

        private final class AttachedState extends State {
            private AttachedState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpOutgoingMessage.LOG_TAG, "AttachedState enter msgId : " + FtHttpOutgoingMessage.this.mId);
                FtHttpOutgoingMessage.this.updateState();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                if (message.what != 11) {
                    return false;
                }
                FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                ftHttpStateMachine.transitionTo(ftHttpStateMachine.mInProgressState);
                return true;
            }
        }

        final class SendingState extends State {
            SendingState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpOutgoingMessage.LOG_TAG, "SendingState enter msgId : " + FtHttpOutgoingMessage.this.mId);
                FtHttpOutgoingMessage.this.updateStatus(ImConstants.Status.SENDING);
                FtHttpOutgoingMessage.this.updateState();
                FtHttpOutgoingMessage.this.acquireWakeLock();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 8) {
                    FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                    CancelReason cancelReason = (CancelReason) message.obj;
                    ftHttpOutgoingMessage.mCancelReason = cancelReason;
                    if (ftHttpOutgoingMessage.mRawHandle == null) {
                        Log.i(FtHttpOutgoingMessage.LOG_TAG, "mRawHandle is null");
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                    } else {
                        ftHttpOutgoingMessage.sendCancelFtSession(cancelReason);
                        FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                        ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCancelingState);
                    }
                } else if (i == 12) {
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    if (asyncResult.exception == null) {
                        FtResult ftResult = (FtResult) asyncResult.result;
                        FtHttpStateMachine.this.logi("SLM send file done : " + ftResult.mRawHandle);
                        if (ftResult.getImError() == ImError.SUCCESS) {
                            FtHttpStateMachine ftHttpStateMachine3 = FtHttpStateMachine.this;
                            FtHttpOutgoingMessage.this.mRawHandle = ftResult.mRawHandle;
                            ftHttpStateMachine3.transitionTo(ftHttpStateMachine3.mInProgressState);
                        } else {
                            if (FtHttpOutgoingMessage.this.mConfig.getFtFallbackAllFail()) {
                                FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                                if (!ftHttpOutgoingMessage2.mIsGroupChat) {
                                    ftHttpOutgoingMessage2.mCancelReason = CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE;
                                }
                            }
                            FtHttpStateMachine ftHttpStateMachine4 = FtHttpStateMachine.this;
                            ftHttpStateMachine4.transitionTo(ftHttpStateMachine4.mCanceledState);
                        }
                    }
                } else {
                    if (i != 20) {
                        return false;
                    }
                    FileResizeResponse fileResizeResponse = (FileResizeResponse) message.obj;
                    if (FtHttpOutgoingMessage.this.validateFileResizeResponse(fileResizeResponse)) {
                        File file = new File(fileResizeResponse.resizedFilePath);
                        FtHttpOutgoingMessage.this.mFileSize = file.length();
                        FtHttpOutgoingMessage.this.mFileName = file.getName();
                        FtHttpOutgoingMessage ftHttpOutgoingMessage3 = FtHttpOutgoingMessage.this;
                        ftHttpOutgoingMessage3.mFilePath = fileResizeResponse.resizedFilePath;
                        ftHttpOutgoingMessage3.triggerObservers(ImCacheAction.UPDATED);
                        FtHttpStateMachine ftHttpStateMachine5 = FtHttpStateMachine.this;
                        if (!FtHttpOutgoingMessage.this.sendSlmFile(ftHttpStateMachine5.obtainMessage(12))) {
                            FtHttpStateMachine ftHttpStateMachine6 = FtHttpStateMachine.this;
                            ftHttpStateMachine6.transitionTo(ftHttpStateMachine6.mCanceledState);
                        }
                    } else {
                        if (FtHttpOutgoingMessage.this.mConfig.getFtFallbackAllFail()) {
                            FtHttpOutgoingMessage ftHttpOutgoingMessage4 = FtHttpOutgoingMessage.this;
                            if (!ftHttpOutgoingMessage4.mIsGroupChat) {
                                ftHttpOutgoingMessage4.mCancelReason = CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE;
                            }
                        }
                        FtHttpStateMachine ftHttpStateMachine7 = FtHttpStateMachine.this;
                        ftHttpStateMachine7.transitionTo(ftHttpStateMachine7.mCanceledState);
                    }
                }
                return true;
            }
        }

        private final class InProgressState extends State {
            UploadFileTask uploadTask;

            private InProgressState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpOutgoingMessage.LOG_TAG, "InProgressState enter msgId : " + FtHttpOutgoingMessage.this.mId);
                FtHttpStateMachine.this.removeMessages(305);
                FtHttpOutgoingMessage.this.setRetryCount(0);
                FtHttpOutgoingMessage.this.updateState();
                FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                if (ftHttpOutgoingMessage.mIsBootup && (ftHttpOutgoingMessage.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FOR_DEREGI_PROMPTLY) || FtHttpOutgoingMessage.this.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.DELAY_TO_CANCEL_FOR_DEREGI) > 0)) {
                    Log.i(FtHttpOutgoingMessage.LOG_TAG, "Do not auto resume message loaded from bootup");
                    FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                    FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                    ftHttpOutgoingMessage2.mIsBootup = false;
                    ftHttpOutgoingMessage2.mCancelReason = CancelReason.DEVICE_UNREGISTERED;
                    ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                } else if (!FtHttpOutgoingMessage.this.mIsSlmSvcMsg) {
                    tryUpload();
                }
                FtHttpOutgoingMessage.this.acquireWakeLock();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i != 1) {
                    if (i == 3) {
                        FtHttpStateMachine.this.handleTransferProgress((FtTransferProgressEvent) message.obj);
                        return true;
                    }
                    if (i == 8) {
                        handleCancelTransfer((CancelReason) message.obj);
                        return true;
                    }
                    if (i != 11) {
                        if (i == 23) {
                            FtHttpStateMachine.this.logi("EVENT_TRANSFER_TIMER_TIMEOUT : " + FtHttpOutgoingMessage.this.mId);
                            FtHttpOutgoingMessage.this.cancelTransfer(CancelReason.CANCELED_BY_SYSTEM);
                            return true;
                        }
                        if (i == 201) {
                            FtHttpOutgoingMessage.this.updateTransferredBytes(((Long) message.obj).longValue());
                            Log.i(FtHttpOutgoingMessage.LOG_TAG, "EVENT_UPLOAD_PROGRESS " + FtHttpOutgoingMessage.this.mTransferredBytes + "/" + FtHttpOutgoingMessage.this.mFileSize);
                            FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                            ftHttpOutgoingMessage.mListener.onTransferProgressReceived(ftHttpOutgoingMessage);
                            return true;
                        }
                        switch (i) {
                            case 50:
                                FtHttpStateMachine.this.removeMessages(51);
                                tryUpload();
                                break;
                            case 51:
                                FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                                ftHttpStateMachine.sendMessage(ftHttpStateMachine.obtainMessage(303, -1, -1, CancelReason.ERROR));
                                break;
                            case 52:
                                Log.i(FtHttpOutgoingMessage.LOG_TAG, "EVENT_DELAY_CANCEL_TRANSFER mId=" + FtHttpOutgoingMessage.this.mId);
                                UploadFileTask uploadFileTask = this.uploadTask;
                                if (uploadFileTask != null) {
                                    uploadFileTask.cancel(true);
                                    this.uploadTask = null;
                                }
                                FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                                FtHttpOutgoingMessage.this.mCancelReason = CancelReason.CANCELED_BY_USER;
                                ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCanceledState);
                                break;
                            default:
                                switch (i) {
                                    case 302:
                                        handleUploadCompleted((String) message.obj);
                                        break;
                                    case 303:
                                        handleUploadCanceled(message);
                                        break;
                                    case 305:
                                        handleRetryUpload(message.arg2);
                                        break;
                                }
                        }
                        return true;
                    }
                }
                FtHttpStateMachine.this.removeMessages(305);
                PreciseAlarmManager.getInstance(FtHttpOutgoingMessage.this.getContext()).removeMessage(FtHttpStateMachine.this.obtainMessage(52));
                tryUpload();
                return true;
            }

            private void handleCancelTransfer(CancelReason cancelReason) {
                Log.i(FtHttpOutgoingMessage.LOG_TAG, "EVENT_CANCEL_TRANSFER " + FtHttpOutgoingMessage.this.mId + " CancelReason " + cancelReason);
                FtHttpStateMachine.this.removeMessages(305);
                PreciseAlarmManager.getInstance(FtHttpOutgoingMessage.this.getContext()).removeMessage(FtHttpStateMachine.this.obtainMessage(52));
                FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                if (ftHttpOutgoingMessage.mIsSlmSvcMsg) {
                    ftHttpOutgoingMessage.mCancelReason = cancelReason;
                    ftHttpOutgoingMessage.sendCancelFtSession(cancelReason);
                    FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                    if (FtHttpOutgoingMessage.this.mCancelReason == CancelReason.CANCELED_BY_SYSTEM) {
                        ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                        return;
                    } else {
                        ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCancelingState);
                        return;
                    }
                }
                UploadFileTask uploadFileTask = this.uploadTask;
                if (uploadFileTask != null) {
                    uploadFileTask.cancel(true);
                    HttpRequest httpRequest = this.uploadTask.mHttpRequest;
                    if (httpRequest != null) {
                        httpRequest.disconnect();
                    }
                    this.uploadTask = null;
                }
                if (cancelReason == CancelReason.DEVICE_UNREGISTERED && !FtHttpOutgoingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FOR_DEREGI_PROMPTLY)) {
                    int intSetting = FtHttpOutgoingMessage.this.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.DELAY_TO_CANCEL_FOR_DEREGI);
                    if (intSetting > 0) {
                        PreciseAlarmManager.getInstance(FtHttpOutgoingMessage.this.getContext()).sendMessageDelayed(FtHttpStateMachine.this.obtainMessage(52), intSetting * 1000);
                    }
                    FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                    IMnoStrategy rcsStrategy = ftHttpOutgoingMessage2.getRcsStrategy();
                    FtHttpOutgoingMessage ftHttpOutgoingMessage3 = FtHttpOutgoingMessage.this;
                    ftHttpOutgoingMessage2.updateResumeableOptionCode(rcsStrategy.getftResumableOption(cancelReason, ftHttpOutgoingMessage3.mIsGroupChat, ftHttpOutgoingMessage3.mDirection, ftHttpOutgoingMessage3.getTransferMech()).getId());
                    return;
                }
                FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                FtHttpOutgoingMessage.this.mCancelReason = cancelReason;
                ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCanceledState);
            }

            private void handleRetryUpload(int i) {
                Log.i(FtHttpOutgoingMessage.LOG_TAG, "EVENT_RETRY_UPLOAD mId=" + FtHttpOutgoingMessage.this.mId + ", error: " + i + "Retry count=" + FtHttpOutgoingMessage.this.getRetryCount() + "/3");
                FtHttpStateMachine.this.removeMessages(305);
                if (FtHttpOutgoingMessage.this.mMnoStrategy.isFTHTTPAutoResumeAndCancelPerConnectionChange() && !FtHttpOutgoingMessage.this.checkAvailableRetry()) {
                    if (FtHttpOutgoingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FOR_DEREGI_PROMPTLY)) {
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        FtHttpOutgoingMessage.this.mCancelReason = CancelReason.CANCELED_BY_USER;
                        ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                        return;
                    }
                    return;
                }
                if (FtHttpOutgoingMessage.this.getRetryCount() < 3) {
                    FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                    ftHttpOutgoingMessage.setRetryCount(ftHttpOutgoingMessage.getRetryCount() + 1);
                    tryUpload();
                } else {
                    if (i > 0) {
                        FtHttpOutgoingMessage.this.mTransferredBytes = 0L;
                    }
                    FtHttpStateMachine.this.handleFTHttpFailure();
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x00ba  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private void handleUploadCompleted(java.lang.String r8) {
                /*
                    Method dump skipped, instructions count: 328
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.FtHttpOutgoingMessage.FtHttpStateMachine.InProgressState.handleUploadCompleted(java.lang.String):void");
            }

            private void handleUploadCanceled(Message message) {
                Object obj = message.obj;
                if (obj != null) {
                    FtHttpOutgoingMessage.this.mCancelReason = (CancelReason) obj;
                }
                int ftHttpRetryInterval = FtHttpOutgoingMessage.this.getRcsStrategy().getFtHttpRetryInterval(message.arg1, FtHttpOutgoingMessage.this.getRetryCount());
                if (ftHttpRetryInterval >= 0) {
                    Log.i(FtHttpOutgoingMessage.LOG_TAG, "EVENT_UPLOAD_CANCELED: msgId=" + FtHttpOutgoingMessage.this.mId + ", retry upload after " + ftHttpRetryInterval + " secs");
                    FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                    ftHttpStateMachine.sendMessageDelayed(ftHttpStateMachine.obtainMessage(305, 0, message.arg2), ((long) ftHttpRetryInterval) * 1000);
                    return;
                }
                FtHttpStateMachine.this.handleFTHttpFailure();
            }

            private void tryUpload() {
                FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                ftHttpOutgoingMessage.mIsWifiUsed = ftHttpOutgoingMessage.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FT_WIFI_DISCONNECTED) && FtHttpOutgoingMessage.this.isWifiConnected();
                IMnoStrategy rcsStrategy = FtHttpOutgoingMessage.this.getRcsStrategy();
                FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                Uri ftHttpCsUri = rcsStrategy.getFtHttpCsUri(ftHttpOutgoingMessage2.mConfig, ftHttpOutgoingMessage2.mListener.onRequestParticipantUris(ftHttpOutgoingMessage2.mChatId), FtHttpOutgoingMessage.this.getExtraFt(), FtHttpOutgoingMessage.this.mIsGroupChat);
                if (ftHttpCsUri != null) {
                    UploadFileTask uploadFileTask = this.uploadTask;
                    if (uploadFileTask == null || uploadFileTask.getState() == AsyncFileTask.State.FINISHED) {
                        if (FtHttpOutgoingMessage.this.needToAcquireNetworkForFT()) {
                            FtHttpOutgoingMessage ftHttpOutgoingMessage3 = FtHttpOutgoingMessage.this;
                            ftHttpOutgoingMessage3.acquireNetworkForFT(ftHttpOutgoingMessage3.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.FT_NET_CAPABILITY));
                            return;
                        }
                        if (FtHttpOutgoingMessage.this.getFtCallback() == null) {
                            FtHttpOutgoingMessage ftHttpOutgoingMessage4 = FtHttpOutgoingMessage.this;
                            ftHttpOutgoingMessage4.setFtCompleteCallback(ftHttpOutgoingMessage4.mListener.onRequestCompleteCallback(ftHttpOutgoingMessage4.mChatId));
                        }
                        FtHttpOutgoingMessage ftHttpOutgoingMessage5 = FtHttpOutgoingMessage.this;
                        if (ftHttpOutgoingMessage5.mTransferredBytes <= 0) {
                            ftHttpOutgoingMessage5.mFileTransferId = FtMessage.sTidGenerator.generate().toString();
                        }
                        UploadFileTask.UploadRequest createUploadFileTaskRequest = createUploadFileTaskRequest(ftHttpCsUri.toString());
                        if (createUploadFileTaskRequest.isValid()) {
                            if (FtHttpOutgoingMessage.this.mTransferredBytes > 0) {
                                this.uploadTask = new UploadResumeFileTask(FtHttpOutgoingMessage.this.mConfig.getPhoneId(), FtHttpOutgoingMessage.this.getContext(), FtHttpStateMachine.this.getHandler().getLooper(), createUploadFileTaskRequest);
                            } else {
                                this.uploadTask = new UploadFileTask(FtHttpOutgoingMessage.this.mConfig.getPhoneId(), FtHttpOutgoingMessage.this.getContext(), FtHttpStateMachine.this.getHandler().getLooper(), createUploadFileTaskRequest);
                            }
                            runUploadTask();
                            return;
                        }
                        Log.e(FtHttpOutgoingMessage.LOG_TAG, "Download request not valid, can't transfer file");
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        ftHttpStateMachine.sendMessage(ftHttpStateMachine.obtainMessage(303, -1, -1, CancelReason.ERROR));
                        return;
                    }
                    Log.i(FtHttpOutgoingMessage.LOG_TAG, "Task is already running or pending.");
                    return;
                }
                Log.e(FtHttpOutgoingMessage.LOG_TAG, "getHttpCsUri is null, can't transfer file");
                FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                ftHttpStateMachine2.sendMessage(ftHttpStateMachine2.obtainMessage(303, -1, -1, CancelReason.ERROR));
            }

            private void runUploadTask() {
                Executor executor = AsyncFileTask.THREAD_POOL_EXECUTOR;
                if (FtHttpOutgoingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.FTHTTP_SINGLE_THREAD) || ImsProfile.isRcsUpProfile(FtHttpOutgoingMessage.this.mConfig.getRcsProfile())) {
                    executor = AsyncFileTask.SERIAL_EXECUTOR;
                }
                this.uploadTask.execute(executor);
            }

            private UploadFileTask.UploadRequest createUploadFileTaskRequest(String str) {
                boolean z = FtHttpOutgoingMessage.this.getExtraFt() || FtHttpOutgoingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.FT_INTERNET_PDN);
                FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                return new UploadFileTask.UploadRequest(str, ftHttpOutgoingMessage.mFileSize, ftHttpOutgoingMessage.mFileName, ftHttpOutgoingMessage.mContentUri, true, ftHttpOutgoingMessage.mFileTransferId, ftHttpOutgoingMessage.getFtHttpUserAgent(), z ? null : FtHttpOutgoingMessage.this.mNetwork, FtHttpOutgoingMessage.this.mConfig.isFtHttpTrustAllCerts(), new UploadFileTask.UploadTaskCallback() { // from class: com.sec.internal.ims.servicemodules.im.FtHttpOutgoingMessage.FtHttpStateMachine.InProgressState.1
                    @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
                    public void onFinished() {
                    }

                    @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
                    public void onStarted() {
                        if (InProgressState.this.uploadTask instanceof UploadFileTask) {
                            Log.i(FtHttpOutgoingMessage.LOG_TAG, "Posting Started event");
                            FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                            ftHttpOutgoingMessage2.mListener.onTransferInProgress(ftHttpOutgoingMessage2);
                        }
                    }

                    @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
                    public void onProgressUpdate(long j) {
                        FtHttpStateMachine.this.sendMessage(201, Long.valueOf(j));
                    }

                    @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
                    public void onCompleted(String str2) {
                        FtHttpStateMachine.this.sendMessage(302, str2);
                        FtHttpOutgoingMessage.this.listToDumpFormat(LogClass.FT_HTTP_UPLOAD_COMPLETE, 0, new ArrayList());
                    }

                    @Override // com.sec.internal.ims.servicemodules.im.UploadFileTask.UploadTaskCallback
                    public void onCanceled(CancelReason cancelReason, int i, int i2, boolean z2) {
                        if (z2) {
                            FtHttpOutgoingMessage.this.mTransferredBytes = 0L;
                        }
                        if (i2 == 500) {
                            FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                            ftHttpOutgoingMessage2.mFileName = FileUtils.deAccent(ftHttpOutgoingMessage2.mFileName, true);
                        }
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        ftHttpStateMachine.sendMessage(ftHttpStateMachine.obtainMessage(303, i, i2, cancelReason));
                        if (i2 != -1) {
                            FtHttpOutgoingMessage.this.mModule.getBigDataProcessor().onMessageSendingFailed(FtHttpOutgoingMessage.this, new Result(ImError.NETWORK_ERROR, Result.Type.HTTP_ERROR), String.valueOf(i2), null);
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(String.valueOf(i2));
                            arrayList.add(String.valueOf(FtHttpOutgoingMessage.this.getRetryCount()));
                            FtHttpOutgoingMessage.this.listToDumpFormat(LogClass.FT_HTTP_UPLOAD_CANCEL, 0, arrayList);
                        }
                    }
                }, FtHttpOutgoingMessage.this.mContentType);
            }
        }

        private final class CancelingState extends State {
            private CancelingState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpOutgoingMessage.LOG_TAG, "CancelingState enter msgId : " + FtHttpOutgoingMessage.this.mId);
                FtHttpOutgoingMessage.this.updateState();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 3) {
                    FtHttpStateMachine.this.handleTransferProgress((FtTransferProgressEvent) message.obj);
                } else if (i == 23) {
                    FtHttpStateMachine.this.logi("EVENT_TRANSFER_TIMER_TIMEOUT : " + FtHttpOutgoingMessage.this.mId);
                    FtHttpOutgoingMessage.this.cancelTransfer(CancelReason.CANCELED_BY_SYSTEM);
                } else if (i == 8) {
                    CancelReason cancelReason = (CancelReason) message.obj;
                    FtHttpStateMachine.this.logi("cancel transfer in cancelingState reason = " + cancelReason);
                    CancelReason cancelReason2 = CancelReason.CANCELED_BY_SYSTEM;
                    if (cancelReason == cancelReason2) {
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        FtHttpOutgoingMessage.this.mCancelReason = cancelReason2;
                        ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                    }
                } else {
                    if (i != 9) {
                        return false;
                    }
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    if (asyncResult != null) {
                        FtResult ftResult = (FtResult) asyncResult.result;
                        Log.i(FtHttpOutgoingMessage.LOG_TAG, "CancelingState: cancel transfer result = " + ftResult);
                        FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                        ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCanceledState);
                    }
                }
                return true;
            }
        }

        private final class CanceledState extends State {
            private CanceledState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpOutgoingMessage.LOG_TAG, "CanceledState enter msgId : " + FtHttpOutgoingMessage.this.mId);
                FtHttpOutgoingMessage.this.updateState();
                FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                if (ftHttpOutgoingMessage.mIsSlmSvcMsg) {
                    ftHttpOutgoingMessage.mIsSlmSvcMsg = false;
                    ftHttpStateMachine.removeMessages(23);
                }
                FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                if (ftHttpOutgoingMessage2.mIsNetworkRequested) {
                    ftHttpOutgoingMessage2.releaseNetworkAcquiredForFT();
                }
                FtHttpOutgoingMessage ftHttpOutgoingMessage3 = FtHttpOutgoingMessage.this;
                if (ftHttpOutgoingMessage3.mIsBootup) {
                    Log.i(FtHttpOutgoingMessage.LOG_TAG, "Message is loaded from bootup, no need for notifications");
                    FtHttpOutgoingMessage.this.mIsBootup = false;
                    return;
                }
                ftHttpOutgoingMessage3.releaseWakeLock();
                FtHttpOutgoingMessage ftHttpOutgoingMessage4 = FtHttpOutgoingMessage.this;
                IMnoStrategy rcsStrategy = ftHttpOutgoingMessage4.getRcsStrategy();
                FtHttpOutgoingMessage ftHttpOutgoingMessage5 = FtHttpOutgoingMessage.this;
                ftHttpOutgoingMessage4.mResumableOptionCode = rcsStrategy.getftResumableOption(ftHttpOutgoingMessage5.mCancelReason, ftHttpOutgoingMessage5.mIsGroupChat, ftHttpOutgoingMessage5.mDirection, ftHttpOutgoingMessage5.getTransferMech()).getId();
                FtHttpOutgoingMessage.this.updateStatus(ImConstants.Status.FAILED);
                FtHttpOutgoingMessage ftHttpOutgoingMessage6 = FtHttpOutgoingMessage.this;
                ftHttpOutgoingMessage6.mListener.onTransferCanceled(ftHttpOutgoingMessage6);
                FtHttpOutgoingMessage.this.setFtCompleteCallback(null);
                FtHttpOutgoingMessage.this.deleteFile();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i != 1) {
                    if (i == 8) {
                        FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                        ftHttpOutgoingMessage.mListener.onCancelRequestFailed(ftHttpOutgoingMessage);
                        return true;
                    }
                    if (i != 11) {
                        return false;
                    }
                }
                FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                if (!FtHttpOutgoingMessage.this.mIsResuming) {
                    return true;
                }
                ftHttpStateMachine.transitionTo(ftHttpStateMachine.mInProgressState);
                return true;
            }
        }

        private final class CompletedState extends State {
            private CompletedState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpOutgoingMessage.LOG_TAG, "CompletedState enter msgId : " + FtHttpOutgoingMessage.this.mId);
                FtHttpOutgoingMessage.this.updateState();
                FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                boolean z = ftHttpOutgoingMessage.mIsSlmSvcMsg;
                if (ftHttpOutgoingMessage.isFtSms() || z) {
                    FtHttpStateMachine.this.removeMessages(23);
                    FtHttpOutgoingMessage.this.updateStatus(ImConstants.Status.SENT);
                    FtHttpOutgoingMessage.this.setSentTimestamp(System.currentTimeMillis());
                    FtHttpOutgoingMessage.this.mIsSlmSvcMsg = false;
                }
                FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                if (ftHttpOutgoingMessage2.mIsNetworkRequested) {
                    ftHttpOutgoingMessage2.releaseNetworkAcquiredForFT();
                }
                FtHttpOutgoingMessage ftHttpOutgoingMessage3 = FtHttpOutgoingMessage.this;
                if (ftHttpOutgoingMessage3.mIsBootup) {
                    Log.i(FtHttpOutgoingMessage.LOG_TAG, "Message is loaded from bootup, no need for notifications");
                    FtHttpOutgoingMessage.this.mIsBootup = false;
                    return;
                }
                ftHttpOutgoingMessage3.releaseWakeLock();
                if (FtHttpOutgoingMessage.this.isFtSms() || z) {
                    FtHttpOutgoingMessage ftHttpOutgoingMessage4 = FtHttpOutgoingMessage.this;
                    ftHttpOutgoingMessage4.mListener.onTransferCompleted(ftHttpOutgoingMessage4);
                } else {
                    FtHttpOutgoingMessage.this.invokeFtQueueCallBack();
                }
                FtHttpOutgoingMessage.this.deleteFile();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i != 1) {
                    if (i != 8) {
                        return false;
                    }
                    FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                    ftHttpOutgoingMessage.mListener.onCancelRequestFailed(ftHttpOutgoingMessage);
                    return true;
                }
                FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                if (!FtHttpOutgoingMessage.this.mIsResuming) {
                    return true;
                }
                ftHttpStateMachine.transitionTo(ftHttpStateMachine.mInProgressState);
                return true;
            }
        }

        private final class CanceledNeedToNotifyState extends State {
            private CanceledNeedToNotifyState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpOutgoingMessage.LOG_TAG, "CanceledState enter msgId : " + FtHttpOutgoingMessage.this.mId);
                FtHttpOutgoingMessage.this.updateState();
                FtHttpOutgoingMessage ftHttpOutgoingMessage = FtHttpOutgoingMessage.this;
                ftHttpOutgoingMessage.mResumableOptionCode = 0;
                ftHttpOutgoingMessage.updateStatus(ImConstants.Status.FAILED);
                FtHttpOutgoingMessage ftHttpOutgoingMessage2 = FtHttpOutgoingMessage.this;
                ftHttpOutgoingMessage2.mListener.onTransferCanceled(ftHttpOutgoingMessage2);
                if (!FtHttpOutgoingMessage.this.isFtSms()) {
                    FtHttpOutgoingMessage.this.invokeFtQueueCallBack();
                }
                FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                return false;
            }
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.FtHttpOutgoingMessage$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$event$FtTransferProgressEvent$State;

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
        }
    }
}
