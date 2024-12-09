package com.sec.internal.ims.servicemodules.im;

import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.options.Capabilities;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionConferenceInfoUpdateEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendMessageParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionStopReason;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.constants.ims.servicemodules.im.result.StartImSessionResult;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import com.sec.internal.ims.servicemodules.im.data.info.ImSessionInfo;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.StringIdGenerator;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ImSessionStartingState extends ImSessionStateBase {
    private static final String LOG_TAG = "StartingState";

    ImSessionStartingState(int i, ImSession imSession) {
        super(i, imSession);
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void enter() {
        this.mImSession.logi("StartingState enter. " + this.mImSession.getChatId());
        ImSession imSession = this.mImSession;
        imSession.mListener.onChatStatusUpdate(imSession, ImSession.SessionState.STARTING);
        ImSession imSession2 = this.mImSession;
        imSession2.mClosedReason = ImSessionClosedReason.NONE;
        if (imSession2.isVoluntaryDeparture() || this.mImSession.isAutoRejoinSession()) {
            return;
        }
        this.mImSession.getChatData().updateState(ChatData.State.INACTIVE);
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processMessagingEvent(Message message) {
        this.mImSession.logi("StartingState, processMessagingEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 3001) {
            onSendMessage((MessageBase) message.obj);
        } else if (i == 3010) {
            onSendDeliveredNotification((MessageBase) message.obj);
        } else {
            if (i != 3025) {
                return false;
            }
            onSendCanceledNotification((List) message.obj);
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processGroupChatManagementEvent(Message message) {
        this.mImSession.logi("StartingState, processGroupChatManagementEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i != 2001 && i != 2008 && i != 2010 && i != 2012 && i != 2014) {
            if (i == 2005) {
                this.mImSession.onConferenceInfoUpdated((ImSessionConferenceInfoUpdateEvent) message.obj);
                return true;
            }
            if (i != 2006) {
                return false;
            }
        }
        message.arg1 = 1;
        this.mImSession.deferMessage(message);
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processSessionConnectionEvent(Message message) {
        this.mImSession.logi("StartingState, processSessionConnectionEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 1002) {
            onStartSessionDone(message);
        } else if (i == 1007) {
            onAcceptSessionDone(message);
        } else if (i == 1016) {
            onStartSessionProvisionalResponse((StartImSessionResult) ((AsyncResult) message.obj).result);
        } else if (i == 1004) {
            this.mImSession.onEstablishmentTimeOut(message.obj);
        } else if (i == 1005) {
            onProcessIncomingSession((ImIncomingSessionEvent) message.obj);
        } else {
            if (i == 1012) {
                return onCloseAllSession(message);
            }
            if (i != 1013) {
                return false;
            }
            this.mImSession.mClosedState.onCloseSessionDone(message);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onStartSession(com.sec.internal.ims.servicemodules.im.MessageBase r34, com.sec.internal.ims.servicemodules.im.data.info.ImSessionInfo.StartingReason r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.ImSessionStartingState.onStartSession(com.sec.internal.ims.servicemodules.im.MessageBase, com.sec.internal.ims.servicemodules.im.data.info.ImSessionInfo$StartingReason, boolean):void");
    }

    private Set<ImsUri> getParticipantsNetworkPreferredUri(Set<ImsUri> set) {
        String str;
        ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
        HashSet hashSet = new HashSet();
        for (ImsUri imsUri : set) {
            if (capabilityDiscoveryModule == null || capabilityDiscoveryModule.getCapabilitiesCache() == null) {
                hashSet.add(this.mImSession.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, imsUri));
            } else {
                Capabilities capabilities = capabilityDiscoveryModule.getCapabilitiesCache().get(imsUri);
                if (capabilities == null) {
                    hashSet.add(this.mImSession.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, imsUri));
                } else {
                    Iterator it = capabilities.getPAssertedId().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str = null;
                            break;
                        }
                        ImsUri imsUri2 = (ImsUri) it.next();
                        if (imsUri2.getUriType() == ImsUri.UriType.SIP_URI) {
                            str = imsUri2.getHost();
                            break;
                        }
                    }
                    hashSet.add(this.mImSession.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, imsUri, str));
                }
            }
        }
        return hashSet;
    }

    public void onStartSessionDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        StartImSessionResult startImSessionResult = (StartImSessionResult) asyncResult.result;
        ImError imError = startImSessionResult.mResult.getImError();
        this.mImSession.mRetryTimer = startImSessionResult.mRetryTimer;
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.valueOf(imError.ordinal()));
        arrayList.add(startImSessionResult.toCriticalLog());
        ImsUtil.listToDumpFormat(LogClass.IM_START_SESSION_DONE, this.mPhoneId, this.mImSession.getChatId(), arrayList);
        this.mImSession.logi("onStartSessionDone : " + startImSessionResult);
        ImSessionInfo imSessionInfo = this.mImSession.getImSessionInfo(startImSessionResult.mRawHandle);
        if (imSessionInfo == null) {
            this.mImSession.loge("onStartSessionDone unknown rawHandle : " + startImSessionResult.mRawHandle);
            return;
        }
        if (imError == ImError.SUCCESS) {
            onStartSessionDoneSuccess(startImSessionResult, imSessionInfo);
        } else {
            onStartSessionDoneFailure(startImSessionResult, imSessionInfo, imError, (MessageBase) asyncResult.userObj);
        }
    }

    private boolean shouldRestartSessionWithNewID(ImError imError) {
        if (!this.mImSession.isGroupChat()) {
            return false;
        }
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[imError.ordinal()];
        return (i == 1 || i == 2) && this.mImSession.mConfig.getImMsgTech() == ImConstants.ImMsgTech.SIMPLE_IM;
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.ImSessionStartingState$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError;

        static {
            int[] iArr = new int[ImError.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError = iArr;
            try {
                iArr[ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.FORBIDDEN_VERSION_NOT_SUPPORTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void restartSession(boolean z, boolean z2) {
        this.mImSession.setSessionUri(null);
        ImSessionInfo.StartingReason startingReason = ImSessionInfo.StartingReason.RESTARTING;
        if (z2) {
            if (this.mImSession.mConfig.getImMsgTech() == ImConstants.ImMsgTech.SIMPLE_IM) {
                this.mImSession.setContributionId(StringIdGenerator.generateContributionId());
            } else {
                String generateConversationId = StringIdGenerator.generateConversationId();
                this.mImSession.setConversationId(generateConversationId);
                ImSession imSession = this.mImSession;
                if (!imSession.isGroupChat()) {
                    generateConversationId = StringIdGenerator.generateContributionId();
                }
                imSession.setContributionId(generateConversationId);
            }
            startingReason = ImSessionInfo.StartingReason.RESTARTING_WITH_NEW_ID;
        }
        HashSet hashSet = new HashSet();
        Iterator<ImsUri> it = this.mImSession.mGetter.getOwnUris(SimUtil.getSimSlotPriority()).iterator();
        while (it.hasNext()) {
            ImParticipant participant = this.mImSession.getParticipant(it.next());
            if (participant != null) {
                participant.setStatus(ImParticipant.Status.DECLINED);
                hashSet.add(participant);
            }
        }
        if (!hashSet.isEmpty()) {
            Log.e(LOG_TAG, "restartSession: remove own uris from participants list");
            ImSession imSession2 = this.mImSession;
            imSession2.mListener.onParticipantsDeleted(imSession2, hashSet);
        }
        onStartSession(null, startingReason, z);
    }

    private void onSendMessage(MessageBase messageBase) {
        ImError imError;
        ImSessionInfo latestActiveImSessionInfo = this.mImSession.getLatestActiveImSessionInfo();
        if (this.mImSession.isFirstMessageInStart(messageBase.getBody()) && this.mImSession.mCurrentMessages.isEmpty() && (latestActiveImSessionInfo == null || (latestActiveImSessionInfo.mState == ImSessionInfo.ImSessionState.STARTING && latestActiveImSessionInfo.mLastProvisionalResponse != null))) {
            if (!this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.TRIGGER_INVITE_AFTER_18X)) {
                onStartSession(messageBase, ImSessionInfo.StartingReason.NORMAL, false);
                return;
            }
            if (latestActiveImSessionInfo != null && ((imError = latestActiveImSessionInfo.mLastProvisionalResponse) == ImError.RINGING || imError == ImError.CALL_IS_BEING_FORWARDED || imError == ImError.SESSION_PROGRESS)) {
                onStartSession(messageBase, ImSessionInfo.StartingReason.NORMAL, false);
                return;
            } else {
                this.mImSession.mCurrentMessages.add(messageBase);
                return;
            }
        }
        this.mImSession.logi("Starting Session, send message after session establishment");
        this.mImSession.mCurrentMessages.add(messageBase);
    }

    private void onSendCanceledNotification(List<MessageBase> list) {
        this.mImSession.logi("Starting Session, send canceled notification after session establishment");
        this.mImSession.mCurrentCanceledMessages.addAll(list);
    }

    private void onSendDeliveredNotification(MessageBase messageBase) {
        ImSessionInfo imSessionInfoByMessageId = this.mImSession.getImSessionInfoByMessageId(messageBase.getId());
        messageBase.sendDeliveredNotification((imSessionInfoByMessageId != null && imSessionInfoByMessageId.isSnFSession() && imSessionInfoByMessageId.mState == ImSessionInfo.ImSessionState.ESTABLISHED) ? imSessionInfoByMessageId.mRawHandle : null, this.mImSession.getConversationId(), this.mImSession.getContributionId(), this.mImSession.obtainMessage(ImSessionEvent.SEND_DELIVERED_NOTIFICATION_DONE, messageBase), this.mImSession.getChatData().getOwnIMSI(), this.mImSession.isGroupChat(), this.mImSession.isBotSessionAnonymized());
    }

    private void onProcessIncomingSession(ImIncomingSessionEvent imIncomingSessionEvent) {
        this.mImSession.logi("race-condition : mRawHandle=" + imIncomingSessionEvent.mRawHandle);
        IMSLog.c(LogClass.IM_INCOMING_SESSION_ERR, " race : " + imIncomingSessionEvent.mRawHandle);
        if (this.mImSession.isVoluntaryDeparture()) {
            this.mImSession.logi("Explicit departure is in progress. Reject the incoming invite");
            this.mImSession.leaveSessionWithReject(imIncomingSessionEvent.mRawHandle);
            return;
        }
        if (!this.mImSession.isGroupChat()) {
            if (this.mImSession.getDirection() == ImDirection.OUTGOING) {
                ImSession imSession = this.mImSession;
                imSession.mImsService.rejectImSession(new RejectImSessionParams(imSession.getChatId(), imIncomingSessionEvent.mRawHandle, ImSessionRejectReason.BUSY_HERE, null));
                this.mImSession.onIncomingSessionProcessed(imIncomingSessionEvent.mReceivedMessage, false);
                return;
            }
            ImSession imSession2 = this.mImSession;
            imSession2.mClosedState.handleCloseSession(imSession2.getRawHandle(), ImSessionStopReason.INVOLUNTARILY);
        }
        ImSessionInfo addImSessionInfo = this.mImSession.addImSessionInfo(imIncomingSessionEvent, ImSessionInfo.ImSessionState.ACCEPTING);
        this.mImSession.updateSessionInfo(addImSessionInfo);
        this.mImSession.handleAcceptSession(addImSessionInfo);
        this.mImSession.onIncomingSessionProcessed(imIncomingSessionEvent.mReceivedMessage, false);
        this.mImSession.transitionToProperState();
        this.mImSession.releaseWakeLock(imIncomingSessionEvent.mRawHandle);
    }

    private boolean onCloseAllSession(Message message) {
        if (!this.mImSession.isVoluntaryDeparture()) {
            return false;
        }
        this.mImSession.logi("Voluntary departure in StartingState. DeferMessage.");
        this.mImSession.deferMessage(message);
        return true;
    }

    private void onStartSessionProvisionalResponse(StartImSessionResult startImSessionResult) {
        ImError imError;
        ImSessionInfo imSessionInfo = this.mImSession.getImSessionInfo(startImSessionResult.mRawHandle);
        this.mImSession.logi("START_SESSION_PROVISIONAL_RESPONSE : response=" + startImSessionResult);
        ImError imError2 = startImSessionResult.mResult.getImError();
        if (imSessionInfo != null) {
            if (!this.mImSession.mCurrentMessages.isEmpty()) {
                ImSession imSession = this.mImSession;
                if (imSession.isFirstMessageInStart(imSession.mCurrentMessages.get(0).getBody()) && imSessionInfo.equals(this.mImSession.getLatestActiveImSessionInfo()) && ((imError = imSessionInfo.mLastProvisionalResponse) == null || imError == ImError.TRYING)) {
                    if (this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.TRIGGER_INVITE_AFTER_18X)) {
                        if (imError2 == ImError.RINGING || imError2 == ImError.CALL_IS_BEING_FORWARDED || imError2 == ImError.SESSION_PROGRESS) {
                            onStartSession(this.mImSession.mCurrentMessages.remove(0), ImSessionInfo.StartingReason.NORMAL, false);
                        }
                    } else if (imSessionInfo.mLastProvisionalResponse == null) {
                        onStartSession(this.mImSession.mCurrentMessages.remove(0), ImSessionInfo.StartingReason.NORMAL, false);
                    }
                }
            }
            imSessionInfo.mLastProvisionalResponse = imError2;
        }
    }

    private void dumpOnStartSession(int i, ImSessionInfo.StartingReason startingReason, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.valueOf(i));
        arrayList.add(this.mImSession.isGroupChat() ? "1" : "0");
        arrayList.add(String.valueOf(startingReason.ordinal()));
        arrayList.add(z ? "1" : "0");
        ImsUtil.listToDumpFormat(LogClass.IM_START_SESSION, this.mPhoneId, this.mImSession.getChatId(), arrayList);
    }

    private IMnoStrategy.StrategyResponse preCheckToStartSession(MessageBase messageBase, Set<ImsUri> set, List<ImsUri> list) {
        IMnoStrategy.StrategyResponse checkCapability;
        if (this.mImSession.isGroupChat() && !this.mImSession.mConfig.getGroupChatEnabled()) {
            checkCapability = this.mImSession.getRcsStrategy(this.mPhoneId).handleImFailure(ImError.GROUPCHAT_DISABLED, this.mImSession.getChatType());
        } else if (this.mImSession.getChatType() == ChatData.ChatType.PARTICIPANT_BASED_GROUP_CHAT && this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.ALLOW_ONLY_OPENGROUPCHAT)) {
            if (this.mImSession.mConfig.getSlmAuth() == ImConstants.SlmAuth.ENABLED) {
                checkCapability = new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_SLM);
            } else {
                checkCapability = new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
            }
        } else {
            checkCapability = this.mImSession.getRcsStrategy(this.mPhoneId).checkCapability(set, Capabilities.FEATURE_IM_SERVICE, this.mImSession.getChatType(), this.mImSession.isBroadcastMsg(messageBase));
        }
        if (messageBase != null && messageBase.getType() == ImConstants.Type.LOCATION && checkCapability.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_SLM) {
            this.mImSession.logi("onStartSession : GLS fallback to legacy");
            checkCapability = new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
        }
        if (list.isEmpty()) {
            this.mImSession.loge("onStartSession : Invalid receiver");
            checkCapability = new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        if (!this.mImSession.isGroupChat() && ChatbotUriUtil.hasChatbotUri(this.mImSession.getParticipantsUri(), this.mPhoneId) && (checkCapability.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_SLM || checkCapability.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY)) {
            checkCapability = new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NO_RETRY);
        }
        this.mImSession.logi("onStartSession: statusCode=" + checkCapability.getStatusCode());
        return checkCapability;
    }

    private void handleStartSessionFailure(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse) {
        if (strategyResponse.getStatusCode() != IMnoStrategy.StatusCode.FALLBACK_TO_SLM) {
            if (messageBase != null) {
                this.mImSession.logi("onStartSession, display error or sendMessage error");
                messageBase.onSendMessageDone(new Result(ImError.REMOTE_TEMPORARILY_UNAVAILABLE, Result.Type.NONE), strategyResponse);
                return;
            } else {
                this.mImSession.transitionToProperState();
                return;
            }
        }
        if (messageBase != null) {
            if (messageBase instanceof FtHttpOutgoingMessage) {
                this.mImSession.handleUploadedFileFallback((FtHttpOutgoingMessage) messageBase);
                return;
            }
            this.mImSession.logi("onStartSession, sendMessage SLM");
            ImSession imSession = this.mImSession;
            imSession.sendMessage(imSession.obtainMessage(ImSessionEvent.SEND_SLM_MESSAGE, messageBase));
            return;
        }
        this.mImSession.transitionToProperState();
    }

    private void generateSessionIds() {
        if (this.mImSession.mConfig.getImMsgTech() == ImConstants.ImMsgTech.CPM) {
            if (this.mImSession.getDirection() == ImDirection.INCOMING) {
                ImSession imSession = this.mImSession;
                imSession.setInReplyToContributionId(imSession.getContributionId());
                this.mImSession.setDirection(ImDirection.OUTGOING);
            }
            if (!this.mImSession.isGroupChat()) {
                this.mImSession.setContributionId(StringIdGenerator.generateContributionId());
            }
            if (TextUtils.isEmpty(this.mImSession.getConversationId())) {
                this.mImSession.setConversationId(StringIdGenerator.generateConversationId());
            }
            if (TextUtils.isEmpty(this.mImSession.getContributionId())) {
                ImSession imSession2 = this.mImSession;
                imSession2.setContributionId(imSession2.isGroupChat() ? this.mImSession.getConversationId() : StringIdGenerator.generateContributionId());
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(this.mImSession.getContributionId())) {
            this.mImSession.setContributionId(StringIdGenerator.generateContributionId());
        }
    }

    private List<ImsUri> generateReceivers(Set<ImsUri> set) {
        ArrayList arrayList = new ArrayList();
        if (this.mImSession.isRejoinable()) {
            arrayList.add(this.mImSession.getSessionUri());
        } else {
            arrayList.addAll(getParticipantsNetworkPreferredUri(set));
        }
        ImSession imSession = this.mImSession;
        if (imSession.mSwapUriType) {
            Set<ImsUri> swapUriType = imSession.mUriGenerator.swapUriType(arrayList);
            arrayList.clear();
            arrayList.addAll(swapUriType);
            this.mImSession.mSwapUriType = false;
        }
        return arrayList;
    }

    private void checkIconUpdateRequired() {
        this.mImSession.getChatData().setIconUpdatedRequiredOnSessionEstablished(this.mImSession.isGroupChat() && this.mImSession.getDirection() == ImDirection.OUTGOING && !this.mImSession.isRejoinable());
    }

    private void onStartSessionDoneSuccess(StartImSessionResult startImSessionResult, ImSessionInfo imSessionInfo) {
        imSessionInfo.mState = ImSessionInfo.ImSessionState.STARTED;
        imSessionInfo.mSessionUri = startImSessionResult.mSessionUri;
        if (this.mImSession.mEstablishedImSessionInfo.isEmpty()) {
            this.mImSession.updateSessionInfo(imSessionInfo);
        }
        this.mImSession.setNetworkFallbackMech(startImSessionResult.mIsMsgFallbackSupported, startImSessionResult.mIsMsgRevokeSupported);
        if (!this.mImSession.isMsgRevocationSupported() && !this.mImSession.getNeedToRevokeMessages().isEmpty()) {
            Map<String, Integer> needToRevokeMessages = this.mImSession.getNeedToRevokeMessages();
            for (String str : needToRevokeMessages.keySet()) {
                MessageBase message = this.mImSession.mGetter.getMessage(str, ImDirection.OUTGOING, null);
                if (message != null) {
                    message.updateRevocationStatus(ImConstants.RevocationStatus.NONE);
                } else {
                    this.mImSession.loge("message from mGetter is null. imdnId : " + str);
                }
            }
            this.mImSession.removeMsgFromListForRevoke(needToRevokeMessages.keySet());
        }
        this.mImSession.updateIsChatbotRole(startImSessionResult.mIsChatbotRole);
        startSessionEstablishmentTimer(imSessionInfo.mRawHandle);
        if (!this.mImSession.mConfig.getUserAliasEnabled() || this.mImSession.mConfig.getRealtimeUserAliasAuth() || this.mImSession.isGroupChat()) {
            return;
        }
        this.mImSession.updateParticipantAlias(startImSessionResult.mRemoteUserDisplayName, this.mImSession.getParticipants().iterator().next());
    }

    private void onStartSessionDoneFailure(StartImSessionResult startImSessionResult, ImSessionInfo imSessionInfo, ImError imError, MessageBase messageBase) {
        this.mImSession.getHandler().removeMessages(1004, imSessionInfo.mRawHandle);
        this.mImSession.removeImSessionInfo(imSessionInfo);
        if (this.mImSession.hasActiveImSessionInfo()) {
            this.mImSession.logi("onStartSessionDone : race condition, waiting events of another session");
            return;
        }
        if (imSessionInfo.mStartingReason == ImSessionInfo.StartingReason.AUTOMATIC_REJOINING) {
            this.mImSession.loge("onStartSessionDone : automatic rejoining was unsuccessful. Ignore the startResult");
            if (this.mImSession.getRcsStrategy(this.mPhoneId).needStopAutoRejoin(imError)) {
                if (imSessionInfo.mIsTryToLeave) {
                    this.mImSession.setSessionUri(null);
                } else {
                    this.mImSession.getChatData().updateState(ChatData.State.CLOSED_BY_USER);
                }
            }
            this.mImSession.transitionToProperState();
            return;
        }
        if (this.mImSession.isRejoinable() && RcsPolicyManager.getRcsStrategy(this.mPhoneId).shouldRestartSession(imError)) {
            this.mImSession.loge("onStartSessionDone : Rejoining groupchat was unsuccessful. Restart groupchat");
            restartSession(imSessionInfo.mIsTryToLeave, false);
            return;
        }
        if (shouldRestartSessionWithNewID(imError) && !imSessionInfo.mIsTryToLeave) {
            this.mImSession.loge("onStartSessionDone : User is not authorized to rejoin the group. start new chat");
            restartSession(false, true);
            return;
        }
        if (!this.mImSession.mCurrentCanceledMessages.isEmpty()) {
            this.mImSession.failCurrentCanceledMessages();
        }
        if (!this.mImSession.mCurrentMessages.isEmpty()) {
            if (messageBase != null && this.mImSession.isFirstMessageInStart(messageBase.getBody()) && imError == ImError.BUSY_HERE) {
                this.mImSession.logi("onStartSessionDone : handle 486 response as SUCCESS for the message in INVITE.");
                ImSession imSession = this.mImSession;
                onStartSession(imSession.isFirstMessageInStart(imSession.mCurrentMessages.get(0).getBody()) ? this.mImSession.mCurrentMessages.remove(0) : null, ImSessionInfo.StartingReason.NORMAL, false);
            } else {
                this.mImSession.failCurrentMessages(startImSessionResult.mRawHandle, startImSessionResult.mResult, startImSessionResult.mAllowedMethods);
            }
        }
        if (imError == ImError.FORBIDDEN_MAX_GROUP_NUMBER) {
            this.mImSession.mClosedReason = ImSessionClosedReason.MAX_GROUP_NUMBER_REACHED;
        } else if (imError == ImError.GONE && this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.GONE_SHOULD_ENDSESSION)) {
            this.mImSession.mClosedReason = ImSessionClosedReason.GROUP_CHAT_DISMISSED;
        } else if (imError == ImError.FORBIDDEN_RESTART_GC_CLOSED && this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_CHAT_CLOSE_BY_SERVER)) {
            this.mImSession.logi("onStartSessionDone : Chat Close by Server ");
            if (imSessionInfo.mIsTryToLeave) {
                ImSession imSession2 = this.mImSession;
                imSession2.mClosedReason = ImSessionClosedReason.CLOSED_BY_LOCAL;
                imSession2.mListener.onChatDeparted(imSession2);
            } else {
                this.mImSession.mClosedReason = ImSessionClosedReason.LEFT_BY_SERVER;
            }
        } else {
            this.mImSession.mClosedReason = RcsPolicyManager.getRcsStrategy(this.mPhoneId).handleSessionFailure(imError, this.mImSession.isGroupChat());
        }
        if (this.mImSession.getRcsStrategy(this.mPhoneId).isNeedToReportToRegiGvn(imError)) {
            this.mImSession.mListener.onImErrorReport(imError, this.mPhoneId);
        }
        ImSession imSession3 = this.mImSession;
        imSession3.mClosedEvent = new ImSessionClosedEvent(startImSessionResult.mRawHandle, imSession3.getChatId(), startImSessionResult.mResult);
        this.mImSession.transitionToProperState();
    }

    protected void onAcceptSessionDone(Message message) {
        StartImSessionResult startImSessionResult = (StartImSessionResult) ((AsyncResult) message.obj).result;
        this.mImSession.logi("onAcceptSessionDone : " + startImSessionResult);
        if (startImSessionResult.mResult.getImError() == ImError.SUCCESS) {
            startSessionEstablishmentTimer(startImSessionResult.mRawHandle);
        } else {
            this.mImSession.removeImSessionInfo(startImSessionResult.mRawHandle);
            if (!this.mImSession.hasActiveImSessionInfo()) {
                this.mImSession.failCurrentMessages(startImSessionResult, startImSessionResult.mResult);
            }
            this.mImSession.transitionToProperState();
        }
        this.mImSession.releaseWakeLock(startImSessionResult.mRawHandle);
    }

    protected void startSessionEstablishmentTimer(Object obj) {
        if (RcsPolicyManager.getRcsStrategy(this.mPhoneId).intSetting(RcsPolicySettings.RcsPolicy.SESSION_ESTABLISH_TIMER) <= 0 || this.mImSession.getChatType() == ChatData.ChatType.REGULAR_GROUP_CHAT) {
            return;
        }
        this.mImSession.logi("Stack response timer starts" + toString());
        this.mImSession.getHandler().removeMessages(1004, obj);
        ImSession imSession = this.mImSession;
        imSession.sendMessageDelayed(imSession.obtainMessage(1004, obj), ((long) RcsPolicyManager.getRcsStrategy(this.mPhoneId).intSetting(RcsPolicySettings.RcsPolicy.SESSION_ESTABLISH_TIMER)) * 1000);
    }

    private SendMessageParams createFirstMessageParams(MessageBase messageBase) {
        this.mImSession.logi("initializing SendMessageParams: " + this.mImSession.mConfig.isFirstMsgInvite());
        Set<NotificationStatus> dispositionNotification = messageBase.getDispositionNotification();
        if ((ImsProfile.isRcsUpProfile(this.mImSession.mConfig.getRcsProfile()) && this.mImSession.mConfig.getImMsgTech() == ImConstants.ImMsgTech.SIMPLE_IM) || this.mImSession.isMsgFallbackSupported()) {
            dispositionNotification.add(NotificationStatus.INTERWORKING_SMS);
        }
        return new SendMessageParams(null, messageBase.getBody(), this.mImSession.getUserAlias(), messageBase.getContentType(), messageBase.getImdnId(), new Date(), dispositionNotification, null, this.mImSession.obtainMessage(ImSessionEvent.SEND_MESSAGE_DONE, messageBase), messageBase.getMaapTrafficType(), messageBase.getReferenceImdnId(), messageBase.getReferenceType(), messageBase.getReferenceValue());
    }
}
