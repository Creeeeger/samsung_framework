package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.net.Network;
import android.os.Message;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ChatMode;
import com.sec.internal.constants.ims.servicemodules.im.ImCacheAction;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImIconData;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.ImSubjectData;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.SupportedFeature;
import com.sec.internal.constants.ims.servicemodules.im.event.FtIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImComposingEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingMessageEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionConferenceInfoUpdateEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionEstablishedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SendImdnFailedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SendMessageFailedEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendSlmMessageParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImErrorReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionStopReason;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.constants.ims.servicemodules.im.result.SendMessageResult;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.IState;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.PublicAccountUri;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import com.sec.internal.ims.servicemodules.im.data.info.ImSessionInfo;
import com.sec.internal.ims.servicemodules.im.interfaces.IGetter;
import com.sec.internal.ims.servicemodules.im.listener.ImSessionListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.ims.util.StringIdGenerator;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class ImSession extends StateMachine {
    protected static final long CLOSE_SESSION_TIMEOUT_TIMER = 180000;
    private static final long DEFAULT_WAKE_LOCK_TIMEOUT = 3000;
    protected static final int DEFER_WITHOUT_STARTSESSION = 0;
    protected static final int DEFER_WITH_STARTSESSION = 1;
    private static final String LOG_TAG = "ImSession";
    private static final int MESSAGE_REVOKE_OPERATION_TIME = 10000;
    private static final int REQUEST_THRESHOLD_TIME = 5000;
    private static final int SEND_MESSAGE_THRESHOLD_TIME = 300;
    protected final List<String> mAcceptTypes;
    protected final List<String> mAcceptWrappedTypes;
    private final ChatData mChatData;
    private ChatFallbackMech mChatFallbackMech;
    private final String mChatId;
    protected ImSessionClosedEvent mClosedEvent;
    protected ImSessionClosedReason mClosedReason;
    protected final ImSessionClosedState mClosedState;
    private final ImSessionClosingState mClosingState;
    private final Set<ImsUri> mComposingActiveUris;
    protected int mComposingNotificationInterval;
    private ConferenceInfoUpdater mConferenceInfoUpdater;
    protected final ImConfig mConfig;
    protected final List<MessageBase> mCurrentCanceledMessages;
    protected final List<MessageBase> mCurrentMessages;
    private final ImSessionDefaultState mDefaultState;
    private final Map<IState, SessionState> mDetailedStateMap;
    private String mDeviceId;
    protected final ArrayList<ImSessionInfo> mEstablishedImSessionInfo;
    private final ImSessionEstablishedState mEstablishedState;
    protected final IGetter mGetter;
    protected final List<ImSessionInfo> mImSessionInfoList;
    protected final IImServiceInterface mImsService;
    protected Set<Message> mInProgressRequestCallbacks;
    private String mInReplyToContributionId;
    protected List<ImIncomingMessageEvent> mIncomingMessageEvents;
    private final ImSessionInitialState mInitialState;
    private ImsUri mInitiator;
    private String mInitiatorAlias;
    protected boolean mIsBlockedIncomingSession;
    protected boolean mIsComposing;
    protected boolean mIsOfflineGCInvitation;
    protected boolean mIsRevokeTimerRunning;
    private boolean mIsTimerExpired;
    private boolean mIsTokenUsed;
    protected String mLeaderParticipant;
    protected final ImSessionListener mListener;
    protected final ArrayDeque<MessageBase> mMessagesToSendDisplayNotification;
    private final Map<String, Integer> mNeedToRevokeMessages;
    private String mOwnImsi;
    protected final HashMap<ImsUri, ImParticipant> mParticipants;
    protected List<Message> mPendingEvents;
    protected final ArrayList<FtMessage> mPendingFileTransfer;
    private int mPhoneId;
    protected final ArrayList<FtMessage> mProcessingFileTransfer;
    private Object mRawHandle;
    protected List<String> mRemoteAcceptTypes;
    protected List<String> mRemoteAcceptWrappedTypes;
    private String mRequestMessageId;
    protected int mRetryTimer;
    private String mSdpContentType;
    private int mSendMessageResponseTimeout;
    private final String mServiceId;
    private final ISlmServiceInterface mSlmService;
    protected final ImSessionStartingState mStartingState;
    protected EnumSet<SupportedFeature> mSupportedFeatures;
    protected boolean mSwapUriType;
    private int mThreadId;
    protected UriGenerator mUriGenerator;
    private final PowerManager.WakeLock mWakeLock;

    protected enum ChatFallbackMech {
        NONE,
        MESSAGE_REVOCATION,
        NETWORK_INTERWORKING
    }

    public enum SessionState {
        INITIAL,
        STARTING,
        ESTABLISHED,
        CLOSING,
        CLOSED,
        FAILED_MEDIA
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    protected ImSession(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r21v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:238)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:223)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:168)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:401)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */

    protected void acquireWakeLock(Object obj) {
        logi("acquireWakeLock: " + getChatId() + " : " + obj);
        this.mWakeLock.acquire(3000L);
    }

    protected void releaseWakeLock(Object obj) {
        if (this.mWakeLock.isHeld()) {
            logi("releaseWakeLock: " + getChatId() + " : " + obj);
            this.mWakeLock.release();
        }
    }

    protected void updateSessionInfo(ImSessionInfo imSessionInfo) {
        setRawHandle(imSessionInfo.mRawHandle);
        setContributionId(imSessionInfo.mContributionId);
        setConversationId(imSessionInfo.mConversationId);
        this.mInReplyToContributionId = imSessionInfo.mInReplyToContributionId;
        this.mSdpContentType = imSessionInfo.mSdpContentType;
        setSessionUri(imSessionInfo.mSessionUri);
        setDirection(imSessionInfo.mDirection);
        this.mChatData.triggerObservers(ImCacheAction.UPDATED);
    }

    protected void updateConferenceTimestamp(ImSessionConferenceInfoUpdateEvent imSessionConferenceInfoUpdateEvent) {
        if (TextUtils.isEmpty(imSessionConferenceInfoUpdateEvent.mTimeStamp)) {
            return;
        }
        this.mChatData.setInsertedTimeStamp(Long.valueOf(imSessionConferenceInfoUpdateEvent.mTimeStamp).longValue());
        this.mChatData.triggerObservers(ImCacheAction.UPDATED);
    }

    protected Context getContext() {
        return this.mGetter.getContext();
    }

    protected ChatData getChatData() {
        return this.mChatData;
    }

    public String getChatId() {
        return this.mChatId;
    }

    protected String getOwnPhoneNum() {
        return this.mChatData.getOwnPhoneNum();
    }

    protected void setOwnPhoneNum(String str) {
        this.mChatData.setOwnPhoneNum(str);
    }

    public String getOwnImsi() {
        return this.mChatData.getOwnIMSI();
    }

    protected void setOwnImsi(String str) {
        this.mChatData.setOwnIMSI(str);
    }

    public int getId() {
        return this.mChatData.getId();
    }

    public int getChatStateId() {
        return this.mChatData.getState().getId();
    }

    protected void updateChatState(ChatData.State state) {
        this.mChatData.updateState(state);
    }

    protected boolean isChatState(ChatData.State state) {
        return getChatStateId() == state.getId();
    }

    public boolean isGroupChat() {
        return this.mChatData.isGroupChat();
    }

    protected int getPhoneId() {
        int simSlotPriority = SimUtil.getSimSlotPriority();
        int phoneId = SimManagerFactory.getPhoneId(this.mChatData.getOwnIMSI());
        return phoneId != -1 ? phoneId : simSlotPriority;
    }

    protected boolean isChatbotRole() {
        return this.mChatData.isChatbotRole();
    }

    protected boolean isBotSessionAnonymized() {
        return !this.mConfig.getBotPrivacyDisable() && isChatbotRole() && getIsTokenUsed();
    }

    protected boolean isChatbotManualAcceptUsed() {
        ImsUri imsUri;
        return isChatbotRole() && getRcsStrategy(getPhoneId()).boolSetting(RcsPolicySettings.RcsPolicy.USE_CHATBOT_MANUALACCEPT) && (imsUri = this.mInitiator) != null && imsUri.getUriType() == ImsUri.UriType.SIP_URI;
    }

    protected void updateIsChatbotRole(boolean z) {
        ImsUri remoteUri = getRemoteUri();
        if (z != this.mChatData.isChatbotRole() && remoteUri != null) {
            if (z) {
                ImCache.getInstance().addToChatbotRoleUris(remoteUri, this.mChatData.getOwnIMSI());
            } else {
                ImCache.getInstance().removeFromChatbotRoleUris(remoteUri, this.mChatData.getOwnIMSI());
            }
        }
        this.mChatData.updateIsChatbotRole(z);
    }

    protected ChatData.ChatType getChatType() {
        return this.mChatData.getChatType();
    }

    protected void updateChatType(ChatData.ChatType chatType) {
        this.mChatData.updateChatType(chatType);
    }

    public ChatMode getChatMode() {
        return this.mChatData.getChatMode();
    }

    public String getSubject() {
        return this.mChatData.getSubject();
    }

    private void setSubject(String str) {
        this.mChatData.setSubject(str);
    }

    protected ImSubjectData getSubjectData() {
        return this.mChatData.getSubjectData();
    }

    protected ImIconData getIconData() {
        return this.mChatData.getIconData();
    }

    protected String getInitiatorAlias() {
        return this.mInitiatorAlias;
    }

    protected void setInitiatorAlias(String str) {
        this.mInitiatorAlias = str;
    }

    public boolean getIsTokenUsed() {
        return this.mIsTokenUsed;
    }

    protected void setIsTokenUsed(boolean z) {
        this.mIsTokenUsed = z;
    }

    protected String getDeviceId() {
        return this.mDeviceId;
    }

    protected void setDeviceId(String str) {
        this.mDeviceId = str;
    }

    protected String getUserAlias() {
        return getUserAlias(false);
    }

    protected String getUserAlias(boolean z) {
        return this.mGetter.getUserAlias(this.mPhoneId, z);
    }

    protected boolean isMuted() {
        return this.mChatData.isMuted();
    }

    protected String getContributionId() {
        return this.mChatData.getContributionId();
    }

    protected void setContributionId(String str) {
        this.mChatData.setContributionId(str);
    }

    protected boolean isBroadcastMsg(MessageBase messageBase) {
        return this.mChatData.getChatType() == ChatData.ChatType.ONE_TO_MANY_CHAT || (messageBase != null && messageBase.isBroadcastMsg());
    }

    protected ImsUri getSessionUri() {
        return this.mChatData.getSessionUri();
    }

    protected void setSessionUri(ImsUri imsUri) {
        this.mChatData.setSessionUri(imsUri);
    }

    public ImSessionClosedEvent getImSessionClosedEvent() {
        return this.mClosedEvent;
    }

    public Set<ImParticipant> getParticipants() {
        return new HashSet(this.mParticipants.values());
    }

    public List<String> getParticipantsString() {
        ArrayList arrayList = new ArrayList();
        Iterator<ImsUri> it = this.mParticipants.keySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toString());
        }
        return arrayList;
    }

    protected ImParticipant getParticipant(ImsUri imsUri) {
        if (imsUri != null) {
            return this.mParticipants.get(imsUri);
        }
        return null;
    }

    protected String getRequestMessageId() {
        return this.mRequestMessageId;
    }

    protected Set<ImsUri> getParticipantsUri() {
        return new HashSet(this.mParticipants.keySet());
    }

    protected int getParticipantsSize() {
        return this.mParticipants.size();
    }

    public ImsUri getRemoteUri() {
        if (this.mParticipants.size() == 1) {
            return this.mParticipants.keySet().iterator().next();
        }
        return null;
    }

    public int getMaxParticipantsCount() {
        return this.mChatData.getMaxParticipantsCount();
    }

    protected int getThreadId() {
        return this.mThreadId;
    }

    protected String getSdpContentType() {
        return this.mSdpContentType;
    }

    protected void updateSubjectData(ImSubjectData imSubjectData) {
        this.mChatData.updateSubjectData(imSubjectData);
    }

    protected void updateIconData(ImIconData imIconData) {
        this.mChatData.updateIconData(imIconData);
    }

    protected String getConversationId() {
        return this.mChatData.getConversationId();
    }

    protected void setConversationId(String str) {
        this.mChatData.setConversationId(str);
    }

    protected String getInReplyToContributionId() {
        return this.mInReplyToContributionId;
    }

    protected void setInReplyToContributionId(String str) {
        this.mInReplyToContributionId = str;
    }

    public ImDirection getDirection() {
        return this.mChatData.getDirection();
    }

    protected void setDirection(ImDirection imDirection) {
        this.mChatData.setDirection(imDirection);
    }

    protected void updateParticipantsStatus(ImParticipant.Status status) {
        ArrayList arrayList = new ArrayList();
        for (ImParticipant imParticipant : this.mParticipants.values()) {
            if (imParticipant.getStatus() != status) {
                imParticipant.setStatus(status);
                arrayList.add(imParticipant);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.mListener.onParticipantsUpdated(this, arrayList);
    }

    protected void updateParticipantAlias(String str, ImParticipant imParticipant) {
        if (imParticipant == null) {
            IMSLog.e(LOG_TAG, "updateParticipantAlias, skipping update");
            return;
        }
        if (!hasImSessionInfo(ImSessionInfo.SessionType.NORMAL) && TextUtils.isEmpty(str) && !this.mConfig.getRealtimeUserAliasAuth()) {
            IMSLog.i(LOG_TAG, "updateParticipantAlias, SnF session and alias empty - do not update");
            return;
        }
        if (imParticipant.getUserAlias() == null || !imParticipant.getUserAlias().equals(str)) {
            imParticipant.setUserAlias(str);
            ArrayList arrayList = new ArrayList();
            arrayList.add(imParticipant);
            this.mListener.onParticipantsUpdated(this, arrayList);
            this.mListener.onParticipantAliasUpdated(this.mChatId, imParticipant);
            return;
        }
        IMSLog.i(LOG_TAG, "updateParticipantAlias, participant alias is up to date");
    }

    protected boolean isReusable() {
        return this.mChatData.isReusable();
    }

    protected boolean isRejoinable() {
        return isGroupChat() && getSessionUri() != null;
    }

    public boolean hasImSessionInfo(Object obj) {
        return getImSessionInfo(obj) != null;
    }

    public String getServiceId() {
        return this.mServiceId;
    }

    private void initState() {
        addState(this.mDefaultState);
        addState(this.mInitialState, this.mDefaultState);
        addState(this.mStartingState, this.mDefaultState);
        addState(this.mEstablishedState, this.mDefaultState);
        addState(this.mClosingState, this.mDefaultState);
        addState(this.mClosedState, this.mInitialState);
        setInitialState(this.mInitialState);
        start();
        this.mDetailedStateMap.put(this.mInitialState, SessionState.INITIAL);
        this.mDetailedStateMap.put(this.mStartingState, SessionState.STARTING);
        this.mDetailedStateMap.put(this.mEstablishedState, SessionState.ESTABLISHED);
        this.mDetailedStateMap.put(this.mClosingState, SessionState.CLOSING);
        this.mDetailedStateMap.put(this.mClosedState, SessionState.CLOSED);
    }

    public SessionState getDetailedState() {
        return this.mDetailedStateMap.get(getCurrentState());
    }

    protected IState getCurrentSessionState() {
        return getCurrentState();
    }

    public void startSession() {
        if (isBroadcastMsg(null)) {
            logi("broadcast message just use SLM, should never start session");
        } else {
            sendMessage(obtainMessage(1001));
        }
    }

    public void processIncomingSession(ImIncomingSessionEvent imIncomingSessionEvent) {
        Object obj = imIncomingSessionEvent.mRawHandle;
        if (obj != null) {
            acquireWakeLock(obj);
            if (imIncomingSessionEvent.mIsDeferred) {
                sendMessage(obtainMessage(1010, imIncomingSessionEvent));
            } else {
                sendMessage(obtainMessage(1005, imIncomingSessionEvent));
            }
        }
    }

    public void acceptSession(boolean z) {
        sendMessage(obtainMessage(1006, Boolean.valueOf(z)));
    }

    public void rejectSession() {
        sendMessage(obtainMessage(1008));
    }

    protected void rejectSession(int i) {
        sendMessage(obtainMessage(1008, Integer.valueOf(i)));
    }

    public void receiveSessionEstablished(ImSessionEstablishedEvent imSessionEstablishedEvent) {
        sendMessage(obtainMessage(1003, imSessionEstablishedEvent));
    }

    public void receiveSessionClosed(ImSessionClosedEvent imSessionClosedEvent) {
        sendMessage(obtainMessage(1014, imSessionClosedEvent));
    }

    protected void receiveConferenceInfo(ImSessionConferenceInfoUpdateEvent imSessionConferenceInfoUpdateEvent) {
        sendMessage(obtainMessage(ImSessionEvent.CONFERENCE_INFO_UPDATED, imSessionConferenceInfoUpdateEvent));
    }

    protected void receiveComposingNotification(ImComposingEvent imComposingEvent) {
        int i = imComposingEvent.mInterval;
        if (i != 0) {
            this.mComposingNotificationInterval = i;
        }
        ImsUri normalizeUri = this.mGetter.normalizeUri(ImsUri.parse(imComposingEvent.mUri));
        if (imComposingEvent.mIsComposing) {
            this.mComposingActiveUris.add(normalizeUri);
            removeMessages(ImSessionEvent.RECEIVE_ISCOMPOSING_TIMEOUT);
            sendMessageDelayed(ImSessionEvent.RECEIVE_ISCOMPOSING_TIMEOUT, this.mComposingNotificationInterval * 1000);
            checkAndUpdateSessionTimeout();
            return;
        }
        this.mComposingActiveUris.remove(normalizeUri);
    }

    protected void restartSession(int i, String str, String str2) {
        this.mThreadId = i;
        this.mRequestMessageId = str;
        setSubject(str2);
    }

    public void closeSession() {
        closeSession(true, getRcsStrategy(this.mPhoneId).getSessionStopReason(isGroupChat()));
    }

    protected void closeSession(boolean z, ImSessionStopReason imSessionStopReason) {
        this.mChatData.updateIsReusable(z);
        this.mClosedState.mStopReason = imSessionStopReason;
        if (imSessionStopReason == ImSessionStopReason.VOLUNTARILY) {
            forceCancelFt(true, CancelReason.CANCELED_BY_USER);
        }
        sendMessage(obtainMessage(1012, imSessionStopReason));
    }

    protected void forceCloseSession() {
        sendMessage(obtainMessage(1015));
    }

    protected void addParticipants(List<ImsUri> list) {
        if (isGroupChat()) {
            sendMessage(obtainMessage(ImSessionEvent.ADD_PARTICIPANTS, 0, 0, list));
        } else {
            startSession();
            sendMessage(obtainMessage(ImSessionEvent.EXTEND_TO_GROUP_CHAT, list));
        }
    }

    protected void removeParticipants(List<ImsUri> list) {
        if (isGroupChat()) {
            sendMessage(obtainMessage(ImSessionEvent.REMOVE_PARTICIPANTS, 0, 0, list));
        }
    }

    protected void changeGroupChatSubject(String str) {
        if (isGroupChat()) {
            sendMessage(obtainMessage(ImSessionEvent.CHANGE_GC_SUBJECT, str));
        }
    }

    protected void changeGroupChatIcon(String str) {
        if (isGroupChat()) {
            sendMessage(obtainMessage(ImSessionEvent.CHANGE_GC_ICON, str));
        }
    }

    protected void changeGroupAlias(String str) {
        if (isGroupChat()) {
            sendMessage(obtainMessage(ImSessionEvent.CHANGE_GROUP_ALIAS, str));
        }
    }

    protected void changeGroupChatLeader(List<ImsUri> list) {
        if (isGroupChat()) {
            sendMessage(obtainMessage(ImSessionEvent.CHANGE_GC_LEADER, list));
        }
    }

    protected void receiveDeliveryTimeout() {
        sendMessage(obtainMessage(ImSessionEvent.DELIVERY_TIMEOUT));
    }

    protected ImsUri getInitiator() {
        return this.mInitiator;
    }

    protected void setInitiator(ImsUri imsUri) {
        this.mInitiator = imsUri;
    }

    protected ImsUri getCreatedBy() {
        return this.mChatData.getCreatedBy();
    }

    protected void updateCreatedBy(ImsUri imsUri) {
        this.mChatData.updateCreatedBy(imsUri);
    }

    protected ImsUri getInvitedBy() {
        return this.mChatData.getInvitedBy();
    }

    protected void updateInvitedBy(ImsUri imsUri) {
        this.mChatData.updateInvitedBy(imsUri);
    }

    protected void addParticipant(Collection<ImParticipant> collection) {
        for (ImParticipant imParticipant : collection) {
            this.mParticipants.put(imParticipant.getUri(), imParticipant);
        }
    }

    protected void deleteParticipant(Collection<ImParticipant> collection) {
        Iterator<ImParticipant> it = collection.iterator();
        while (it.hasNext()) {
            this.mParticipants.remove(it.next().getUri());
        }
    }

    public void sendComposing(boolean z, int i) {
        this.mComposingNotificationInterval = i;
        sendMessage(obtainMessage(ImSessionEvent.SEND_ISCOMPOSING_NOTIFICATION, Boolean.valueOf(z)));
    }

    protected Set<ImsUri> getComposingActiveUris() {
        return this.mComposingActiveUris;
    }

    public void sendImMessage(MessageBase messageBase) {
        logi("sendImMessage: ChatbotMessagingTech = " + messageBase.getChatbotMessagingTech());
        if (messageBase.getBody() != null) {
            if (messageBase.getChatbotMessagingTech() == ImConstants.ChatbotMessagingTech.UNKNOWN) {
                messageBase.setChatbotMessagingTech(getRcsStrategy(this.mPhoneId).checkChatbotMessagingTech(this.mConfig, isGroupChat(), getParticipantsUri()));
            }
            if (messageBase.getChatbotMessagingTech() != ImConstants.ChatbotMessagingTech.NONE) {
                if (messageBase.getChatbotMessagingTech() == ImConstants.ChatbotMessagingTech.NOT_AVAILABLE) {
                    messageBase.onSendMessageDone(new Result(ImError.REMOTE_TEMPORARILY_UNAVAILABLE, Result.Type.NONE), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR));
                    return;
                }
                messageBase.setSlmSvcMsg(messageBase.getChatbotMessagingTech() == ImConstants.ChatbotMessagingTech.STANDALONE_MESSAGING);
            }
            if (!ChatbotUriUtil.hasChatbotUri(getParticipantsUri(), this.mPhoneId)) {
                messageBase.setSlmSvcMsg(!this.mConfig.getChatEnabled() && this.mConfig.getSlmAuth() == ImConstants.SlmAuth.ENABLED);
            }
            if (messageBase.getIsSlmSvcMsg()) {
                sendMessage(obtainMessage(ImSessionEvent.SEND_SLM_MESSAGE, messageBase));
            } else {
                sendMessage(obtainMessage(ImSessionEvent.SEND_MESSAGE, messageBase));
            }
            if ((messageBase instanceof ImMessage) && getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_SENDMSG_RESP_TIMEOUT)) {
                sendMessageDelayed(obtainMessage(ImSessionEvent.SEND_MESSAGE_RESPONSE_TIMEOUT, messageBase), this.mSendMessageResponseTimeout * 1000);
            }
        }
    }

    protected void setSessionTimeoutThreshold(MessageBase messageBase) {
        Preconditions.checkNotNull(messageBase, "msg cannot be null");
        if (messageBase instanceof ImMessage) {
            sendMessageDelayed(obtainMessage(1019, messageBase), 300000L);
        }
    }

    protected void receiveMessage(MessageBase messageBase, Object obj) {
        ImSessionInfo imSessionInfo;
        if (messageBase != null && obj != null && (imSessionInfo = getImSessionInfo(obj)) != null && imSessionInfo.isSnFSession()) {
            imSessionInfo.mReceivedMessageIds.add(Integer.valueOf(messageBase.getId()));
        }
        sendMessage(obtainMessage(ImSessionEvent.RECEIVE_MESSAGE, messageBase));
    }

    protected void cancelMessages(List<String> list) {
        List<MessageBase> messages = this.mGetter.getMessages(list, ImDirection.OUTGOING, null);
        for (MessageBase messageBase : messages) {
            if (getNeedToRevokeMessages().containsKey(messageBase.getImdnId())) {
                messageBase.updateRevocationStatus(ImConstants.RevocationStatus.NONE);
                removeMsgFromListForRevoke(messageBase.getImdnId());
            }
            list.remove(messageBase.getImdnId());
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.mListener.onSendCanceledNotificationDone(this.mChatId, it.next(), false);
        }
        if (messages.isEmpty()) {
            return;
        }
        sendMessage(obtainMessage(ImSessionEvent.SEND_CANCELED_NOTIFICATION, messages));
    }

    protected void onSendImdnFailed(SendImdnFailedEvent sendImdnFailedEvent, MessageBase messageBase) {
        logi("onSendImdnFailed event: " + sendImdnFailedEvent + ", msg: " + messageBase);
        if ((messageBase instanceof ImMessage) || (messageBase instanceof FtHttpIncomingMessage)) {
            this.mClosedState.handleCloseSession(sendImdnFailedEvent.mRawHandle, ImSessionStopReason.INVOLUNTARILY);
            transitionToProperState();
        }
        NotificationStatus notificationStatus = messageBase.getNotificationStatus();
        if (notificationStatus == NotificationStatus.DELIVERED || notificationStatus == NotificationStatus.DISPLAYED) {
            messageBase.sendDeliveredNotification(null, getConversationId(), getContributionId(), obtainMessage(ImSessionEvent.SEND_DELIVERED_NOTIFICATION_DONE, messageBase), getChatData().getOwnIMSI(), isGroupChat(), isBotSessionAnonymized());
            if (notificationStatus == NotificationStatus.DISPLAYED && isRespondDisplay()) {
                messageBase.sendDisplayedNotification(null, getConversationId(), getContributionId(), obtainMessage(ImSessionEvent.SEND_DISPLAYED_NOTIFICATION_DONE, messageBase.toList()), getChatData().getOwnIMSI(), isGroupChat(), isBotSessionAnonymized());
            }
        }
    }

    protected void onSendMessageHandleReportFailed(SendMessageFailedEvent sendMessageFailedEvent, MessageBase messageBase) {
        Message obtainMessage = obtainMessage(ImSessionEvent.SEND_MESSAGE_DONE, messageBase);
        AsyncResult.forMessage(obtainMessage, new SendMessageResult(sendMessageFailedEvent.mRawHandle, sendMessageFailedEvent.mResult), null);
        obtainMessage.sendToTarget();
    }

    protected void receiveSlmMessage(MessageBase messageBase) {
        sendMessage(obtainMessage(ImSessionEvent.RECEIVE_SLM_MESSAGE, messageBase));
    }

    protected boolean isRespondDisplay() {
        return isGroupChat() || this.mConfig.getRespondDisplay();
    }

    protected void processPendingMessages(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        this.mOwnImsi = simManagerFromSimSlot == null ? "" : simManagerFromSimSlot.getImsi();
        logi("processPendingMessages phoneId = " + i);
        this.mProcessingFileTransfer.clear();
        this.mListener.onProcessingFileTransferChanged(this);
        TreeMap treeMap = new TreeMap();
        if (TextUtils.isEmpty(this.mOwnImsi)) {
            loge("processPendingMessages: ownImsi is not loaded.");
            return;
        }
        for (MessageBase messageBase : this.mGetter.getAllPendingMessages(this.mChatId)) {
            if (TextUtils.isEmpty(messageBase.getOwnIMSI())) {
                messageBase.updateOwnIMSI(this.mOwnImsi);
                treeMap.put(Long.valueOf(messageBase.getInsertedTimestamp()), messageBase);
            } else if (messageBase.getOwnIMSI().equals(this.mOwnImsi)) {
                treeMap.put(Long.valueOf(messageBase.getInsertedTimestamp()), messageBase);
            }
        }
        for (MessageBase messageBase2 : treeMap.values()) {
            if (messageBase2 instanceof ImMessage) {
                processPendingImMessage((ImMessage) messageBase2);
            } else if (messageBase2 instanceof FtMessage) {
                processPendingFtMessage((FtMessage) messageBase2);
            }
        }
    }

    protected void processPendingFtHttp(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        this.mOwnImsi = simManagerFromSimSlot == null ? "" : simManagerFromSimSlot.getImsi();
        logi("processPendingFtHttp");
        this.mProcessingFileTransfer.clear();
        this.mListener.onProcessingFileTransferChanged(this);
        ArrayList<MessageBase> arrayList = new ArrayList();
        for (MessageBase messageBase : this.mGetter.getAllPendingMessages(this.mChatId)) {
            String ownIMSI = messageBase.getOwnIMSI();
            logi("IMSI of SIM sent this message = " + IMSLog.numberChecker(ownIMSI) + ", IMSI of current SIM = " + IMSLog.numberChecker(this.mOwnImsi));
            if (TextUtils.isEmpty(ownIMSI)) {
                logi("current status of this message = " + messageBase.getStatus());
                if (messageBase.getStatus() == ImConstants.Status.SENDING || messageBase.getStatus() == ImConstants.Status.TO_SEND) {
                    messageBase.updateStatus(ImConstants.Status.FAILED);
                }
            } else if (ownIMSI.equals(this.mOwnImsi)) {
                arrayList.add(messageBase);
            }
        }
        arrayList.sort(new Comparator() { // from class: com.sec.internal.ims.servicemodules.im.ImSession$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$processPendingFtHttp$0;
                lambda$processPendingFtHttp$0 = ImSession.lambda$processPendingFtHttp$0((MessageBase) obj, (MessageBase) obj2);
                return lambda$processPendingFtHttp$0;
            }
        });
        for (MessageBase messageBase2 : arrayList) {
            if (messageBase2 instanceof FtMessage) {
                processPendingFtMessage((FtMessage) messageBase2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$processPendingFtHttp$0(MessageBase messageBase, MessageBase messageBase2) {
        long insertedTimestamp = messageBase.getInsertedTimestamp() - messageBase2.getInsertedTimestamp();
        return insertedTimestamp == 0 ? messageBase.getId() < messageBase2.getId() ? -1 : 1 : insertedTimestamp < 0 ? -1 : 1;
    }

    protected void processPendingNotifications(List<MessageBase> list) {
        boolean isRespondDisplay = isRespondDisplay();
        ArrayList<MessageBase> arrayList = new ArrayList(list);
        arrayList.sort(new Comparator() { // from class: com.sec.internal.ims.servicemodules.im.ImSession$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$processPendingNotifications$1;
                lambda$processPendingNotifications$1 = ImSession.lambda$processPendingNotifications$1((MessageBase) obj, (MessageBase) obj2);
                return lambda$processPendingNotifications$1;
            }
        });
        ArrayList arrayList2 = new ArrayList();
        for (MessageBase messageBase : arrayList) {
            if (messageBase.getDirection() == ImDirection.INCOMING) {
                NotificationStatus notificationStatus = messageBase.getNotificationStatus();
                NotificationStatus desiredNotificationStatus = messageBase.getDesiredNotificationStatus();
                logi("sendDispositionNotification current : " + notificationStatus + " desired : " + desiredNotificationStatus);
                NotificationStatus notificationStatus2 = NotificationStatus.DELIVERED;
                if (desiredNotificationStatus == notificationStatus2 && notificationStatus == NotificationStatus.NONE) {
                    arrayList2.add(messageBase);
                } else if (desiredNotificationStatus == NotificationStatus.DISPLAYED) {
                    messageBase.updateStatus(ImConstants.Status.READ);
                    if (notificationStatus == notificationStatus2 && isRespondDisplay) {
                        this.mMessagesToSendDisplayNotification.add(messageBase);
                    } else if (notificationStatus == NotificationStatus.NONE) {
                        arrayList2.add(messageBase);
                        if (isRespondDisplay) {
                            this.mMessagesToSendDisplayNotification.add(messageBase);
                        }
                    }
                }
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            sendDeliveredNotification((MessageBase) it.next());
        }
        if (this.mMessagesToSendDisplayNotification.isEmpty()) {
            return;
        }
        sendMessage(obtainMessage(ImSessionEvent.SEND_DISPLAYED_NOTIFICATION));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$processPendingNotifications$1(MessageBase messageBase, MessageBase messageBase2) {
        long insertedTimestamp = messageBase.getInsertedTimestamp() - messageBase2.getInsertedTimestamp();
        return insertedTimestamp == 0 ? messageBase.getId() < messageBase2.getId() ? -1 : 1 : insertedTimestamp < 0 ? -1 : 1;
    }

    private void processPendingImMessage(ImMessage imMessage) {
        ImConstants.Status status = imMessage.getStatus();
        if (imMessage.isOutgoing()) {
            if (status == ImConstants.Status.TO_SEND || status == ImConstants.Status.SENDING) {
                sendImMessage(imMessage);
            }
        }
    }

    private void processPendingFtMessage(FtMessage ftMessage) {
        if (ftMessage.isAutoResumable()) {
            if (ftMessage.isOutgoing() && ftMessage.getStateId() == 2) {
                resumeTransferFile(ftMessage);
                return;
            }
            if ((ftMessage instanceof FtHttpIncomingMessage) && ftMessage.getStateId() == 2) {
                receiveTransfer(ftMessage, null, true);
                return;
            }
            if ((ftMessage instanceof FtHttpOutgoingMessage) && ftMessage.getStateId() == 3) {
                ImConstants.Status status = ftMessage.getStatus();
                if (ftMessage.isOutgoing()) {
                    if (status == ImConstants.Status.TO_SEND || status == ImConstants.Status.SENDING) {
                        sendImMessage(ftMessage);
                        return;
                    }
                    return;
                }
                return;
            }
            if (getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.AUTO_RESEND_FAILED_FT) && ftMessage.isOutgoing() && ftMessage.getCancelReason() != CancelReason.CANCELED_BY_USER) {
                resumeTransferFile(ftMessage);
            }
        }
    }

    protected void attachFile(FtMessage ftMessage) {
        sendMessage(obtainMessage(ImSessionEvent.ATTACH_FILE, ftMessage));
    }

    protected void processRejoinGCSession() {
        if (isRejoinable() && getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.GROUPCHAT_AUTO_REJOIN) && (isChatState(ChatData.State.ACTIVE) || isChatState(ChatData.State.CLOSED_INVOLUNTARILY))) {
            logi("processRejoinGCSession : " + getChatId());
            sendMessage(obtainMessage(1020));
            return;
        }
        if (isRejoinable() && isChatState(ChatData.State.CLOSED_VOLUNTARILY)) {
            logi("processRejoinGCSession for bye : " + getChatId());
            sendMessage(obtainMessage(1021));
        }
    }

    protected boolean isAutoRejoinSession() {
        if (isRejoinable() && getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.GROUPCHAT_AUTO_REJOIN) && (isChatState(ChatData.State.ACTIVE) || isChatState(ChatData.State.CLOSED_INVOLUNTARILY))) {
            return true;
        }
        return isRejoinable() && isChatState(ChatData.State.CLOSED_VOLUNTARILY);
    }

    protected void onMessageSending(MessageBase messageBase) {
        Preconditions.checkNotNull(messageBase, "msg cannot be null");
        ImConstants.Status status = messageBase.getStatus();
        ImConstants.Status status2 = ImConstants.Status.SENDING;
        if (status != status2 && messageBase.getStatus() != ImConstants.Status.SENT) {
            messageBase.updateStatus(status2);
        }
        if (this.mIsComposing && isBroadcastMsg(messageBase)) {
            sendMessage(obtainMessage(ImSessionEvent.SEND_ISCOMPOSING_NOTIFICATION, Boolean.FALSE));
            return;
        }
        this.mIsComposing = false;
        removeMessages(ImSessionEvent.SEND_ISCOMPOSING_REFRESH);
        removeMessages(ImSessionEvent.SEND_ISCOMPOSING_TIMEOUT);
    }

    protected void onSendSlmMessage(MessageBase messageBase) {
        Set<ImsUri> set;
        Preconditions.checkNotNull(messageBase, "msg cannot be null");
        logi("onSendSlmMessage");
        Set<ImsUri> networkPreferredUri = getRcsStrategy(this.mPhoneId).getNetworkPreferredUri(this.mUriGenerator, getParticipantsUri());
        if (messageBase.getType() == ImConstants.Type.TEXT_PUBLICACCOUNT) {
            HashSet hashSet = new HashSet();
            Iterator<ImsUri> it = networkPreferredUri.iterator();
            while (it.hasNext()) {
                hashSet.add(PublicAccountUri.convertToPublicAccountUri(it.next().toString()));
            }
            set = hashSet;
        } else {
            set = networkPreferredUri;
        }
        if (!messageBase.getContentType().contains(MIMEContentType.BOT_SUGGESTION_RESPONSE) && !messageBase.getContentType().contains(MIMEContentType.BOT_SHARED_CLIENT_DATA)) {
            this.mInReplyToContributionId = null;
        }
        SendSlmMessageParams sendSlmMessageParams = new SendSlmMessageParams(messageBase.getId(), this.mChatId, messageBase.getBody(), messageBase.getContentType(), messageBase.getUserAlias(), messageBase.getImdnId(), new Date(), messageBase.getDispositionNotification(), StringIdGenerator.generateContributionId(), this.mChatData.getConversationId(), this.mInReplyToContributionId, set, obtainMessage(ImSessionEvent.SEND_SLM_MESSAGE_DONE, messageBase), messageBase.getType() == ImConstants.Type.TEXT_PUBLICACCOUNT, isBroadcastMsg(messageBase), this.mChatData.getOwnIMSI(), !isGroupChat() && ChatbotUriUtil.hasChatbotUri(getParticipantsUri(), this.mPhoneId), messageBase.getMaapTrafficType());
        if (messageBase.getReportMsgParams() != null) {
            sendSlmMessageParams.mReportMsgParams = messageBase.getReportMsgParams();
        }
        messageBase.setMessagingTech(messageBase.getBody().length() > this.mConfig.getPagerModeLimit() ? ImConstants.MessagingTech.SLM_LARGE_MODE : ImConstants.MessagingTech.SLM_PAGER_MODE);
        this.mSlmService.sendSlmMessage(sendSlmMessageParams);
        onMessageSending(messageBase);
        setSessionTimeoutThreshold(messageBase);
    }

    protected void sendDeliveredNotification(MessageBase messageBase) {
        sendMessage(obtainMessage(ImSessionEvent.SEND_DELIVERED_NOTIFICATION, messageBase));
    }

    protected void onAddParticipantsSucceeded(List<ImsUri> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<ImsUri> it = list.iterator();
        while (it.hasNext()) {
            ImsUri normalizeUri = this.mGetter.normalizeUri(it.next());
            if (normalizeUri != null && getParticipant(normalizeUri) == null) {
                arrayList.add(new ImParticipant(this.mChatId, ImParticipant.Status.INVITED, normalizeUri));
            }
        }
        if (!isGroupChat() && getParticipantsSize() > 1) {
            updateChatType(ChatData.ChatType.REGULAR_GROUP_CHAT);
        }
        if (!arrayList.isEmpty()) {
            this.mListener.onParticipantsInserted(this, arrayList);
        }
        this.mListener.onAddParticipantsSucceeded(this.mChatId, list);
    }

    protected void onAddParticipantsFailed(List<ImsUri> list, ImErrorReason imErrorReason) {
        this.mListener.onAddParticipantsFailed(this.mChatId, list, imErrorReason);
    }

    protected void onRemoveParticipantsFailed(List<ImsUri> list, ImErrorReason imErrorReason) {
        this.mListener.onRemoveParticipantsFailed(this.mChatId, list, imErrorReason);
    }

    protected void onChangeGroupChatLeaderFailed(List<ImsUri> list, ImErrorReason imErrorReason) {
        this.mListener.onChangeGroupChatLeaderFailed(this.mChatId, list, imErrorReason);
    }

    protected void onChangeGroupChatSubjectFailed(String str, ImErrorReason imErrorReason) {
        this.mListener.onChangeGroupChatSubjectFailed(this.mChatId, str, imErrorReason);
    }

    protected void onChangeGroupChatIconFailed(String str, ImErrorReason imErrorReason) {
        this.mListener.onChangeGroupChatIconFailed(this.mChatId, str, imErrorReason);
    }

    protected void onChangeGroupAliasFailed(String str, ImErrorReason imErrorReason) {
        this.mListener.onChangeGroupAliasFailed(this.mChatId, str, imErrorReason);
    }

    protected void onConferenceInfoUpdated(ImSessionConferenceInfoUpdateEvent imSessionConferenceInfoUpdateEvent) {
        if (this.mConferenceInfoUpdater == null) {
            ImsUri normalizedUri = this.mUriGenerator.getNormalizedUri(getOwnPhoneNum(), true);
            Context context = getContext();
            int i = this.mPhoneId;
            this.mConferenceInfoUpdater = new ConferenceInfoUpdater(context, this, i, normalizedUri, getRcsStrategy(i), this.mUriGenerator, this.mListener);
        }
        this.mConferenceInfoUpdater.onConferenceInfoUpdated(imSessionConferenceInfoUpdateEvent, this.mLeaderParticipant);
    }

    protected void onIncomingSessionProcessed(ImIncomingMessageEvent imIncomingMessageEvent, boolean z) {
        this.mListener.onIncomingSessionProcessed(imIncomingMessageEvent, this, z);
    }

    protected void failCurrentMessages(Object obj, Result result) {
        failCurrentMessages(obj, result, null);
    }

    protected void failCurrentMessages(Object obj, Result result, String str) {
        Iterator<MessageBase> it = this.mCurrentMessages.iterator();
        while (it.hasNext()) {
            Message obtainMessage = obtainMessage(ImSessionEvent.SEND_MESSAGE_DONE, it.next());
            AsyncResult.forMessage(obtainMessage, new SendMessageResult(obj, result, str), null);
            obtainMessage.sendToTarget();
        }
        this.mCurrentMessages.clear();
    }

    protected void failCurrentCanceledMessages() {
        Iterator<MessageBase> it = this.mCurrentCanceledMessages.iterator();
        while (it.hasNext()) {
            this.mListener.onSendCanceledNotificationDone(this.mChatId, it.next().getImdnId(), false);
        }
        this.mCurrentCanceledMessages.clear();
    }

    protected void updateNetworkForPendingMessage(Network network, Network network2) {
        List<MessageBase> allPendingMessages = this.mGetter.getAllPendingMessages(this.mChatId);
        Log.i(LOG_TAG, "updateNetworkForPendingMessage: " + allPendingMessages.size() + " pended message(s) in " + this.mChatId + " with " + network + ", " + network2);
        for (MessageBase messageBase : allPendingMessages) {
            if ((messageBase instanceof FtHttpOutgoingMessage) || (messageBase instanceof FtHttpIncomingMessage)) {
                messageBase.setNetwork(network2);
            } else {
                messageBase.setNetwork(network);
            }
        }
    }

    protected FtMessage findFtMessage(String str, long j, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        for (MessageBase messageBase : this.mGetter.getAllPendingMessages(this.mChatId)) {
            if (messageBase instanceof FtMessage) {
                FtMessage ftMessage = (FtMessage) messageBase;
                if (str.equals(ftMessage.getFileName()) && j == ftMessage.getFileSize() && str2.equals(ftMessage.getFileTransferId())) {
                    return ftMessage;
                }
            }
        }
        return null;
    }

    protected void processDeregistration() {
        logi("processDeregistration :" + getChatId());
        forceCloseSession();
        if (isMsgRevocationSupported() && !this.mNeedToRevokeMessages.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (String str : this.mNeedToRevokeMessages.keySet()) {
                MessageBase message = this.mGetter.getMessage(str, ImDirection.OUTGOING, null);
                if (message != null && message.getRevocationStatus() == ImConstants.RevocationStatus.SENT) {
                    arrayList.add(message);
                    stopMsgRevokeOperationTimer(str);
                }
            }
            this.mListener.onMessageRevocationDone(ImConstants.RevocationStatus.SUCCESS, arrayList, this);
            this.mIsRevokeTimerRunning = false;
            this.mNeedToRevokeMessages.clear();
            PreciseAlarmManager.getInstance(getContext()).removeMessage(obtainMessage(ImSessionEvent.MESSAGE_REVOKE_TIMER_EXPIRED));
        }
        processCancelMessages(true, null);
    }

    protected void abortAllHttpFtOperations() {
        logi("abortAllHttpFtOperations :" + getChatId());
        for (MessageBase messageBase : this.mGetter.getAllPendingMessages(this.mChatId)) {
            if (messageBase instanceof FtHttpOutgoingMessage) {
                FtMessage ftMessage = (FtMessage) messageBase;
                if (ftMessage.getStateId() == 2) {
                    logi("processDeregistration : mPendingMessages FtMessage.getStateId() = " + ftMessage.getStateId());
                    ftMessage.setFtCompleteCallback(null);
                    ftMessage.cancelTransfer(CancelReason.DEVICE_UNREGISTERED);
                }
            } else if (messageBase instanceof FtHttpIncomingMessage) {
                FtMessage ftMessage2 = (FtMessage) messageBase;
                if (ftMessage2.getStateId() == 2) {
                    logi("processDeregistration : mPendingMessages FtMessage.getStateId() = " + ftMessage2.getStateId());
                    ftMessage2.cancelTransfer(CancelReason.DEVICE_UNREGISTERED);
                }
            }
        }
        synchronized (this.mPendingFileTransfer) {
            for (int i = 0; i < this.mPendingFileTransfer.size(); i++) {
                FtMessage ftMessage3 = this.mPendingFileTransfer.get(i);
                logi("cancel pending file transfer : " + ftMessage3.getId());
                ftMessage3.setFtCompleteCallback(null);
                ftMessage3.cancelTransfer(CancelReason.DEVICE_UNREGISTERED);
            }
        }
    }

    protected void forceCancelFt(boolean z, CancelReason cancelReason) {
        this.mClosedState.forceCancelFt(z, cancelReason, false);
    }

    protected void processCancelMessages(boolean z, ImError imError) {
        logi("processCancelMessages :" + getChatId());
        if (imError == null) {
            imError = ImError.UNKNOWN_ERROR;
        }
        cancelInProgressMessages(z, imError);
        cancelPendingFilesInQueue();
    }

    protected void cancelInProgressMessages(boolean z, ImError imError) {
        for (MessageBase messageBase : this.mGetter.getAllPendingMessages(this.mChatId)) {
            if (messageBase instanceof ImMessage) {
                cancelInProgressChatMsg((ImMessage) messageBase, z, imError);
            } else if (messageBase instanceof FtHttpOutgoingMessage) {
                cancelInProgressFTOutGoingMsg((FtMessage) messageBase, z, imError);
            } else if (messageBase instanceof FtHttpIncomingMessage) {
                cancelInProgressFTInComingMsg((FtMessage) messageBase, z, imError);
            }
        }
    }

    private void cancelInProgressChatMsg(ImMessage imMessage, boolean z, ImError imError) {
        if (imMessage.getDirection() == ImDirection.OUTGOING) {
            if ((imMessage.getStatus() == ImConstants.Status.TO_SEND || imMessage.getStatus() == ImConstants.Status.SENDING) && imError != ImError.OUTOFSERVICE) {
                logi("cancelInProgressChatMsg : mark msg failed " + imMessage.getId());
                if (z) {
                    if (!isGroupChat() && ChatbotUriUtil.hasChatbotUri(getParticipantsUri(), this.mPhoneId)) {
                        logi("cancelInProgressChatMsg : no fallback in case of chatbots");
                        imMessage.onSendMessageDone(new Result(imError, Result.Type.DEVICE_UNREGISTERED), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR));
                        return;
                    } else {
                        imMessage.onSendMessageDone(new Result(ImError.REMOTE_TEMPORARILY_UNAVAILABLE, Result.Type.DEVICE_UNREGISTERED), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY));
                        return;
                    }
                }
                imMessage.onSendMessageDone(new Result(imError, Result.Type.DEVICE_UNREGISTERED), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR));
            }
        }
    }

    private void cancelInProgressFTInComingMsg(FtMessage ftMessage, boolean z, ImError imError) {
        if (ftMessage.getStateId() == 2) {
            logi("cancelInProgressFTInComingMsg : mPendingMessages FtMessage.getStateId() = " + ftMessage.getStateId());
            if (ftMessage.mIsWifiUsed) {
                ftMessage.cancelTransfer(CancelReason.WIFI_DISCONNECTED);
            } else {
                ftMessage.cancelTransfer(CancelReason.DEVICE_UNREGISTERED);
            }
        }
    }

    private void cancelInProgressFTOutGoingMsg(FtMessage ftMessage, boolean z, ImError imError) {
        if (ftMessage.getStateId() == 2) {
            logi("cancelInProgressFTOutGoingMsg : mPendingMessages FtMessage.getStateId() = " + ftMessage.getStateId());
            ftMessage.setFtCompleteCallback(null);
            if (ftMessage.mIsWifiUsed) {
                ftMessage.cancelTransfer(CancelReason.WIFI_DISCONNECTED);
                return;
            } else {
                ftMessage.cancelTransfer(CancelReason.DEVICE_UNREGISTERED);
                return;
            }
        }
        if (ftMessage.getStateId() != 3 || ftMessage.getStatus() == ImConstants.Status.SENT || ftMessage.isFtSms()) {
            return;
        }
        if (z && (isGroupChat() || !ChatbotUriUtil.hasChatbotUri(getParticipantsUri(), this.mPhoneId))) {
            ftMessage.onSendMessageDone(new Result(ImError.REMOTE_TEMPORARILY_UNAVAILABLE, Result.Type.DEVICE_UNREGISTERED), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY));
        } else {
            ftMessage.onSendMessageDone(new Result(imError, Result.Type.DEVICE_UNREGISTERED), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR));
        }
    }

    protected void cancelPendingFilesInQueue() {
        synchronized (this.mPendingFileTransfer) {
            for (int i = 0; i < this.mPendingFileTransfer.size(); i++) {
                FtMessage ftMessage = this.mPendingFileTransfer.get(i);
                logi("cancel pending file transfer : " + ftMessage.getId());
                ftMessage.setFtCompleteCallback(null);
                ftMessage.cancelTransfer(CancelReason.DEVICE_UNREGISTERED);
            }
        }
    }

    protected void sendFile(FtMessage ftMessage) {
        logi("sendFile::entering .... queue size: " + this.mProcessingFileTransfer.size());
        if (ftMessage instanceof FtHttpOutgoingMessage) {
            if (!ftMessage.isFtSms()) {
                ftMessage.setFtCompleteCallback(obtainMessage(ImSessionEvent.FILE_COMPLETE));
            }
            ftMessage.sendFile();
        } else {
            if (this.mProcessingFileTransfer.isEmpty()) {
                ftMessage.setFtCompleteCallback(obtainMessage(ImSessionEvent.FILE_COMPLETE));
                sendMessage(obtainMessage(ImSessionEvent.SEND_FILE, ftMessage));
                addToProcessingFileTransfer(ftMessage);
                this.mListener.onProcessingFileTransferChanged(this);
                return;
            }
            if (this.mPendingFileTransfer.contains(ftMessage) || this.mProcessingFileTransfer.contains(ftMessage)) {
                return;
            }
            ftMessage.setFtCompleteCallback(obtainMessage(ImSessionEvent.FILE_COMPLETE));
            this.mPendingFileTransfer.add(ftMessage);
        }
    }

    protected void resumeTransferFile(FtMessage ftMessage) {
        Preconditions.checkNotNull(ftMessage);
        logi("resumeTransferFile: " + ftMessage.getId() + " mProcessingFileTransfer size: " + this.mProcessingFileTransfer.size());
        ftMessage.setConversationId(getConversationId());
        ftMessage.setContributionId(getContributionId());
        ftMessage.setIsResuming(true);
        ftMessage.setFtCompleteCallback(obtainMessage(ImSessionEvent.FILE_COMPLETE));
        if (ftMessage instanceof FtHttpOutgoingMessage) {
            if (isVoluntaryDeparture()) {
                ftMessage.cancelTransfer(CancelReason.CANCELED_BY_USER);
                return;
            } else if (isGroupChat()) {
                attachFile(ftMessage);
                return;
            } else {
                ftMessage.sendFile();
                return;
            }
        }
        if (TextUtils.isEmpty(ftMessage.mFilePath) || !new File(ftMessage.mFilePath).exists()) {
            ftMessage.mFilePath = FileUtils.copyFileToCacheFromUri(getContext(), ftMessage.getFileName(), ftMessage.getContentUri());
        }
        if (this.mProcessingFileTransfer.isEmpty()) {
            if (isGroupChat()) {
                attachFile(ftMessage);
            } else {
                ftMessage.sendFile();
            }
            addToProcessingFileTransfer(ftMessage);
            this.mListener.onProcessingFileTransferChanged(this);
            return;
        }
        if (this.mProcessingFileTransfer.contains(ftMessage) || this.mPendingFileTransfer.contains(ftMessage)) {
            return;
        }
        ftMessage.updateQueued();
        this.mPendingFileTransfer.add(ftMessage);
    }

    protected void receiveTransfer(FtMessage ftMessage, FtIncomingSessionEvent ftIncomingSessionEvent, boolean z) {
        logi("receiveTransfer: mProcessingFileTransfer size: " + this.mProcessingFileTransfer.size());
        ftMessage.receiveTransfer(obtainMessage(ImSessionEvent.FILE_COMPLETE), ftIncomingSessionEvent, z);
        if (!(ftMessage instanceof FtMsrpMessage) || this.mProcessingFileTransfer.contains(ftMessage)) {
            return;
        }
        this.mPendingFileTransfer.remove(ftMessage);
        addToProcessingFileTransfer(ftMessage);
        this.mListener.onProcessingFileTransferChanged(this);
    }

    protected boolean isFirstMessageInStart(String str) {
        return getRcsStrategy(this.mPhoneId).isFirstMsgInvite(this.mConfig.isFirstMsgInvite()) && (!isGroupChat() || getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.FIRSTMSG_GROUPCHAT_INVITE)) && !getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.USE_MSRP);
    }

    private boolean isSessionTimeoutSupported() {
        return (this.mConfig.getTimerIdle() == 0 || isGroupChat() || !isSessionTimeoutRequired()) ? false : true;
    }

    protected void checkAndUpdateSessionTimeout() {
        if (isSessionTimeoutSupported()) {
            removeMessages(1018);
            if (SipMsg.FEATURE_TAG_ENRICHED_CALL_COMPOSER.equalsIgnoreCase(this.mServiceId)) {
                logi("checkAndUpdateSessionTimeout serviceId = " + this.mServiceId + ", " + (this.mConfig.getCallComposerTimerIdle() * 1000));
                if (this.mConfig.getCallComposerTimerIdle() > 0) {
                    sendMessageDelayed(obtainMessage(1018), this.mConfig.getCallComposerTimerIdle() * 1000);
                    return;
                }
                return;
            }
            logi("checkAndUpdateSessionTimeout " + (this.mConfig.getTimerIdle() * 1000));
            sendMessageDelayed(obtainMessage(1018), ((long) this.mConfig.getTimerIdle()) * 1000);
        }
    }

    private boolean isSessionTimeoutRequired() {
        return getServiceId() == null || !(getServiceId().equalsIgnoreCase(SipMsg.FEATURE_TAG_ENRICHED_SHARED_SKETCH) || getServiceId().equalsIgnoreCase(SipMsg.FEATURE_TAG_ENRICHED_SHARED_MAP));
    }

    protected void addToProcessingFileTransfer(FtMessage ftMessage) {
        if (this.mProcessingFileTransfer.contains(ftMessage)) {
            return;
        }
        this.mProcessingFileTransfer.add(ftMessage);
        ftMessage.startFileTransferTimer();
    }

    protected ImSessionInfo addImSessionInfo(ImIncomingSessionEvent imIncomingSessionEvent, ImSessionInfo.ImSessionState imSessionState) {
        ImSessionInfo imSessionInfo = new ImSessionInfo(imIncomingSessionEvent.mRawHandle, imSessionState, ImDirection.INCOMING, imIncomingSessionEvent.mSessionUri, imIncomingSessionEvent.mContributionId, imIncomingSessionEvent.mConversationId, null, imIncomingSessionEvent.mSdpContentType);
        if (imIncomingSessionEvent.mIsDeferred) {
            imSessionInfo.mSessionType = imIncomingSessionEvent.mIsForStoredNoti ? ImSessionInfo.SessionType.SNF_NOTIFICATION_SESSION : ImSessionInfo.SessionType.SNF_SESSION;
        }
        addImSessionInfo(imSessionInfo);
        return imSessionInfo;
    }

    protected void addImSessionInfo(ImSessionInfo imSessionInfo) {
        this.mImSessionInfoList.add(0, imSessionInfo);
    }

    protected void handleAcceptSession(ImSessionInfo imSessionInfo) {
        if (imSessionInfo != null) {
            acquireWakeLock(imSessionInfo.mRawHandle);
            boolean z = imSessionInfo.mSessionType != ImSessionInfo.SessionType.NORMAL;
            imSessionInfo.mState = ImSessionInfo.ImSessionState.ACCEPTING;
            this.mImsService.acceptImSession(new AcceptImSessionParams(this.mChatId, getUserAlias(), imSessionInfo.mRawHandle, z, obtainMessage(z ? 1011 : 1007)));
        }
    }

    protected void handleCloseAllSession(ImSessionStopReason imSessionStopReason) {
        Iterator it = new ArrayList(this.mImSessionInfoList).iterator();
        while (it.hasNext()) {
            this.mClosedState.handleCloseSession(((ImSessionInfo) it.next()).mRawHandle, imSessionStopReason);
        }
    }

    protected ImSessionInfo getImSessionInfo(Object obj) {
        if (obj == null) {
            return null;
        }
        for (ImSessionInfo imSessionInfo : this.mImSessionInfoList) {
            if (obj.equals(imSessionInfo.mRawHandle)) {
                return imSessionInfo;
            }
        }
        return null;
    }

    protected ImSessionInfo removeImSessionInfo(Object obj) {
        ImSessionInfo imSessionInfo = getImSessionInfo(obj);
        if (imSessionInfo == null) {
            return null;
        }
        this.mImSessionInfoList.remove(imSessionInfo);
        return imSessionInfo;
    }

    protected boolean removeImSessionInfo(ImSessionInfo imSessionInfo) {
        return this.mImSessionInfoList.remove(imSessionInfo);
    }

    protected ImSessionInfo getLatestActiveImSessionInfo() {
        ImSessionInfo.ImSessionState imSessionState;
        for (ImSessionInfo imSessionInfo : this.mImSessionInfoList) {
            if (!imSessionInfo.isSnFSession() && (imSessionState = imSessionInfo.mState) != ImSessionInfo.ImSessionState.PENDING_INVITE && imSessionState != ImSessionInfo.ImSessionState.CLOSING) {
                return imSessionInfo;
            }
        }
        return null;
    }

    protected boolean hasActiveImSessionInfo() {
        return getLatestActiveImSessionInfo() != null;
    }

    private boolean hasImSessionInfo(ImSessionInfo.ImSessionState imSessionState) {
        Iterator<ImSessionInfo> it = this.mImSessionInfoList.iterator();
        while (it.hasNext()) {
            if (it.next().mState == imSessionState) {
                return true;
            }
        }
        return false;
    }

    private boolean hasImSessionInfo(ImSessionInfo.SessionType sessionType) {
        Iterator<ImSessionInfo> it = this.mImSessionInfoList.iterator();
        while (it.hasNext()) {
            if (it.next().mSessionType == sessionType) {
                return true;
            }
        }
        return false;
    }

    protected ImSessionInfo getImSessionInfoByMessageId(int i) {
        for (ImSessionInfo imSessionInfo : this.mImSessionInfoList) {
            if (imSessionInfo.mReceivedMessageIds.contains(Integer.valueOf(i))) {
                return imSessionInfo;
            }
        }
        return null;
    }

    protected void transitionToProperState() {
        IState iState;
        HashSet hashSet = new HashSet();
        for (ImSessionInfo imSessionInfo : this.mImSessionInfoList) {
            logi("transitionToProperState : ImSessionInfo = " + imSessionInfo);
            if (!imSessionInfo.isSnFSession()) {
                hashSet.add(imSessionInfo.mState);
            }
        }
        if (hashSet.isEmpty()) {
            iState = this.mClosedState;
        } else if (hashSet.contains(ImSessionInfo.ImSessionState.ESTABLISHED)) {
            iState = this.mEstablishedState;
        } else if (hashSet.contains(ImSessionInfo.ImSessionState.ACCEPTING) || hashSet.contains(ImSessionInfo.ImSessionState.INITIAL) || hashSet.contains(ImSessionInfo.ImSessionState.STARTED) || hashSet.contains(ImSessionInfo.ImSessionState.STARTING)) {
            iState = this.mStartingState;
        } else if (hashSet.contains(ImSessionInfo.ImSessionState.CLOSING)) {
            iState = this.mClosingState;
        } else {
            iState = this.mClosedState;
        }
        if (iState != getCurrentState()) {
            transitionTo(iState);
        }
    }

    protected void onSimRefresh(int i) {
        String str = LOG_TAG;
        IMSLog.s(str, "onSimRefresh : " + i);
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        String imsi = simManagerFromSimSlot == null ? null : simManagerFromSimSlot.getImsi();
        if (this.mPhoneId == i || !getOwnImsi().equals(imsi)) {
            return;
        }
        IMSLog.s(str, "update previous phoneId : " + this.mPhoneId + "to :" + i);
        this.mPhoneId = i;
    }

    @Override // com.sec.internal.helper.StateMachine
    public String toString() {
        return "ImSession [mChatData=" + this.mChatData + ", mSdpContentType=" + this.mSdpContentType + ", mThreadId=" + this.mThreadId + ", mSupportedFeatures=" + this.mSupportedFeatures + ", mRemoteAcceptTypes=" + this.mRemoteAcceptTypes + ", mRemoteAcceptWrappedTypes=" + this.mRemoteAcceptWrappedTypes + ", mInReplyToContributionId=" + this.mInReplyToContributionId + ", mIsComposing=" + this.mIsComposing + ", mParticipants=" + IMSLog.checker(this.mParticipants) + ", mRawHandle=" + this.mRawHandle + ", mClosedReason=" + this.mClosedReason + ", mComposingNotificationInterval=" + this.mComposingNotificationInterval + ", mComposingActiveUris=" + this.mComposingActiveUris + ", mProcessingFileTransfer=" + this.mProcessingFileTransfer + ", mPendingFileTransfer=" + this.mPendingFileTransfer + ", mRequestMessageId=" + this.mRequestMessageId + ", mCurrentMessages=" + this.mCurrentMessages + ", mRawHandle=" + this.mRawHandle + ", mServiceId=" + this.mServiceId + ", mAcceptTypes=" + this.mAcceptTypes + ", mAcceptWrappedTypes=" + this.mAcceptWrappedTypes + "]";
    }

    protected String toStringForDump() {
        return "ImSession [ChatId=" + this.mChatData.getChatId() + ", ConvId=" + this.mChatData.getConversationId() + ", ContId=" + this.mChatData.getContributionId() + ", ChatType=" + this.mChatData.getChatType() + ", Participants=" + IMSLog.checker(this.mParticipants) + ", Status=" + this.mChatData.getState() + ", ClosedReason=" + this.mClosedReason + "]";
    }

    public int hashCode() {
        ChatData chatData = this.mChatData;
        return 31 + (chatData == null ? 0 : chatData.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ImSession imSession = (ImSession) obj;
        ChatData chatData = this.mChatData;
        if (chatData == null) {
            return imSession.mChatData == null;
        }
        return chatData.equals(imSession.mChatData);
    }

    protected void updateUriGenerator(UriGenerator uriGenerator) {
        this.mUriGenerator = uriGenerator;
    }

    protected boolean needToUseGroupChatInvitationUI() {
        boolean z = isGroupChat() && this.mGetter.getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.GROUPCHAT_INVITATIONUI_USED) && !this.mConfig.isAutAcceptGroupChat();
        logi("needToUseGroupChatInvitationUI, ChatState=" + this.mChatData.getState() + ", ret=" + z);
        return z;
    }

    protected boolean isAutoAccept() {
        if (getRcsStrategy(this.mPhoneId) != null && getRcsStrategy(this.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.FORCE_AUTO_ACCEPT)) {
            return true;
        }
        if (isGroupChat()) {
            return this.mConfig.isAutAcceptGroupChat();
        }
        return this.mConfig.isAutAccept();
    }

    protected boolean isEstablishedState() {
        return getCurrentState() == this.mEstablishedState;
    }

    protected boolean isEmptySession() {
        return isChatState(ChatData.State.NONE) && !hasImSessionInfo(ImSessionInfo.ImSessionState.PENDING_INVITE);
    }

    protected boolean isVoluntaryDeparture() {
        return isGroupChat() && isChatState(ChatData.State.CLOSED_VOLUNTARILY);
    }

    protected IMnoStrategy getRcsStrategy(int i) {
        return this.mGetter.getRcsStrategy(i);
    }

    protected Message getFtCompleteCallback() {
        return obtainMessage(ImSessionEvent.FILE_COMPLETE);
    }

    protected void setNetworkFallbackMech(boolean z, boolean z2) {
        this.mChatFallbackMech = ChatFallbackMech.NONE;
        if (!isGroupChat()) {
            if (z) {
                this.mChatFallbackMech = ChatFallbackMech.NETWORK_INTERWORKING;
            } else if (z2 && this.mConfig.getChatRevokeTimer() > 0) {
                this.mChatFallbackMech = ChatFallbackMech.MESSAGE_REVOCATION;
            }
        }
        logi("setNetworkFallbackMech: isMsgFallbackSupported=" + z + ", isMsgRevokeSupported=" + z2 + ", isGroupChat()=" + isGroupChat() + ", getChatRevokeTimer()=" + this.mConfig.getChatRevokeTimer() + ", mChatFallbackMech=" + this.mChatFallbackMech);
    }

    protected void setNetworkFallbackMech(ChatFallbackMech chatFallbackMech) {
        this.mChatFallbackMech = chatFallbackMech;
        logi("setNetworkFallbackMech: mChatFallbackMech=" + this.mChatFallbackMech);
    }

    protected boolean isMsgFallbackSupported() {
        return this.mChatFallbackMech == ChatFallbackMech.NETWORK_INTERWORKING;
    }

    protected boolean isMsgRevocationSupported() {
        return this.mChatFallbackMech == ChatFallbackMech.MESSAGE_REVOCATION;
    }

    public boolean isTimerExpired() {
        return this.mIsTimerExpired;
    }

    protected void setIsTimerExpired(boolean z) {
        this.mIsTimerExpired = z;
    }

    protected void removeMsgFromListForRevoke(String str) {
        removeMsgFromListForRevoke(Collections.singletonList(str));
    }

    protected void removeMsgFromListForRevoke(Collection<String> collection) {
        this.mNeedToRevokeMessages.keySet().removeAll(collection);
        this.mListener.removeFromRevokingMessages(collection);
        logi("removeMsgFromListForRevoke() : msg imdnId : " + collection + ", remaining list size : " + this.mNeedToRevokeMessages.size());
        if (this.mNeedToRevokeMessages.isEmpty()) {
            this.mIsRevokeTimerRunning = false;
            PreciseAlarmManager.getInstance(getContext()).removeMessage(obtainMessage(ImSessionEvent.MESSAGE_REVOKE_TIMER_EXPIRED));
        }
    }

    protected Map<String, Integer> getNeedToRevokeMessages() {
        return this.mNeedToRevokeMessages;
    }

    protected void reconnectGuardTimerExpired() {
        if (this.mIsRevokeTimerRunning) {
            return;
        }
        sendMessage(ImSessionEvent.MESSAGE_REVOKE_TIMER_EXPIRED);
    }

    protected void messageRevocationRequestAll(boolean z, int i) {
        messageRevocationRequest(new ArrayList(this.mNeedToRevokeMessages.keySet()), z, i);
    }

    protected void messageRevocationRequest(List<String> list, boolean z, int i) {
        ArrayList arrayList = new ArrayList();
        logi("messageRevocationRequest() : imdnIds : " + list + " userSelectResult : " + z + " userSelectType : " + i);
        if (z) {
            if (i == 1) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    MessageBase message = this.mGetter.getMessage(it.next(), ImDirection.OUTGOING, null);
                    if (!(message instanceof ImMessage)) {
                        addPendingRevocationMessage(arrayList, message);
                    }
                }
            } else if (i == 2) {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    MessageBase message2 = this.mGetter.getMessage(it2.next(), ImDirection.OUTGOING, null);
                    if (!(message2 instanceof FtMessage)) {
                        addPendingRevocationMessage(arrayList, message2);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                this.mListener.onMessageRevocationDone(ImConstants.RevocationStatus.FAILED, arrayList, this);
            }
            sendMessage(obtainMessage(ImSessionEvent.SEND_MESSAGE_REVOKE_REQUEST, list));
            return;
        }
        Iterator<String> it3 = list.iterator();
        while (it3.hasNext()) {
            addPendingRevocationMessage(arrayList, this.mGetter.getMessage(it3.next(), ImDirection.OUTGOING, null));
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.mListener.onMessageRevocationDone(ImConstants.RevocationStatus.FAILED, arrayList, this);
    }

    private void addPendingRevocationMessage(Collection<MessageBase> collection, MessageBase messageBase) {
        if (messageBase == null || collection == null || messageBase.getRevocationStatus() != ImConstants.RevocationStatus.PENDING) {
            return;
        }
        collection.add(messageBase);
    }

    void setNotEmptyConversationId() {
        setConversationId(TextUtils.isEmpty(getConversationId()) ? StringIdGenerator.generateConversationId() : getConversationId());
    }

    void setNotEmptyContributionId() {
        setContributionId(TextUtils.isEmpty(getContributionId()) ? StringIdGenerator.generateContributionId() : getContributionId());
    }

    protected void startMsgRevokeOperationTimer(String str) {
        logi("startMsgRevokeOperationTimer() : imdnId : " + str);
        sendMessageDelayed(obtainMessage(ImSessionEvent.MESSAGE_REVOKE_OPERATION_TIMEOUT, str), 10000L);
    }

    protected void stopMsgRevokeOperationTimer(String str) {
        logi("stopMsgRevokeOperationTimer() : imdnId : " + str);
        getHandler().removeMessages(ImSessionEvent.MESSAGE_REVOKE_OPERATION_TIMEOUT, str);
    }

    protected void handleSendingStateRevokeMessages() {
        sendMessage(ImSessionEvent.RESEND_MESSAGE_REVOKE_REQUEST);
    }

    protected void onSendDisplayedNotification(List<MessageBase> list) {
        IMSLog.s(LOG_TAG, "onSendDisplayedNotification : messages = " + list);
        for (MessageBase messageBase : list) {
            ImSessionInfo imSessionInfoByMessageId = getImSessionInfoByMessageId(messageBase.getId());
            Object obj = this.mRawHandle;
            if (imSessionInfoByMessageId != null && imSessionInfoByMessageId.isSnFSession() && imSessionInfoByMessageId.mState == ImSessionInfo.ImSessionState.ESTABLISHED) {
                obj = imSessionInfoByMessageId.mRawHandle;
            }
            messageBase.sendDisplayedNotification(obj, getConversationId(), getContributionId(), obtainMessage(ImSessionEvent.SEND_DISPLAYED_NOTIFICATION_DONE, messageBase.toList()), getChatData().getOwnIMSI(), isGroupChat(), isBotSessionAnonymized());
        }
        if (this.mMessagesToSendDisplayNotification.isEmpty()) {
            return;
        }
        sendMessageDelayed(ImSessionEvent.SEND_DISPLAYED_NOTIFICATION, 1500L);
    }

    protected void onSendCanceledNotification(List<MessageBase> list) {
        IMSLog.s(LOG_TAG, "onSendCanceledNotification : messages = " + list);
        for (MessageBase messageBase : list) {
            messageBase.sendCanceledNotification(this.mRawHandle, getConversationId(), getContributionId(), obtainMessage(ImSessionEvent.SEND_CANCELED_NOTIFICATION_DONE, messageBase), getChatData().getOwnIMSI(), isGroupChat(), isBotSessionAnonymized());
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.ImSession$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode;

        static {
            int[] iArr = new int[IMnoStrategy.StatusCode.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode = iArr;
            try {
                iArr[IMnoStrategy.StatusCode.FALLBACK_TO_SLM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.FALLBACK_TO_SLM_FILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected void handleUploadedFileFallback(FtHttpOutgoingMessage ftHttpOutgoingMessage) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[getRcsStrategy(this.mPhoneId).getUploadedFileFallbackSLMTech().getStatusCode().ordinal()];
        if (i == 1) {
            sendMessage(obtainMessage(ImSessionEvent.SEND_SLM_MESSAGE, ftHttpOutgoingMessage));
        } else if (i == 2) {
            ftHttpOutgoingMessage.attachSlmFile();
        } else {
            if (i != 3) {
                return;
            }
            ftHttpOutgoingMessage.onSendMessageDone(new Result(ImError.REMOTE_TEMPORARILY_UNAVAILABLE, Result.Type.NONE), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY));
        }
    }

    protected void onEstablishmentTimeOut(Object obj) {
        ImSessionInfo imSessionInfo = getImSessionInfo(obj);
        logi("SESSION_ESTABLISHMENT_TIMEOUT : " + imSessionInfo);
        if (imSessionInfo == null || imSessionInfo.mState == ImSessionInfo.ImSessionState.ESTABLISHED) {
            return;
        }
        this.mClosedState.handleCloseSession(imSessionInfo.mRawHandle, ImSessionStopReason.NO_RESPONSE);
    }

    protected Object getRawHandle() {
        return this.mRawHandle;
    }

    protected void setRawHandle(Object obj) {
        this.mRawHandle = obj;
    }

    protected void transitionToStartingState() {
        transitionTo(this.mStartingState);
    }

    protected void addInProgressRequestCallback(Message message) {
        logi("addInProgressRequestCallback: " + message.what);
        removeMessages(ImSessionEvent.EVENT_REQUEST_TIMEOUT);
        sendMessageDelayed(obtainMessage(ImSessionEvent.EVENT_REQUEST_TIMEOUT), 5000L);
        this.mInProgressRequestCallbacks.add(message);
    }

    protected void removeInProgressRequestCallback(Message message) {
        logi("removeInProgressRequestCallback: " + message.what);
        this.mInProgressRequestCallbacks.remove(message);
        if (this.mInProgressRequestCallbacks.isEmpty()) {
            removeMessages(ImSessionEvent.EVENT_REQUEST_TIMEOUT);
            handlePendingEvents();
        }
    }

    protected void handleRequestTimeout() {
        logi("handleRequestTimeout: " + this.mInProgressRequestCallbacks);
        for (Message message : this.mInProgressRequestCallbacks) {
            if (message.what == 2009) {
                onChangeGroupChatLeaderFailed((List) message.obj, ImErrorReason.ENGINE_ERROR);
            } else {
                logi("handleRequestTimeout: Unexpected event " + message.what);
            }
        }
        this.mInProgressRequestCallbacks.clear();
        handlePendingEvents();
    }

    protected void handlePendingEvents() {
        logi("handlePendingEvents: " + this.mPendingEvents);
        Iterator<Message> it = this.mPendingEvents.iterator();
        while (it.hasNext()) {
            sendMessage(it.next());
        }
        this.mPendingEvents.clear();
    }

    protected void leaveSessionWithReject(Object obj) {
        IMSLog.c(LogClass.IM_INCOMING_SESSION_ERR, "User left");
        this.mImsService.rejectImSession(new RejectImSessionParams(this.mChatId, obj, ImSessionRejectReason.VOLUNTARILY, null));
        this.mClosedReason = ImSessionClosedReason.CLOSED_BY_LOCAL;
        handleCloseAllSession(ImSessionStopReason.VOLUNTARILY);
        updateChatState(ChatData.State.NONE);
        this.mListener.onChatDeparted(this);
        transitionToProperState();
        releaseWakeLock(obj);
    }
}
