package com.sec.internal.ims.servicemodules.session;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.servicemodules.im.ChatMode;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImIconData;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.ImSubjectData;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingMessageEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionEstablishedEvent;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImErrorReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.im.ImCache;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.servicemodules.im.ImMessage;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.ImSessionBuilder;
import com.sec.internal.ims.servicemodules.im.MessageBase;
import com.sec.internal.ims.servicemodules.im.interfaces.IGetter;
import com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor;
import com.sec.internal.ims.servicemodules.im.listener.ImMessageListener;
import com.sec.internal.ims.servicemodules.im.listener.ImSessionListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.options.Intents;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.StringIdGenerator;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.interfaces.ims.imsservice.ICall;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule;
import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* loaded from: classes.dex */
public class SessionModule extends ServiceModuleBase implements ISessionModule, ImSessionListener, ImMessageListener, IGetter {
    private static final int EVENT_CLOSE_SESSION = 7;
    private static final int EVENT_CONFIGURED = 8;
    private static final int EVENT_INCOMING_MESSAGE = 4;
    private static final int EVENT_INCOMING_SESSION = 1;
    private static final int EVENT_REJECT_SESSION = 6;
    private static final int EVENT_SEND_MESSAGE_FAILED = 5;
    private static final int EVENT_SESSION_CLOSED = 3;
    private static final int EVENT_SESSION_ESTABLISHED = 2;
    public static final String INTENT_FILTER_MESSAGE = "com.gsma.services.rcs.extension.action.NEW_MESSAGING_SESSION";
    public static final String INTENT_FILTER_STREAM = "com.gsma.services.rcs.extension.action.NEW_STREAMING_SESSION";
    public static final String MIMETYPE_ALL = "com.gsma.services.rcs/*";
    public static final String MIMETYPE_PREFIX = "com.gsma.services.rcs/";
    private static final String SERVICE_ID_CALL_COMPOSER = "gsma.callcomposer";
    private static final String SERVICE_ID_POST_CALL = "gsma.callunanswered";
    private static final String SERVICE_ID_SHARED_MAP = "gsma.sharedmap";
    private static final String SERVICE_ID_SHARED_SKETCH = "gsma.sharedsketch";
    private boolean canRegisterExt;
    private boolean isEnableFailedMedia;
    private boolean isWaitingForCloseTagSendingComplete;
    private final IRcsBigDataProcessor mBigDataProcessor;
    private int[] mCallComposerTimerIdle;
    private List<ImsUri> mCallList;
    private boolean[] mComposerAuth;
    private ImConfig mConfig;
    private final Context mContext;
    private final List<String> mIariTypes;
    private final IImServiceInterface mImService;
    private final List<IMessagingSessionListener> mListeners;
    private final Map<String, ImSession.SessionState> mMessagingSessionStates;
    private final Map<String, ImSession> mMessagingSessions;
    private boolean[] mPostCallAuth;
    private final Set<String> mRegisteredServices;
    private int mRegistrationId;
    private final List<String> mServiceIDsFromMetaData;
    private boolean[] mSharedMapAuth;
    private boolean[] mSharedSketchAuth;
    private UriGenerator mUriGenerator;
    private static final String LOG_TAG = SessionModule.class.getSimpleName();
    public static final String NAME = SessionModule.class.getSimpleName();
    private static final String[] sRequiredServices = {"ec"};
    private static long mInactivityTimeout = 0;

    private void buildServiceConfig(String str) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void addToRevokingMessages(String str, String str2) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public void deRegisterApp() {
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IModuleInterface
    public String getUserAlias(int i, boolean z) {
        return "";
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public ImsUri normalizeUri(ImsUri imsUri) {
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onAddParticipantsFailed(String str, List<ImsUri> list, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onAddParticipantsSucceeded(String str, List<ImsUri> list) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onBlockedMessageReceived(ImIncomingMessageEvent imIncomingMessageEvent) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupAliasFailed(String str, String str2, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupAliasSucceeded(String str, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatIconFailed(String str, String str2, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatIconSuccess(String str, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatLeaderFailed(String str, List<ImsUri> list, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatLeaderSucceeded(String str, List<ImsUri> list) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatSubjectFailed(String str, String str2, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChangeGroupChatSubjectSucceeded(String str, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatClosed(ImSession imSession, ImSessionClosedReason imSessionClosedReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatDeparted(ImSession imSession) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatEstablished(ImSession imSession) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatSubjectUpdated(String str, ImSubjectData imSubjectData) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onComposingReceived(ImSession imSession, ImsUri imsUri, String str, boolean z, int i) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onGroupChatIconDeleted(String str) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onGroupChatIconUpdated(String str, ImIconData imIconData) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onGroupChatLeaderChanged(ImSession imSession, String str) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onGroupChatLeaderInformed(ImSession imSession, String str) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onImErrorReport(ImError imError, int i) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onIncomingMessageProcessed(ImIncomingMessageEvent imIncomingMessageEvent, ImSession imSession) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onIncomingSessionProcessed(ImIncomingMessageEvent imIncomingMessageEvent, ImSession imSession, boolean z) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageReceived(ImMessage imMessage) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onMessageRevocationDone(ImConstants.RevocationStatus revocationStatus, Collection<MessageBase> collection, ImSession imSession) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onMessageRevokeTimerExpired(String str, Collection<String> collection, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageSendResponse(ImMessage imMessage) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageSendResponseTimeout(ImMessage imMessage) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onNotifyParticipantsAdded(ImSession imSession, Map<ImParticipant, Date> map) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onNotifyParticipantsJoined(ImSession imSession, Map<ImParticipant, Date> map) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onNotifyParticipantsKickedOut(ImSession imSession, Map<ImParticipant, Date> map) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onNotifyParticipantsLeft(ImSession imSession, Map<ImParticipant, Date> map) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onParticipantAliasUpdated(String str, ImParticipant imParticipant) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onParticipantsDeleted(ImSession imSession, Collection<ImParticipant> collection) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onParticipantsInserted(ImSession imSession, Collection<ImParticipant> collection) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onParticipantsUpdated(ImSession imSession, Collection<ImParticipant> collection) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onProcessingFileTransferChanged(ImSession imSession) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onRemoveParticipantsFailed(String str, List<ImsUri> list, ImErrorReason imErrorReason) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onRemoveParticipantsSucceeded(String str, List<ImsUri> list) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onRequestSendMessage(ImSession imSession, MessageBase messageBase) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onSendCanceledNotificationDone(String str, String str2, boolean z) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void removeFromRevokingMessages(Collection<String> collection) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void setLegacyLatching(ImsUri imsUri, boolean z, String str) {
    }

    public SessionModule(Looper looper, Context context, IImServiceInterface iImServiceInterface) {
        super(looper);
        this.mListeners = new ArrayList();
        this.mRegisteredServices = new ArraySet();
        this.mMessagingSessions = new ConcurrentHashMap();
        this.mMessagingSessionStates = new HashMap();
        this.mCallComposerTimerIdle = new int[]{MNO.EVR_ESN, MNO.EVR_ESN};
        this.mComposerAuth = new boolean[]{false, false};
        this.mSharedMapAuth = new boolean[]{false, false};
        this.mSharedSketchAuth = new boolean[]{false, false};
        this.mPostCallAuth = new boolean[]{false, false};
        this.canRegisterExt = false;
        this.mIariTypes = new ArrayList();
        this.mRegistrationId = -1;
        this.mServiceIDsFromMetaData = new ArrayList();
        this.isEnableFailedMedia = false;
        this.isWaitingForCloseTagSendingComplete = false;
        this.mCallList = new ArrayList();
        this.mContext = context;
        this.mUriGenerator = UriGeneratorFactory.getInstance().get(UriGenerator.URIServiceType.RCS_URI);
        this.mBigDataProcessor = new EcBigDataProcessor(context, this);
        this.mConfig = ImsRegistry.getServiceModuleManager().getImModule().getImConfig();
        this.mImService = iImServiceInterface;
        log("SessionModule");
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public int getMaxMsrpLengthForExtensions() {
        return RcsConfigurationHelper.readIntParam(this.mContext, ConfigConstants.ConfigTable.OTHER_EXTENSIONS_MAX_MSRP_SIZE, 0).intValue();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public long getInactivityTimeout() {
        return mInactivityTimeout;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public int getPhoneIdByIMSI(String str) {
        int simSlotPriority = SimUtil.getSimSlotPriority();
        int phoneId = SimManagerFactory.getPhoneId(str);
        return phoneId != -1 ? phoneId : simSlotPriority;
    }

    public static void setInactivityTimeout(long j) {
        Log.d(NAME, "set InactivityTimeout=: " + j);
        mInactivityTimeout = j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageSendingSucceeded(MessageBase messageBase) {
        String str = LOG_TAG;
        Log.d(str, "onMessageSendingSucceeded");
        this.mBigDataProcessor.onMessageSendingSucceeded(messageBase);
        ImSession imSession = this.mMessagingSessions.get(messageBase.getChatId());
        if (imSession == null) {
            Log.e(str, "onMessageSendingSucceeded: Session not found.");
            return;
        }
        Iterator<IMessagingSessionListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onMessagesFlushed(imSession);
        }
        if (this.isWaitingForCloseTagSendingComplete) {
            Log.d(LOG_TAG, "onMessageSendingSucceeded : EVENT_CLOSE_SESSION");
            removeMessages(7);
            sendMessage(obtainMessage(7, imSession.getChatId()));
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageSendingFailed(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse, Result result) {
        if (result == null || result.getType() == Result.Type.NONE) {
            return;
        }
        this.mBigDataProcessor.onMessageSendingFailed(messageBase, result, strategyResponse);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImSessionListener
    public void onChatStatusUpdate(ImSession imSession, ImSession.SessionState sessionState) {
        ImSession.SessionState sessionState2 = this.mMessagingSessionStates.get(imSession.getChatId());
        if (sessionState == ImSession.SessionState.CLOSED) {
            if (this.isEnableFailedMedia && sessionState2 == ImSession.SessionState.ESTABLISHED) {
                sessionState = ImSession.SessionState.FAILED_MEDIA;
                Log.e(LOG_TAG, "onChatStatusUpdate: State is FAILED MEDIA");
            }
            this.mMessagingSessions.remove(imSession.getChatId());
        }
        Log.i(LOG_TAG, "onChatStatusUpdate: isEnableFailedMedia = " + this.isEnableFailedMedia);
        Iterator<IMessagingSessionListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onStateChanged(imSession, sessionState);
        }
        if (sessionState == ImSession.SessionState.CLOSED) {
            this.mMessagingSessionStates.remove(imSession.getChatId());
        } else if (sessionState != ImSession.SessionState.INITIAL) {
            this.mMessagingSessionStates.put(imSession.getChatId(), sessionState);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public ImSession getMessagingSession(String str) {
        return this.mMessagingSessions.get(str);
    }

    public ImSession getMessagingSession(String str, ImsUri imsUri) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(imsUri);
        for (ImSession imSession : this.mMessagingSessions.values()) {
            if (TextUtils.equals(imSession.getServiceId(), str) && imsUri.equals(imSession.getRemoteUri())) {
                return imSession;
            }
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public void sendMultimediaMessage(String str, byte[] bArr, String str2) {
        ImSession imSession = this.mMessagingSessions.get(str);
        if (imSession == null) {
            Log.e(LOG_TAG, "sendMultimediaMessage: Session not found.");
        } else {
            imSession.sendImMessage(createOutgoingMessage(str, imSession.getRemoteUri(), bArr, str2));
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public void abortSession(String str) {
        this.isWaitingForCloseTagSendingComplete = true;
        sendMessageDelayed(obtainMessage(7, str), 1000L);
    }

    public void closeSession(String str) {
        String str2 = LOG_TAG;
        Log.d(str2, "closeSession: " + str);
        ImSession imSession = this.mMessagingSessions.get(str);
        if (imSession == null) {
            Log.e(str2, "closeSession: Session not found.");
        } else {
            imSession.closeSession();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImMessage createOutgoingMessage(String str, ImsUri imsUri, byte[] bArr, String str2) {
        return ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ImMessage.builder().module(this)).listener(this).config(this.mConfig)).uriGenerator(this.mUriGenerator)).imsService(this.mImService)).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).chatId(str)).remoteUri(imsUri)).body(new String(bArr, Charset.defaultCharset()))).imdnId(StringIdGenerator.generateImdn())).dispNotification(new HashSet(Arrays.asList(NotificationStatus.NONE)))).contentType(str2)).direction(ImDirection.OUTGOING)).status(ImConstants.Status.TO_SEND)).type(ImConstants.Type.TEXT)).insertedTimestamp(System.currentTimeMillis())).mnoStrategy(RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority()))).build();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public ImSession initiateMessagingSession(String str, ImsUri imsUri, String[] strArr, String[] strArr2) {
        String adjustServiceId = adjustServiceId(str);
        ImSession createOutgoingSession = createOutgoingSession(SimManagerFactory.getSimManager().getImsi(), adjustServiceId, imsUri, adjustAcceptTypes(adjustServiceId, strArr), adjustAcceptWrappedTypes(adjustServiceId, strArr2));
        createOutgoingSession.startSession();
        this.isEnableFailedMedia = false;
        return createOutgoingSession;
    }

    private String adjustServiceId(String str) {
        str.hashCode();
        switch (str) {
            case "gsma.callunanswered":
                return SipMsg.FEATURE_TAG_ENRICHED_POST_CALL;
            case "gsma.sharedmap":
                return SipMsg.FEATURE_TAG_ENRICHED_SHARED_MAP;
            case "gsma.callcomposer":
                return SipMsg.FEATURE_TAG_ENRICHED_CALL_COMPOSER;
            case "gsma.sharedsketch":
                return SipMsg.FEATURE_TAG_ENRICHED_SHARED_SKETCH;
            default:
                return str;
        }
    }

    private String adjustServiceId2(String str) {
        str.hashCode();
        switch (str) {
            case "+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch"":
                return SERVICE_ID_SHARED_SKETCH;
            case "+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap"":
                return SERVICE_ID_SHARED_MAP;
            case "+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered"":
                return SERVICE_ID_POST_CALL;
            case "+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer"":
                return SERVICE_ID_CALL_COMPOSER;
            default:
                return str;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List<java.lang.String> adjustAcceptTypes(java.lang.String r2, java.lang.String[] r3) {
        /*
            r1 = this;
            java.util.ArrayList r1 = new java.util.ArrayList
            int r0 = r3.length
            r1.<init>(r0)
            java.util.Collections.addAll(r1, r3)
            r2.hashCode()
            int r3 = r2.hashCode()
            r0 = -1
            switch(r3) {
                case -1756044211: goto L36;
                case -749354161: goto L2b;
                case -365814102: goto L20;
                case 1060594880: goto L15;
                default: goto L14;
            }
        L14:
            goto L40
        L15:
            java.lang.String r3 = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L1e
            goto L40
        L1e:
            r0 = 3
            goto L40
        L20:
            java.lang.String r3 = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L29
            goto L40
        L29:
            r0 = 2
            goto L40
        L2b:
            java.lang.String r3 = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L34
            goto L40
        L34:
            r0 = 1
            goto L40
        L36:
            java.lang.String r3 = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L3f
            goto L40
        L3f:
            r0 = 0
        L40:
            java.lang.String r2 = "application/vnd.gsma.encall+xml"
            switch(r0) {
                case 0: goto L5e;
                case 1: goto L58;
                case 2: goto L4f;
                case 3: goto L46;
                default: goto L45;
            }
        L45:
            goto L63
        L46:
            r1.add(r2)
            java.lang.String r2 = "message/cpim"
            r1.add(r2)
            goto L63
        L4f:
            r1.add(r2)
            java.lang.String r2 = "application/vnd.gsma.rcs-ft-http+xml"
            r1.add(r2)
            goto L63
        L58:
            java.lang.String r2 = "application/vnd.gsma.sharedmap+xml"
            r1.add(r2)
            goto L63
        L5e:
            java.lang.String r2 = "application/vnd.gsma.sharedsketch+xml"
            r1.add(r2)
        L63:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.session.SessionModule.adjustAcceptTypes(java.lang.String, java.lang.String[]):java.util.List");
    }

    private List<String> adjustAcceptWrappedTypes(String str, String[] strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        Collections.addAll(arrayList, strArr);
        str.hashCode();
        if (str.equals(SipMsg.FEATURE_TAG_ENRICHED_CALL_COMPOSER)) {
            arrayList.add(MIMEContentType.IMDN);
            arrayList.add(MIMEContentType.FT_HTTP);
        }
        return arrayList;
    }

    private ImSession createOutgoingSession(String str, String str2, ImsUri imsUri, List<String> list, List<String> list2) {
        HashSet hashSet = new HashSet();
        hashSet.add(imsUri);
        ImSession build = new ImSessionBuilder().looper(getLooper()).listener(this).config(this.mConfig).imsService(this.mImService).slmService(ImsRegistry.getHandlerFactory().getSlmHandler()).uriGenerator(this.mUriGenerator).chatId(StringIdGenerator.generateChatId(hashSet, str, true, ChatMode.OFF.getId())).participantsUri(hashSet).direction(ImDirection.OUTGOING).ownSimIMSI(str).getter(this).serviceId(str2).acceptTypes(list).acceptWrappedTypes(list2).build();
        this.mMessagingSessions.put(build.getChatId(), build);
        return build;
    }

    private ImSession createIncomingImSession(ImIncomingSessionEvent imIncomingSessionEvent) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(imIncomingSessionEvent.mInitiator);
        ImSession build = new ImSessionBuilder().looper(getLooper()).listener(this).config(this.mConfig).imsService(this.mImService).slmService(ImsRegistry.getHandlerFactory().getSlmHandler()).uriGenerator(this.mUriGenerator).chatId(StringIdGenerator.generateChatId(new HashSet(imIncomingSessionEvent.mRecipients), imIncomingSessionEvent.mOwnImsi, true, ChatMode.OFF.getId())).participantsUri(arrayList).sdpContentType(imIncomingSessionEvent.mSdpContentType).direction(ImDirection.INCOMING).rawHandle(imIncomingSessionEvent.mRawHandle).sessionType(imIncomingSessionEvent.mSessionType).ownSimIMSI(imIncomingSessionEvent.mOwnImsi).getter(this).serviceId(imIncomingSessionEvent.mServiceId).build();
        this.mMessagingSessions.put(build.getChatId(), build);
        return build;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public void registerMessagingSessionListener(IMessagingSessionListener iMessagingSessionListener) {
        this.mListeners.add(iMessagingSessionListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return sRequiredServices;
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
        log("handleIntent" + intent);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        super.init();
        log("SessionModule init");
        updateAppInfo();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public boolean isServiceRegistered() {
        return getImsRegistration() != null;
    }

    public void log(String str) {
        Log.d(NAME, str);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public boolean needDeRegister(String str) {
        log("needDeRegister " + str);
        Hashtable hashtable = new Hashtable(AppInfo.ALL);
        updateAppInfo();
        return !this.canRegisterExt && isServiceRegistered() && hashtable.containsKey(str) && !AppInfo.ALL.containsKey(str);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public boolean needRegister(String str) {
        log("needRegister " + str);
        Hashtable hashtable = new Hashtable(AppInfo.ALL);
        updateAppInfo();
        return this.canRegisterExt && !isServiceRegistered() && !hashtable.containsKey(str) && AppInfo.ALL.containsKey(str);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        super.onDeregistered(imsRegistration, i);
        log("onDeregistered " + imsRegistration.toString() + "\n errorcode=" + i);
        this.mRegistrationId = -1;
        this.isEnableFailedMedia = true;
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        super.onConfigured(i);
        sendMessage(obtainMessage(8, Integer.valueOf(i)));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onDeregistering(ImsRegistration imsRegistration) {
        super.onDeregistering(imsRegistration);
        this.isEnableFailedMedia = true;
        log("onDeregistering " + imsRegistration.toString());
        if (SimManagerFactory.getSimManager().getSimMno() == Mno.RJIL) {
            Iterator<String> it = this.mMessagingSessions.keySet().iterator();
            while (it.hasNext()) {
                closeSession(it.next());
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        ICapabilityDiscoveryModule capabilityDiscoveryModule;
        if (imsRegistration == null) {
            Log.d(LOG_TAG, "regiInfo is null");
            return;
        }
        super.onRegistered(imsRegistration);
        int phoneId = imsRegistration.getPhoneId();
        log("onRegistered " + imsRegistration.toString());
        if (imsRegistration.getImsProfile() != null) {
            this.mRegistrationId = getRegistrationInfoId(imsRegistration);
        }
        this.isEnableFailedMedia = false;
        this.mUriGenerator = UriGeneratorFactory.getInstance().get(imsRegistration.getPreferredImpu().getUri(), UriGenerator.URIServiceType.RCS_URI);
        if (RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority()).boolSetting(RcsPolicySettings.RcsPolicy.USE_SIPURI_FOR_URIGENERATOR)) {
            Iterator it = imsRegistration.getImpuList().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                NameAddr nameAddr = (NameAddr) it.next();
                if (nameAddr.getUri().getUriType() == ImsUri.UriType.SIP_URI) {
                    this.mUriGenerator = UriGeneratorFactory.getInstance().get(nameAddr.getUri(), UriGenerator.URIServiceType.RCS_URI);
                    break;
                }
            }
        }
        if (!imsRegistration.hasService("options") || !imsRegistration.hasService("ec") || imsRegistration.hasService("vs") || (capabilityDiscoveryModule = getServiceModuleManager().getCapabilityDiscoveryModule()) == null) {
            return;
        }
        capabilityDiscoveryModule.exchangeCapabilitiesForVSHOnRegi(false, phoneId);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onSimChanged(int i) {
        super.onSimChanged(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public void registerApp() {
        log("registerApp");
        if (getImsRegistration() == null) {
            return;
        }
        Iterator<String> it = this.mIariTypes.iterator();
        while (it.hasNext()) {
            buildServiceConfig(it.next());
        }
        log("register ext done");
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onServiceSwitched(int i, ContentValues contentValues) {
        Log.d(LOG_TAG, "onServiceSwitched: " + i);
        updateFeatures(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void start() {
        if (isRunning()) {
            return;
        }
        super.start();
        log("SessionModule start");
        this.mImService.registerForImIncomingSession(this, 1, null);
        this.mImService.registerForImSessionEstablished(this, 2, null);
        this.mImService.registerForImSessionClosed(this, 3, null);
        this.mImService.registerForImIncomingMessage(this, 4, null);
        this.mImService.registerForMessageFailed(this, 5, null);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void stop() {
        super.stop();
        this.mRegisteredServices.clear();
        this.mImService.unregisterForImIncomingSession(this);
        this.mImService.unregisterForImSessionEstablished(this);
        this.mImService.unregisterForImSessionClosed(this);
        this.mImService.unregisterForImIncomingMessage(this);
        this.mImService.unregisterForMessageFailed(this);
        log("SessionModule stop");
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        switch (message.what) {
            case 1:
                onIncomingSessionReceived((ImIncomingSessionEvent) ((AsyncResult) message.obj).result);
                break;
            case 2:
                onSessionEstablished((ImSessionEstablishedEvent) ((AsyncResult) message.obj).result);
                break;
            case 3:
                onSessionClosed((ImSessionClosedEvent) ((AsyncResult) message.obj).result);
                break;
            case 4:
                onIncomingMessageReceived((ImIncomingMessageEvent) ((AsyncResult) message.obj).result);
                break;
            case 6:
                onRejectSession((ImSession) message.obj);
                break;
            case 7:
                this.isWaitingForCloseTagSendingComplete = false;
                closeSession((String) message.obj);
                break;
            case 8:
                updateConfig(((Integer) message.obj).intValue());
                break;
        }
    }

    private void updateConfig(int i) {
        updateFeatures(i);
        updateAppInfo();
        ImsProfile imsProfile = ImsRegistry.getRegistrationManager().getImsProfile(i, ImsProfile.PROFILE_TYPE.CHAT);
        if (((Boolean) Optional.ofNullable(imsProfile).map(new Function() { // from class: com.sec.internal.ims.servicemodules.session.SessionModule$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$updateConfig$0;
                lambda$updateConfig$0 = SessionModule.lambda$updateConfig$0((ImsProfile) obj);
                return lambda$updateConfig$0;
            }
        }).orElse(Boolean.TRUE)).booleanValue()) {
            Log.e(LOG_TAG, "profile is null, return !!!");
            return;
        }
        String rcsProfileWithFeature = ConfigUtil.getRcsProfileWithFeature(this.mContext, i, imsProfile);
        Log.d(LOG_TAG, "rcsProfile = " + rcsProfileWithFeature);
        if (ImsRegistry.getServiceModuleManager().getImModule() != null) {
            this.mConfig = ImsRegistry.getServiceModuleManager().getImModule().getImConfig();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$updateConfig$0(ImsProfile imsProfile) {
        return Boolean.valueOf((imsProfile.hasService("im") || imsProfile.hasService("slm")) ? false : true);
    }

    private void onIncomingSessionReceived(ImIncomingSessionEvent imIncomingSessionEvent) {
        String str = LOG_TAG;
        Log.d(str, "onIncomingSessionReceived: " + imIncomingSessionEvent);
        this.isEnableFailedMedia = false;
        if (this.mRegisteredServices.contains(imIncomingSessionEvent.mServiceId)) {
            ImSession createIncomingImSession = createIncomingImSession(imIncomingSessionEvent);
            String adjustServiceId2 = adjustServiceId2(imIncomingSessionEvent.mServiceId);
            boolean activeCall = getActiveCall(imIncomingSessionEvent.mInitiator);
            Log.d(str, "getActiveCall result = " + activeCall);
            if (!activeCall && (adjustServiceId2.equals(SERVICE_ID_SHARED_MAP) || adjustServiceId2.equals(SERVICE_ID_SHARED_SKETCH))) {
                Log.d(str, "Number not in call, reject invite. ServiceID: " + adjustServiceId2);
                createIncomingImSession.processIncomingSession(imIncomingSessionEvent);
                sendMessage(obtainMessage(6, createIncomingImSession));
                return;
            }
            Iterator<IMessagingSessionListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onIncomingSessionInvited(createIncomingImSession, MIMETYPE_PREFIX + adjustServiceId2);
            }
            createIncomingImSession.processIncomingSession(imIncomingSessionEvent);
        }
    }

    private void onSessionEstablished(ImSessionEstablishedEvent imSessionEstablishedEvent) {
        String str = LOG_TAG;
        Log.d(str, "onSessionEstablished: " + imSessionEstablishedEvent);
        ImSession imSession = this.mMessagingSessions.get(imSessionEstablishedEvent.mChatId);
        if (imSession == null) {
            Log.e(str, "onSessionEstablished: Session not found.");
        } else {
            imSession.receiveSessionEstablished(imSessionEstablishedEvent);
        }
    }

    private void onSessionClosed(ImSessionClosedEvent imSessionClosedEvent) {
        ImSession imSession;
        String str = LOG_TAG;
        Log.d(str, "onSessionClosed: " + imSessionClosedEvent);
        String str2 = imSessionClosedEvent.mChatId;
        if (str2 == null) {
            imSession = getImSessionByRawHandle(imSessionClosedEvent.mRawHandle);
        } else {
            imSession = this.mMessagingSessions.get(str2);
        }
        if (imSession == null) {
            Log.e(str, "onSessionClosed: Session not found.");
            return;
        }
        ImError imError = imSessionClosedEvent.mResult.getImError();
        if (imError == ImError.NETWORK_ERROR || imError == ImError.DEVICE_UNREGISTERED || imError == ImError.DEDICATED_BEARER_ERROR) {
            Log.e(str, "onSessionClosed: Session closed by " + imError);
            this.isEnableFailedMedia = true;
        }
        imSession.receiveSessionClosed(imSessionClosedEvent);
    }

    public ImSession getImSessionByRawHandle(Object obj) {
        for (ImSession imSession : this.mMessagingSessions.values()) {
            if (imSession.hasImSessionInfo(obj)) {
                return imSession;
            }
        }
        return null;
    }

    private void onIncomingMessageReceived(ImIncomingMessageEvent imIncomingMessageEvent) {
        String str = LOG_TAG;
        Log.d(str, "onIncomingMessageReceived: " + imIncomingMessageEvent);
        String str2 = imIncomingMessageEvent.mChatId;
        if (str2 == null) {
            Log.e(str, "onIncomingMessageReceived: mChatId is null.");
            return;
        }
        ImSession imSession = this.mMessagingSessions.get(str2);
        if (imSession == null) {
            Log.e(str, "onIncomingMessageReceived: Session not found.");
            return;
        }
        Iterator<IMessagingSessionListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onMessageReceived(imSession, imIncomingMessageEvent.mBody.getBytes(Charset.defaultCharset()), imIncomingMessageEvent.mContentType);
        }
        this.mBigDataProcessor.onMessageReceived(null, imSession);
    }

    private void onRejectSession(ImSession imSession) {
        Log.d(LOG_TAG, "onRejectSession");
        imSession.rejectSession();
    }

    public void updateAppInfo() {
        this.canRegisterExt = false;
        AppInfo.ALL.clear();
        this.mIariTypes.clear();
        updateAppInfo(INTENT_FILTER_MESSAGE);
        updateAppInfo(INTENT_FILTER_STREAM);
        if (AppInfo.ALL.isEmpty()) {
            return;
        }
        this.canRegisterExt = true;
    }

    public void updateAppInfo(String str) {
        AppInfo appInfo;
        Intent intent = new Intent();
        intent.setType(MIMETYPE_ALL);
        intent.addCategory(Intents.INTENT_CATEGORY);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setAction(str);
        List<ResolveInfo> queryBroadcastReceivers = this.mContext.getPackageManager().queryBroadcastReceivers(intent, 64);
        if (queryBroadcastReceivers != null) {
            for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
                String str2 = resolveInfo.activityInfo.packageName;
                log("new app name = " + str2);
                synchronized (AppInfo.ALL) {
                    if (AppInfo.ALL.containsKey(str2)) {
                        appInfo = AppInfo.ALL.get(str2);
                    } else {
                        appInfo = new AppInfo(str2);
                    }
                    IntentFilter intentFilter = resolveInfo.filter;
                    if (intentFilter != null) {
                        int countDataTypes = intentFilter.countDataTypes();
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < countDataTypes; i++) {
                            String dataType = resolveInfo.filter.getDataType(i);
                            String substring = dataType.substring(dataType.lastIndexOf("/") + 1);
                            arrayList.add(substring);
                            if (!this.mIariTypes.contains(substring)) {
                                this.mIariTypes.add(substring);
                            }
                        }
                        if (arrayList.size() > 0) {
                            appInfo.addType(str, arrayList);
                        }
                    }
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public boolean isServiceActivated(String str) {
        log("isServiceActivated,serviceId= " + str);
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        if (!str.startsWith("gsma")) {
            int currentNetworkByPhoneId = ImsRegistry.getRegistrationManager().getCurrentNetworkByPhoneId(activeDataPhoneId);
            if (currentNetworkByPhoneId == 1 || currentNetworkByPhoneId == 2) {
                log("isServiceActivated: current network is 2G, return ");
                return false;
            }
            if (Settings.System.getInt(this.mContext.getContentResolver(), "easy_mode_switch", 1) == 0) {
                log("Easymode on, return ");
                return false;
            }
            Iterator<String> it = this.mServiceIDsFromMetaData.iterator();
            while (it.hasNext()) {
                if (it.next().equalsIgnoreCase(str)) {
                    return true;
                }
            }
        } else {
            String substring = str.substring(5);
            if ("callunanswered".equalsIgnoreCase(substring)) {
                return this.mPostCallAuth[activeDataPhoneId];
            }
            if ("callcomposer".equalsIgnoreCase(substring)) {
                return this.mComposerAuth[activeDataPhoneId];
            }
            if ("sharedmap".equalsIgnoreCase(substring)) {
                return this.mSharedMapAuth[activeDataPhoneId];
            }
            if ("sharedsketch".equalsIgnoreCase(substring)) {
                return this.mSharedSketchAuth[activeDataPhoneId];
            }
            Iterator<String> it2 = this.mServiceIDsFromMetaData.iterator();
            while (it2.hasNext()) {
                if (it2.next().equalsIgnoreCase(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule
    public void sendInstantMultimediaMessage(String str, ImsUri imsUri, byte[] bArr, String str2) {
        log("sendInstantMultimediaMessage,serviceId= " + str + ",contact=" + imsUri + ",contentType=" + str2);
        ImSession messagingSession = getMessagingSession(str, imsUri);
        if (messagingSession != null) {
            messagingSession.sendImMessage(createOutgoingMessage(messagingSession.getChatId(), imsUri, bArr, str2));
        }
    }

    public static class AppInfo {
        public static Hashtable<String, AppInfo> ALL = new Hashtable<>();
        private Hashtable<String, List<String>> mExtTable = new Hashtable<>();

        AppInfo(String str) {
            ALL.put(str, this);
        }

        public void addType(String str, List<String> list) {
            if (this.mExtTable.containsKey(str)) {
                return;
            }
            this.mExtTable.put(str, list);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public ImsRegistration getImsRegistration() {
        if (this.mRegistrationId != -1) {
            return ImsRegistry.getRegistrationManager().getRegistrationInfo(this.mRegistrationId);
        }
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IModuleInterface
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IModuleInterface
    public boolean isWifiConnected() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            Log.i(LOG_TAG, "isWifiConnected: Default NW is null");
            return false;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
        return networkCapabilities != null && networkCapabilities.hasCapability(12) && networkCapabilities.hasTransport(1);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IModuleInterface
    public IRcsBigDataProcessor getBigDataProcessor() {
        return this.mBigDataProcessor;
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public IMnoStrategy getRcsStrategy() {
        return RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority());
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public IMnoStrategy getRcsStrategy(int i) {
        return RcsPolicyManager.getRcsStrategy(i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public MessageBase getMessage(int i) {
        return ImCache.getInstance().getMessage(i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public MessageBase getMessage(String str, ImDirection imDirection, String str2) {
        return ImCache.getInstance().getMessage(str, imDirection, str2);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public List<MessageBase> getMessages(Collection<String> collection) {
        return ImCache.getInstance().getMessages(collection);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public List<MessageBase> getMessages(Collection<String> collection, ImDirection imDirection, String str) {
        return ImCache.getInstance().getMessages(collection, imDirection, str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public MessageBase getPendingMessage(int i) {
        return ImCache.getInstance().getPendingMessage(i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public List<MessageBase> getAllPendingMessages(String str) {
        return ImCache.getInstance().getAllPendingMessages(str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public String onRequestIncomingFtTransferPath() {
        File externalFilesDir = this.mContext.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            return externalFilesDir.getAbsolutePath();
        }
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public Network getNetwork(int i) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null || this.mConfig.isFtHttpOverDefaultPdn()) {
            return null;
        }
        return imsRegistration.getNetwork();
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public Set<ImsUri> getOwnUris(int i) {
        HashSet hashSet = new HashSet();
        ImsRegistration imsRegistration = getImsRegistration();
        if (imsRegistration != null) {
            Iterator it = imsRegistration.getImpuList().iterator();
            while (it.hasNext()) {
                hashSet.add(this.mUriGenerator.normalize(((NameAddr) it.next()).getUri()));
            }
        }
        return hashSet;
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onCallStateChanged(int i, List<ICall> list) {
        this.mCallList.clear();
        int i2 = 0;
        for (ICall iCall : list) {
            if (iCall.isConnected()) {
                i2++;
                ImsUri normalizedUri = this.mUriGenerator.getNormalizedUri(iCall.getNumber(), true);
                if (normalizedUri != null && !this.mCallList.contains(normalizedUri)) {
                    this.mCallList.add(normalizedUri);
                }
            }
        }
        Log.d(LOG_TAG, "nConnecteCalls = " + i2);
        if (i2 > 1) {
            this.mCallList.clear();
        }
    }

    private boolean getActiveCall(ImsUri imsUri) {
        ImsUri normalizedUri = this.mUriGenerator.getNormalizedUri(imsUri.getMsisdn(), true);
        for (ImsUri imsUri2 : this.mCallList) {
            if (imsUri2 != null && imsUri2.equals(normalizedUri)) {
                return true;
            }
        }
        return false;
    }

    private synchronized void updateFeatures(int i) {
        String str = LOG_TAG;
        Log.d(str, "updateFeatures: phoneId = " + i);
        if (!(DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.RCS, i) == 1)) {
            Log.d(str, "updateFeatures: RCS is disabled, return");
            this.mEnabledFeatures[i] = 0;
            return;
        }
        this.mCallComposerTimerIdle[i] = RcsConfigurationHelper.readIntParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.OTHER_CALL_COMPOSER_TIMER_IDLE, i), Integer.valueOf(MNO.EVR_ESN)).intValue();
        log("updateFeatures: mCallComposerTimerIdle=" + this.mCallComposerTimerIdle[i]);
        int intValue = RcsConfigurationHelper.readIntParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_COMPOSER_AUTH, i), 0).intValue();
        this.mComposerAuth[i] = intValue == 1 || intValue == 3;
        log("updateFeatures: Composer enable :" + this.mComposerAuth[i]);
        boolean[] zArr = this.mSharedMapAuth;
        Context context = this.mContext;
        String pathWithPhoneId = ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_SHARED_MAP_AUTH, i);
        Boolean bool = Boolean.FALSE;
        zArr[i] = RcsConfigurationHelper.readBoolParam(context, pathWithPhoneId, bool).booleanValue();
        log("updateFeatures: SharedMapAuth enable " + this.mSharedMapAuth[i]);
        this.mSharedSketchAuth[i] = RcsConfigurationHelper.readBoolParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_SHARED_SKETCH_AUTH, i), bool).booleanValue();
        log("updateFeatures: SharedSketchAuth enable " + this.mSharedSketchAuth[i]);
        this.mPostCallAuth[i] = RcsConfigurationHelper.readBoolParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_POST_CALL_AUTH, i), bool).booleanValue();
        log("updateFeatures: PostCallAuth enable " + this.mPostCallAuth[i]);
        long[] jArr = this.mEnabledFeatures;
        jArr[i] = 0;
        if (this.mComposerAuth[i]) {
            jArr[i] = Capabilities.FEATURE_ENRICHED_CALL_COMPOSER | 0;
            this.mRegisteredServices.add(SipMsg.FEATURE_TAG_ENRICHED_CALL_COMPOSER);
        }
        if (this.mSharedMapAuth[i]) {
            long[] jArr2 = this.mEnabledFeatures;
            jArr2[i] = jArr2[i] | Capabilities.FEATURE_ENRICHED_SHARED_MAP;
            this.mRegisteredServices.add(SipMsg.FEATURE_TAG_ENRICHED_SHARED_MAP);
        }
        if (this.mSharedSketchAuth[i]) {
            long[] jArr3 = this.mEnabledFeatures;
            jArr3[i] = jArr3[i] | Capabilities.FEATURE_ENRICHED_SHARED_SKETCH;
            this.mRegisteredServices.add(SipMsg.FEATURE_TAG_ENRICHED_SHARED_SKETCH);
        }
        if (this.mPostCallAuth[i]) {
            long[] jArr4 = this.mEnabledFeatures;
            jArr4[i] = jArr4[i] | Capabilities.FEATURE_ENRICHED_POST_CALL;
            this.mRegisteredServices.add(SipMsg.FEATURE_TAG_ENRICHED_POST_CALL);
        }
        log("updateFeatures: mEnabledFeatures=" + this.mEnabledFeatures[i]);
    }
}
