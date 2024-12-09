package com.sec.internal.ims.servicemodules.im;

import android.os.Message;
import android.util.Log;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImIconData;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.SipResponse;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionConferenceInfoUpdateEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionEstablishedEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.SendImdnParams;
import com.sec.internal.constants.ims.servicemodules.im.params.StopImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImErrorReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionStopReason;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.constants.ims.servicemodules.im.result.SendMessageResult;
import com.sec.internal.constants.ims.servicemodules.im.result.SendSlmResult;
import com.sec.internal.constants.ims.servicemodules.im.result.StartImSessionResult;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import com.sec.internal.ims.servicemodules.im.data.info.ImSessionInfo;
import com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ImSessionDefaultState extends ImSessionStateBase {
    private static final String LOG_TAG = "DefaultState";
    private boolean mIsTriggeredCapex;

    ImSessionDefaultState(int i, ImSession imSession) {
        super(i, imSession);
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase, com.sec.internal.helper.State, com.sec.internal.helper.IState
    public boolean processMessage(Message message) {
        boolean processMessage = super.processMessage(message);
        if (!processMessage) {
            this.mImSession.loge("Unexpected event " + message.what + ". current state is " + this.mImSession.getCurrentState().getName());
        }
        return processMessage;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processMessagingEvent(Message message) {
        this.mImSession.logi("DefaultState, processMessagingEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 3023) {
            this.mImSession.mIsComposing = false;
        } else if (i != 3026) {
            switch (i) {
                case ImSessionEvent.SEND_MESSAGE_DONE /* 3002 */:
                    onSendImMessageDone((AsyncResult) message.obj);
                    break;
                case ImSessionEvent.RECEIVE_MESSAGE /* 3003 */:
                case ImSessionEvent.RECEIVE_SLM_MESSAGE /* 3009 */:
                    onReceiveMessage((MessageBase) message.obj);
                    break;
                case ImSessionEvent.ATTACH_FILE /* 3004 */:
                    onAttachFile(message);
                    break;
                case ImSessionEvent.SEND_FILE /* 3005 */:
                    onSendFile(message);
                    break;
                case ImSessionEvent.FILE_COMPLETE /* 3006 */:
                    onFileComplete((FtMessage) message.obj);
                    break;
                case ImSessionEvent.SEND_SLM_MESSAGE /* 3007 */:
                    this.mImSession.onSendSlmMessage((MessageBase) message.obj);
                    break;
                case ImSessionEvent.SEND_SLM_MESSAGE_DONE /* 3008 */:
                    onSendSlmMessageDone((AsyncResult) message.obj);
                    break;
                case ImSessionEvent.SEND_DELIVERED_NOTIFICATION /* 3010 */:
                    onSendDeliveredNodification((MessageBase) message.obj);
                    break;
                case ImSessionEvent.SEND_DELIVERED_NOTIFICATION_DONE /* 3011 */:
                    onSendDeliveredNodificationDone(message);
                    break;
                case ImSessionEvent.SEND_DISPLAYED_NOTIFICATION /* 3012 */:
                    onSendDisplayedNotification();
                    break;
                case ImSessionEvent.SEND_DISPLAYED_NOTIFICATION_DONE /* 3013 */:
                    onSendDisplayedNotificationDone(message);
                    break;
                case ImSessionEvent.SEND_MESSAGE_RESPONSE_TIMEOUT /* 3014 */:
                    onSendMessageResponseTimeout((ImMessage) message.obj);
                    break;
                case ImSessionEvent.DELIVERY_TIMEOUT /* 3015 */:
                    onExpireDeliveryTimeout();
                    break;
                case ImSessionEvent.SEND_MESSAGE_REVOKE_REQUEST /* 3016 */:
                    onSendMessageRevokeRequest((List) message.obj);
                    break;
                case ImSessionEvent.SEND_MESSAGE_REVOKE_REQUEST_INTERNAL_DONE /* 3017 */:
                    onSendMessageRevokeRequestInternalDone(message);
                    break;
                case ImSessionEvent.MESSAGE_REVOKE_TIMER_EXPIRED /* 3018 */:
                    onMessageRevokeTimerExpired();
                    break;
                case ImSessionEvent.MESSAGE_REVOKE_OPERATION_TIMEOUT /* 3019 */:
                    onMessageRevokeOperationTimeout((String) message.obj);
                    break;
                case ImSessionEvent.RESEND_MESSAGE_REVOKE_REQUEST /* 3020 */:
                    onResendMessageRevokeRequest();
                    break;
                case ImSessionEvent.SEND_ISCOMPOSING_NOTIFICATION /* 3021 */:
                    onSendIscomposingNotification();
                    break;
                default:
                    return false;
            }
        } else {
            onSendCanceledNotificationDone(message);
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processGroupChatManagementEvent(Message message) {
        this.mImSession.logi("DefaultState, processGroupChatManagementEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 2016) {
            onDownloadGroupIconDone((ImIconData) message.obj);
        } else if (i != 2017) {
            switch (i) {
                case ImSessionEvent.EXTEND_TO_GROUP_CHAT /* 2003 */:
                    this.mImSession.deferMessage(message);
                    break;
                case ImSessionEvent.EXTEND_TO_GROUP_CHAT_DONE /* 2004 */:
                    onExtendToGroupChatDone(message);
                    break;
                case ImSessionEvent.CONFERENCE_INFO_UPDATED /* 2005 */:
                    this.mImSession.onConferenceInfoUpdated((ImSessionConferenceInfoUpdateEvent) message.obj);
                    break;
                default:
                    return false;
            }
        } else {
            this.mImSession.handleRequestTimeout();
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processSessionConnectionEvent(Message message) {
        this.mImSession.logi("DefaultState, processSessionConnectionEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 1003) {
            onSessionEstablished((ImSessionEstablishedEvent) message.obj);
        } else if (i == 1019) {
            onSessionTimeoutThreshold((ImMessage) message.obj);
        } else if (i == 1022) {
            this.mImSession.logi("REFRESH_CAPEX_UPDATE. current state is " + this.mImSession.getCurrentState().getName());
            this.mIsTriggeredCapex = false;
        } else if (i != 1023) {
            switch (i) {
                case 1010:
                    onProcessIncomingSnfSession((ImIncomingSessionEvent) message.obj);
                    break;
                case 1011:
                    onAcceptSnfSessionDone(message);
                    break;
                case 1012:
                    onCloseAllSession((ImSessionStopReason) message.obj);
                    break;
                default:
                    switch (i) {
                        case 1014:
                            this.mImSession.mClosedState.onSessionClosed((ImSessionClosedEvent) message.obj);
                            break;
                        case 1015:
                            onForceCloseSession();
                            break;
                        case 1016:
                            onStartSessionProvisionalResponse(message);
                            break;
                        case 1017:
                            onStartSessionSynchronousDone(message);
                            break;
                        default:
                            return false;
                    }
            }
        } else {
            onCloseSessionTimeout(message.obj);
        }
        return true;
    }

    private void onExtendToGroupChatDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        StartImSessionResult startImSessionResult = (StartImSessionResult) asyncResult.result;
        List<ImsUri> list = (List) asyncResult.userObj;
        if (startImSessionResult.mResult.getImError() == ImError.SUCCESS) {
            this.mImSession.onAddParticipantsSucceeded(list);
        } else {
            this.mImSession.onAddParticipantsFailed(list, ImErrorReason.ENGINE_ERROR);
        }
        this.mImSession.transitionToProperState();
    }

    private void onSendImMessageDone(AsyncResult asyncResult) {
        Object obj;
        if (asyncResult.exception != null || (obj = asyncResult.result) == null) {
            this.mImSession.loge("result is null");
            return;
        }
        MessageBase messageBase = (MessageBase) asyncResult.userObj;
        SendMessageResult sendMessageResult = (SendMessageResult) obj;
        this.mImSession.removeMessages(1019, messageBase);
        if (!sendMessageResult.mIsProvisional || this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.USE_PROVISIONAL_RESPONSE_ASSENT)) {
            ImError imError = sendMessageResult.mResult.getImError();
            boolean z = !this.mImSession.isGroupChat() && ChatbotUriUtil.hasChatbotUri(this.mImSession.getParticipantsUri(), this.mPhoneId);
            this.mImSession.logi("onSendImMessageDone : " + imError + " retryTimer: " + this.mImSession.mRetryTimer + " hasChatbotUri: " + z);
            setRevokeTimer(messageBase, z, sendMessageResult.mResult);
            ImError imError2 = ImError.SUCCESS;
            if (imError == imError2) {
                messageBase.onSendMessageDone(sendMessageResult.mResult, new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE));
                return;
            }
            MessageBase message = this.mImSession.mGetter.getMessage(messageBase.getId());
            if (message != null) {
                if (message.getNotificationStatus() != NotificationStatus.NONE) {
                    this.mImSession.logi("onSendImMessageDone : msg has already been delivered successfully");
                    messageBase.onSendMessageDone(new Result(imError2, sendMessageResult.mResult), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE));
                    return;
                } else if (message.getStatus() == ImConstants.Status.FAILED) {
                    this.mImSession.loge("onSendImMessageDone : Message Id " + messageBase.getId() + " had been failed");
                    return;
                }
            }
            if (!this.mImSession.isGroupChat() && imError == ImError.FORBIDDEN_CHATBOT_CONVERSATION_NEEDED) {
                this.mImSession.loge("onStartSessionDone : chatbot conversation needed");
                this.mImSession.updateIsChatbotRole(true);
                ChatbotUriUtil.updateChatbotCapability(this.mPhoneId, this.mImSession.getRemoteUri(), true);
                if (message != null) {
                    this.mImSession.sendImMessage(message);
                    return;
                }
                return;
            }
            IMnoStrategy rcsStrategy = this.mImSession.getRcsStrategy(this.mPhoneId);
            int currentRetryCount = messageBase.getCurrentRetryCount();
            ImSession imSession = this.mImSession;
            IMnoStrategy.StrategyResponse handleSendingMessageFailure = rcsStrategy.handleSendingMessageFailure(imError, currentRetryCount, imSession.mRetryTimer, imSession.getChatType(), false, z, messageBase instanceof FtHttpOutgoingMessage);
            IMnoStrategy.StatusCode statusCode = handleSendingMessageFailure.getStatusCode();
            if (messageBase.getType() == ImConstants.Type.LOCATION && statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_SLM) {
                this.mImSession.logi("onSendImMessageDone : GLS fallback to legacy");
                statusCode = IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY;
            }
            this.mImSession.getRcsStrategy(this.mPhoneId).forceRefreshCapability(this.mImSession.getParticipantsUri(), false, imError);
            if (shouldCloseSession(imError) || this.mImSession.getRcsStrategy(this.mPhoneId).isCloseSessionNeeded(imError)) {
                this.mImSession.mClosedState.handleCloseSession(sendMessageResult.mRawHandle, ImSessionStopReason.INVOLUNTARILY);
                this.mImSession.transitionToProperState();
            }
            handleSendImResult(handleSendingMessageFailure, messageBase, sendMessageResult);
            this.mImSession.logi("onSendImMessageDone - msgId: " + messageBase.mId + " statusCode: " + statusCode);
        }
    }

    private void onReceiveMessage(MessageBase messageBase) {
        Preconditions.checkNotNull(messageBase, "msg cannot be null");
        IMSLog.s(LOG_TAG, "onReceiveImMessage: " + messageBase);
        messageBase.updateStatus(ImConstants.Status.UNREAD);
        messageBase.updateDeliveredTimestamp(System.currentTimeMillis());
        if (messageBase.isDeliveredNotificationRequired()) {
            messageBase.updateDesiredNotificationStatus(NotificationStatus.DELIVERED);
            ImSession imSession = this.mImSession;
            imSession.sendMessage(imSession.obtainMessage(ImSessionEvent.SEND_DELIVERED_NOTIFICATION, messageBase));
        }
        if (this.mImSession.mIsBlockedIncomingSession) {
            return;
        }
        if (messageBase instanceof ImMessage) {
            ((ImMessage) messageBase).onReceived();
        } else if (messageBase instanceof FtHttpIncomingMessage) {
            ((FtHttpIncomingMessage) messageBase).receiveTransfer();
        }
        if (this.mImSession.getComposingActiveUris().remove(messageBase.mRemoteUri)) {
            ImSession imSession2 = this.mImSession;
            imSession2.mListener.onComposingReceived(imSession2, messageBase.mRemoteUri, null, false, imSession2.mComposingNotificationInterval);
        }
    }

    private void onFileComplete(FtMessage ftMessage) {
        Preconditions.checkNotNull(ftMessage);
        this.mImSession.logi("onFileComplete: mProcessingFileTransfer size: " + this.mImSession.mProcessingFileTransfer.size() + ", mPendingFileTrasfer size: " + this.mImSession.mPendingFileTransfer.size());
        if (ftMessage instanceof FtHttpOutgoingMessage) {
            ftMessage.updateStatus(ImConstants.Status.TO_SEND);
            ImSession imSession = this.mImSession;
            imSession.mListener.onRequestSendMessage(imSession, ftMessage);
            return;
        }
        boolean remove = this.mImSession.mProcessingFileTransfer.remove(ftMessage);
        this.mImSession.logi("onFileComplete isRemoved: " + remove + ", mProcessingFileTransfer size: " + this.mImSession.mProcessingFileTransfer.size());
        if (!remove) {
            boolean remove2 = this.mImSession.mPendingFileTransfer.remove(ftMessage);
            this.mImSession.logi("onFileComplete isRemoved: " + remove2 + ", mPendingFileTransfer size: " + this.mImSession.mPendingFileTransfer.size());
        }
        if (this.mImSession.mProcessingFileTransfer.isEmpty()) {
            this.mImSession.logi("onFileComplete next send file");
            FtMessage removeNextFtMessage = removeNextFtMessage();
            if (removeNextFtMessage != null) {
                if (removeNextFtMessage.getFtCallback() == null) {
                    removeNextFtMessage.setFtCompleteCallback(this.mImSession.obtainMessage(ImSessionEvent.FILE_COMPLETE));
                }
                if (this.mImSession.isGroupChat() && !this.mImSession.isBroadcastMsg(removeNextFtMessage)) {
                    ImSession imSession2 = this.mImSession;
                    imSession2.sendMessage(imSession2.obtainMessage(1001));
                }
                ImSession imSession3 = this.mImSession;
                imSession3.sendMessage(imSession3.obtainMessage(ImSessionEvent.SEND_FILE, removeNextFtMessage));
                this.mImSession.addToProcessingFileTransfer(removeNextFtMessage);
                return;
            }
            ImSession imSession4 = this.mImSession;
            imSession4.mListener.onProcessingFileTransferChanged(imSession4);
        }
    }

    private void onForceCloseSession() {
        if (this.mImSession.isRejoinable() && !this.mImSession.mEstablishedImSessionInfo.isEmpty()) {
            this.mImSession.mClosedReason = ImSessionClosedReason.CLOSED_INVOLUNTARILY;
        }
        IMnoStrategy rcsStrategy = this.mImSession.getRcsStrategy(this.mPhoneId);
        if (rcsStrategy == null) {
            rcsStrategy = new DefaultRCSMnoStrategy(this.mImSession.getContext(), SimManagerFactory.getPhoneId(this.mImSession.getOwnImsi()));
        }
        this.mImSession.handleCloseAllSession(rcsStrategy.getSessionStopReason(this.mImSession.isGroupChat()));
        this.mImSession.mImSessionInfoList.clear();
        this.mImSession.mEstablishedImSessionInfo.clear();
        this.mImSession.transitionToProperState();
    }

    private boolean updateParticipantWithPAI(MessageBase messageBase, String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        Log.i(LOG_TAG, "updateParticipantWithPAI, sipNumber = " + IMSLog.numberChecker(str));
        ImsUri parse = ImsUri.parse(str);
        if (parse == null || parse.equals(ImsUri.EMPTY)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add(new ImParticipant(this.mImSession.getChatId(), ImParticipant.Status.INITIAL, parse));
        arrayList2.addAll(this.mImSession.getParticipants());
        ImSession imSession = this.mImSession;
        imSession.mListener.onParticipantsInserted(imSession, arrayList);
        ImSession imSession2 = this.mImSession;
        imSession2.mListener.onParticipantsDeleted(imSession2, arrayList2);
        messageBase.updateRemoteUri(parse);
        return true;
    }

    private void onSendSlmMessageDone(AsyncResult asyncResult) {
        SendSlmResult sendSlmResult = (SendSlmResult) asyncResult.result;
        Result result = sendSlmResult.mResult;
        ImError imError = result.getImError();
        MessageBase messageBase = (MessageBase) asyncResult.userObj;
        this.mImSession.removeMessages(1019, messageBase);
        if (imError == ImError.SUCCESS) {
            if (this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.CHECK_P_ASSERTED_IDENTITY)) {
                updateParticipantWithPAI(messageBase, sendSlmResult.mPAssertedIdentity);
            }
            messageBase.onSendMessageDone(result, new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE));
            return;
        }
        MessageBase pendingMessage = this.mImSession.mGetter.getPendingMessage(messageBase.getId());
        if (pendingMessage == null) {
            this.mImSession.logi("onSendSlmMessageDone: No message in pending message list. Ignore.");
            return;
        }
        if (imError == ImError.FORBIDDEN_CHATBOT_CONVERSATION_NEEDED) {
            this.mImSession.loge("onSendSlmMessageDone : chatbot conversation needed");
            if (this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.CHECK_P_ASSERTED_IDENTITY) && updateParticipantWithPAI(pendingMessage, sendSlmResult.mPAssertedIdentity)) {
                pendingMessage.incrementRetryCount();
            }
            this.mImSession.updateIsChatbotRole(true);
            ChatbotUriUtil.updateChatbotCapability(this.mPhoneId, this.mImSession.getRemoteUri(), true);
            ImSession imSession = this.mImSession;
            imSession.sendMessage(imSession.obtainMessage(ImSessionEvent.SEND_SLM_MESSAGE, pendingMessage));
            return;
        }
        IMnoStrategy rcsStrategy = this.mImSession.getRcsStrategy(this.mPhoneId);
        int currentRetryCount = pendingMessage.getCurrentRetryCount();
        ImSession imSession2 = this.mImSession;
        IMnoStrategy.StrategyResponse handleSendingMessageFailure = rcsStrategy.handleSendingMessageFailure(imError, currentRetryCount, imSession2.mRetryTimer, imSession2.getChatType(), true, pendingMessage instanceof FtHttpOutgoingMessage);
        if (AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[handleSendingMessageFailure.getStatusCode().ordinal()] == 1) {
            this.mImSession.logi("onSendSlmMessageDone retry msgId : " + pendingMessage.getId());
            pendingMessage.incrementRetryCount();
            ImSession imSession3 = this.mImSession;
            imSession3.sendMessage(imSession3.obtainMessage(ImSessionEvent.SEND_SLM_MESSAGE, pendingMessage));
            return;
        }
        pendingMessage.onSendMessageDone(result, handleSendingMessageFailure);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.ImSessionDefaultState$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode;

        static {
            int[] iArr = new int[IMnoStrategy.StatusCode.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode = iArr;
            try {
                iArr[IMnoStrategy.StatusCode.RETRY_IMMEDIATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.RETRY_AFTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.RETRY_AFTER_SESSION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.FALLBACK_TO_SLM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.DISPLAY_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.RETRY_AFTER_REGI.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private void triggerCapex() {
        this.mImSession.logi(getName() + "triggerCapex");
        if (this.mIsTriggeredCapex || this.mImSession.isGroupChat() || this.mImSession.getParticipantsUri().isEmpty()) {
            return;
        }
        this.mIsTriggeredCapex = true;
        ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
        Capabilities capabilities = capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getCapabilities(this.mImSession.getParticipantsUri().iterator().next(), CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX, SimManagerFactory.getPhoneId(this.mImSession.getChatData().getOwnIMSI())) : null;
        long msgCapValidityTime = this.mImSession.mConfig.getMsgCapValidityTime() * 1000;
        if (capabilities != null) {
            long time = new Date().getTime() - capabilities.getTimestamp().getTime();
            if (time < msgCapValidityTime) {
                msgCapValidityTime = time;
            }
        }
        this.mImSession.logi("SEND_ISCOMPOSING_NOTIFICATION. TimeGap is " + msgCapValidityTime);
        this.mImSession.removeMessages(1022);
        ImSession imSession = this.mImSession;
        imSession.sendMessageDelayed(imSession.obtainMessage(1022), msgCapValidityTime);
    }

    private void onExpireDeliveryTimeout() {
        ImSession imSession = this.mImSession;
        for (MessageBase messageBase : imSession.mGetter.getAllPendingMessages(imSession.getChatId())) {
            if (messageBase instanceof ImMessage) {
                ImMessage imMessage = (ImMessage) messageBase;
                if (imMessage.getStatus() == ImConstants.Status.TO_SEND || imMessage.getStatus() == ImConstants.Status.SENDING) {
                    Log.i(LOG_TAG, "onExpireDeliveryTimeout : sending failed " + imMessage.getId());
                    imMessage.onSendMessageDone(new Result(ImError.SESSION_DELIVERY_TIMEOUT, Result.Type.ENGINE_ERROR), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE));
                }
            }
        }
    }

    private void setRevokeTimer(MessageBase messageBase, boolean z, Result result) {
        if (!this.mImSession.getRcsStrategy(this.mPhoneId).isRevocationAvailableMessage(messageBase) || z) {
            return;
        }
        if (this.mImSession.isMsgRevocationSupported() && result.getImError() == ImError.SUCCESS && (result.getSipResponse() != SipResponse.SIP_486_BUSY_HERE || this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_REVOKE_MSG_FOR_486_RESP))) {
            MessageBase message = this.mImSession.mGetter.getMessage(messageBase.getId());
            if (message != null) {
                NotificationStatus notificationStatus = message.getNotificationStatus();
                NotificationStatus notificationStatus2 = NotificationStatus.NONE;
                if (notificationStatus != notificationStatus2 || message.isTemporary() || message.getDispositionNotification().contains(notificationStatus2)) {
                    return;
                }
                messageBase.updateRevocationStatus(ImConstants.RevocationStatus.AVAILABLE);
                this.mImSession.getNeedToRevokeMessages().put(message.getImdnId(), Integer.valueOf(message.getId()));
                ImSession imSession = this.mImSession;
                if (!imSession.mIsRevokeTimerRunning) {
                    imSession.logi("setRevokeTimer() : msg id : " + message.getId() + " time : " + this.mImSession.mConfig.getChatRevokeTimer());
                    ImSession imSession2 = this.mImSession;
                    imSession2.mIsRevokeTimerRunning = true;
                    PreciseAlarmManager.getInstance(imSession2.getContext()).sendMessageDelayed(this.mImSession.obtainMessage(ImSessionEvent.MESSAGE_REVOKE_TIMER_EXPIRED), ((long) this.mImSession.mConfig.getChatRevokeTimer()) * 1000);
                    return;
                }
                imSession.logi("setRevokeTimer() : msg id : " + message.getId() + " aleady timer running");
                return;
            }
            return;
        }
        if (this.mImSession.getNeedToRevokeMessages().containsKey(messageBase.getImdnId())) {
            messageBase.updateRevocationStatus(ImConstants.RevocationStatus.NONE);
            this.mImSession.removeMsgFromListForRevoke(messageBase.getImdnId());
        }
    }

    private boolean shouldCloseSession(ImError imError) {
        return imError == ImError.MSRP_ACTION_NOT_ALLOWED || imError == ImError.MSRP_SESSION_DOES_NOT_EXIST || imError == ImError.MSRP_SESSION_ON_OTHER_CONNECTION || imError == ImError.MSRP_DO_NOT_SEND_THIS_MESSAGE;
    }

    private FtMessage removeNextFtMessage() {
        this.mImSession.logi("getNextFtMessage, current queue size: " + this.mImSession.mPendingFileTransfer.size());
        if (this.mImSession.mPendingFileTransfer.isEmpty()) {
            return null;
        }
        return this.mImSession.mPendingFileTransfer.remove(0);
    }

    public void onSessionEstablished(ImSessionEstablishedEvent imSessionEstablishedEvent) {
        Object obj;
        this.mImSession.logi("onSessionEstablished : " + imSessionEstablishedEvent);
        ImSessionInfo imSessionInfo = this.mImSession.getImSessionInfo(imSessionEstablishedEvent.mRawHandle);
        if (imSessionInfo != null) {
            imSessionInfo.mState = ImSessionInfo.ImSessionState.ESTABLISHED;
            if (!imSessionInfo.isSnFSession()) {
                this.mImSession.updateSessionInfo(imSessionInfo);
                this.mImSession.mEstablishedImSessionInfo.add(0, imSessionInfo);
                this.mImSession.mSupportedFeatures = EnumSet.copyOf((EnumSet) imSessionEstablishedEvent.mFeatures);
                ImSession imSession = this.mImSession;
                imSession.mRemoteAcceptTypes = imSessionEstablishedEvent.mAcceptTypes;
                imSession.mRemoteAcceptWrappedTypes = imSessionEstablishedEvent.mAcceptWrappedTypes;
                Iterator<FtMessage> it = imSession.mPendingFileTransfer.iterator();
                while (it.hasNext()) {
                    it.next().conferenceUriChanged();
                }
            }
            this.mImSession.getHandler().removeMessages(1004, imSessionInfo.mRawHandle);
            this.mImSession.transitionToProperState();
            if (imSessionInfo.mStartingReason != ImSessionInfo.StartingReason.EXTENDING_1_1_TO_GROUP || (obj = imSessionInfo.mPrevExtendRawHandle) == null) {
                return;
            }
            this.mImSession.mImsService.stopImSession(new StopImSessionParams(obj, ImSessionStopReason.INVOLUNTARILY, null));
            imSessionInfo.mPrevExtendRawHandle = null;
            return;
        }
        this.mImSession.logi("SESSION_ESTABLISHED unknown rawHandle : " + imSessionEstablishedEvent.mRawHandle);
    }

    public void sendAggregatedDisplayReport() {
        IMSLog.s(LOG_TAG, "sendAggregatedDisplayReport : messages = " + this.mImSession.mMessagesToSendDisplayNotification);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        while (!this.mImSession.mMessagesToSendDisplayNotification.isEmpty()) {
            MessageBase pollFirst = this.mImSession.mMessagesToSendDisplayNotification.pollFirst();
            arrayList.add(pollFirst.getNewImdnData(NotificationStatus.DISPLAYED));
            arrayList2.add(pollFirst);
        }
        this.mImSession.mImsService.sendDisplayedNotification(new SendImdnParams((Object) null, this.mImSession.getRemoteUri(), this.mImSession.getChatId(), this.mImSession.getConversationId(), this.mImSession.getContributionId(), this.mImSession.getOwnImsi(), this.mImSession.obtainMessage(ImSessionEvent.SEND_DISPLAYED_NOTIFICATION_DONE, arrayList2), this.mImSession.getDeviceId(), arrayList, this.mImSession.isGroupChat(), new Date(), this.mImSession.isBotSessionAnonymized(), this.mImSession.getUserAlias(true)));
    }

    private void onSendFile(Message message) {
        FtMessage ftMessage = (FtMessage) message.obj;
        if (this.mImSession.isGroupChat() && (ftMessage instanceof FtMsrpMessage) && !this.mImSession.isBroadcastMsg(ftMessage) && !ftMessage.getIsSlmSvcMsg()) {
            this.mImSession.logi("SEND_FILE in defaultState, conference uri will be changed");
            ftMessage.conferenceUriChanged();
            this.mImSession.deferMessage(message);
            return;
        }
        ftMessage.sendFile();
    }

    private void onAttachFile(Message message) {
        FtMessage ftMessage = (FtMessage) message.obj;
        boolean z = ftMessage instanceof FtMsrpMessage;
        if (this.mImSession.getRcsStrategy(this.mPhoneId).checkCapability(this.mImSession.getParticipantsUri(), z ? Capabilities.FEATURE_FT_SERVICE : Capabilities.FEATURE_FT_HTTP, this.mImSession.getChatType(), this.mImSession.isBroadcastMsg(ftMessage)).getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_SLM && !ftMessage.isFtSms()) {
            ftMessage.attachSlmFile();
            return;
        }
        if (this.mImSession.isGroupChat() && z && !this.mImSession.isBroadcastMsg(ftMessage)) {
            this.mImSession.deferMessage(message);
            this.mImSession.transitionToProperState();
        } else {
            ftMessage.attachFile(true);
        }
    }

    private void onSendDeliveredNodification(MessageBase messageBase) {
        ImSessionInfo imSessionInfoByMessageId = this.mImSession.getImSessionInfoByMessageId(messageBase.getId());
        Object rawHandle = this.mImSession.getRawHandle();
        if (imSessionInfoByMessageId != null && imSessionInfoByMessageId.isSnFSession() && imSessionInfoByMessageId.mState == ImSessionInfo.ImSessionState.ESTABLISHED) {
            rawHandle = imSessionInfoByMessageId.mRawHandle;
        }
        messageBase.sendDeliveredNotification(rawHandle, this.mImSession.getConversationId(), this.mImSession.getContributionId(), this.mImSession.obtainMessage(ImSessionEvent.SEND_DELIVERED_NOTIFICATION_DONE, messageBase), this.mImSession.getChatData().getOwnIMSI(), this.mImSession.isGroupChat(), this.mImSession.isBotSessionAnonymized());
    }

    private void onSendDisplayedNotification() {
        if (this.mImSession.mConfig.isAggrImdnSupported() && this.mImSession.isGroupChat() && this.mImSession.mMessagesToSendDisplayNotification.size() > 1) {
            sendAggregatedDisplayReport();
            return;
        }
        ArrayList arrayList = new ArrayList();
        while (!this.mImSession.mMessagesToSendDisplayNotification.isEmpty() && arrayList.size() < this.mImSession.getRcsStrategy(this.mPhoneId).intSetting(RcsPolicySettings.RcsPolicy.NUM_OF_DISPLAY_NOTIFICATION_ATONCE)) {
            arrayList.add(this.mImSession.mMessagesToSendDisplayNotification.pollFirst());
        }
        this.mImSession.onSendDisplayedNotification(arrayList);
    }

    private void onSendDeliveredNodificationDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        Result result = (Result) asyncResult.result;
        MessageBase messageBase = (MessageBase) asyncResult.userObj;
        if (result.getImError() == ImError.ENGINE_ERROR) {
            this.mImSession.loge("There is ENGINE Error during sending DELIVERED");
        } else {
            messageBase.onSendDeliveredNotificationDone();
        }
    }

    private void onSendDisplayedNotificationDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        if (((Result) asyncResult.result).getImError() == ImError.ENGINE_ERROR) {
            this.mImSession.loge("There is ENGINE Error during sending DISPLAYED");
            return;
        }
        Iterator it = ((List) asyncResult.userObj).iterator();
        while (it.hasNext()) {
            ((MessageBase) it.next()).onSendDisplayedNotificationDone();
        }
    }

    private void onSendMessageResponseTimeout(ImMessage imMessage) {
        ImConstants.Status status = imMessage.getStatus();
        if (status == ImConstants.Status.TO_SEND || status == ImConstants.Status.SENDING) {
            imMessage.onSendMessageResponseTimeout();
        }
    }

    private void onSessionTimeoutThreshold(ImMessage imMessage) {
        if (imMessage != null) {
            this.mImSession.loge("pendingMsg status : " + imMessage.getStatus());
            if (imMessage.getStatus() == ImConstants.Status.TO_SEND || imMessage.getStatus() == ImConstants.Status.SENDING) {
                imMessage.onSendMessageDone(new Result(ImError.SESSION_TIMED_OUT, Result.Type.ENGINE_ERROR), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR));
            }
        }
    }

    private void onProcessIncomingSnfSession(ImIncomingSessionEvent imIncomingSessionEvent) {
        this.mImSession.handleAcceptSession(this.mImSession.addImSessionInfo(imIncomingSessionEvent, ImSessionInfo.ImSessionState.PENDING_INVITE));
        this.mImSession.onIncomingSessionProcessed(imIncomingSessionEvent.mReceivedMessage, false);
    }

    private void onAcceptSnfSessionDone(Message message) {
        StartImSessionResult startImSessionResult = (StartImSessionResult) ((AsyncResult) message.obj).result;
        this.mImSession.logi("ACCEPT_SNF_SESSION_DONE : " + startImSessionResult);
        if (startImSessionResult.mResult.getImError() != ImError.SUCCESS) {
            this.mImSession.removeImSessionInfo(startImSessionResult.mRawHandle);
        }
        this.mImSession.releaseWakeLock(startImSessionResult.mRawHandle);
    }

    private void onStartSessionSynchronousDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        Object obj = asyncResult.result;
        String str = (String) asyncResult.userObj;
        this.mImSession.logi("START_SESSION_SYNCHRONOUS_DONE : sessionKey=" + str + ", rawHandle=" + obj);
        ImSessionInfo imSessionInfo = this.mImSession.getImSessionInfo(str);
        if (imSessionInfo != null) {
            imSessionInfo.mState = ImSessionInfo.ImSessionState.STARTING;
            imSessionInfo.mRawHandle = obj;
            if (str.equals(this.mImSession.getRawHandle())) {
                this.mImSession.setRawHandle(obj);
            }
            this.mImSession.mStartingState.startSessionEstablishmentTimer(obj);
            return;
        }
        this.mImSession.loge("cannot find the imSessionInfo using sessionKey : " + str);
        this.mImSession.mImsService.stopImSession(new StopImSessionParams(obj, ImSessionStopReason.INVOLUNTARILY, null));
    }

    private void onCloseAllSession(ImSessionStopReason imSessionStopReason) {
        if (!this.mImSession.mInProgressRequestCallbacks.isEmpty()) {
            ImSession imSession = this.mImSession;
            imSession.mPendingEvents.add(imSession.obtainMessage(1012, imSessionStopReason));
        } else {
            this.mImSession.handleCloseAllSession(imSessionStopReason);
            this.mImSession.transitionToProperState();
        }
    }

    private void onSendIscomposingNotification() {
        this.mImSession.logi("SEND_ISCOMPOSING_NOTIFICATION received in " + this.mImSession.getCurrentState().getName());
        IMnoStrategy rcsStrategy = this.mImSession.getRcsStrategy(this.mPhoneId);
        if (rcsStrategy != null) {
            if (!rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.TRIGGER_CAPEX_WHEN_STARTTYPING) || this.mImSession.mConfig.isImCapAlwaysOn()) {
                return;
            }
            triggerCapex();
            return;
        }
        this.mImSession.loge("SEND_ISCOMPOSING_NOTIFICATION : Failed to get strategy");
    }

    private void onStartSessionProvisionalResponse(Message message) {
        StartImSessionResult startImSessionResult = (StartImSessionResult) ((AsyncResult) message.obj).result;
        ImSessionInfo imSessionInfo = this.mImSession.getImSessionInfo(startImSessionResult.mRawHandle);
        this.mImSession.logi("START_SESSION_PROVISIONAL_RESPONSE : response=" + startImSessionResult);
        if (imSessionInfo != null) {
            imSessionInfo.mLastProvisionalResponse = startImSessionResult.mResult.getImError();
        }
    }

    private void onMessageRevokeTimerExpired() {
        this.mImSession.logi("MESSAGE_REVOKE_TIMER_EXPIRED : " + this.mImSession.getNeedToRevokeMessages());
        ImSession imSession = this.mImSession;
        imSession.mIsRevokeTimerRunning = false;
        final Map<String, Integer> needToRevokeMessages = imSession.getNeedToRevokeMessages();
        ArrayList arrayList = new ArrayList(needToRevokeMessages.keySet());
        Collections.sort(arrayList, new Comparator() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionDefaultState$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$onMessageRevokeTimerExpired$0;
                lambda$onMessageRevokeTimerExpired$0 = ImSessionDefaultState.lambda$onMessageRevokeTimerExpired$0(needToRevokeMessages, (String) obj, (String) obj2);
                return lambda$onMessageRevokeTimerExpired$0;
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            MessageBase message = this.mImSession.mGetter.getMessage((String) it.next(), ImDirection.OUTGOING, null);
            if (message != null) {
                message.updateRevocationStatus(ImConstants.RevocationStatus.PENDING);
            }
        }
        ImSession imSession2 = this.mImSession;
        imSession2.mListener.onMessageRevokeTimerExpired(imSession2.getChatId(), arrayList, this.mImSession.getChatData().getOwnIMSI());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$onMessageRevokeTimerExpired$0(Map map, String str, String str2) {
        return ((Integer) map.get(str)).compareTo((Integer) map.get(str2));
    }

    private void onSendMessageRevokeRequest(List<String> list) {
        this.mImSession.logi("SEND_MESSAGE_REVOKE_REQUEST : " + list);
        ImSession imSession = this.mImSession;
        imSession.mListener.setLegacyLatching(imSession.getRemoteUri(), true, this.mImSession.getChatData().getOwnIMSI());
        ArrayList arrayList = new ArrayList();
        final Map<String, Integer> needToRevokeMessages = this.mImSession.getNeedToRevokeMessages();
        Collections.sort(list, new Comparator() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionDefaultState$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$onSendMessageRevokeRequest$1;
                lambda$onSendMessageRevokeRequest$1 = ImSessionDefaultState.lambda$onSendMessageRevokeRequest$1(needToRevokeMessages, (String) obj, (String) obj2);
                return lambda$onSendMessageRevokeRequest$1;
            }
        });
        for (String str : list) {
            MessageBase message = this.mImSession.mGetter.getMessage(str, ImDirection.OUTGOING, null);
            if (message != null && message.getRevocationStatus() == ImConstants.RevocationStatus.PENDING) {
                this.mImSession.setNotEmptyContributionId();
                this.mImSession.setNotEmptyConversationId();
                message.sendMessageRevokeRequest(this.mImSession.getConversationId(), this.mImSession.getContributionId(), this.mImSession.obtainMessage(ImSessionEvent.SEND_MESSAGE_REVOKE_REQUEST_INTERNAL_DONE, message), this.mImSession.getChatData().getOwnIMSI());
                if (this.mImSession.mConfig.isCfsTrigger()) {
                    message.updateRevocationStatus(ImConstants.RevocationStatus.SENDING);
                    ImSession imSession2 = this.mImSession;
                    imSession2.mListener.addToRevokingMessages(str, imSession2.getChatId());
                } else {
                    arrayList.add(message);
                }
            } else {
                this.mImSession.loge("SEND_MESSAGE_REVOKE_REQUEST : message can't find - imdnId : " + str);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        ImSession imSession3 = this.mImSession;
        imSession3.mListener.onMessageRevocationDone(ImConstants.RevocationStatus.NONE, arrayList, imSession3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$onSendMessageRevokeRequest$1(Map map, String str, String str2) {
        return ((Integer) map.get(str)).compareTo((Integer) map.get(str2));
    }

    private void onResendMessageRevokeRequest() {
        final Map<String, Integer> needToRevokeMessages = this.mImSession.getNeedToRevokeMessages();
        ArrayList<String> arrayList = new ArrayList(needToRevokeMessages.keySet());
        Collections.sort(arrayList, new Comparator() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionDefaultState$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$onResendMessageRevokeRequest$2;
                lambda$onResendMessageRevokeRequest$2 = ImSessionDefaultState.lambda$onResendMessageRevokeRequest$2(needToRevokeMessages, (String) obj, (String) obj2);
                return lambda$onResendMessageRevokeRequest$2;
            }
        });
        for (String str : arrayList) {
            MessageBase message = this.mImSession.mGetter.getMessage(str, ImDirection.OUTGOING, null);
            if (message != null && message.getRevocationStatus() == ImConstants.RevocationStatus.SENDING) {
                this.mImSession.logi("RESEND_MESSAGE_REVOKE_REQUEST : imdnId : " + str);
                this.mImSession.setNotEmptyContributionId();
                this.mImSession.setNotEmptyConversationId();
                message.sendMessageRevokeRequest(this.mImSession.getConversationId(), this.mImSession.getContributionId(), this.mImSession.obtainMessage(ImSessionEvent.SEND_MESSAGE_REVOKE_REQUEST_INTERNAL_DONE, message), this.mImSession.getChatData().getOwnIMSI());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$onResendMessageRevokeRequest$2(Map map, String str, String str2) {
        return ((Integer) map.get(str)).compareTo((Integer) map.get(str2));
    }

    private void onSendMessageRevokeRequestInternalDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        MessageBase messageBase = (MessageBase) asyncResult.userObj;
        ImError imError = (ImError) asyncResult.result;
        this.mImSession.logi("SEND_MESSAGE_REVOKE_REQUEST_INTERNAL_DONE : msgId = " + messageBase.getId() + ", result = " + imError);
    }

    private void onMessageRevokeOperationTimeout(String str) {
        if (this.mImSession.getNeedToRevokeMessages().containsKey(str)) {
            MessageBase message = this.mImSession.mGetter.getMessage(str, ImDirection.OUTGOING, null);
            if (message == null) {
                this.mImSession.removeMsgFromListForRevoke(str);
                return;
            }
            this.mImSession.logi("MESSAGE_REVOKE_OPERATION_TIMEOUT : imdnId = " + str);
            ArrayList arrayList = new ArrayList();
            arrayList.add(message);
            ImSession imSession = this.mImSession;
            imSession.mListener.onMessageRevocationDone(ImConstants.RevocationStatus.FAILED, arrayList, imSession);
        }
    }

    private void onDownloadGroupIconDone(ImIconData imIconData) {
        this.mImSession.logi("DOWNLOAD_GROUP_ICON_DONE : " + imIconData);
        this.mImSession.updateIconData(imIconData);
        ImSession imSession = this.mImSession;
        imSession.mListener.onGroupChatIconUpdated(imSession.getChatId(), this.mImSession.getIconData());
    }

    private void handleSendImResult(IMnoStrategy.StrategyResponse strategyResponse, MessageBase messageBase, SendMessageResult sendMessageResult) {
        int ftHttpSessionRetryTimer;
        ImError imError = sendMessageResult.mResult.getImError();
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[strategyResponse.getStatusCode().ordinal()]) {
            case 1:
                this.mImSession.logi("onSendImMessageDone retry msgId : " + messageBase.getId());
                ImSession imSession = this.mImSession;
                imSession.sendMessage(imSession.obtainMessage(ImSessionEvent.SEND_MESSAGE, messageBase));
                messageBase.incrementRetryCount();
                if (imError == ImError.UNSUPPORTED_URI_SCHEME) {
                    this.mImSession.logi("onSendImMessageDone retry with other URI format");
                    this.mImSession.mSwapUriType = true;
                    break;
                }
                break;
            case 2:
                messageBase.onSendMessageDone(new Result(ImError.SUCCESS, sendMessageResult.mResult), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE));
                break;
            case 3:
                this.mImSession.logi("onSendImMessageDone retry_after msgId: " + messageBase.getId());
                if ((messageBase instanceof FtHttpOutgoingMessage) && (ftHttpSessionRetryTimer = this.mImSession.getRcsStrategy(this.mPhoneId).getFtHttpSessionRetryTimer(messageBase.getCurrentRetryCount(), imError)) != -1) {
                    this.mImSession.mRetryTimer = ftHttpSessionRetryTimer;
                }
                ImSession imSession2 = this.mImSession;
                imSession2.sendMessageDelayed(imSession2.obtainMessage(ImSessionEvent.SEND_MESSAGE, messageBase), this.mImSession.mRetryTimer * 1000);
                messageBase.incrementRetryCount();
                break;
            case 4:
                this.mImSession.logi("onSendImMessageDone retry_after_session msgId: " + messageBase.getId());
                ImSession imSession3 = this.mImSession;
                imSession3.sendMessageDelayed(imSession3.obtainMessage(ImSessionEvent.SEND_MESSAGE, messageBase), 1000L);
                messageBase.incrementRetryCount();
                break;
            case 5:
                if (messageBase instanceof FtHttpOutgoingMessage) {
                    this.mImSession.handleUploadedFileFallback((FtHttpOutgoingMessage) messageBase);
                    break;
                } else {
                    ImSession imSession4 = this.mImSession;
                    imSession4.sendMessage(imSession4.obtainMessage(ImSessionEvent.SEND_SLM_MESSAGE, messageBase));
                    break;
                }
            case 6:
                this.mImSession.mClosedState.handleCloseSession(sendMessageResult.mRawHandle, ImSessionStopReason.INVOLUNTARILY);
                this.mImSession.transitionToProperState();
                messageBase.onSendMessageDone(sendMessageResult.mResult, strategyResponse);
                break;
            case 7:
                this.mImSession.logi("onSendImMessageDone retry_after_regi msgId: " + messageBase.getId());
                ImSession imSession5 = this.mImSession;
                imSession5.sendMessageDelayed(imSession5.obtainMessage(ImSessionEvent.SEND_MESSAGE, messageBase), 1000L);
                messageBase.incrementRetryCount();
                break;
            default:
                messageBase.onSendMessageDone(sendMessageResult.mResult, strategyResponse);
                break;
        }
    }

    private void onCloseSessionTimeout(Object obj) {
        this.mImSession.logi("onCloseSessionTimeout : rawHandle = " + obj);
        if (this.mImSession.removeImSessionInfo(obj) != null) {
            this.mImSession.transitionToProperState();
        }
    }

    private void onSendCanceledNotificationDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        Result result = (Result) asyncResult.result;
        MessageBase messageBase = (MessageBase) asyncResult.userObj;
        boolean z = result.getImError() == ImError.SUCCESS;
        if (z) {
            messageBase.onSendCanceledNotificationDone();
        }
        ImSession imSession = this.mImSession;
        imSession.mListener.onSendCanceledNotificationDone(imSession.getChatId(), messageBase.getImdnId(), z);
    }
}
