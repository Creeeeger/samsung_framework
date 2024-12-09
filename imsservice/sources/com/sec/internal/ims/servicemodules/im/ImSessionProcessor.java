package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.im.IImSessionListener;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.cmstore.data.MessageContextValues;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ChatMode;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImIconData;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.ImSubjectData;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.event.ImComposingEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingMessageEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionConferenceInfoUpdateEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionEstablishedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImdnNotificationEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SendImdnFailedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SlmLMMIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptSlmParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectSlmParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImErrorReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionStopReason;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.BlockedNumberUtil;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ImsGateConfig;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor;
import com.sec.internal.ims.servicemodules.im.listener.IChatEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IFtEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener;
import com.sec.internal.ims.servicemodules.im.listener.ImSessionListener;
import com.sec.internal.ims.servicemodules.im.strategy.ChnStrategy;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.StringIdGenerator;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class ImSessionProcessor extends Handler implements ImSessionListener {
    private static final int EVENT_RESET_INCOMING_SESSION_FOR_A2P = 2;
    private static final int EVENT_VOLUNTARY_DEPARTURE_GROUPCHAT = 1;
    private static final String LOG_TAG = ImSessionProcessor.class.getSimpleName();
    private final IRcsBigDataProcessor mBigDataProcessor;
    private ImCache mCache;
    protected final List<IChatEventListener> mChatEventListeners;
    private Context mContext;
    private FtProcessor mFtProcessor;
    private GcmHandler mGcmHandler;
    private final List<ImSession> mGroupChatsForDeparture;
    private ImModule mImModule;
    private ImProcessor mImProcessor;
    private final ImRevocationHandler mImRevocationHandler;
    private final IImServiceInterface mImService;
    private final Map<Integer, ArrayList<IImSessionListener>> mImSessionListener;
    private ImTranslation mImTranslation;
    private ImdnHandler mImdnHandler;
    private final ISlmServiceInterface mSlmService;

    public ImSessionProcessor(Context context, IImServiceInterface iImServiceInterface, ISlmServiceInterface iSlmServiceInterface, ImModule imModule, ImCache imCache) {
        super(imModule.getLooper());
        this.mGroupChatsForDeparture = new ArrayList();
        this.mChatEventListeners = new ArrayList();
        this.mContext = context;
        this.mImService = iImServiceInterface;
        this.mImModule = imModule;
        this.mCache = imCache;
        this.mSlmService = iSlmServiceInterface;
        this.mImSessionListener = new HashMap();
        this.mBigDataProcessor = new ImBigDataProcessor(context, imModule);
        this.mImRevocationHandler = new ImRevocationHandler(context, imModule, imCache, this);
    }

    protected void init(ImProcessor imProcessor, FtProcessor ftProcessor, ImTranslation imTranslation) {
        this.mImProcessor = imProcessor;
        this.mFtProcessor = ftProcessor;
        this.mImTranslation = imTranslation;
        this.mImdnHandler = new ImdnHandler(this.mContext, this.mImModule, this.mCache, imProcessor, ftProcessor, this);
        this.mGcmHandler = new GcmHandler(this.mImModule, this.mCache, this, imTranslation);
    }

    protected void registerChatEventListener(IChatEventListener iChatEventListener) {
        this.mChatEventListeners.add(iChatEventListener);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int i = message.what;
        if (i == 1) {
            handleEventVoluntaryDeparture();
            return;
        }
        if (i != 2) {
            return;
        }
        int intValue = ((Integer) message.obj).intValue();
        Log.i(LOG_TAG, "EVENT_RESET_INCOMING_SESSION_FOR_A2P: phoneId = " + intValue);
        this.mImModule.mHasIncomingSessionForA2P.put(intValue, Boolean.FALSE);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatEstablished(ImSession imSession) {
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChatEstablished(imSession.getChatId(), imSession.getDirection(), imSession.getSessionUri(), imSession.mRemoteAcceptTypes, imSession.mRemoteAcceptWrappedTypes);
        }
        notifyImSessionEstablished(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()));
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatStatusUpdate(ImSession imSession, ImSession.SessionState sessionState) {
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChatUpdateState(imSession.getChatId(), imSession.getDirection(), sessionState);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatClosed(ImSession imSession, ImSessionClosedReason imSessionClosedReason) {
        if (imSessionClosedReason != ImSessionClosedReason.NONE) {
            Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
            while (it.hasNext()) {
                it.next().onChatClosed(imSession.getChatId(), imSession.getDirection(), imSessionClosedReason);
            }
        }
        this.mCache.removeActiveSession(imSession);
        notifyImSessionClosed(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()));
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatDeparted(ImSession imSession) {
        if (imSession == null) {
            Log.e(LOG_TAG, "onChatDeparted : invalid ImSession");
            return;
        }
        Log.i(LOG_TAG, "onChatDeparted : " + imSession.getChatId() + ", isReusable=" + imSession.isReusable());
        if (imSession.isReusable()) {
            imSession.updateChatState(ChatData.State.NONE);
        } else {
            this.mCache.deleteSession(imSession);
        }
        this.mGroupChatsForDeparture.remove(imSession);
    }

    protected void onSendImdnFailed(SendImdnFailedEvent sendImdnFailedEvent) {
        this.mImdnHandler.onSendImdnFailed(sendImdnFailedEvent);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onComposingReceived(ImSession imSession, ImsUri imsUri, String str, boolean z, int i) {
        Log.i(LOG_TAG, "notifyComposingReceived: " + imSession.getChatId() + " isComposing:" + z);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onComposingNotificationReceived(imSession.getChatId(), imSession.isGroupChat(), imsUri, str, z, i);
        }
    }

    protected void onImdnNotificationReceived(final ImdnNotificationEvent imdnNotificationEvent) {
        if (imdnNotificationEvent.mStatus == NotificationStatus.CANCELED) {
            post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    ImSessionProcessor.this.lambda$onImdnNotificationReceived$0(imdnNotificationEvent);
                }
            });
        } else {
            this.mImdnHandler.onImdnNotificationReceived(imdnNotificationEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onImdnNotificationReceived$0(ImdnNotificationEvent imdnNotificationEvent) {
        this.mImdnHandler.onCanceledNotificationReceived(imdnNotificationEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onComposingNotificationReceived$1(ImComposingEvent imComposingEvent) {
        this.mImdnHandler.onComposingNotificationReceived(imComposingEvent);
    }

    protected void onComposingNotificationReceived(final ImComposingEvent imComposingEvent) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$onComposingNotificationReceived$1(imComposingEvent);
            }
        });
    }

    public void getComposingActiveUris(final String str) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$getComposingActiveUris$2(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getComposingActiveUris$2(String str) {
        String str2 = LOG_TAG;
        Log.i(str2, "getComposingActiveUris: chatId=" + str);
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            Log.e(str2, "Session not found in the cache.");
            this.mImTranslation.notifyComposingActiveUris(str, null);
        } else {
            this.mImTranslation.notifyComposingActiveUris(str, imSession.getComposingActiveUris());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onAddParticipantsSucceeded(String str, List<ImsUri> list) {
        Log.i(LOG_TAG, "onAddParticipantsSucceeded: " + str);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onAddParticipantsSucceeded(str, list);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onAddParticipantsFailed(String str, List<ImsUri> list, ImErrorReason imErrorReason) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        int phoneId = imSession.getPhoneId();
        this.mImModule.getImDump().addEventLogs("onAddParticipantsFailed: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", " + IMSLog.numberChecker(list) + ", error=" + imErrorReason);
        ArrayList arrayList = new ArrayList();
        arrayList.add(imErrorReason.toString());
        ImsUtil.listToDumpFormat(LogClass.IM_ADD_PARTICIPANT_RES, phoneId, str, arrayList);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onAddParticipantsFailed(str, list, imErrorReason);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onRemoveParticipantsSucceeded(String str, List<ImsUri> list) {
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onRemoveParticipantsSucceeded(str, list);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onRemoveParticipantsFailed(String str, List<ImsUri> list, ImErrorReason imErrorReason) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        int phoneId = imSession.getPhoneId();
        this.mImModule.getImDump().addEventLogs("onRemoveParticipantsFailed: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", " + IMSLog.numberChecker(list) + ", error=" + imErrorReason);
        ArrayList arrayList = new ArrayList();
        arrayList.add(imErrorReason.toString());
        ImsUtil.listToDumpFormat(LogClass.IM_REMOVE_PARTICIPANT_RES, phoneId, str, arrayList);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onRemoveParticipantsFailed(str, list, imErrorReason);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatLeaderSucceeded(String str, List<ImsUri> list) {
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChangeGroupChatLeaderSucceeded(str, list);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatLeaderFailed(String str, List<ImsUri> list, ImErrorReason imErrorReason) {
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChangeGroupChatLeaderFailed(str, list, imErrorReason);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatSubjectSucceeded(String str, String str2) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        this.mImModule.getImDump().addEventLogs("onChangeGroupChatSubjectSucceeded: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", subject=" + IMSLog.checker(str2));
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChangeGroupChatSubjectSucceeded(str, str2);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatSubjectFailed(String str, String str2, ImErrorReason imErrorReason) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        this.mImModule.getImDump().addEventLogs("onChangeGroupChatSubjectFailed: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", subject=" + IMSLog.checker(str2) + ", error=" + imErrorReason);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChangeGroupChatSubjectFailed(str, str2, imErrorReason);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatIconSuccess(String str, String str2) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        this.mImModule.getImDump().addEventLogs("onChangeGroupChatIconSuccess: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId());
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChangeGroupChatIconSuccess(str, str2);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatIconFailed(String str, String str2, ImErrorReason imErrorReason) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        this.mImModule.getImDump().addEventLogs("onChangeGroupChatIconFailed: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", error=" + imErrorReason);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChangeGroupChatIconFailed(str, str2, imErrorReason);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupAliasSucceeded(String str, String str2) {
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChangeGroupAliasSucceeded(str, str2);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupAliasFailed(String str, String str2, ImErrorReason imErrorReason) {
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChangeGroupAliasFailed(str, str2, imErrorReason);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onParticipantsInserted(ImSession imSession, Collection<ImParticipant> collection) {
        if (imSession == null) {
            return;
        }
        Log.i(LOG_TAG, "onParticipantsInserted: " + imSession.getChatId() + ", " + IMSLog.checker(collection));
        this.mImModule.getImDump().addEventLogs("onParticipantsInserted: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", " + collection);
        this.mCache.addParticipant(collection);
        imSession.addParticipant(collection);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onParticipantsUpdated(ImSession imSession, Collection<ImParticipant> collection) {
        if (imSession == null) {
            return;
        }
        Log.i(LOG_TAG, "onParticipantsUpdated: " + imSession.getChatId() + ", " + collection);
        this.mImModule.getImDump().addEventLogs("onParticipantsUpdated: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", participants= " + collection);
        this.mCache.updateParticipant(collection);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onParticipantsDeleted(ImSession imSession, Collection<ImParticipant> collection) {
        if (imSession == null) {
            return;
        }
        Log.i(LOG_TAG, "onParticipantsDeleted: " + imSession.getChatId() + ", " + collection);
        this.mImModule.getImDump().addEventLogs("onParticipantsDeleted: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", participants= " + collection);
        this.mCache.deleteParticipant(collection);
        imSession.deleteParticipant(collection);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onNotifyParticipantsAdded(ImSession imSession, Map<ImParticipant, Date> map) {
        Log.i(LOG_TAG, "onNotifyParticipantsAdded: " + imSession.getChatId() + ", " + map);
        this.mImModule.getImDump().addEventLogs("onNotifyParticipantsAdded: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", participants= " + map);
        makeNewSystemUserMessage(imSession, map, ImConstants.Type.SYSTEM_USER_JOINED);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onParticipantsAdded(imSession, map.keySet());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onNotifyParticipantsJoined(ImSession imSession, Map<ImParticipant, Date> map) {
        if (imSession == null) {
            return;
        }
        Log.i(LOG_TAG, "onNotifyParticipantsJoined: " + imSession.getChatId() + ", " + map);
        this.mImModule.getImDump().addEventLogs("onNotifyParticipantsJoined: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", participants= " + map);
        makeNewSystemUserMessage(imSession, map, ImConstants.Type.SYSTEM_USER_JOINED);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onParticipantsJoined(imSession, map.keySet());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onNotifyParticipantsLeft(ImSession imSession, Map<ImParticipant, Date> map) {
        if (imSession == null) {
            return;
        }
        Log.i(LOG_TAG, "onNotifyParticipantsLeft: " + imSession.getChatId() + ", " + map);
        this.mImModule.getImDump().addEventLogs("onNotifyParticipantsLeft: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", participants= " + map);
        makeNewSystemUserMessage(imSession, map, ImConstants.Type.SYSTEM_USER_LEFT);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onParticipantsLeft(imSession, map.keySet());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onNotifyParticipantsKickedOut(ImSession imSession, Map<ImParticipant, Date> map) {
        if (imSession == null) {
            return;
        }
        Log.i(LOG_TAG, "onNotifyParticipantsKickedOut: " + imSession.getChatId() + ", " + map);
        this.mImModule.getImDump().addEventLogs("onNotifyParticipantsKickedOut: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", participants= " + map);
        makeNewSystemUserMessage(imSession, map, ImConstants.Type.SYSTEM_USER_KICKOUT);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onParticipantsLeft(imSession, map.keySet());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onGroupChatLeaderChanged(ImSession imSession, String str) {
        if (imSession == null) {
            return;
        }
        Log.i(LOG_TAG, "onGroupChatLeaderChanged: " + imSession.getChatId() + ", " + str);
        this.mImModule.getImDump().addEventLogs("onGroupChatLeaderChanged: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", leader= " + str);
        this.mCache.makeNewSystemUserMessage(imSession, str, ImConstants.Type.SYSTEM_LEADER_CHANGED);
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onGroupChatLeaderUpdated(imSession.getChatId(), str);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onGroupChatLeaderInformed(ImSession imSession, String str) {
        Log.i(LOG_TAG, "onGroupChatLeaderInformed: " + IMSLog.numberChecker(str));
        this.mCache.makeNewSystemUserMessage(imSession, str, ImConstants.Type.SYSTEM_LEADER_INFORMED);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onIncomingSessionProcessed(ImIncomingMessageEvent imIncomingMessageEvent, ImSession imSession, boolean z) {
        Log.i(LOG_TAG, "onIncomingSessionProcessed, need to notify?: " + z);
        this.mCache.updateActiveSession(imSession);
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getChatData().getOwnIMSI());
        if (this.mImModule.getImConfig(phoneIdByIMSI).getUserAliasEnabled() && !this.mImModule.getImConfig(phoneIdByIMSI).getRealtimeUserAliasAuth() && !imSession.isGroupChat()) {
            if (imIncomingMessageEvent != null) {
                ImsUri normalizeUri = this.mImModule.normalizeUri(phoneIdByIMSI, imIncomingMessageEvent.mSender);
                if (normalizeUri != null) {
                    imSession.updateParticipantAlias(imIncomingMessageEvent.mUserAlias, imSession.getParticipant(normalizeUri));
                }
            } else if (!imSession.getParticipants().isEmpty()) {
                imSession.updateParticipantAlias(imSession.getInitiatorAlias(), imSession.getParticipants().iterator().next());
            }
        }
        if (z) {
            Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
            while (it.hasNext()) {
                it.next().onChatInvitationReceived(imSession);
            }
        }
        onIncomingMessageProcessed(imIncomingMessageEvent, imSession);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onIncomingMessageProcessed(ImIncomingMessageEvent imIncomingMessageEvent, ImSession imSession) {
        if (imIncomingMessageEvent == null || TextUtils.isEmpty(imIncomingMessageEvent.mBody)) {
            return;
        }
        Log.i(LOG_TAG, "Received a message in INVITE : " + imIncomingMessageEvent.mImdnMessageId);
        imIncomingMessageEvent.mChatId = imSession.getChatId();
        this.mImProcessor.onIncomingMessageReceived(imIncomingMessageEvent);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onImErrorReport(ImError imError, int i) {
        String str = LOG_TAG;
        Log.i(str, "onImErrorReport");
        ImsRegistration imsRegistration = this.mImModule.getImsRegistration(i);
        if (imsRegistration != null) {
            IRegistrationGovernor registrationGovernor = ImsRegistry.getRegistrationManager().getRegistrationGovernor(imsRegistration.getHandle());
            ArrayList arrayList = new ArrayList();
            arrayList.add(String.valueOf(imError.ordinal()));
            ImsUtil.listToDumpFormat(LogClass.IM_IMERRORREPORT, i, MessageContextValues.none, arrayList);
            if (registrationGovernor != null) {
                int i2 = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[imError.ordinal()];
                if (i2 == 1) {
                    Log.i(str, "onImErrorReport : 403 forbidden no warning header, try re-regi");
                    registrationGovernor.onSipError("im", SipErrorBase.FORBIDDEN);
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    Log.i(str, "onImErrorReport : 403 forbidden service not authorised");
                    registrationGovernor.onSipError("im", SipErrorBase.FORBIDDEN_SERVICE_NOT_AUTHORISED);
                }
            }
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError;

        static {
            int[] iArr = new int[ImError.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError = iArr;
            try {
                iArr[ImError.FORBIDDEN_NO_WARNING_HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onProcessingFileTransferChanged(ImSession imSession) {
        this.mFtProcessor.notifyOngoingFtEvent(imSession.mProcessingFileTransfer.isEmpty() && !this.mCache.hasProcessingFileTransfer(), this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()));
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatSubjectUpdated(String str, ImSubjectData imSubjectData) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        this.mImModule.getImDump().addEventLogs("onChatSubjectUpdated: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", subject=" + IMSLog.checker(imSubjectData.getSubject()));
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onChatSubjectUpdated(str, imSubjectData);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onGroupChatIconUpdated(String str, ImIconData imIconData) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        this.mImModule.getImDump().addEventLogs("onGroupChatIconUpdated: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId());
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onGroupChatIconUpdated(str, imIconData);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onGroupChatIconDeleted(String str) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        this.mImModule.getImDump().addEventLogs("onGroupChatIconDeleted: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId());
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onGroupChatIconDeleted(str);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onParticipantAliasUpdated(String str, ImParticipant imParticipant) {
        Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onParticipantAliasUpdated(str, imParticipant);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onBlockedMessageReceived(ImIncomingMessageEvent imIncomingMessageEvent) {
        this.mImProcessor.onIncomingMessageReceived(imIncomingMessageEvent);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onRequestSendMessage(ImSession imSession, MessageBase messageBase) {
        this.mImProcessor.sendMessage(imSession, messageBase);
    }

    protected Future<ImSession> createChat(List<ImsUri> list, String str, String str2, int i, String str3) {
        return createChat(0, list, str, str2, i, str3, false, false, null, null, false, false, null, null, null);
    }

    public Future<ImSession> createChat(int i, List<ImsUri> list, String str, String str2, int i2, String str3, boolean z, boolean z2, String str4, Uri uri, boolean z3, boolean z4) {
        return createChat(i, list, str, str2, i2, str3, z, z2, str4, uri, z3, z4, null, null, null);
    }

    protected Future<ImSession> createChat(final int i, final List<ImsUri> list, final String str, final String str2, final int i2, final String str3, final boolean z, final boolean z2, final String str4, final Uri uri, final boolean z3, final boolean z4, final String str5, final String str6, final ImsUri imsUri) {
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda17
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ImSession lambda$createChat$3;
                lambda$createChat$3 = ImSessionProcessor.this.lambda$createChat$3(i, list, str, str2, i2, str3, z, z2, str4, uri, z3, z4, str5, str6, imsUri);
                return lambda$createChat$3;
            }
        });
        post(futureTask);
        return futureTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ImSession lambda$createChat$3(int i, List list, String str, String str2, int i2, String str3, boolean z, boolean z2, String str4, Uri uri, boolean z3, boolean z4, String str5, String str6, ImsUri imsUri) throws Exception {
        String str7;
        ChatData.ChatType chatType;
        IMnoStrategy iMnoStrategy;
        ChatMode chatMode;
        boolean z5;
        ImSession imSession;
        ChatData.ChatType chatType2;
        IMnoStrategy iMnoStrategy2;
        boolean z6;
        String str8 = LOG_TAG;
        IMSLog.i(str8, i, "createChat: participants=" + IMSLog.numberChecker(list) + ", subject=" + IMSLog.checker(str) + ", sdpContentType=" + str2 + ", threadId=" + i2 + ", requestMessageId=" + str3 + ", isBroadcastChat=" + z + ", isClosedGC=" + z2 + ", iconName=" + str4 + ", iconUri=" + uri + ", isTokenUsed=" + z3 + ", isTokenLink=" + z4 + ", conversationId=" + str5 + ", contributionId=" + str6 + ", sessionUri=" + imsUri);
        String imsiFromPhoneId = this.mImModule.getImsiFromPhoneId(i);
        if (!this.mImModule.isRegistered(i) && !RcsPolicyManager.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.PENDING_FOR_REGI)) {
            Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
            while (it.hasNext()) {
                it.next().onCreateChatFailed(i, i2, ImErrorReason.INVALID, str3);
            }
            return null;
        }
        Set<ImsUri> normalizeUri = this.mImModule.normalizeUri(i, new HashSet(list));
        if (normalizeUri == null || normalizeUri.isEmpty()) {
            Log.i(str8, "createChat: normalizedParticipants is null or empty");
            Iterator<IChatEventListener> it2 = this.mChatEventListeners.iterator();
            while (it2.hasNext()) {
                it2.next().onCreateChatFailed(i, i2, ImErrorReason.INVALID, str3);
            }
            return null;
        }
        boolean z7 = normalizeUri.size() > 1 || !TextUtils.isEmpty(str6);
        if (!z && z7 && !this.mImModule.getImConfig(i).getGroupChatEnabled()) {
            Log.i(str8, "GroupChat is disabled. getGroupChatEnabled=false");
            Iterator<IChatEventListener> it3 = this.mChatEventListeners.iterator();
            while (it3.hasNext()) {
                it3.next().onCreateChatFailed(i, i2, ImErrorReason.FRAMEWORK_ERROR_FALLBACKFAILED, str3);
            }
            return null;
        }
        if (!z7 || uri == null) {
            str7 = null;
        } else {
            String copyFileToCacheFromUri = FileUtils.copyFileToCacheFromUri(this.mContext, str4, uri);
            if (TextUtils.isEmpty(copyFileToCacheFromUri)) {
                Log.e(str8, "icon file doesn't exist");
                Iterator<IChatEventListener> it4 = this.mChatEventListeners.iterator();
                while (it4.hasNext()) {
                    it4.next().onCreateChatFailed(i, i2, ImErrorReason.INVALID_ICON_PATH, str3);
                }
                return null;
            }
            str7 = copyFileToCacheFromUri;
        }
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        ChatData.ChatType generateChatType = generateChatType(z7, z2 && rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.PARTICIPANTBASED_CLOSED_GROUPCHAT), z);
        ChatMode chatMode2 = ChatMode.OFF;
        if (z3 && !z4) {
            chatMode2 = ChatMode.ON;
        }
        ChatMode chatMode3 = chatMode2;
        ImSession imSessionByParticipants = (!z7 || generateChatType == ChatData.ChatType.PARTICIPANT_BASED_GROUP_CHAT) ? this.mCache.getImSessionByParticipants(normalizeUri, generateChatType, imsiFromPhoneId, chatMode3) : null;
        if (z7 || imSessionByParticipants != null) {
            chatType = generateChatType;
            iMnoStrategy = rcsStrategy;
            chatMode = chatMode3;
            z5 = z7;
            imSession = imSessionByParticipants;
        } else {
            String generateChatId = StringIdGenerator.generateChatId(normalizeUri, imsiFromPhoneId, false, chatMode3.getId());
            imSession = this.mCache.getImSession(generateChatId);
            chatType = generateChatType;
            if (imSession != null) {
                iMnoStrategy = rcsStrategy;
                if (imSession.getParticipantsSize() < 1) {
                    ArrayList arrayList = new ArrayList();
                    chatMode = chatMode3;
                    z5 = z7;
                    arrayList.add(new ImParticipant(generateChatId, ImParticipant.Status.INVITED, normalizeUri.iterator().next()));
                    Log.e(str8, "createChat() : error, participant table is empty");
                    onParticipantsInserted(imSession, arrayList);
                }
            } else {
                iMnoStrategy = rcsStrategy;
            }
            chatMode = chatMode3;
            z5 = z7;
        }
        if (imSession == null) {
            chatType2 = chatType;
            ChatMode chatMode4 = chatMode;
            z6 = z5;
            iMnoStrategy2 = iMnoStrategy;
            imSession = this.mCache.makeNewOutgoingSession(imsiFromPhoneId, normalizeUri, chatType2, str, str2, i2, str3, str7, chatMode4, str5, str6, imsUri);
        } else {
            chatType2 = chatType;
            iMnoStrategy2 = iMnoStrategy;
            z6 = z5;
            imSession.restartSession(i2, str3, str);
        }
        if (iMnoStrategy2.boolSetting(RcsPolicySettings.RcsPolicy.START_SESSION_WHEN_CREATE_GROUPCHAT) && ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType2)) {
            imSession.startSession();
        }
        Iterator<IChatEventListener> it5 = this.mChatEventListeners.iterator();
        while (it5.hasNext()) {
            it5.next().onCreateChatSucceeded(imSession);
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(String.valueOf(chatType2.getId()));
        arrayList2.add(z6 ? "1" : "0");
        arrayList2.add(z2 ? "1" : "0");
        ImsUtil.listToDumpFormat(LogClass.IM_CREATE_CHAT, i, imSession.getChatId(), arrayList2);
        return imSession;
    }

    protected void addParticipants(final String str, final List<ImsUri> list) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$addParticipants$4(str, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addParticipants$4(String str, List list) {
        this.mGcmHandler.addParticipants(str, list);
    }

    protected void removeParticipants(final String str, final List<ImsUri> list) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$removeParticipants$5(str, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeParticipants$5(String str, List list) {
        this.mGcmHandler.removeParticipants(str, list);
    }

    protected void changeGroupChatLeader(final String str, final List<ImsUri> list) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$changeGroupChatLeader$6(str, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changeGroupChatLeader$6(String str, List list) {
        this.mGcmHandler.changeGroupChatLeader(str, list);
    }

    protected void changeGroupChatSubject(final String str, final String str2) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$changeGroupChatSubject$7(str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changeGroupChatSubject$7(String str, String str2) {
        this.mGcmHandler.changeGroupChatSubject(str, str2);
    }

    protected void changeGroupChatIcon(final String str, final String str2, final Uri uri) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$changeGroupChatIcon$8(str, str2, uri);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changeGroupChatIcon$8(String str, String str2, Uri uri) {
        this.mGcmHandler.changeGroupChatIcon(this.mContext, str, str2, uri);
    }

    protected void changeGroupAlias(final String str, final String str2) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$changeGroupAlias$9(str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changeGroupAlias$9(String str, String str2) {
        this.mGcmHandler.changeGroupAlias(str, str2);
    }

    protected FutureTask<Boolean> deleteChats(final List<String> list, final boolean z) {
        FutureTask<Boolean> futureTask = new FutureTask<>(new Callable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Boolean lambda$deleteChats$10;
                lambda$deleteChats$10 = ImSessionProcessor.this.lambda$deleteChats$10(list, z);
                return lambda$deleteChats$10;
            }
        });
        post(futureTask);
        return futureTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$deleteChats$10(List list, boolean z) throws Exception {
        Log.i(LOG_TAG, "deleteChats: " + list);
        if (!z) {
            this.mCache.deleteMessagesforCloudSyncUsingChatId(list);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ImSession imSession = this.mCache.getImSession(str);
            if (imSession != null && !imSession.isGroupChat()) {
                Set<ImSession> allImSessionByParticipants = this.mCache.getAllImSessionByParticipants(imSession.getParticipantsUri(), ChatData.ChatType.ONE_TO_ONE_CHAT);
                if (allImSessionByParticipants != null && !allImSessionByParticipants.isEmpty()) {
                    Iterator<ImSession> it2 = allImSessionByParticipants.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(it2.next().getChatId());
                    }
                }
            }
            arrayList2.add(str);
        }
        for (String str2 : arrayList2) {
            this.mCache.deleteAllMessages(str2);
            ImSession imSession2 = this.mCache.getImSession(str2);
            if (imSession2 != null) {
                int chatStateId = imSession2.getChatStateId();
                int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession2.getOwnImsi());
                boolean boolSetting = RcsPolicyManager.getRcsStrategy(phoneIdByIMSI).boolSetting(RcsPolicySettings.RcsPolicy.WAIT_DEACTVAING_DELETE_CHAT);
                Log.i(LOG_TAG, "deleteChats, stateId=" + chatStateId);
                ImsUtil.listToDumpFormat(LogClass.IM_DELETE_CHAT, phoneIdByIMSI, str2);
                if (RcsPolicyManager.getRcsStrategy(phoneIdByIMSI).isDeleteSessionSupported(imSession2.getChatType(), chatStateId)) {
                    if (imSession2.isGroupChat()) {
                        arrayList.add(imSession2);
                    } else if (!boolSetting) {
                        imSession2.closeSession();
                        this.mCache.deleteSession(imSession2);
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            handleVoluntaryDeparture(arrayList, false);
        }
        return Boolean.TRUE;
    }

    protected FutureTask<Boolean> deleteChatsForUnsubscribe(final int i) {
        FutureTask<Boolean> futureTask = new FutureTask<>(new Callable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda16
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Boolean lambda$deleteChatsForUnsubscribe$11;
                lambda$deleteChatsForUnsubscribe$11 = ImSessionProcessor.this.lambda$deleteChatsForUnsubscribe$11(i);
                return lambda$deleteChatsForUnsubscribe$11;
            }
        });
        post(futureTask);
        return futureTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$deleteChatsForUnsubscribe$11(int i) throws Exception {
        String imsiFromPhoneId = this.mImModule.getImsiFromPhoneId(i);
        IMSLog.i(LOG_TAG, i, "deleteChatsForUnsubscribe: imsi=" + IMSLog.checker(imsiFromPhoneId));
        if (TextUtils.isEmpty(imsiFromPhoneId)) {
            return Boolean.FALSE;
        }
        this.mCache.loadImSessionByChatType(imsiFromPhoneId, true);
        for (ImSession imSession : this.mCache.getAllImSessions()) {
            if (imSession != null && imSession.getChatType() == ChatData.ChatType.REGULAR_GROUP_CHAT && imsiFromPhoneId.equals(imSession.getOwnImsi())) {
                this.mCache.deleteAllMessages(imSession.getChatId());
                this.mCache.deleteSession(imSession);
                Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
                while (it.hasNext()) {
                    it.next().onChatClosed(imSession.getChatId(), imSession.getDirection(), ImSessionClosedReason.LEFT_BY_SERVER);
                }
            }
        }
        return Boolean.TRUE;
    }

    protected FutureTask<Boolean> deleteAllChats() {
        FutureTask<Boolean> futureTask = new FutureTask<>(new Callable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda19
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Boolean lambda$deleteAllChats$12;
                lambda$deleteAllChats$12 = ImSessionProcessor.this.lambda$deleteAllChats$12();
                return lambda$deleteAllChats$12;
            }
        });
        post(futureTask);
        return futureTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$deleteAllChats$12() throws Exception {
        Log.i(LOG_TAG, "deleteAllChats");
        for (ImSession imSession : this.mCache.getAllImSessions()) {
            IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()));
            this.mCache.deleteAllMessages(imSession.getChatId());
            int chatStateId = imSession.getChatStateId();
            Log.i(LOG_TAG, "deleteChats, stateId=" + chatStateId);
            if (rcsStrategy.isDeleteSessionSupported(imSession.getChatType(), chatStateId)) {
                this.mCache.deleteSession(imSession);
            }
        }
        return Boolean.TRUE;
    }

    protected void answerGcSession(final String str, final boolean z) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$answerGcSession$13(str, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$answerGcSession$13(String str, boolean z) {
        Log.i(LOG_TAG, String.format("answerSession: %s %b", str, Boolean.valueOf(z)));
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            return;
        }
        if (z) {
            imSession.acceptSession(true);
        } else {
            imSession.rejectSession();
        }
    }

    protected void readMessages(String str, List<String> list) {
        readMessages(str, list, false);
    }

    protected void readMessages(String str, List<String> list, boolean z) {
        this.mImdnHandler.readMessages(str, list, z);
    }

    protected void cancelMessages(String str, List<String> list) {
        this.mImdnHandler.cancelMessages(str, list);
    }

    protected void ignoreIncomingMsgSet(final String str, final boolean z) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$ignoreIncomingMsgSet$14(str, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$ignoreIncomingMsgSet$14(String str, boolean z) {
        Log.i(LOG_TAG, "ignoreIncomingMsgSet: chatId=" + str + " isIgnore=" + z);
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession != null) {
            if (this.mImModule.isRegistered(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()))) {
                imSession.getChatData().updateIsMuted(z);
                this.mImTranslation.onIgnoreIncomingMsgSetResponse(str, true);
                return;
            }
        }
        this.mImTranslation.onIgnoreIncomingMsgSetResponse(str, false);
    }

    public void sendComposingNotification(final String str, final int i, final boolean z) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$sendComposingNotification$15(str, i, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendComposingNotification$15(String str, int i, boolean z) {
        this.mImdnHandler.sendComposingNotification(str, i, z);
    }

    protected void acceptChat(final String str, final boolean z, final int i) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$acceptChat$16(str, z, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acceptChat$16(String str, boolean z, int i) {
        String str2 = LOG_TAG;
        Log.i(str2, "acceptChat: chatId=" + str + "isAccept=" + z + ", reason=" + i);
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            Log.e(str2, "acceptChat: Session not found in the cache");
            return;
        }
        if (this.mImModule.isRegistered(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()))) {
            if (z) {
                imSession.acceptSession(false);
            } else {
                imSession.rejectSession(i);
            }
        }
    }

    public void openChat(final String str, final boolean z) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$openChat$17(str, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openChat$17(String str, boolean z) {
        String str2 = LOG_TAG;
        Log.i(str2, "openChat: chatId=" + str + ", has Invitation UI=" + z);
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            Log.e(str2, "openChat: Session not found in the cache");
            return;
        }
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getChatData().getOwnIMSI());
        if (this.mImModule.isRegistered(phoneIdByIMSI) && !imSession.isAutoAccept() && this.mImModule.getImConfig(phoneIdByIMSI).getImSessionStart() == ImConstants.ImSessionStart.WHEN_OPENS_CHAT_WINDOW && !z) {
            imSession.acceptSession(false);
        }
    }

    protected void closeChat(String str) {
        final ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$closeChat$18(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeChat$18(List list) {
        lambda$closeChat$19(list, true, false);
    }

    protected void closeChat(final List<String> list, final boolean z, final boolean z2) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$closeChat$19(list, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: closeChatInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$closeChat$19(List<String> list, boolean z, boolean z2) {
        Log.i(LOG_TAG, "closeChatInternal: chatId=" + list);
        ArrayList arrayList = new ArrayList();
        ArrayList<ImSession> arrayList2 = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            ImSession imSession = this.mCache.getImSession(it.next());
            if (imSession == null) {
                Log.e(LOG_TAG, "Session not found in the cache.");
            } else {
                arrayList2.add(imSession);
            }
        }
        for (ImSession imSession2 : arrayList2) {
            int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession2.getOwnImsi());
            ImsUtil.listToDumpFormat(LogClass.IM_CLOSE_CHAT, phoneIdByIMSI, imSession2.getChatId());
            if (z2) {
                if (z && imSession2.isGroupChat() && RcsPolicyManager.getRcsStrategy(phoneIdByIMSI) != null && (RcsPolicyManager.getRcsStrategy(phoneIdByIMSI) instanceof ChnStrategy)) {
                    imSession2.updateChatState(ChatData.State.CLOSED_VOLUNTARILY);
                }
                imSession2.closeSession(true, ImSessionStopReason.GC_FORCE_CLOSE);
            } else if (z) {
                if (imSession2.isGroupChat()) {
                    arrayList.add(imSession2);
                } else {
                    imSession2.closeSession(true, ImSessionStopReason.VOLUNTARILY);
                }
            } else {
                imSession2.closeSession();
            }
            this.mCache.removeActiveSession(imSession2);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        handleVoluntaryDeparture(arrayList, true);
    }

    protected void processRejoinGCSession(final int i) {
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        final String imsiFromPhoneId = this.mImModule.getImsiFromPhoneId(i);
        ArrayList<ImSession> arrayList = new ArrayList();
        for (ImSession imSession : this.mCache.getAllImSessions()) {
            if (imSession.isAutoRejoinSession()) {
                arrayList.add(imSession);
            }
        }
        int intSetting = rcsStrategy.intSetting(RcsPolicySettings.RcsPolicy.MAX_SIPINVITE_ATONCE);
        Log.i(LOG_TAG, "rejoinSession: list size : " + arrayList.size() + " limit : " + intSetting);
        if (intSetting > 0) {
            Iterator<List<T>> it = CollectionUtils.partition(arrayList, intSetting).iterator();
            int i2 = 0;
            while (it.hasNext()) {
                final List list = (List) it.next();
                postDelayed(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImSessionProcessor.this.lambda$processRejoinGCSession$20(list, i, imsiFromPhoneId);
                    }
                }, i2 * 1000);
                i2++;
            }
            return;
        }
        for (ImSession imSession2 : arrayList) {
            if (this.mImModule.isRegistered(i) && imSession2.isGroupChat() && TextUtils.equals(imSession2.getChatData().getOwnIMSI(), imsiFromPhoneId)) {
                imSession2.processRejoinGCSession();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processRejoinGCSession$20(List list, int i, String str) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ImSession imSession = (ImSession) it.next();
            if (this.mImModule.isRegistered(i) && imSession.isGroupChat() && TextUtils.equals(imSession.getChatData().getOwnIMSI(), str)) {
                imSession.processRejoinGCSession();
            }
        }
    }

    protected void onConferenceInfoUpdated(ImSessionConferenceInfoUpdateEvent imSessionConferenceInfoUpdateEvent) {
        String str = LOG_TAG;
        Log.i(str, "onConferenceInfoUpdated: " + imSessionConferenceInfoUpdateEvent);
        ImSession imSession = this.mCache.getImSession(imSessionConferenceInfoUpdateEvent.mChatId);
        if (imSession == null) {
            Log.e(str, "onConferenceInfoUpdated: Session not found.");
        } else if (imSession.getChatType() == ChatData.ChatType.PARTICIPANT_BASED_GROUP_CHAT) {
            Log.i(str, "onConferenceInfoUpdated: ignore the event.");
        } else {
            imSession.receiveConferenceInfo(imSessionConferenceInfoUpdateEvent);
        }
    }

    protected void onSessionEstablished(ImSessionEstablishedEvent imSessionEstablishedEvent) {
        String str = LOG_TAG;
        Log.i(str, "onSessionEstablished: " + imSessionEstablishedEvent);
        ImSession imSession = this.mCache.getImSession(imSessionEstablishedEvent.mChatId);
        ArrayList arrayList = new ArrayList();
        if (imSession == null) {
            Log.e(str, "onSessionEstablished: Session not found.");
            return;
        }
        this.mImModule.getImDump().addEventLogs("onSessionEstablished: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId());
        arrayList.add(imSession.getConversationId() != null ? imSession.getConversationId() : MessageContextValues.none);
        imSession.receiveSessionEstablished(imSessionEstablishedEvent);
        ImsUtil.listToDumpFormat(LogClass.IM_SESSION_ESTABLISHED, imSession.getPhoneId(), imSessionEstablishedEvent.mChatId, arrayList);
    }

    protected void onSessionClosed(ImSessionClosedEvent imSessionClosedEvent) {
        ImSession imSession;
        String str = LOG_TAG;
        Log.i(str, "onSessionClosed: " + imSessionClosedEvent);
        String str2 = imSessionClosedEvent.mChatId;
        if (str2 == null) {
            imSession = this.mCache.getImSessionByRawHandle(imSessionClosedEvent.mRawHandle);
        } else {
            imSession = this.mCache.getImSession(str2);
        }
        if (imSession == null) {
            Log.e(str, "onSessionClosed: Session not found.");
            return;
        }
        this.mImModule.getImDump().addEventLogs("onSessionClosed: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + imSessionClosedEvent.mResult.toString());
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.valueOf(imSessionClosedEvent.mResult.getType().ordinal()));
        ImsUtil.listToDumpFormat(LogClass.IM_SESSION_CLOSED, imSession.getPhoneId(), imSessionClosedEvent.mChatId, arrayList);
        imSession.receiveSessionClosed(imSessionClosedEvent);
    }

    protected void onIncomingSessionReceived(final ImIncomingSessionEvent imIncomingSessionEvent) {
        new Thread(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$onIncomingSessionReceived$21(imIncomingSessionEvent);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onIncomingSessionReceived$21(ImIncomingSessionEvent imIncomingSessionEvent) {
        this.mImModule.acquireWakeLock(imIncomingSessionEvent.mRawHandle);
        if (!TextUtils.isEmpty(imIncomingSessionEvent.mServiceId)) {
            this.mImModule.releaseWakeLock(imIncomingSessionEvent.mRawHandle);
            return;
        }
        String str = LOG_TAG;
        Log.i(str, "onIncomingSessionReceived: " + imIncomingSessionEvent);
        this.mImModule.getImDump().addEventLogs("onIncomingSessionReceived: convId=" + imIncomingSessionEvent.mConversationId + ", contId=" + imIncomingSessionEvent.mContributionId);
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imIncomingSessionEvent.mOwnImsi);
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(phoneIdByIMSI);
        ImsUri imsUri = imIncomingSessionEvent.mSessionUri;
        Set<ImsUri> normalizedParticipants = getNormalizedParticipants(phoneIdByIMSI, imIncomingSessionEvent.mRecipients, (imsUri == null || !imsUri.equals(imIncomingSessionEvent.mInitiator)) ? imIncomingSessionEvent.mInitiator : null);
        boolean z = normalizedParticipants.size() > 1 || imIncomingSessionEvent.mSessionType == ImIncomingSessionEvent.ImSessionType.CONFERENCE;
        ImSessionRejectReason checkForRejectIncomingSession = checkForRejectIncomingSession(phoneIdByIMSI, z, imIncomingSessionEvent.mIsClosedGroupChat);
        if (checkForRejectIncomingSession != null) {
            Log.i(str, "onIncomingSessionReceived: reject");
            this.mImService.rejectImSession(new RejectImSessionParams(null, imIncomingSessionEvent.mRawHandle, checkForRejectIncomingSession, null));
            this.mImModule.releaseWakeLock(imIncomingSessionEvent.mRawHandle);
            return;
        }
        ChatData.ChatType generateChatType = generateChatType(z, imIncomingSessionEvent.mIsClosedGroupChat && rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.PARTICIPANTBASED_CLOSED_GROUPCHAT), false);
        imIncomingSessionEvent.mFromBlocked = this.mImModule.isBlockedNumber(phoneIdByIMSI, imIncomingSessionEvent.mInitiator, z);
        synchronized (this) {
            boolean z2 = z;
            ImSession findSession = findSession(phoneIdByIMSI, imIncomingSessionEvent.mOwnImsi, z, generateChatType, imIncomingSessionEvent.mPrevContributionId, imIncomingSessionEvent.mContributionId, imIncomingSessionEvent.mConversationId, normalizedParticipants, imIncomingSessionEvent.mIsTokenUsed ? ChatMode.ON : ChatMode.OFF);
            this.mGcmHandler.updateParticipants(findSession, normalizedParticipants);
            if (findSession == null) {
                if (imIncomingSessionEvent.mIsForStoredNoti) {
                    Log.i(str, "onIncomingSessionReceived: no session. accept rcse-standfw invite");
                    this.mImService.acceptImSession(new AcceptImSessionParams(null, this.mImModule.getUserAlias(phoneIdByIMSI, false), imIncomingSessionEvent.mRawHandle, true, null));
                    this.mImModule.releaseWakeLock(imIncomingSessionEvent.mRawHandle);
                    return;
                } else {
                    Log.i(str, "onIncomingSessionReceived: Make new incoming session.");
                    findSession = this.mCache.makeNewIncomingSession(imIncomingSessionEvent, normalizedParticipants, generateChatType, imIncomingSessionEvent.mIsTokenUsed ? ChatMode.ON : ChatMode.OFF);
                    if (RcsPolicyManager.getRcsStrategy(phoneIdByIMSI).boolSetting(RcsPolicySettings.RcsPolicy.CHECK_INITIATOR_SESSIONURI) && z2 && this.mImModule.normalizeUri(phoneIdByIMSI, imIncomingSessionEvent.mInitiator).equals(this.mImModule.normalizeUri(phoneIdByIMSI, imIncomingSessionEvent.mSessionUri))) {
                        findSession.updateChatState(ChatData.State.CLOSED_BY_USER);
                    }
                }
            }
            this.mImModule.getImDump().dumpIncomingSession(phoneIdByIMSI, findSession, imIncomingSessionEvent.mIsDeferred, imIncomingSessionEvent.mIsForStoredNoti);
            if (this.mImModule.getImConfig(phoneIdByIMSI).getUserAliasEnabled() && !this.mImModule.getImConfig(phoneIdByIMSI).getRealtimeUserAliasAuth() && !z2) {
                findSession.setInitiatorAlias(imIncomingSessionEvent.mInitiatorAlias);
            }
            if (z2) {
                findSession.setInitiator(this.mImModule.normalizeUri(phoneIdByIMSI, imIncomingSessionEvent.mInitiator));
                findSession.updateCreatedBy(this.mImModule.normalizeUri(phoneIdByIMSI, imIncomingSessionEvent.mCreatedBy));
                findSession.updateInvitedBy(this.mImModule.normalizeUri(phoneIdByIMSI, imIncomingSessionEvent.mInvitedBy));
            } else if (imIncomingSessionEvent.mIsChatbotRole) {
                Log.i(str, "onIncomingSessionReceived: event.mIsChatbotRole=true, event.mInitiator=" + IMSLog.numberChecker(imIncomingSessionEvent.mInitiator));
                ImsUri.removeUriParametersAndHeaders(imIncomingSessionEvent.mInitiator);
                findSession.setInitiator(imIncomingSessionEvent.mInitiator);
                int intSetting = RcsPolicyManager.getRcsStrategy(phoneIdByIMSI).intSetting(RcsPolicySettings.RcsPolicy.DELAY_TO_DEREGI_FOR_A2P_SESSION);
                if (intSetting > 0) {
                    processIncomingSessionForA2P(phoneIdByIMSI, intSetting);
                }
            }
            findSession.setIsTokenUsed(imIncomingSessionEvent.mIsTokenUsed);
            findSession.setDeviceId(imIncomingSessionEvent.mDeviceId);
            if (!imIncomingSessionEvent.mIsDeferred) {
                findSession.setNetworkFallbackMech(imIncomingSessionEvent.mIsMsgFallbackSupported, imIncomingSessionEvent.mIsMsgRevokeSupported);
                findSession.mRemoteAcceptTypes = imIncomingSessionEvent.mAcceptTypes;
                findSession.mRemoteAcceptWrappedTypes = imIncomingSessionEvent.mAcceptWrappedTypes;
            }
            findSession.updateIsChatbotRole(imIncomingSessionEvent.mIsChatbotRole);
            findSession.processIncomingSession(imIncomingSessionEvent);
            ImIncomingMessageEvent imIncomingMessageEvent = imIncomingSessionEvent.mReceivedMessage;
            if (imIncomingMessageEvent != null) {
                this.mImModule.updateServiceAvailability(imIncomingSessionEvent.mOwnImsi, imIncomingMessageEvent.mSender, imIncomingMessageEvent.mImdnTime);
            }
            this.mImModule.releaseWakeLock(imIncomingSessionEvent.mRawHandle);
        }
    }

    protected void onIncomingSlmLMMSessionReceived(SlmLMMIncomingSessionEvent slmLMMIncomingSessionEvent) {
        Log.i(LOG_TAG, "onIncomingSlmLMMSessionReceived: " + slmLMMIncomingSessionEvent);
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(slmLMMIncomingSessionEvent.mOwnImsi);
        if (this.mImModule.isBlockedNumber(phoneIdByIMSI, slmLMMIncomingSessionEvent.mInitiator, slmLMMIncomingSessionEvent.mIsGroup)) {
            this.mSlmService.rejectSlm(new RejectSlmParams(null, slmLMMIncomingSessionEvent.mRawHandle, ImSessionRejectReason.BUSY_HERE, null, slmLMMIncomingSessionEvent.mOwnImsi));
        } else {
            this.mSlmService.acceptSlm(new AcceptSlmParams(null, this.mImModule.getUserAlias(phoneIdByIMSI, false), slmLMMIncomingSessionEvent.mRawHandle, null, slmLMMIncomingSessionEvent.mOwnImsi));
        }
    }

    protected Set<ImsUri> getNormalizedParticipants(int i, List<ImsUri> list, ImsUri imsUri) {
        Set<ImsUri> hashSet;
        if (list != null) {
            hashSet = this.mImModule.normalizeUri(i, list);
        } else {
            hashSet = new HashSet<>();
        }
        removeOwnNumberFromParticipants(hashSet, this.mImModule.normalizeUri(i, imsUri), i);
        return hashSet;
    }

    protected void removeOwnNumberFromParticipants(Set<ImsUri> set, ImsUri imsUri, int i) {
        IMSLog.s(LOG_TAG, "removeOwnNumberFromParticipants participants=" + set + " ,sender=" + imsUri);
        if (imsUri != null) {
            set.add(imsUri);
        }
        ImsRegistration imsRegistration = this.mImModule.getImsRegistration(i);
        if (imsRegistration != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = imsRegistration.getImpuList().iterator();
            while (it.hasNext()) {
                arrayList.add(this.mImModule.normalizeUri(i, ((NameAddr) it.next()).getUri()));
            }
            if (set.size() > 1) {
                set.removeAll(arrayList);
            }
        }
    }

    protected ImSession getImSession(String str) {
        return this.mCache.getImSession(str);
    }

    protected void onMessageSendingSucceeded(MessageBase messageBase) {
        this.mBigDataProcessor.onMessageSendingSucceeded(messageBase);
        ImSession imSession = this.mCache.getImSession(messageBase.getChatId());
        if (imSession == null) {
            Log.e(LOG_TAG, "onMessageSendingSucceeded: session not found.");
            return;
        }
        this.mImModule.getImDump().addEventLogs("onMessageSendingSucceeded: type= " + messageBase.getType() + ", chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", imdnId=" + messageBase.getImdnId());
        if (isReportMsg(messageBase)) {
            if (messageBase.getReportMsgParams() != null) {
                this.mCache.deleteMessage(messageBase.getId());
                this.mImTranslation.onMessageReportResponse(messageBase.getReportMsgParams().getSpamMsgImdnId(), messageBase.getChatId(), true);
                return;
            }
            return;
        }
        Iterator<IMessageEventListener> it = this.mImProcessor.getMessageEventListener(messageBase.getType()).iterator();
        while (it.hasNext()) {
            it.next().onMessageSendingSucceeded(messageBase);
        }
        if (messageBase.isTemporary()) {
            this.mCache.deleteMessage(messageBase.getId());
            return;
        }
        if (messageBase.getRevocationStatus() != ImConstants.RevocationStatus.AVAILABLE) {
            this.mImModule.removeFromPendingListWithDelay(messageBase.getId());
        }
        this.mCache.sentMessageForCloudSync(imSession.getOwnImsi(), messageBase.getId(), messageBase.getImdnId());
    }

    protected void onMessageSendingFailed(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse, Result result) {
        if (messageBase == null) {
            Log.e(LOG_TAG, "onMessageSendingFailed: msg is null.");
            return;
        }
        if (messageBase.isTemporary()) {
            Log.i(LOG_TAG, "onMessageSendingFailed: temporary message.");
            Iterator<IMessageEventListener> it = this.mImProcessor.getMessageEventListener(messageBase.getType()).iterator();
            while (it.hasNext()) {
                it.next().onMessageSendingFailed(messageBase, new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE), null);
            }
            this.mCache.deleteMessage(messageBase.getId());
            return;
        }
        ImSession imSession = this.mCache.getImSession(messageBase.getChatId());
        if (result != null && result.getImError() == ImError.ENGINE_ERROR) {
            ImModule imModule = this.mImModule;
            if (imModule.getRegistrationType(imModule.getPhoneIdByIMSI(messageBase.getOwnIMSI())) == null && imSession != null && !imSession.isGroupChat()) {
                Log.e(LOG_TAG, "onMessageSendingFailed: engine error and deregistered. fallback to legacy.");
                strategyResponse = new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
            }
        }
        if (result != null && result.getType() != Result.Type.NONE) {
            this.mBigDataProcessor.onMessageSendingFailed(messageBase, result, strategyResponse);
        }
        if (imSession == null) {
            Log.e(LOG_TAG, "onMessageSendingFailed: session not found.");
            return;
        }
        this.mImModule.getImDump().dumpMessageSendingFailed(this.mImModule.getPhoneIdByChatId(messageBase.getChatId()), imSession, result, messageBase.mImdnId, strategyResponse.getStatusCode().toString());
        if (isReportMsg(messageBase) && messageBase.getReportMsgParams() != null) {
            this.mCache.deleteMessage(messageBase.getId());
            this.mImTranslation.onMessageReportResponse(messageBase.getReportMsgParams().getSpamMsgImdnId(), messageBase.getChatId(), false);
            return;
        }
        if (ImsGateConfig.isGateEnabled()) {
            IMSLog.g("GATE", "<GATE-M>MMS_ERROR</GATE-M>");
        }
        ImDump imDump = this.mImModule.getImDump();
        StringBuilder sb = new StringBuilder();
        sb.append("onMessageSendingFailed: type=");
        sb.append(messageBase.getType());
        sb.append("chatId=");
        sb.append(imSession.getChatId());
        sb.append(", convId=");
        sb.append(imSession.getConversationId());
        sb.append(", contId=");
        sb.append(imSession.getContributionId());
        sb.append(", imdnId=");
        sb.append(messageBase.getImdnId());
        sb.append("result=");
        sb.append(result != null ? result.toString() : "");
        sb.append(", required_action=");
        sb.append(strategyResponse.getStatusCode().toString());
        imDump.addEventLogs(sb.toString());
        if (messageBase instanceof ImMessage) {
            Log.e(LOG_TAG, "onMessageSendingFailed ImMessage: id=" + messageBase.getId() + ", strategy=" + strategyResponse + ", result=" + result);
            Iterator<IMessageEventListener> it2 = this.mImProcessor.getMessageEventListener(messageBase.getType()).iterator();
            while (it2.hasNext()) {
                it2.next().onMessageSendingFailed(messageBase, strategyResponse, result);
            }
        } else if (messageBase instanceof FtMessage) {
            Log.e(LOG_TAG, "onMessageSendingFailed FtMessage: id=" + messageBase.getId() + ", strategy=" + strategyResponse + ", result=" + result);
            Iterator<IFtEventListener> it3 = this.mFtProcessor.getFtEventListener(messageBase.getType()).iterator();
            while (it3.hasNext()) {
                it3.next().onMessageSendingFailed(messageBase, strategyResponse, result);
            }
        }
        this.mCache.removeFromPendingList(messageBase.getId());
    }

    protected void notifyImSessionEstablished(final int i) {
        if (this.mCache.isEstablishedSessionExist() || this.mCache.hasFileTransferInprogress()) {
            post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    ImSessionProcessor.this.lambda$notifyImSessionEstablished$22(i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyImSessionEstablished$22(int i) {
        Log.i(LOG_TAG, "notifyImSessionEstablished");
        if (this.mImSessionListener.containsKey(Integer.valueOf(i))) {
            Iterator<IImSessionListener> it = this.mImSessionListener.get(Integer.valueOf(i)).iterator();
            while (it.hasNext()) {
                try {
                    it.next().onImSessionEstablished(true);
                } catch (RemoteException unused) {
                    Log.e(LOG_TAG, "notifyImSessionEstablished failed to send IImSessionListener.onImSessionEstablished");
                }
            }
        }
    }

    protected void notifyImSessionClosed(final int i) {
        if (this.mCache.isEstablishedSessionExist() || this.mCache.hasFileTransferInprogress()) {
            return;
        }
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$notifyImSessionClosed$23(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyImSessionClosed$23(int i) {
        Log.i(LOG_TAG, "notifyImSessionClosed");
        if (this.mImModule.getImsRegistration() != null) {
            ImsRegistry.getRegistrationManager().doPendingUpdateRegistration();
        }
        if (this.mImSessionListener.containsKey(Integer.valueOf(i))) {
            Iterator<IImSessionListener> it = this.mImSessionListener.get(Integer.valueOf(i)).iterator();
            while (it.hasNext()) {
                try {
                    it.next().onImSessionEstablished(false);
                } catch (RemoteException unused) {
                    Log.e(LOG_TAG, "notifyImSessionClosed failed to send IImSessionListener.onImSessionEstablished");
                }
            }
        }
    }

    protected boolean hasEstablishedSession() {
        boolean z = this.mImModule.getImsRegistration() != null && (this.mCache.isEstablishedSessionExist() || this.mCache.hasFileTransferInprogress());
        Log.i(LOG_TAG, "hasEstablishedSession : " + z);
        return z;
    }

    protected void receiveDeliveryTimeout(final String str) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImSessionProcessor$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ImSessionProcessor.this.lambda$receiveDeliveryTimeout$24(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$receiveDeliveryTimeout$24(String str) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            Log.i(LOG_TAG, "receiveDeliveryTimeout session not found");
        } else {
            imSession.receiveDeliveryTimeout();
        }
    }

    private void makeNewSystemUserMessage(ImSession imSession, Map<ImParticipant, Date> map, ImConstants.Type type) {
        TreeMap treeMap = new TreeMap();
        HashSet hashSet = new HashSet();
        for (Map.Entry<ImParticipant, Date> entry : map.entrySet()) {
            Date value = entry.getValue();
            String imsUri = entry.getKey().getUri().toString();
            if (value != null) {
                StringBuilder sb = (StringBuilder) treeMap.get(value);
                if (sb == null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(imsUri);
                    treeMap.put(value, sb2);
                } else {
                    sb.append(";");
                    sb.append(imsUri);
                }
            } else {
                hashSet.add(imsUri);
            }
        }
        for (Map.Entry entry2 : treeMap.entrySet()) {
            this.mCache.makeNewSystemUserMessage(imSession, ((StringBuilder) entry2.getValue()).toString(), type, (Date) entry2.getKey());
        }
        if (hashSet.isEmpty()) {
            return;
        }
        this.mCache.makeNewSystemUserMessage(imSession, TextUtils.join(";", hashSet), type);
    }

    private void handleVoluntaryDeparture(List<ImSession> list, boolean z) {
        if (list != null && !list.isEmpty()) {
            for (ImSession imSession : list) {
                int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi());
                if (!imSession.isEmptySession()) {
                    imSession.getChatData().updateIsReusable(z);
                    imSession.updateChatState(ChatData.State.CLOSED_VOLUNTARILY);
                    if (this.mImModule.isOwnNumberChanged(imSession)) {
                        if (!z) {
                            this.mCache.deleteSession(imSession);
                        }
                    } else if (this.mImModule.isRegistered(phoneIdByIMSI)) {
                        if (imSession.isEstablishedState()) {
                            imSession.closeSession(z, ImSessionStopReason.VOLUNTARILY);
                        } else {
                            this.mGroupChatsForDeparture.add(imSession);
                        }
                    } else {
                        Iterator<MessageBase> it = this.mCache.getMessagesForPendingNotificationByChatId(imSession.getChatId()).iterator();
                        while (it.hasNext()) {
                            it.next().updateDesiredNotificationStatus(NotificationStatus.NONE);
                        }
                        imSession.processCancelMessages(false, null);
                    }
                } else if (!z) {
                    this.mCache.deleteSession(imSession);
                }
            }
        }
        if (this.mGroupChatsForDeparture.isEmpty() || hasMessages(1)) {
            return;
        }
        handleEventVoluntaryDeparture();
    }

    protected void handleEventVoluntaryDeparture() {
        Log.i(LOG_TAG, "handleEventVoluntaryDeparture: mGroupChatsForDeparture size=" + this.mGroupChatsForDeparture.size());
        if (this.mGroupChatsForDeparture.isEmpty()) {
            return;
        }
        int intSetting = this.mImModule.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.MAX_SIPINVITE_ATONCE);
        if (intSetting > 0 && this.mImModule.isRegistered()) {
            List<ImSession> list = CollectionUtils.partition(this.mGroupChatsForDeparture, intSetting).get(0);
            for (ImSession imSession : list) {
                imSession.closeSession(imSession.isReusable(), ImSessionStopReason.VOLUNTARILY);
            }
            this.mGroupChatsForDeparture.removeAll(list);
            if (this.mGroupChatsForDeparture.isEmpty()) {
                return;
            }
            removeMessages(1);
            sendEmptyMessageDelayed(1, 1000L);
            return;
        }
        for (ImSession imSession2 : this.mGroupChatsForDeparture) {
            if (this.mImModule.isRegistered()) {
                imSession2.closeSession(imSession2.isReusable(), ImSessionStopReason.VOLUNTARILY);
            } else {
                Iterator<IChatEventListener> it = this.mChatEventListeners.iterator();
                while (it.hasNext()) {
                    it.next().onChatClosed(imSession2.getChatId(), imSession2.getDirection(), ImSessionClosedReason.LEAVE_SESSION_PENDING);
                }
            }
        }
        this.mGroupChatsForDeparture.clear();
    }

    protected void handleEventBlocklistChanged() {
        Log.i(LOG_TAG, "handleEventBlocklistChanged()");
        for (String str : BlockedNumberUtil.getBlockedNumbersList(this.mContext)) {
            HashSet hashSet = new HashSet();
            ImsUri normalizedUri = this.mImModule.getUriGenerator(SimUtil.getSimSlotPriority()).getNormalizedUri(str, true);
            if (normalizedUri != null) {
                hashSet.add(normalizedUri);
                ImSession imSessionByParticipants = this.mCache.getImSessionByParticipants(hashSet, ChatData.ChatType.ONE_TO_ONE_CHAT, "");
                if (imSessionByParticipants != null && imSessionByParticipants.getDetailedState() == ImSession.SessionState.ESTABLISHED) {
                    imSessionByParticipants.closeSession();
                }
            }
        }
    }

    protected void registerImSessionListenerByPhoneId(IImSessionListener iImSessionListener, int i) {
        String str = LOG_TAG;
        Log.i(str, "registerImSessionListener phoneId = " + i);
        if (iImSessionListener != null) {
            if (!this.mImSessionListener.containsKey(Integer.valueOf(i))) {
                this.mImSessionListener.put(Integer.valueOf(i), new ArrayList<>());
            }
            ArrayList<IImSessionListener> arrayList = this.mImSessionListener.get(Integer.valueOf(i));
            if (arrayList != null) {
                arrayList.add(iImSessionListener);
            }
            notifyImSessionEstablished(i);
            return;
        }
        Log.e(str, "no registerImSessionListener and not work");
    }

    protected void unregisterImSessionListenerByPhoneId(IImSessionListener iImSessionListener, int i) {
        Log.i(LOG_TAG, "unregisterImSessionListener phoneId = " + i);
        if (this.mImSessionListener.containsKey(Integer.valueOf(i))) {
            this.mImSessionListener.get(Integer.valueOf(i)).remove(iImSessionListener);
        }
    }

    protected boolean isReportMsg(MessageBase messageBase) {
        ImsUri parse = ImsUri.parse(RcsPolicyManager.getRcsStrategy(this.mImModule.getPhoneIdByIMSI(messageBase.getOwnIMSI())).stringSetting(RcsPolicySettings.RcsPolicy.ONEKEY_REPORT_PSI));
        return (parse == null || messageBase.getRemoteUri() == null || !parse.equals(messageBase.getRemoteUri())) ? false : true;
    }

    protected IRcsBigDataProcessor getBigDataProcessor() {
        return this.mBigDataProcessor;
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void setLegacyLatching(ImsUri imsUri, boolean z, String str) {
        this.mImRevocationHandler.setLegacyLatching(imsUri, z, str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onMessageRevokeTimerExpired(String str, Collection<String> collection, String str2) {
        this.mImRevocationHandler.onMessageRevokeTimerExpired(str, collection, str2);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onMessageRevocationDone(ImConstants.RevocationStatus revocationStatus, Collection<MessageBase> collection, ImSession imSession) {
        this.mImRevocationHandler.onMessageRevocationDone(revocationStatus, collection, imSession);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void addToRevokingMessages(String str, String str2) {
        this.mImRevocationHandler.addToRevokingMessages(str, str2);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void removeFromRevokingMessages(Collection<String> collection) {
        this.mImRevocationHandler.removeFromRevokingMessages(collection);
    }

    protected List<IChatEventListener> getChatEventListeners() {
        return this.mChatEventListeners;
    }

    protected ImRevocationHandler getImRevocationHandler() {
        return this.mImRevocationHandler;
    }

    protected Collection<IMessageEventListener> getMessageEventListener(ImConstants.Type type) {
        return this.mImProcessor.getMessageEventListener(type);
    }

    protected Collection<IFtEventListener> getFtEventListener(ImConstants.Type type) {
        return this.mFtProcessor.getFtEventListener(type);
    }

    protected ChatData.ChatType generateChatType(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return ChatData.ChatType.ONE_TO_MANY_CHAT;
        }
        if (!z) {
            return ChatData.ChatType.ONE_TO_ONE_CHAT;
        }
        if (z2) {
            return ChatData.ChatType.PARTICIPANT_BASED_GROUP_CHAT;
        }
        return ChatData.ChatType.REGULAR_GROUP_CHAT;
    }

    private ImSessionRejectReason checkForRejectIncomingSession(int i, boolean z, boolean z2) {
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        if (rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.CHECK_MSGAPP_IMSESSION_REJECT) && !this.mImModule.isDefaultMessageAppInUse()) {
            Log.e(LOG_TAG, "checkForRejectIncomingSession: default message app is not samsung");
            return ImSessionRejectReason.INVOLUNTARILY;
        }
        if (rcsStrategy.checkMainSwitchOff(this.mContext, i)) {
            Log.e(LOG_TAG, "checkForRejectIncomingSession: main Switch Off");
            return z ? ImSessionRejectReason.INVOLUNTARILY : ImSessionRejectReason.TEMPORARILY_UNAVAILABLE;
        }
        if (z2 && !RcsPolicyManager.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.PARTICIPANTBASED_CLOSED_GROUPCHAT)) {
            Log.e(LOG_TAG, "checkForRejectIncomingSession: group chat type mismatched");
            return ImSessionRejectReason.VOLUNTARILY;
        }
        if (!DeviceUtil.getGcfMode() || !rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.AUTH_BASED_SESSION_CONTROL) || this.mImModule.getImConfig(i).getGroupChatEnabled()) {
            return null;
        }
        Log.e(LOG_TAG, "GroupChatAuth is disabled");
        return ImSessionRejectReason.NOT_ACCEPTABLE_HERE;
    }

    protected ImSession findSession(int i, String str, boolean z, ChatData.ChatType chatType, String str2, String str3, String str4, Set<ImsUri> set, ChatMode chatMode) {
        ChatData.ChatType chatType2;
        if (z) {
            ImSession imSessionByContributionId = !TextUtils.isEmpty(str2) ? this.mCache.getImSessionByContributionId(str, str2, false) : null;
            if (imSessionByContributionId == null) {
                if (this.mImModule.getImConfig(i).getImMsgTech() == ImConstants.ImMsgTech.CPM) {
                    imSessionByContributionId = this.mCache.getImSessionByConversationId(str, str4, z);
                } else {
                    imSessionByContributionId = this.mCache.getImSessionByContributionId(str, str3, z);
                }
            }
            return (imSessionByContributionId == null && chatType == (chatType2 = ChatData.ChatType.PARTICIPANT_BASED_GROUP_CHAT)) ? this.mCache.getImSessionByParticipants(set, chatType2, str, ChatMode.OFF) : imSessionByContributionId;
        }
        return this.mCache.getImSessionByParticipants(set, ChatData.ChatType.ONE_TO_ONE_CHAT, str, chatMode);
    }

    private void processIncomingSessionForA2P(int i, int i2) {
        Log.i(LOG_TAG, "processIncomingSessionForA2P: phoneId = " + i + ", delay = " + i2);
        ImsRegistration imsRegistration = this.mImModule.getImsRegistration(i);
        if (imsRegistration == null || imsRegistration.getRegiRat() == 18) {
            return;
        }
        removeMessages(2);
        this.mImModule.mHasIncomingSessionForA2P.put(i, Boolean.TRUE);
        sendMessageDelayed(obtainMessage(2, Integer.valueOf(i)), i2 * 1000);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onSendCanceledNotificationDone(String str, String str2, boolean z) {
        this.mImTranslation.onCancelMessageResponse(str, str2, z);
    }
}
