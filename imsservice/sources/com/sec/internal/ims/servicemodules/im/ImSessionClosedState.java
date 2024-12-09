package com.sec.internal.ims.servicemodules.im;

import android.os.Message;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.StopImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImErrorReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionStopReason;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.constants.ims.servicemodules.im.result.StopImSessionResult;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import com.sec.internal.ims.servicemodules.im.data.info.ImSessionInfo;
import com.sec.internal.ims.servicemodules.im.strategy.ChnStrategy;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ImSessionClosedState extends ImSessionStateBase {
    private static final String LOG_TAG = "ClosedState";
    protected ImSessionStopReason mStopReason;

    ImSessionClosedState(int i, ImSession imSession) {
        super(i, imSession);
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void enter() {
        this.mImSession.logi("ClosedState enter. " + this.mImSession.getChatId() + ", mClosedReason=" + this.mImSession.mClosedReason + ", ChatState=" + this.mImSession.getChatData().getState());
        this.mImSession.removeMessages(1023);
        ImSession imSession = this.mImSession;
        imSession.mIsComposing = false;
        for (ImsUri imsUri : imSession.getComposingActiveUris()) {
            ImSession imSession2 = this.mImSession;
            imSession2.mListener.onComposingReceived(imSession2, imsUri, null, false, imSession2.mComposingNotificationInterval);
        }
        this.mImSession.getComposingActiveUris().clear();
        ImSession imSession3 = this.mImSession;
        ImSessionClosedReason imSessionClosedReason = imSession3.mClosedReason;
        if (imSessionClosedReason == ImSessionClosedReason.CLOSED_INVOLUNTARILY) {
            imSession3.getChatData().updateState(ChatData.State.CLOSED_INVOLUNTARILY);
        } else if (imSessionClosedReason == ImSessionClosedReason.KICKED_OUT_BY_LEADER || imSessionClosedReason == ImSessionClosedReason.GROUP_CHAT_DISMISSED || imSessionClosedReason == ImSessionClosedReason.LEFT_BY_SERVER) {
            imSession3.getChatData().updateState(ChatData.State.NONE);
        } else if (!imSession3.isChatState(ChatData.State.CLOSED_VOLUNTARILY) && !this.mImSession.isChatState(ChatData.State.CLOSED_INVOLUNTARILY) && !this.mImSession.isChatState(ChatData.State.NONE)) {
            this.mImSession.getChatData().updateState(ChatData.State.CLOSED_BY_USER);
        }
        ImSession imSession4 = this.mImSession;
        if (imSession4.mClosedReason == ImSessionClosedReason.ALL_PARTICIPANTS_LEFT) {
            imSession4.setSessionUri(null);
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.mImSession.mParticipants.values());
            ImSession imSession5 = this.mImSession;
            imSession5.mListener.onParticipantsDeleted(imSession5, arrayList);
        }
        ImSession imSession6 = this.mImSession;
        imSession6.mListener.onChatStatusUpdate(imSession6, ImSession.SessionState.CLOSED);
        ImSession imSession7 = this.mImSession;
        imSession7.mListener.onChatClosed(imSession7, imSession7.mClosedReason);
        if (this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_OFFLINE_GC_INVITATION)) {
            ImSession imSession8 = this.mImSession;
            if (imSession8.mIsOfflineGCInvitation && imSession8.mClosedReason == ImSessionClosedReason.CLOSED_BY_REMOTE && imSession8.getChatData().getState() == ChatData.State.CLOSED_BY_USER && this.mImSession.isRejoinable()) {
                ImSession imSession9 = this.mImSession;
                imSession9.mIsOfflineGCInvitation = false;
                imSession9.sendMessage(imSession9.obtainMessage(1020));
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processMessagingEvent(Message message) {
        this.mImSession.logi("ClosedState, processMessagingEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 3004) {
            onAttachFile((FtMessage) message.obj);
        } else {
            if (i != 3005) {
                return false;
            }
            onSendFile((FtMessage) message.obj);
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processGroupChatManagementEvent(Message message) {
        this.mImSession.logi("ClosedState, processGroupChatManagementEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        if (message.what != 2003) {
            return false;
        }
        this.mImSession.onAddParticipantsFailed((List) message.obj, ImErrorReason.ENGINE_ERROR);
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processSessionConnectionEvent(Message message) {
        this.mImSession.logi("ClosedState, processSessionConnectionEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        return false;
    }

    public void handleCloseSession(Object obj, ImSessionStopReason imSessionStopReason) {
        ImSessionInfo imSessionInfo = this.mImSession.getImSessionInfo(obj);
        this.mStopReason = imSessionStopReason;
        if (imSessionInfo != null) {
            this.mImSession.logi("handleCloseSession, info.mState=" + imSessionInfo.mState);
            switch (AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState[imSessionInfo.mState.ordinal()]) {
                case 1:
                    this.mImSession.removeImSessionInfo(obj);
                    break;
                case 2:
                    RejectImSessionParams rejectImSessionParams = new RejectImSessionParams(this.mImSession.getChatId(), imSessionInfo.mRawHandle);
                    if (!this.mImSession.isGroupChat()) {
                        rejectImSessionParams.mSessionRejectReason = ImSessionRejectReason.BUSY_HERE;
                    } else if (imSessionStopReason == ImSessionStopReason.INVOLUNTARILY) {
                        rejectImSessionParams.mSessionRejectReason = ImSessionRejectReason.INVOLUNTARILY;
                    } else if (imSessionStopReason == ImSessionStopReason.VOLUNTARILY) {
                        rejectImSessionParams.mSessionRejectReason = ImSessionRejectReason.VOLUNTARILY;
                    }
                    this.mImSession.mImsService.rejectImSession(rejectImSessionParams);
                    this.mImSession.removeImSessionInfo(obj);
                    break;
                case 3:
                    if (!imSessionInfo.isSnFSession()) {
                        this.mImSession.mEstablishedImSessionInfo.remove(imSessionInfo);
                        if (!this.mImSession.mEstablishedImSessionInfo.isEmpty()) {
                            ImSession imSession = this.mImSession;
                            imSession.updateSessionInfo(imSession.mEstablishedImSessionInfo.get(0));
                        }
                    }
                    imSessionInfo.mState = ImSessionInfo.ImSessionState.CLOSING;
                    if (imSessionStopReason == ImSessionStopReason.VOLUNTARILY) {
                        imSessionInfo.mIsTryToLeave = true;
                    }
                    ImSession imSession2 = this.mImSession;
                    imSession2.mImsService.stopImSession(new StopImSessionParams(imSessionInfo.mRawHandle, imSessionStopReason, imSession2.obtainMessage(1013)));
                    break;
                case 4:
                case 5:
                case 6:
                    this.mImSession.getHandler().removeMessages(1004, imSessionInfo.mRawHandle);
                    imSessionInfo.mState = ImSessionInfo.ImSessionState.CLOSING;
                    if (imSessionStopReason == ImSessionStopReason.VOLUNTARILY) {
                        imSessionInfo.mIsTryToLeave = true;
                    }
                    ImSession imSession3 = this.mImSession;
                    imSession3.mImsService.stopImSession(new StopImSessionParams(imSessionInfo.mRawHandle, imSessionStopReason, imSession3.obtainMessage(1013)));
                    break;
            }
        }
        this.mImSession.logi("handleCloseSession cannot find ImSessionInfo with rawHandle : " + obj);
    }

    public void onSessionClosed(ImSessionClosedEvent imSessionClosedEvent) {
        ImSession imSession = this.mImSession;
        imSession.mClosedEvent = imSessionClosedEvent;
        imSession.logi("onSessionClosed : " + imSessionClosedEvent);
        Object obj = imSessionClosedEvent.mRawHandle;
        if (obj == null) {
            return;
        }
        ImSessionInfo removeImSessionInfo = this.mImSession.removeImSessionInfo(obj);
        if (removeImSessionInfo == null || removeImSessionInfo.isSnFSession()) {
            this.mImSession.logi("onSessionClosed : unknown rawHandle = " + imSessionClosedEvent.mRawHandle);
            return;
        }
        if (imSessionClosedEvent.mRawHandle.equals(this.mImSession.getRawHandle())) {
            this.mImSession.mClosedReason = getClosedReasonByImError(imSessionClosedEvent.mResult.getImError(), imSessionClosedEvent.mReferredBy, removeImSessionInfo.mIsTryToLeave);
            if (this.mImSession.getParticipantsSize() < 1 && imSessionClosedEvent.mResult.getImError() == ImError.NORMAL_RELEASE_GONE) {
                forceCancelFt(true, CancelReason.CANCELED_BY_USER, true);
            }
            if (removeImSessionInfo.mIsTryToLeave && this.mImSession.isVoluntaryDeparture()) {
                ImSession imSession2 = this.mImSession;
                if (imSession2.mClosedReason == ImSessionClosedReason.CLOSED_BY_LOCAL) {
                    imSession2.getChatData().updateState(ChatData.State.NONE);
                    ImSession imSession3 = this.mImSession;
                    imSession3.mListener.onChatDeparted(imSession3);
                } else if (imSession2.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.HANDLE_LEAVE_OGC_FAILURE)) {
                    this.mImSession.getChatData().updateState(ChatData.State.NONE);
                }
            }
        } else {
            this.mImSession.logi("session closed event for invalid handle current : " + this.mImSession.getRawHandle() + " event.mRawHandle : " + imSessionClosedEvent.mRawHandle);
        }
        if (removeImSessionInfo.mState == ImSessionInfo.ImSessionState.ESTABLISHED) {
            this.mImSession.mEstablishedImSessionInfo.remove(removeImSessionInfo);
            if (!this.mImSession.mEstablishedImSessionInfo.isEmpty()) {
                ImSession imSession4 = this.mImSession;
                imSession4.updateSessionInfo(imSession4.mEstablishedImSessionInfo.get(0));
            }
        } else {
            this.mImSession.getHandler().removeMessages(1004, removeImSessionInfo.mRawHandle);
        }
        if (!this.mImSession.hasActiveImSessionInfo()) {
            this.mImSession.failCurrentMessages(imSessionClosedEvent.mRawHandle, imSessionClosedEvent.mResult);
        }
        this.mImSession.transitionToProperState();
    }

    public void onCloseSessionDone(Message message) {
        Result result;
        StopImSessionResult stopImSessionResult = (StopImSessionResult) ((AsyncResult) message.obj).result;
        this.mImSession.logi("onCloseSessionDone : " + stopImSessionResult);
        ImError imError = stopImSessionResult.mError;
        ImSessionInfo imSessionInfo = this.mImSession.getImSessionInfo(stopImSessionResult.mRawHandle);
        if (imSessionInfo != null) {
            if (!imSessionInfo.isSnFSession() && !this.mImSession.hasActiveImSessionInfo()) {
                ImSessionStopReason imSessionStopReason = this.mStopReason;
                ImSessionStopReason imSessionStopReason2 = ImSessionStopReason.NO_RESPONSE;
                if (imSessionStopReason == imSessionStopReason2 && !this.mImSession.mCurrentMessages.isEmpty()) {
                    ImSession imSession = this.mImSession;
                    if (imSession.isFirstMessageInStart(imSession.mCurrentMessages.get(0).getBody())) {
                        this.mImSession.logi("Retry when MSRP is not respond");
                        retryCurrentMessages();
                    }
                }
                if (this.mImSession.mClosedReason == ImSessionClosedReason.CLOSED_INVOLUNTARILY) {
                    result = new Result(imError, Result.Type.DEVICE_UNREGISTERED);
                } else if (this.mStopReason == imSessionStopReason2) {
                    result = new Result(imError, Result.Type.NETWORK_ERROR);
                } else {
                    result = new Result(imError, Result.Type.ENGINE_ERROR);
                }
                this.mImSession.failCurrentMessages(stopImSessionResult.mRawHandle, result);
            }
            ImSession imSession2 = this.mImSession;
            imSession2.sendMessageDelayed(imSession2.obtainMessage(1023, stopImSessionResult.mRawHandle), 180000L);
            return;
        }
        this.mImSession.logi("onCloseSessionDone : unknown rawHandle=" + stopImSessionResult.mRawHandle);
    }

    private void retryCurrentMessages() {
        this.mImSession.logi("send pending messages");
        for (MessageBase messageBase : this.mImSession.mCurrentMessages) {
            ImSession imSession = this.mImSession;
            imSession.sendMessage(imSession.obtainMessage(ImSessionEvent.SEND_MESSAGE, messageBase));
        }
        this.mImSession.mCurrentMessages.clear();
    }

    private void onSendFile(FtMessage ftMessage) {
        if (this.mImSession.isGroupChat() && (ftMessage instanceof FtMsrpMessage) && !this.mImSession.isBroadcastMsg(ftMessage)) {
            IMnoStrategy.StatusCode statusCode = this.mImSession.getRcsStrategy(this.mPhoneId).handleAttachFileFailure(this.mImSession.mClosedReason).getStatusCode();
            if (statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY) {
                ftMessage.cancelTransfer(CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE);
                return;
            } else {
                if (statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_SLM) {
                    ftMessage.sendFile();
                    return;
                }
                return;
            }
        }
        ftMessage.sendFile();
    }

    private void onAttachFile(FtMessage ftMessage) {
        IMnoStrategy rcsStrategy = this.mImSession.getRcsStrategy(this.mPhoneId);
        if (this.mImSession.isBroadcastMsg(ftMessage) && !(rcsStrategy instanceof ChnStrategy)) {
            ftMessage.attachSlmFile();
            return;
        }
        if (this.mImSession.isGroupChat() && (ftMessage instanceof FtMsrpMessage) && rcsStrategy != null && !(rcsStrategy instanceof ChnStrategy)) {
            IMnoStrategy.StatusCode statusCode = rcsStrategy.handleAttachFileFailure(this.mImSession.mClosedReason).getStatusCode();
            if (statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY) {
                ftMessage.cancelTransfer(CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE);
                return;
            } else {
                if (statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_SLM) {
                    ftMessage.attachSlmFile();
                    if (ftMessage.isResuming()) {
                        return;
                    }
                    ftMessage.sendFile();
                    return;
                }
                return;
            }
        }
        ftMessage.attachFile(true);
    }

    private ImSessionClosedReason getClosedReasonByImError(ImError imError, ImsUri imsUri, boolean z) {
        ImSessionClosedReason imSessionClosedReason = ImSessionClosedReason.CLOSED_BY_REMOTE;
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[imError.ordinal()]) {
            case 1:
                return this.mImSession.isGroupChat() ? ImSessionClosedReason.KICKED_OUT_BY_LEADER : imSessionClosedReason;
            case 2:
                return this.mImSession.isGroupChat() ? ImSessionClosedReason.GROUP_CHAT_DISMISSED : imSessionClosedReason;
            case 3:
            case 4:
                return ImSessionClosedReason.CLOSED_WITH_480_REASON_CODE;
            case 5:
            case 6:
                return this.mImSession.isRejoinable() ? ImSessionClosedReason.CLOSED_INVOLUNTARILY : imSessionClosedReason;
            case 7:
                if (z) {
                    return ImSessionClosedReason.LEAVE_SESSION_FAILED;
                }
                return (this.mImSession.isChatState(ChatData.State.ACTIVE) || this.mImSession.isChatState(ChatData.State.CLOSED_INVOLUNTARILY)) ? ImSessionClosedReason.CLOSED_INVOLUNTARILY : imSessionClosedReason;
            case 8:
                if (imsUri == null) {
                    return this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_CHAT_CLOSE_BY_SERVER) ? ImSessionClosedReason.LEFT_BY_SERVER : imSessionClosedReason;
                }
                this.mImSession.logi("receive BYE with 410 reason. referred by = " + IMSLog.numberChecker(imsUri.toString()));
                this.mImSession.setSessionUri(null);
                return ImSessionClosedReason.KICKED_OUT_BY_LEADER;
            case 9:
                if (!z) {
                    return imSessionClosedReason;
                }
                if (this.mStopReason == ImSessionStopReason.VOLUNTARILY) {
                    return ImSessionClosedReason.CLOSED_BY_LOCAL;
                }
                return ImSessionClosedReason.LEAVE_SESSION_FAILED;
            default:
                return imSessionClosedReason;
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.ImSessionClosedState$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState;

        static {
            int[] iArr = new int[ImError.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError = iArr;
            try {
                iArr[ImError.CONFERENCE_PARTY_BOOTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.CONFERENCE_CALL_COMPLETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.NORMAL_RELEASE_BEARER_UNAVAILABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SESSION_TIMED_OUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.DEVICE_UNREGISTERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.DEDICATED_BEARER_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.NETWORK_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.NORMAL_RELEASE_GONE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.NORMAL_RELEASE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[ImSessionInfo.ImSessionState.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState = iArr2;
            try {
                iArr2[ImSessionInfo.ImSessionState.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState[ImSessionInfo.ImSessionState.PENDING_INVITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState[ImSessionInfo.ImSessionState.ESTABLISHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState[ImSessionInfo.ImSessionState.STARTING.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState[ImSessionInfo.ImSessionState.STARTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState[ImSessionInfo.ImSessionState.ACCEPTING.ordinal()] = 6;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState[ImSessionInfo.ImSessionState.CLOSING.ordinal()] = 7;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    protected void forceCancelFt(boolean z, CancelReason cancelReason, boolean z2) {
        this.mImSession.logi("forceCancelFt :" + this.mImSession.getChatId());
        ImSession imSession = this.mImSession;
        for (MessageBase messageBase : imSession.mGetter.getAllPendingMessages(imSession.getChatId())) {
            if (messageBase instanceof FtMessage) {
                FtMessage ftMessage = (FtMessage) messageBase;
                if (ftMessage.getStateId() == 2) {
                    this.mImSession.logi("forceCancelFt : mPendingMessages FtMessage.getStateId() = " + ftMessage.getStateId());
                    if (!(messageBase instanceof FtHttpIncomingMessage)) {
                        ftMessage.setFtCompleteCallback(null);
                        ftMessage.cancelTransfer(cancelReason);
                    } else if (!z2) {
                        ftMessage.cancelTransfer(cancelReason);
                    }
                }
            }
        }
        if (z) {
            this.mImSession.cancelPendingFilesInQueue();
        }
    }
}
