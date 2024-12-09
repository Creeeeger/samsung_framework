package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import com.gsma.services.rcs.IRcsServiceRegistrationListener;
import com.gsma.services.rcs.RcsServiceRegistration;
import com.gsma.services.rcs.chat.ChatLog;
import com.gsma.services.rcs.chat.GroupChat;
import com.gsma.services.rcs.chat.IChatMessage;
import com.gsma.services.rcs.chat.IChatService;
import com.gsma.services.rcs.chat.IChatServiceConfiguration;
import com.gsma.services.rcs.chat.IGroupChat;
import com.gsma.services.rcs.chat.IGroupChatListener;
import com.gsma.services.rcs.chat.IOneToOneChat;
import com.gsma.services.rcs.chat.IOneToOneChatListener;
import com.gsma.services.rcs.contact.ContactId;
import com.gsma.services.rcs.groupdelivery.GroupDeliveryInfo;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.ContextExt;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImIconData;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.ImSettings;
import com.sec.internal.constants.ims.servicemodules.im.ImSubjectData;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImErrorReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.helper.os.TelephonyUtilsWrapper;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.csh.event.ICshConstants;
import com.sec.internal.ims.servicemodules.im.ImCache;
import com.sec.internal.ims.servicemodules.im.ImMessage;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.MessageBase;
import com.sec.internal.ims.servicemodules.im.listener.IChatEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IRegistrationStatusBroadcaster;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.OneToOneChatEventBroadcaster;
import com.sec.internal.ims.util.PhoneUtils;
import com.sec.internal.ims.util.RcsSettingsUtils;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public class ChatServiceImpl extends IChatService.Stub implements IChatEventListener, IMessageEventListener, IRegistrationStatusBroadcaster {
    public static final String SUBJECT = "chat";
    private Context mContext;
    private IImModule mImModule;
    private OneToOneChatEventBroadcaster mOneToOneChatEventBroadcaster;
    private static final String LOG_TAG = ChatServiceImpl.class.getSimpleName();
    private static Hashtable<String, IOneToOneChat> mChatSessions = new Hashtable<>();
    private static Hashtable<String, IGroupChat> mGroupChatSessions = new Hashtable<>();
    private RemoteCallbackList<IRcsServiceRegistrationListener> mServiceListeners = new RemoteCallbackList<>();
    private RemoteCallbackList<IGroupChatListener> mGroupChatListeners = new RemoteCallbackList<>();
    private Object mLock = new Object();

    public void clearMessageDeliveryExpiration(List<String> list) throws RemoteException {
    }

    public int getServiceVersion() throws ServerApiException {
        return 2;
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onAddParticipantsFailed(String str, Collection<ImsUri> collection, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onAddParticipantsSucceeded(String str, Collection<ImsUri> collection) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onCancelMessageResponse(String str, String str2, boolean z) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChangeGroupAliasFailed(String str, String str2, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChangeGroupAliasSucceeded(String str, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChangeGroupChatIconFailed(String str, String str2, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChangeGroupChatIconSuccess(String str, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChangeGroupChatLeaderFailed(String str, List<ImsUri> list, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChangeGroupChatLeaderSucceeded(String str, List<ImsUri> list) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChangeGroupChatSubjectFailed(String str, String str2, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChangeGroupChatSubjectSucceeded(String str, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChatEstablished(String str, ImDirection imDirection, ImsUri imsUri, List<String> list, List<String> list2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChatSubjectUpdated(String str, ImSubjectData imSubjectData) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onCreateChatFailed(int i, int i2, ImErrorReason imErrorReason, String str) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onCreateChatSucceeded(ImSession imSession) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onGroupChatIconDeleted(String str) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onGroupChatIconUpdated(String str, ImIconData imIconData) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onGroupChatLeaderUpdated(String str, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onMessageRevokeTimerExpired(String str, Collection<String> collection) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageSendResponse(MessageBase messageBase) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageSendResponseFailed(String str, int i, int i2, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageSendResponseTimeout(MessageBase messageBase) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onParticipantAliasUpdated(String str, ImParticipant imParticipant) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onRemoveParticipantsFailed(String str, Collection<ImsUri> collection, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onRemoveParticipantsSucceeded(String str, Collection<ImsUri> collection) {
    }

    public ChatServiceImpl(Context context, IImModule iImModule) {
        this.mImModule = null;
        this.mOneToOneChatEventBroadcaster = null;
        this.mContext = null;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(iImModule);
        this.mOneToOneChatEventBroadcaster = new OneToOneChatEventBroadcaster(context);
        this.mImModule = iImModule;
        this.mContext = context;
        iImModule.registerChatEventListener(this);
        this.mImModule.registerMessageEventListener(ImConstants.Type.TEXT, this);
        this.mImModule.registerMessageEventListener(ImConstants.Type.LOCATION, this);
    }

    public boolean isServiceRegistered() throws ServerApiException {
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        if (registrationManager == null) {
            return false;
        }
        for (ImsRegistration imsRegistration : registrationManager.getRegistrationInfo()) {
            if (imsRegistration.hasService("im")) {
                return true;
            }
        }
        return false;
    }

    public void addEventListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mServiceListeners.register(iRcsServiceRegistrationListener);
        }
    }

    public void removeEventListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mServiceListeners.unregister(iRcsServiceRegistrationListener);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IRegistrationStatusBroadcaster
    public void notifyRegistrationEvent(boolean z, RcsServiceRegistration.ReasonCode reasonCode) {
        synchronized (this.mLock) {
            int beginBroadcast = this.mServiceListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                if (z) {
                    try {
                        this.mServiceListeners.getBroadcastItem(i).onServiceRegistered();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    this.mServiceListeners.getBroadcastItem(i).onServiceUnregistered(reasonCode);
                }
            }
            this.mServiceListeners.finishBroadcast();
        }
    }

    public void notifyGroupChatStateChanged(String str, GroupChat.State state, GroupChat.ReasonCode reasonCode) {
        String str2 = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("notifyGroupChateStateChanged  chatId = ");
        sb.append(str);
        sb.append(", state = ");
        sb.append(state.name());
        sb.append(",  reasonCode = ");
        sb.append(reasonCode == null ? "" : reasonCode.name());
        Log.i(str2, sb.toString());
        synchronized (this.mLock) {
            if (mGroupChatSessions.get(str) == null) {
                Log.i(str2, "notifyMessageGroupDeliveryInfoChanged: Not group chat, drop out");
                return;
            }
            int beginBroadcast = this.mGroupChatListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                if (reasonCode != null) {
                    try {
                        this.mGroupChatListeners.getBroadcastItem(i).onStateChanged(str, state.ordinal(), reasonCode.ordinal());
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
            this.mGroupChatListeners.finishBroadcast();
        }
    }

    public void notifyGroupMessageStateChanged(MessageBase messageBase, ChatLog.Message.Content.Status status, ChatLog.Message.Content.ReasonCode reasonCode) {
        String str = LOG_TAG;
        Log.i(str, "notifyGroupMessageStateChanged");
        synchronized (this.mLock) {
            String valueOf = String.valueOf(messageBase.getId());
            String chatId = messageBase.getChatId();
            String contentType = messageBase.getContentType();
            ImSession imSession = this.mImModule.getImSession(chatId);
            if (imSession != null && !imSession.isGroupChat()) {
                Log.i(str, "notifyMessageGroupDeliveryInfoChanged: Not group chat, drop out");
                return;
            }
            int beginBroadcast = this.mGroupChatListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mGroupChatListeners.getBroadcastItem(i).onMessageStatusChanged(chatId, contentType, valueOf, status.ordinal(), reasonCode.ordinal());
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mGroupChatListeners.finishBroadcast();
        }
    }

    public void notifyMessageGroupDeliveryInfoChanged(ImMessage imMessage, ImsUri imsUri, GroupDeliveryInfo.Status status, GroupDeliveryInfo.ReasonCode reasonCode) {
        String str = LOG_TAG;
        Log.i(str, "notifyGroupDeliveryInfoChanged");
        synchronized (this.mLock) {
            String chatId = imMessage.getChatId();
            if (this.mImModule.getImSession(chatId) == null) {
                Log.i(str, "notifyMessageGroupDeliveryInfoChanged: Session is null, drop out");
                return;
            }
            String valueOf = String.valueOf(imMessage.getId());
            String contentType = imMessage.getContentType();
            if (imsUri == null) {
                return;
            }
            ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(imsUri.toString()));
            int beginBroadcast = this.mGroupChatListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mGroupChatListeners.getBroadcastItem(i).onMessageGroupDeliveryInfoChanged(chatId, contactId, contentType, valueOf, status.ordinal(), reasonCode.ordinal());
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mGroupChatListeners.finishBroadcast();
        }
    }

    public void notifyGroupParticipantInfoChanged(ImParticipant imParticipant) {
        Log.i(LOG_TAG, "notifyGroupParticipantInfoChanged");
        synchronized (this.mLock) {
            ImParticipant.Status status = imParticipant.getStatus();
            ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(imParticipant.getUri().toString()));
            GroupChat.ParticipantStatus convertParticipantStatus = convertParticipantStatus(status);
            int beginBroadcast = this.mGroupChatListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mGroupChatListeners.getBroadcastItem(i).onParticipantStatusChanged(imParticipant.getChatId(), contactId, convertParticipantStatus);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mGroupChatListeners.finishBroadcast();
        }
    }

    public void notifyGroupChatDeleted(List<String> list) {
        Log.i(LOG_TAG, "notifyGroupChatDeleted");
        synchronized (this.mLock) {
            int beginBroadcast = this.mGroupChatListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mGroupChatListeners.getBroadcastItem(i).onDeleted(list);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mGroupChatListeners.finishBroadcast();
        }
    }

    private void notifyMessageStateChanged(ContactId contactId, MessageBase messageBase, ChatLog.Message.Content.Status status, ChatLog.Message.Content.ReasonCode reasonCode) {
        ImSession imSession = this.mImModule.getImSession(messageBase.getChatId());
        if (!(imSession != null && imSession.isGroupChat())) {
            this.mOneToOneChatEventBroadcaster.broadcastMessageStatusChanged(contactId, messageBase.getContentType(), String.valueOf(messageBase.getId()), status, reasonCode);
        } else {
            notifyGroupMessageStateChanged(messageBase, status, reasonCode);
        }
    }

    private GroupChat.ParticipantStatus convertParticipantStatus(ImParticipant.Status status) {
        GroupChat.ParticipantStatus participantStatus = GroupChat.ParticipantStatus.DISCONNECTED;
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[status.ordinal()]) {
            case 1:
                return GroupChat.ParticipantStatus.CONNECTED;
            case 2:
                return GroupChat.ParticipantStatus.INVITED;
            case 3:
            case 4:
                return GroupChat.ParticipantStatus.CONNECTED;
            case 5:
                return GroupChat.ParticipantStatus.DECLINED;
            case 6:
                return GroupChat.ParticipantStatus.DEPARTED;
            case 7:
                return GroupChat.ParticipantStatus.TIMEOUT;
            case 8:
                return GroupChat.ParticipantStatus.INVITING;
            default:
                return GroupChat.ParticipantStatus.DISCONNECTED;
        }
    }

    public IOneToOneChat getOneToOneChat(ContactId contactId) throws ServerApiException {
        List<String> participantsString;
        try {
            String str = LOG_TAG;
            Log.d(str, "start : openSingleChat()");
            String extractNumberFromUri = PhoneUtils.extractNumberFromUri(contactId.toString());
            ImCache imCache = ImCache.getInstance();
            ChatImpl chatSession = getChatSession(extractNumberFromUri);
            ImSession imSession = null;
            if (chatSession == null) {
                Iterator<ImSession> it = imCache.getAllImSessions().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ImSession next = it.next();
                    if (!next.isGroupChat() && (participantsString = next.getParticipantsString()) != null && participantsString.size() != 0 && PhoneUtils.extractNumberFromUri(participantsString.get(0)).equals(extractNumberFromUri)) {
                        imSession = next;
                        break;
                    }
                }
            } else {
                ImSession coreSession = chatSession.getCoreSession();
                if (coreSession != null) {
                    Log.d(str, "Core chat session already exist: " + coreSession.getChatId());
                    if (imCache.getImSession(coreSession.getChatId()) != null) {
                        return chatSession;
                    }
                    removeChatSession(extractNumberFromUri);
                } else {
                    removeChatSession(extractNumberFromUri);
                }
            }
            if (imSession == null) {
                Log.d(LOG_TAG, "Create a new chat session with " + IMSLog.checker(extractNumberFromUri));
                ArrayList arrayList = new ArrayList();
                arrayList.add(ImsUri.parse("tel:" + contactId.toString()));
                try {
                    try {
                        imSession = this.mImModule.createChat(arrayList, SUBJECT, MIMEContentType.PLAIN_TEXT, -1, null).get();
                    } catch (ExecutionException e) {
                        e.printStackTrace();
                    }
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            if (imSession == null) {
                Log.e(LOG_TAG, "getOneToOneChat: session is error...");
                throw new ServerApiException("session is error...");
            }
            ChatImpl chatImpl = new ChatImpl(extractNumberFromUri, imSession, this.mImModule);
            addChatSession(extractNumberFromUri, chatImpl);
            return chatImpl;
        } catch (RemoteException e3) {
            throw new ServerApiException(e3.getMessage());
        }
    }

    public static void addChatSession(String str, ChatImpl chatImpl) {
        mChatSessions.put(PhoneUtils.extractNumberFromUri(str), chatImpl);
    }

    protected static IOneToOneChat getChatSession(String str) {
        return mChatSessions.get(PhoneUtils.extractNumberFromUri(str));
    }

    protected static void removeChatSession(String str) {
        String extractNumberFromUri = PhoneUtils.extractNumberFromUri(str);
        Hashtable<String, IOneToOneChat> hashtable = mChatSessions;
        if (hashtable == null || str == null) {
            return;
        }
        hashtable.remove(extractNumberFromUri);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChatUpdateState(String str, ImDirection imDirection, ImSession.SessionState sessionState) {
        ImSessionClosedReason imSessionClosedReason = ImSessionClosedReason.NONE;
        GroupChat.State translateState = translateState(sessionState, imDirection, imSessionClosedReason);
        if (translateState == null) {
            return;
        }
        notifyGroupChatStateChanged(str, translateState, translateReasonCode(imSessionClosedReason));
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChatClosed(String str, ImDirection imDirection, ImSessionClosedReason imSessionClosedReason) {
        GroupChat.State translateState = translateState(ImSession.SessionState.CLOSED, imDirection, imSessionClosedReason);
        if (translateState == null) {
            return;
        }
        notifyGroupChatStateChanged(str, translateState, translateReasonCode(imSessionClosedReason));
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onChatInvitationReceived(ImSession imSession) {
        String str = LOG_TAG;
        Log.d(str, "start : onChatInvitationReceived()");
        if (imSession.isGroupChat()) {
            addGroupChatSession(new GroupChatImpl(imSession));
            Intent intent = new Intent("com.gsma.services.rcs.chat.action.NEW_GROUP_CHAT");
            intent.putExtra("chatId", imSession.getChatId());
            UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi())));
            if (subscriptionUserHandle != null) {
                IntentUtil.sendBroadcast(this.mContext, intent, subscriptionUserHandle, "com.gsma.services.permission.RCS");
            } else {
                IntentUtil.sendBroadcast(this.mContext, intent, ContextExt.CURRENT_OR_SELF, "com.gsma.services.permission.RCS");
            }
        }
        if (imSession.getParticipantsString().size() != 1) {
            Log.d(str, "session.getParticipantsString().size() != 1");
            return;
        }
        String extractNumberFromUri = PhoneUtils.extractNumberFromUri(imSession.getParticipantsString().get(0));
        if (mChatSessions.containsKey(extractNumberFromUri)) {
            return;
        }
        addChatSession(extractNumberFromUri, new ChatImpl(extractNumberFromUri, imSession, this.mImModule));
    }

    public void receiveGroupChatMessage(MessageBase messageBase) {
        Log.d(LOG_TAG, "start : receiveGroupChatMessage()");
        Intent intent = new Intent("com.gsma.services.rcs.chat.action.NEW_GROUP_CHAT_MESSAGE");
        intent.putExtra("messageId", Integer.toString(messageBase.getId()));
        intent.putExtra("mimeType", messageBase.getContentType());
        UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mImModule.getPhoneIdByMessageId(messageBase.getId())));
        if (subscriptionUserHandle != null) {
            IntentUtil.sendBroadcast(this.mContext, intent, subscriptionUserHandle, "com.gsma.services.permission.RCS");
        } else {
            IntentUtil.sendBroadcast(this.mContext, intent, ContextExt.CURRENT_OR_SELF, "com.gsma.services.permission.RCS");
        }
    }

    protected static void addGroupChatSession(GroupChatImpl groupChatImpl) {
        mGroupChatSessions.put(groupChatImpl.getChatId(), groupChatImpl);
    }

    protected static void removeGroupChatSession(String str) {
        mGroupChatSessions.remove(str);
    }

    public boolean isAllowedToInitiateGroupChat() throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Capabilities ownCapabilities = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule().getOwnCapabilities();
            if (ownCapabilities != null) {
                if (ownCapabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT)) {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    return true;
                }
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public boolean canInitiateGroupChat(ContactId contactId) throws RemoteException {
        Capabilities capabilities;
        return (contactId == null || (capabilities = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule().getCapabilities(contactId.toString(), (long) Capabilities.FEATURE_SF_GROUP_CHAT, 0)) == null || !capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT)) ? false : true;
    }

    public IGroupChat initiateGroupChat(List<ContactId> list, String str) throws ServerApiException {
        Log.d(LOG_TAG, "start : initiateGroupChat()");
        ArrayList arrayList = new ArrayList();
        Iterator<ContactId> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ImsUri.parse("tel:" + it.next().toString()));
        }
        try {
            ImSession imSession = this.mImModule.createChat(arrayList, str, MIMEContentType.PLAIN_TEXT, -1, null).get();
            if (imSession == null) {
                Log.e(LOG_TAG, "initiateGroupChat: session is error...");
                throw new ServerApiException("session is error...");
            }
            GroupChatImpl groupChatImpl = new GroupChatImpl(imSession.getChatId());
            addGroupChatSession(groupChatImpl);
            return groupChatImpl;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public IGroupChat getGroupChat(String str) throws ServerApiException {
        return mGroupChatSessions.get(str);
    }

    public void addOneToOneChatEventListener(IOneToOneChatListener iOneToOneChatListener) throws RemoteException {
        synchronized (this.mLock) {
            this.mOneToOneChatEventBroadcaster.addOneToOneChatEventListener(iOneToOneChatListener);
        }
    }

    public void removeOneToOneChatEventListener(IOneToOneChatListener iOneToOneChatListener) throws RemoteException {
        synchronized (this.mLock) {
            this.mOneToOneChatEventBroadcaster.removeOneToOneChatEventListener(iOneToOneChatListener);
        }
    }

    public void addGroupChatEventListener(IGroupChatListener iGroupChatListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mGroupChatListeners.register(iGroupChatListener);
        }
    }

    public void removeGroupChatEventListener(IGroupChatListener iGroupChatListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mGroupChatListeners.unregister(iGroupChatListener);
        }
    }

    public IChatServiceConfiguration getConfiguration() throws ServerApiException {
        return new ChatServiceConfigurationImpl(this.mImModule.getImConfig());
    }

    public void markMessageAsRead(String str) throws ServerApiException {
        Log.d(LOG_TAG, "start : markMessageAsRead()");
        ImMessage imMessage = ImCache.getInstance().getImMessage(Integer.valueOf(str).intValue());
        if (imMessage == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        this.mImModule.readMessages(imMessage.getChatId(), arrayList);
        imMessage.updateNotificationStatus(NotificationStatus.DELIVERED);
        ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(getRemoteUserByChatId(imMessage.getChatId())));
        synchronized (this.mLock) {
            notifyMessageStateChanged(contactId, imMessage, ChatLog.Message.Content.Status.DISPLAYED, ChatLog.Message.Content.ReasonCode.UNSPECIFIED);
        }
    }

    public void notifyChangeForDelete() {
        this.mContext.getContentResolver().notifyChange(ChatLog.Message.CONTENT_URI, null);
    }

    public void deleteOneToOneChats() throws RemoteException {
        Log.d(LOG_TAG, "start : deleteOneToOneChats()");
        Map<String, Set<String>> messages = getMessages(false, "is_filetransfer != 1");
        if (messages == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Set<String>> entry : messages.entrySet()) {
            arrayList.add(entry.getKey());
            String remoteUserByChatId = getRemoteUserByChatId(entry.getKey());
            synchronized (this.mLock) {
                this.mOneToOneChatEventBroadcaster.broadcastMessageDeleted(PhoneUtils.extractNumberFromUri(remoteUserByChatId), entry.getValue());
            }
        }
        this.mImModule.deleteChats(arrayList, false);
        mChatSessions.clear();
        notifyChangeForDelete();
    }

    public void deleteGroupChats() throws RemoteException {
        Log.d(LOG_TAG, "start : delete All GroupChats()");
        mGroupChatSessions.clear();
        ArrayList arrayList = new ArrayList();
        for (ImSession imSession : ImCache.getInstance().getAllImSessions()) {
            if (imSession.isGroupChat()) {
                arrayList.add(imSession.getChatId());
            }
        }
        this.mImModule.deleteChats(arrayList, false);
        notifyGroupChatDeleted(arrayList);
        notifyChangeForDelete();
    }

    public void deleteOneToOneChat(ContactId contactId) throws RemoteException {
        String str = LOG_TAG;
        Log.d(str, "start : deleteOneToOneChat()");
        String str2 = "tel:" + PhoneUtils.extractNumberFromUri(contactId.toString());
        HashSet hashSet = new HashSet();
        hashSet.add(ImsUri.parse(str2));
        ImSession imSessionByParticipants = ImCache.getInstance().getImSessionByParticipants(hashSet, ChatData.ChatType.ONE_TO_ONE_CHAT, "");
        if (imSessionByParticipants == null) {
            Log.e(str, "there is no session for ft");
            return;
        }
        Map<String, Set<String>> messages = getMessages(false, "is_filetransfer != 1 and chat_id = '" + imSessionByParticipants.getChatId() + "'");
        if (messages == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Set<String>> entry : messages.entrySet()) {
            arrayList.add(entry.getKey());
            String remoteUserByChatId = getRemoteUserByChatId(entry.getKey());
            synchronized (this.mLock) {
                this.mOneToOneChatEventBroadcaster.broadcastMessageDeleted(PhoneUtils.extractNumberFromUri(remoteUserByChatId), entry.getValue());
            }
        }
        this.mImModule.deleteChats(arrayList, false);
        removeChatSession(PhoneUtils.extractNumberFromUri(contactId.toString()));
        notifyChangeForDelete();
    }

    public void deleteGroupChat(String str) throws RemoteException {
        Log.d(LOG_TAG, "start : deleteGroupChat()");
        mGroupChatSessions.remove(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        this.mImModule.deleteChats(arrayList, false);
        notifyGroupChatDeleted(arrayList);
        notifyChangeForDelete();
    }

    public void deleteMessage(String str) throws RemoteException {
        IMSLog.s(LOG_TAG, "start : deleteMessage() msgId:" + str);
        Cursor query = this.mContext.getContentResolver().query(Uri.withAppendedPath(ChatLog.Message.CONTENT_URI, str), null, null, null, null);
        if (query != null) {
            try {
                if (query.getCount() != 0) {
                    query.moveToFirst();
                    String string = query.getString(query.getColumnIndex("chat_id"));
                    String string2 = query.getString(query.getColumnIndex(ICshConstants.ShareDatabase.KEY_TARGET_CONTACT));
                    query.close();
                    ImSession imSession = this.mImModule.getImSession(string);
                    boolean z = imSession != null && imSession.isGroupChat();
                    HashSet hashSet = new HashSet();
                    hashSet.add(str);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(str);
                    this.mImModule.deleteMessages(arrayList, false);
                    if (!z) {
                        synchronized (this.mLock) {
                            this.mOneToOneChatEventBroadcaster.broadcastMessageDeleted(new ContactId(PhoneUtils.extractNumberFromUri(string2)).toString(), hashSet);
                        }
                    } else {
                        ArrayList arrayList2 = new ArrayList(hashSet);
                        synchronized (this.mLock) {
                            int beginBroadcast = this.mGroupChatListeners.beginBroadcast();
                            for (int i = 0; i < beginBroadcast; i++) {
                                try {
                                    this.mGroupChatListeners.getBroadcastItem(i).onMessagesDeleted(string, arrayList2);
                                } catch (RemoteException e) {
                                    e.printStackTrace();
                                }
                            }
                            this.mGroupChatListeners.finishBroadcast();
                        }
                    }
                    notifyChangeForDelete();
                    return;
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
    }

    public IChatMessage getChatMessage(String str) throws RemoteException {
        return new ChatMessageImpl(str);
    }

    public void setRespondToDisplayReports(boolean z) throws RemoteException {
        IMSLog.s(LOG_TAG, "start : setRespondToDisplayReports() enable:" + z);
        RcsSettingsUtils rcsSettingsUtils = RcsSettingsUtils.getInstance();
        if (rcsSettingsUtils != null) {
            rcsSettingsUtils.writeBoolean(ImSettings.CHAT_RESPOND_TO_DISPLAY_REPORTS, z);
        }
    }

    public List<String> getUndeliveredMessages(ContactId contactId) throws RemoteException {
        Log.d(LOG_TAG, "start : getUndeliveredMessages()");
        ImsUri parse = ImsUri.parse("tel:" + contactId.toString());
        HashSet hashSet = new HashSet();
        hashSet.add(parse);
        ImSession imSessionByParticipants = ImCache.getInstance().getImSessionByParticipants(hashSet, ChatData.ChatType.ONE_TO_ONE_CHAT, "");
        ArrayList arrayList = new ArrayList();
        if (imSessionByParticipants == null) {
            return arrayList;
        }
        Cursor queryMessages = ImCache.getInstance().queryMessages(new String[]{"_id"}, "chat_id = '" + imSessionByParticipants.getChatId() + "' and notification_status = " + NotificationStatus.NONE.getId() + " and direction = " + ImDirection.OUTGOING.getId() + " and " + ImContract.ChatItem.IS_FILE_TRANSFER + " = 0", null, null);
        if (queryMessages != null) {
            while (queryMessages.moveToNext()) {
                try {
                    arrayList.add(String.valueOf(queryMessages.getInt(0)));
                } catch (Throwable th) {
                    try {
                        queryMessages.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        }
        if (queryMessages != null) {
            queryMessages.close();
        }
        return arrayList;
    }

    public void markUndeliveredMessagesAsProcessed(List<String> list) throws RemoteException {
        Log.d(LOG_TAG, "start : markUndeliveredMessagesAsProcessed()");
        ImCache imCache = ImCache.getInstance();
        for (String str : list) {
            ImMessage imMessage = imCache.getImMessage(Integer.valueOf(str).intValue());
            if (imMessage != null) {
                imMessage.updateStatus(ImConstants.Status.SENT);
                imCache.removeFromPendingList(Integer.valueOf(str).intValue());
            }
        }
    }

    public Map<String, Set<String>> getMessages(boolean z, String str) {
        String str2 = LOG_TAG;
        Log.d(str2, "start : deleteFileTransfers()");
        ImCache imCache = ImCache.getInstance();
        TreeMap treeMap = new TreeMap();
        Cursor queryMessages = imCache.queryMessages(new String[]{"_id", "chat_id"}, str, null, null);
        if (queryMessages != null) {
            try {
                if (queryMessages.getCount() != 0) {
                    while (queryMessages.moveToNext()) {
                        String string = queryMessages.getString(queryMessages.getColumnIndexOrThrow("chat_id"));
                        ImSession imSession = imCache.getImSession(string);
                        if (imSession != null && imSession.isGroupChat() == z) {
                            addRecord(string, String.valueOf(queryMessages.getInt(queryMessages.getColumnIndexOrThrow("_id"))), treeMap);
                        }
                    }
                    queryMessages.close();
                    return treeMap;
                }
            } catch (Throwable th) {
                if (queryMessages != null) {
                    try {
                        queryMessages.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        Log.e(str2, "deleteOneToOneFileTransfers: Message not found.");
        if (queryMessages != null) {
            queryMessages.close();
        }
        return null;
    }

    private void addRecord(String str, String str2, Map<String, Set<String>> map) {
        Set<String> set = map.get(str);
        if (set == null) {
            HashSet hashSet = new HashSet();
            hashSet.add(str2);
            map.put(str, hashSet);
            return;
        }
        set.add(str2);
    }

    public void handleReceiveMessage(MessageBase messageBase, boolean z) {
        ImSession imSession = this.mImModule.getImSession(messageBase.getChatId());
        if (imSession != null) {
            boolean isGroupChat = imSession.isGroupChat();
            synchronized (this.mLock) {
                try {
                    if (isGroupChat) {
                        receiveGroupChatMessage(messageBase);
                    } else {
                        if (z) {
                            return;
                        }
                        String imsUri = messageBase.getRemoteUri().toString();
                        ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(imsUri));
                        UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mImModule.getPhoneIdByMessageId(messageBase.getId())));
                        if (subscriptionUserHandle == null) {
                            subscriptionUserHandle = ContextExt.CURRENT_OR_SELF;
                        }
                        this.mOneToOneChatEventBroadcaster.broadcastMessageStatusChanged(contactId, messageBase.getContentType(), String.valueOf(messageBase.getId()), ChatLog.Message.Content.Status.RECEIVED, ChatLog.Message.Content.ReasonCode.UNSPECIFIED);
                        this.mOneToOneChatEventBroadcaster.broadcastMessageReceived(String.valueOf(messageBase.getId()), messageBase.getContentType(), imsUri, subscriptionUserHandle);
                    }
                } finally {
                }
            }
        }
    }

    public GroupChat.State translateState(ImSession.SessionState sessionState, ImDirection imDirection, ImSessionClosedReason imSessionClosedReason) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[sessionState.ordinal()];
        if (i == 1) {
            if (imDirection == ImDirection.INCOMING) {
                return GroupChat.State.INVITED;
            }
            if (imDirection == ImDirection.OUTGOING) {
                return GroupChat.State.INITIATING;
            }
            return null;
        }
        if (i == 2) {
            if (imDirection == ImDirection.INCOMING) {
                return GroupChat.State.ACCEPTING;
            }
            return null;
        }
        if (i == 3) {
            return GroupChat.State.STARTED;
        }
        if ((i == 4 || i == 5) && imSessionClosedReason != ImSessionClosedReason.NONE) {
            return GroupChat.State.ABORTED;
        }
        return null;
    }

    /* renamed from: com.sec.internal.ims.servicemodules.tapi.service.api.ChatServiceImpl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$ImSessionClosedReason;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState;

        static {
            int[] iArr = new int[ImSessionClosedReason.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$ImSessionClosedReason = iArr;
            try {
                iArr[ImSessionClosedReason.CLOSED_BY_REMOTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$ImSessionClosedReason[ImSessionClosedReason.CLOSED_BY_LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ImSession.SessionState.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState = iArr2;
            try {
                iArr2[ImSession.SessionState.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.STARTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.ESTABLISHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.CLOSING.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState[ImSession.SessionState.CLOSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[ImParticipant.Status.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status = iArr3;
            try {
                iArr3[ImParticipant.Status.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.INVITED.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.ACCEPTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.DECLINED.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.GONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.TIMEOUT.ordinal()] = 7;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImParticipant$Status[ImParticipant.Status.TO_INVITE.ordinal()] = 8;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public GroupChat.ReasonCode translateReasonCode(ImSessionClosedReason imSessionClosedReason) {
        GroupChat.ReasonCode reasonCode = GroupChat.ReasonCode.UNSPECIFIED;
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$ImSessionClosedReason[imSessionClosedReason.ordinal()];
        if (i == 1) {
            return GroupChat.ReasonCode.ABORTED_BY_REMOTE;
        }
        if (i == 2) {
            return GroupChat.ReasonCode.ABORTED_BY_USER;
        }
        return GroupChat.ReasonCode.UNSPECIFIED;
    }

    public static ChatLog.Message.Content.Status translateStatus(ImConstants.Status status) {
        ChatLog.Message.Content.Status status2 = ChatLog.Message.Content.Status.DISPLAY_REPORT_REQUESTED;
        if (ImConstants.Status.SENDING == status) {
            return ChatLog.Message.Content.Status.SENDING;
        }
        if (ImConstants.Status.SENT == status) {
            return ChatLog.Message.Content.Status.SENT;
        }
        if (ImConstants.Status.FAILED == status) {
            return ChatLog.Message.Content.Status.FAILED;
        }
        if (ImConstants.Status.TO_SEND == status) {
            return ChatLog.Message.Content.Status.QUEUED;
        }
        return ImConstants.Status.READ == status ? ChatLog.Message.Content.Status.DISPLAYED : status2;
    }

    public String getRemoteUserByChatId(String str) {
        List<String> participantsString;
        ImSession imSession = ImCache.getInstance().getImSession(str);
        return (imSession == null || (participantsString = imSession.getParticipantsString()) == null || participantsString.size() <= 0) ? "" : participantsString.get(0);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onComposingNotificationReceived(String str, boolean z, ImsUri imsUri, String str2, boolean z2, int i) {
        ContactId contactId;
        Log.i(LOG_TAG, "onComposingNotificationReceived");
        synchronized (this.mLock) {
            if (imsUri != null) {
                try {
                    contactId = new ContactId(PhoneUtils.extractNumberFromUri(imsUri.toString()));
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                contactId = null;
            }
            if (z) {
                int beginBroadcast = this.mGroupChatListeners.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    try {
                        this.mGroupChatListeners.getBroadcastItem(i2).onComposingEvent(str, contactId, z2);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                this.mGroupChatListeners.finishBroadcast();
            } else {
                this.mOneToOneChatEventBroadcaster.broadcastComposingEvent(contactId, z2);
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onParticipantsAdded(ImSession imSession, Collection<ImParticipant> collection) {
        Iterator<ImParticipant> it = collection.iterator();
        while (it.hasNext()) {
            notifyGroupParticipantInfoChanged(it.next());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onParticipantsJoined(ImSession imSession, Collection<ImParticipant> collection) {
        Iterator<ImParticipant> it = collection.iterator();
        while (it.hasNext()) {
            notifyGroupParticipantInfoChanged(it.next());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IChatEventListener
    public void onParticipantsLeft(ImSession imSession, Collection<ImParticipant> collection) {
        Iterator<ImParticipant> it = collection.iterator();
        while (it.hasNext()) {
            notifyGroupParticipantInfoChanged(it.next());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageReceived(MessageBase messageBase, ImSession imSession) {
        if (imSession.isGroupChat()) {
            receiveGroupChatMessage(messageBase);
            return;
        }
        String imsUri = messageBase.getRemoteUri().toString();
        ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(imsUri));
        UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi())));
        if (subscriptionUserHandle == null) {
            subscriptionUserHandle = ContextExt.CURRENT_OR_SELF;
        }
        this.mOneToOneChatEventBroadcaster.broadcastMessageStatusChanged(contactId, messageBase.getContentType(), String.valueOf(messageBase.getId()), ChatLog.Message.Content.Status.RECEIVED, ChatLog.Message.Content.ReasonCode.UNSPECIFIED);
        this.mOneToOneChatEventBroadcaster.broadcastMessageReceived(String.valueOf(messageBase.getId()), messageBase.getContentType(), imsUri, subscriptionUserHandle);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageSendingSucceeded(MessageBase messageBase) {
        Log.d(LOG_TAG, "onMessageSendingSucceeded():");
        notifyMessageStateChanged(new ContactId(PhoneUtils.extractNumberFromUri(getRemoteUserByChatId(messageBase.getChatId()))), messageBase, ChatLog.Message.Content.Status.SENT, ChatLog.Message.Content.ReasonCode.UNSPECIFIED);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener, com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onMessageSendingFailed(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse, Result result) {
        Log.d(LOG_TAG, "onMessageSendingFailed():");
        notifyMessageStateChanged(new ContactId(PhoneUtils.extractNumberFromUri(getRemoteUserByChatId(messageBase.getChatId()))), messageBase, ChatLog.Message.Content.Status.FAILED, ChatLog.Message.Content.ReasonCode.FAILED_SEND);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onImdnNotificationReceived(MessageBase messageBase, ImsUri imsUri, NotificationStatus notificationStatus, boolean z) {
        ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(getRemoteUserByChatId(messageBase.getChatId())));
        Log.d(LOG_TAG, "onImdnNotificationReceived()");
        if (NotificationStatus.DELIVERED == notificationStatus) {
            if (!z) {
                this.mOneToOneChatEventBroadcaster.broadcastMessageStatusChanged(contactId, messageBase.getContentType(), String.valueOf(messageBase.getId()), ChatLog.Message.Content.Status.DELIVERED, ChatLog.Message.Content.ReasonCode.UNSPECIFIED);
                return;
            } else {
                notifyMessageGroupDeliveryInfoChanged((ImMessage) messageBase, imsUri, GroupDeliveryInfo.Status.DELIVERED, GroupDeliveryInfo.ReasonCode.UNSPECIFIED);
                return;
            }
        }
        if (NotificationStatus.DISPLAYED == notificationStatus) {
            if (!z) {
                this.mOneToOneChatEventBroadcaster.broadcastMessageStatusChanged(contactId, messageBase.getContentType(), String.valueOf(messageBase.getId()), ChatLog.Message.Content.Status.DISPLAYED, ChatLog.Message.Content.ReasonCode.UNSPECIFIED);
            } else {
                notifyMessageGroupDeliveryInfoChanged((ImMessage) messageBase, imsUri, GroupDeliveryInfo.Status.DISPLAYED, GroupDeliveryInfo.ReasonCode.UNSPECIFIED);
            }
        }
    }
}
