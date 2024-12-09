package com.sec.internal.ims.servicemodules.im;

import android.os.Message;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.SupportedFeature;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionConferenceInfoUpdateEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.AddParticipantsParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupAliasParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupChatIconParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupChatLeaderParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupChatSubjectParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ImSendComposingParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RemoveParticipantsParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendMessageParams;
import com.sec.internal.constants.ims.servicemodules.im.params.StartImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImErrorReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionStopReason;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import com.sec.internal.ims.servicemodules.im.data.info.ImSessionInfo;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.ims.util.StringIdGenerator;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class ImSessionEstablishedState extends ImSessionStateBase {
    private static final String LOG_TAG = "EstablishedState";

    ImSessionEstablishedState(int i, ImSession imSession) {
        super(i, imSession);
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void enter() {
        this.mImSession.logi("EstablishedState enter. " + this.mImSession.getChatId());
        ImSession imSession = this.mImSession;
        imSession.mSwapUriType = false;
        imSession.getChatData().updateState(ChatData.State.ACTIVE);
        if (!this.mImSession.isGroupChat()) {
            this.mImSession.updateParticipantsStatus(ImParticipant.Status.ACCEPTED);
        }
        if (this.mImSession.getChatData().getDirection() == ImDirection.INCOMING) {
            this.mImSession.getRcsStrategy(this.mPhoneId).forceRefreshCapability(this.mImSession.getParticipantsUri(), true, null);
        }
        if (this.mImSession.getChatData().isIconUpdatedRequiredOnSessionEstablished()) {
            this.mImSession.getChatData().setIconUpdatedRequiredOnSessionEstablished(false);
            if (this.mImSession.mSupportedFeatures.contains(SupportedFeature.GROUP_SESSION_MANAGEMENT) && this.mImSession.getChatData().getIconPath() != null) {
                onChangeGCIcon(this.mImSession.getChatData().getIconPath());
            }
        }
        Iterator<MessageBase> it = this.mImSession.mCurrentMessages.iterator();
        while (it.hasNext()) {
            onSendImMessage(it.next());
        }
        this.mImSession.mCurrentMessages.clear();
        onSendCanceledNotification(this.mImSession.mCurrentCanceledMessages);
        this.mImSession.mCurrentCanceledMessages.clear();
        ImSession imSession2 = this.mImSession;
        imSession2.mIsComposing = false;
        imSession2.checkAndUpdateSessionTimeout();
        ImSession imSession3 = this.mImSession;
        imSession3.mListener.onChatStatusUpdate(imSession3, ImSession.SessionState.ESTABLISHED);
        ImSession imSession4 = this.mImSession;
        imSession4.mListener.onChatEstablished(imSession4);
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase, com.sec.internal.helper.State, com.sec.internal.helper.IState
    public boolean processMessage(Message message) {
        int i = message.what;
        if (i != 3023 || i != 1019) {
            this.mImSession.checkAndUpdateSessionTimeout();
        }
        return super.processMessage(message);
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processMessagingEvent(Message message) {
        this.mImSession.logi("EstablishedState, processMessagingEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 3001) {
            onSendMessage((MessageBase) message.obj);
        } else if (i == 3012) {
            onSendDisplayedNotification();
        } else if (i == 3004) {
            onAttachFile((FtMessage) message.obj);
        } else if (i != 3005) {
            switch (i) {
                case ImSessionEvent.SEND_ISCOMPOSING_NOTIFICATION /* 3021 */:
                    onSendIscomposingNotification(((Boolean) message.obj).booleanValue());
                    break;
                case ImSessionEvent.SEND_ISCOMPOSING_REFRESH /* 3022 */:
                    onSendIscomposingRefresh();
                    break;
                case ImSessionEvent.SEND_ISCOMPOSING_TIMEOUT /* 3023 */:
                    onSendIscomposingTimeout();
                    break;
                case ImSessionEvent.RECEIVE_ISCOMPOSING_TIMEOUT /* 3024 */:
                    onReceiveIscomposingTimeout();
                    break;
                case ImSessionEvent.SEND_CANCELED_NOTIFICATION /* 3025 */:
                    onSendCanceledNotification((List) message.obj);
                    break;
                default:
                    return false;
            }
        } else {
            onSendFile((FtMessage) message.obj);
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processGroupChatManagementEvent(Message message) {
        this.mImSession.logi("EstablishedState, processGroupChatManagementEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        switch (message.what) {
            case ImSessionEvent.ADD_PARTICIPANTS /* 2001 */:
                onAddParticipants(message);
                return true;
            case ImSessionEvent.ADD_PARTICIPANTS_DONE /* 2002 */:
                onAddParticipantsDone(message);
                return true;
            case ImSessionEvent.EXTEND_TO_GROUP_CHAT /* 2003 */:
                onExtendToGroupChat(message);
                return true;
            case ImSessionEvent.EXTEND_TO_GROUP_CHAT_DONE /* 2004 */:
            default:
                return false;
            case ImSessionEvent.CONFERENCE_INFO_UPDATED /* 2005 */:
                this.mImSession.onConferenceInfoUpdated((ImSessionConferenceInfoUpdateEvent) message.obj);
                return true;
            case ImSessionEvent.REMOVE_PARTICIPANTS /* 2006 */:
                onRemoveParticipants(message);
                return true;
            case ImSessionEvent.REMOVE_PARTICIPANTS_DONE /* 2007 */:
                onRemoveParticipantsDone(message);
                return true;
            case ImSessionEvent.CHANGE_GC_LEADER /* 2008 */:
                onChangeGCLeader(message);
                return true;
            case ImSessionEvent.CHANGE_GC_LEADER_DONE /* 2009 */:
                onChangeGCLeaderDone(message);
                return true;
            case ImSessionEvent.CHANGE_GC_SUBJECT /* 2010 */:
                onChangeGCSubject(message);
                return true;
            case ImSessionEvent.CHANGE_GC_SUBJECT_DONE /* 2011 */:
                onChangeGCSubjectDone(message);
                return true;
            case ImSessionEvent.CHANGE_GROUP_ALIAS /* 2012 */:
                onChangeGCAlias(message);
                return true;
            case ImSessionEvent.CHANGE_GROUP_ALIAS_DONE /* 2013 */:
                onChangeGCAliasDone(message);
                return true;
            case ImSessionEvent.CHANGE_GC_ICON /* 2014 */:
                onChangeGCIcon((String) message.obj);
                return true;
            case ImSessionEvent.CHANGE_GC_ICON_DONE /* 2015 */:
                onChangeGCIconDone(message);
                return true;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processSessionConnectionEvent(Message message) {
        this.mImSession.logi("EstablishedState, processSessionConnectionEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 1002) {
            this.mImSession.mStartingState.onStartSessionDone(message);
        } else if (i == 1007) {
            this.mImSession.mStartingState.onAcceptSessionDone(message);
        } else if (i == 1013) {
            this.mImSession.mClosedState.onCloseSessionDone(message);
        } else if (i == 1018) {
            onSessionTimeoutWithoutActivity();
        } else if (i == 1004) {
            this.mImSession.onEstablishmentTimeOut(message.obj);
        } else {
            if (i != 1005) {
                return false;
            }
            onProcessIncomingSession((ImIncomingSessionEvent) message.obj);
        }
        return true;
    }

    private void onExtendToGroupChat(Message message) {
        String contributionId = this.mImSession.getContributionId();
        this.mImSession.setContributionId(StringIdGenerator.generateContributionId());
        String generateUuid = StringIdGenerator.generateUuid();
        Message obtainMessage = this.mImSession.obtainMessage(ImSessionEvent.EXTEND_TO_GROUP_CHAT_DONE, message.obj);
        Message obtainMessage2 = this.mImSession.obtainMessage(1017, generateUuid);
        Message obtainMessage3 = this.mImSession.obtainMessage(1016);
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.mImSession.getParticipantsUri());
        hashSet.addAll((List) message.obj);
        ArrayList arrayList = new ArrayList(this.mImSession.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, hashSet));
        String chatId = this.mImSession.getChatId();
        String subject = this.mImSession.getChatData().getSubject();
        String contributionId2 = this.mImSession.getContributionId();
        String userAlias = this.mImSession.getUserAlias();
        StartImSessionParams.ServiceType serviceType = StartImSessionParams.ServiceType.NORMAL;
        String sdpContentType = this.mImSession.getSdpContentType();
        String conversationId = this.mImSession.getChatData().getConversationId();
        String inReplyToContributionId = this.mImSession.getInReplyToContributionId();
        String serviceId = this.mImSession.getServiceId();
        ImSession imSession = this.mImSession;
        StartImSessionParams startImSessionParams = new StartImSessionParams(chatId, subject, arrayList, contributionId2, contributionId, userAlias, serviceType, true, sdpContentType, obtainMessage, obtainMessage3, obtainMessage2, null, conversationId, inReplyToContributionId, false, false, false, serviceId, imSession.mAcceptTypes, imSession.mAcceptWrappedTypes, imSession.getChatData().getOwnIMSI(), !this.mImSession.isGroupChat() && ChatbotUriUtil.hasChatbotUri(hashSet, this.mPhoneId), this.mImSession.getChatMode());
        ImSessionInfo imSessionInfo = new ImSessionInfo(ImSessionInfo.ImSessionState.INITIAL, ImDirection.OUTGOING, null, this.mImSession.getContributionId(), this.mImSession.getConversationId(), this.mImSession.getInReplyToContributionId(), this.mImSession.getSdpContentType());
        imSessionInfo.mStartingReason = ImSessionInfo.StartingReason.EXTENDING_1_1_TO_GROUP;
        imSessionInfo.mPrevExtendRawHandle = this.mImSession.getRawHandle();
        this.mImSession.addImSessionInfo(imSessionInfo);
        this.mImSession.mImsService.extendToGroupChat(startImSessionParams);
    }

    private void onSendImMessage(MessageBase messageBase) {
        Preconditions.checkNotNull(messageBase, "msg cannot be null");
        this.mImSession.logi("onSendImMessage");
        Set<ImsUri> hashSet = new HashSet<>();
        if (messageBase instanceof ImMessage) {
            hashSet = this.mImSession.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, ((ImMessage) messageBase).getGroupCcListUri());
        }
        Set<ImsUri> set = hashSet;
        Set<NotificationStatus> dispositionNotification = messageBase.getDispositionNotification();
        if (this.mImSession.isMsgFallbackSupported()) {
            dispositionNotification.add(NotificationStatus.INTERWORKING_SMS);
        }
        if (this.mImSession.mConfig.getRealtimeUserAliasAuth()) {
            messageBase.setUserAlias(this.mImSession.mConfig.getUserAlias());
        }
        this.mImSession.mImsService.sendImMessage(new SendMessageParams(this.mImSession.getRawHandle(), messageBase.getBody(), messageBase.getUserAlias(), messageBase.getContentType(), messageBase.getImdnId(), new Date(), dispositionNotification, set, this.mImSession.obtainMessage(ImSessionEvent.SEND_MESSAGE_DONE, messageBase), messageBase.getMaapTrafficType(), messageBase.getReferenceImdnId(), messageBase.getReferenceType(), messageBase.getReferenceValue()));
        this.mImSession.onMessageSending(messageBase);
        this.mImSession.setSessionTimeoutThreshold(messageBase);
    }

    public void onAddParticipants(Message message) {
        this.mImSession.logi("onAddParticipants");
        ArrayList<ImsUri> arrayList = new ArrayList(this.mImSession.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, new HashSet((List) message.obj)));
        IMSLog.s(LOG_TAG, "normalizedUris=" + arrayList);
        if (this.mImSession.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.USE_INDIVIDUAL_REFER)) {
            for (ImsUri imsUri : arrayList) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(imsUri);
                this.mImSession.mImsService.addImParticipants(new AddParticipantsParams(this.mImSession.getRawHandle(), arrayList2, this.mImSession.obtainMessage(ImSessionEvent.ADD_PARTICIPANTS_DONE, arrayList2), this.mImSession.getSubject()));
            }
            return;
        }
        this.mImSession.mImsService.addImParticipants(new AddParticipantsParams(this.mImSession.getRawHandle(), arrayList, this.mImSession.obtainMessage(ImSessionEvent.ADD_PARTICIPANTS_DONE, message.obj), this.mImSession.getSubject()));
    }

    public void onRemoveParticipants(Message message) {
        this.mImSession.logi("onRemoveParticipants");
        ArrayList arrayList = new ArrayList(this.mImSession.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, new HashSet((List) message.obj)));
        IMSLog.s(LOG_TAG, "normalizedUris=" + arrayList);
        this.mImSession.mImsService.removeImParticipants(new RemoveParticipantsParams(this.mImSession.getRawHandle(), arrayList, this.mImSession.obtainMessage(ImSessionEvent.REMOVE_PARTICIPANTS_DONE, message.obj)));
    }

    public void onRemoveParticipantsSucceeded(List<ImsUri> list) {
        ImParticipant participant;
        ArrayList arrayList = new ArrayList();
        Iterator<ImsUri> it = list.iterator();
        while (it.hasNext()) {
            ImsUri normalizeUri = this.mImSession.mGetter.normalizeUri(it.next());
            if (normalizeUri != null && (participant = this.mImSession.getParticipant(normalizeUri)) != null) {
                participant.setStatus(ImParticipant.Status.DECLINED);
                arrayList.add(participant);
            }
        }
        if (!arrayList.isEmpty()) {
            ImSession imSession = this.mImSession;
            imSession.mListener.onParticipantsDeleted(imSession, arrayList);
        }
        ImSession imSession2 = this.mImSession;
        imSession2.mListener.onRemoveParticipantsSucceeded(imSession2.getChatId(), list);
    }

    public void onChangeGroupChatLeaderSucceeded(List<ImsUri> list) {
        ImSession imSession = this.mImSession;
        imSession.mListener.onChangeGroupChatLeaderSucceeded(imSession.getChatId(), list);
    }

    public void onChangeGroupChatSubjectSucceeded(String str) {
        ImSession imSession = this.mImSession;
        imSession.mListener.onChangeGroupChatSubjectSucceeded(imSession.getChatId(), str);
    }

    public void onChangeGroupChatIconSuccess(String str) {
        ImSession imSession = this.mImSession;
        imSession.mListener.onChangeGroupChatIconSuccess(imSession.getChatId(), str);
    }

    public void onChangeGroupAliasSucceeded(String str) {
        ImSession imSession = this.mImSession;
        imSession.mListener.onChangeGroupAliasSucceeded(imSession.getChatId(), str);
    }

    public void onChangeGCIcon(String str) {
        this.mImSession.mImsService.changeGroupChatIcon(new ChangeGroupChatIconParams(this.mImSession.getRawHandle(), str, this.mImSession.obtainMessage(ImSessionEvent.CHANGE_GC_ICON_DONE, str)));
    }

    private void onSendMessage(MessageBase messageBase) {
        if (this.mImSession.isGroupChat() && this.mImSession.isBroadcastMsg(messageBase)) {
            this.mImSession.onSendSlmMessage(messageBase);
        } else {
            onSendImMessage(messageBase);
        }
    }

    private void onSendDisplayedNotification() {
        ArrayList arrayList;
        synchronized (this.mImSession.mMessagesToSendDisplayNotification) {
            arrayList = new ArrayList(this.mImSession.mMessagesToSendDisplayNotification);
            this.mImSession.mMessagesToSendDisplayNotification.clear();
        }
        this.mImSession.onSendDisplayedNotification(arrayList);
    }

    private void onSendCanceledNotification(List<MessageBase> list) {
        this.mImSession.onSendCanceledNotification(list);
    }

    private void onSendIscomposingNotification(boolean z) {
        Object rawHandle = this.mImSession.getRawHandle();
        ImSession imSession = this.mImSession;
        ImSendComposingParams imSendComposingParams = new ImSendComposingParams(rawHandle, z, imSession.mComposingNotificationInterval, imSession.getUserAlias());
        if (z) {
            ImSession imSession2 = this.mImSession;
            if (!imSession2.mIsComposing) {
                imSession2.logi("SEND_ISCOMPOSING_NOTIFICATION, sending isComposing=true");
                this.mImSession.mImsService.sendComposingNotification(imSendComposingParams);
                ImSession imSession3 = this.mImSession;
                imSession3.mIsComposing = true;
                imSession3.sendMessageDelayed(imSession3.obtainMessage(ImSessionEvent.SEND_ISCOMPOSING_REFRESH, Boolean.TRUE), this.mImSession.mComposingNotificationInterval * 1000);
            }
            this.mImSession.removeMessages(ImSessionEvent.SEND_ISCOMPOSING_TIMEOUT);
            this.mImSession.sendMessageDelayed(ImSessionEvent.SEND_ISCOMPOSING_TIMEOUT, r9.getRcsStrategy(this.mPhoneId).intSetting(RcsPolicySettings.RcsPolicy.COMPOSING_NOTIFICATION_IDLE_INTERVAL) * 1000);
            return;
        }
        ImSession imSession4 = this.mImSession;
        if (imSession4.mIsComposing) {
            imSession4.logi("SEND_ISCOMPOSING_NOTIFICATION, sending isComposing=false");
            this.mImSession.mImsService.sendComposingNotification(imSendComposingParams);
            this.mImSession.mIsComposing = false;
        }
        this.mImSession.removeMessages(ImSessionEvent.SEND_ISCOMPOSING_REFRESH);
        this.mImSession.removeMessages(ImSessionEvent.SEND_ISCOMPOSING_TIMEOUT);
    }

    private void onSendIscomposingTimeout() {
        ImSession imSession = this.mImSession;
        if (imSession.mIsComposing) {
            imSession.logi("SEND_ISCOMPOSING_TIMEOUT, sending mIsComposing=false");
            Object rawHandle = this.mImSession.getRawHandle();
            ImSession imSession2 = this.mImSession;
            this.mImSession.mImsService.sendComposingNotification(new ImSendComposingParams(rawHandle, false, imSession2.mComposingNotificationInterval, imSession2.getUserAlias()));
            this.mImSession.mIsComposing = false;
        }
        this.mImSession.removeMessages(ImSessionEvent.SEND_ISCOMPOSING_REFRESH);
    }

    private void onSendIscomposingRefresh() {
        ImSession imSession = this.mImSession;
        if (imSession.mIsComposing) {
            imSession.logi("SEND_ISCOMPOSING_REFRESH, sending mIsComposing=true");
            Object rawHandle = this.mImSession.getRawHandle();
            ImSession imSession2 = this.mImSession;
            this.mImSession.mImsService.sendComposingNotification(new ImSendComposingParams(rawHandle, true, imSession2.mComposingNotificationInterval, imSession2.getUserAlias()));
            ImSession imSession3 = this.mImSession;
            imSession3.sendMessageDelayed(imSession3.obtainMessage(ImSessionEvent.SEND_ISCOMPOSING_REFRESH, Boolean.TRUE), this.mImSession.mComposingNotificationInterval * 1000);
        }
    }

    private void onReceiveIscomposingTimeout() {
        for (ImsUri imsUri : this.mImSession.getComposingActiveUris()) {
            ImSession imSession = this.mImSession;
            imSession.mListener.onComposingReceived(imSession, imsUri, null, false, imSession.mComposingNotificationInterval);
        }
        this.mImSession.getComposingActiveUris().clear();
    }

    private void onAddParticipantsDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        ImError imError = (ImError) asyncResult.result;
        List<ImsUri> list = (List) asyncResult.userObj;
        if (imError == ImError.SUCCESS) {
            this.mImSession.onAddParticipantsSucceeded(list);
        } else if (imError == ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED) {
            this.mImSession.onAddParticipantsFailed(list, ImErrorReason.FORBIDDEN_SERVICE_NOT_AUTHORIZED);
        } else {
            this.mImSession.onAddParticipantsFailed(list, ImErrorReason.ENGINE_ERROR);
        }
    }

    private void onRemoveParticipantsDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        ImError imError = (ImError) asyncResult.result;
        List<ImsUri> list = (List) asyncResult.userObj;
        if (imError == ImError.SUCCESS) {
            onRemoveParticipantsSucceeded(list);
        } else if (imError == ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED) {
            this.mImSession.onRemoveParticipantsFailed(list, ImErrorReason.FORBIDDEN_SERVICE_NOT_AUTHORIZED);
        } else {
            this.mImSession.onRemoveParticipantsFailed(list, ImErrorReason.ENGINE_ERROR);
        }
    }

    private void onChangeGCLeader(Message message) {
        Message obtainMessage = this.mImSession.obtainMessage(ImSessionEvent.CHANGE_GC_LEADER_DONE, message.obj);
        ChangeGroupChatLeaderParams changeGroupChatLeaderParams = new ChangeGroupChatLeaderParams(this.mImSession.getRawHandle(), (List) message.obj, obtainMessage);
        this.mImSession.addInProgressRequestCallback(obtainMessage);
        this.mImSession.mImsService.changeGroupChatLeader(changeGroupChatLeaderParams);
    }

    private void onChangeGCLeaderDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        ImError imError = (ImError) asyncResult.result;
        List<ImsUri> list = (List) asyncResult.userObj;
        this.mImSession.removeInProgressRequestCallback(message);
        if (imError == ImError.SUCCESS) {
            onChangeGroupChatLeaderSucceeded(list);
        } else {
            this.mImSession.onChangeGroupChatLeaderFailed(list, ImErrorReason.ENGINE_ERROR);
        }
    }

    private void onChangeGCSubject(Message message) {
        this.mImSession.mImsService.changeGroupChatSubject(new ChangeGroupChatSubjectParams(this.mImSession.getRawHandle(), (String) message.obj, this.mImSession.obtainMessage(ImSessionEvent.CHANGE_GC_SUBJECT_DONE, message.obj)));
    }

    private void onChangeGCSubjectDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        ImError imError = (ImError) asyncResult.result;
        String str = (String) asyncResult.userObj;
        if (imError == ImError.SUCCESS) {
            onChangeGroupChatSubjectSucceeded(str);
        } else {
            this.mImSession.onChangeGroupChatSubjectFailed(str, ImErrorReason.ENGINE_ERROR);
        }
    }

    private void onChangeGCIconDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        ImError imError = (ImError) asyncResult.result;
        String fileNameFromPath = FileUtils.getFileNameFromPath((String) asyncResult.userObj);
        if (imError == ImError.SUCCESS) {
            onChangeGroupChatIconSuccess(fileNameFromPath);
        } else {
            this.mImSession.onChangeGroupChatIconFailed(fileNameFromPath, ImErrorReason.ENGINE_ERROR);
        }
    }

    private void onChangeGCAlias(Message message) {
        this.mImSession.mImsService.changeGroupAlias(new ChangeGroupAliasParams(this.mImSession.getRawHandle(), (String) message.obj, this.mImSession.obtainMessage(ImSessionEvent.CHANGE_GROUP_ALIAS_DONE, message.obj)));
    }

    private void onChangeGCAliasDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        ImError imError = (ImError) asyncResult.result;
        String str = (String) asyncResult.userObj;
        if (imError == ImError.SUCCESS) {
            onChangeGroupAliasSucceeded(str);
        } else {
            this.mImSession.onChangeGroupAliasFailed(str, ImErrorReason.ENGINE_ERROR);
        }
    }

    private void onAttachFile(FtMessage ftMessage) {
        if (this.mImSession.isGroupChat() && (ftMessage instanceof FtMsrpMessage)) {
            if (this.mImSession.isBroadcastMsg(ftMessage)) {
                ((FtMsrpMessage) ftMessage).setConferenceUri(null);
                this.mImSession.logi("setConferenceUri null");
            } else {
                ((FtMsrpMessage) ftMessage).setConferenceUri(this.mImSession.getSessionUri());
                this.mImSession.logi("setConferenceUri");
            }
        }
        if (ftMessage.isResuming()) {
            ftMessage.sendFile();
        } else {
            ftMessage.attachFile(true);
        }
    }

    private void onSendFile(FtMessage ftMessage) {
        if (this.mImSession.isGroupChat() && (ftMessage instanceof FtMsrpMessage) && ftMessage.isConferenceUriChanged()) {
            ((FtMsrpMessage) ftMessage).setConferenceUri(this.mImSession.getSessionUri());
        }
        ftMessage.sendFile();
    }

    private void onSessionTimeoutWithoutActivity() {
        this.mImSession.logi("in SESSION_TIMEOUT_WITHOUT_ACTIVITY event. closed session");
        this.mImSession.setIsTimerExpired(true);
        this.mImSession.closeSession();
    }

    private void onProcessIncomingSession(ImIncomingSessionEvent imIncomingSessionEvent) {
        this.mImSession.logi("race condition : mRawHandle=" + imIncomingSessionEvent.mRawHandle);
        IMSLog.c(LogClass.IM_INCOMING_SESSION_ERR, " race : " + imIncomingSessionEvent.mRawHandle);
        if (this.mImSession.isVoluntaryDeparture()) {
            this.mImSession.leaveSessionWithReject(imIncomingSessionEvent.mRawHandle);
            return;
        }
        if (!this.mImSession.isGroupChat()) {
            ImSession imSession = this.mImSession;
            imSession.mClosedState.handleCloseSession(imSession.getRawHandle(), ImSessionStopReason.INVOLUNTARILY);
        }
        ImSessionInfo addImSessionInfo = this.mImSession.addImSessionInfo(imIncomingSessionEvent, ImSessionInfo.ImSessionState.ACCEPTING);
        if (this.mImSession.mEstablishedImSessionInfo.isEmpty()) {
            this.mImSession.updateSessionInfo(addImSessionInfo);
        }
        this.mImSession.handleAcceptSession(addImSessionInfo);
        this.mImSession.onIncomingSessionProcessed(imIncomingSessionEvent.mReceivedMessage, false);
        this.mImSession.transitionToProperState();
        this.mImSession.releaseWakeLock(imIncomingSessionEvent.mRawHandle);
    }
}
