package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.ft.IImsOngoingFtEventListener;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ChatMode;
import com.sec.internal.constants.ims.servicemodules.im.FileDisposition;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImSettings;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.RoutingType;
import com.sec.internal.constants.ims.servicemodules.im.event.FtIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.FtTransferProgressEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptSlmParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectSlmParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.FtRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.result.FtResult;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.BlockedNumberUtil;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.FilePathGenerator;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ImsGateConfig;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.listener.FtMessageListener;
import com.sec.internal.ims.servicemodules.im.listener.IFtEventListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.im.util.ImCpimNamespacesHelper;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.RcsSettingsUtils;
import com.sec.internal.ims.util.ThumbnailTool;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class FtProcessor extends Handler implements FtMessageListener {
    private static final int EVENT_REJECT_FT_RESUME_INVITE = 1;
    private static final String LOG_TAG = FtProcessor.class.getSimpleName();
    private ImCache mCache;
    private Context mContext;
    private final CollectionUtils.ArrayListMultimap<ImConstants.Type, IFtEventListener> mFtEventListeners;
    private ImModule mImModule;
    private final IImServiceInterface mImService;
    private ImSessionProcessor mImSessionProcessor;
    private ImTranslation mImTranslation;
    private final Map<Integer, RemoteCallbackList<IImsOngoingFtEventListener>> mImsFtListenerList;
    private RcsSettingsUtils mRcsSettingsUtils;
    private final ISlmServiceInterface mSlmService;
    private final ThumbnailTool mThumbnailTool;

    public FtProcessor(Context context, IImServiceInterface iImServiceInterface, ISlmServiceInterface iSlmServiceInterface, ImModule imModule, ImCache imCache) {
        super(imModule.getLooper());
        this.mFtEventListeners = CollectionUtils.createArrayListMultimap();
        this.mImsFtListenerList = new HashMap();
        this.mContext = context;
        this.mImService = iImServiceInterface;
        this.mImModule = imModule;
        this.mCache = imCache;
        this.mSlmService = iSlmServiceInterface;
        this.mThumbnailTool = new ThumbnailTool(context, imModule.getLooper());
        this.mRcsSettingsUtils = RcsSettingsUtils.getInstance(this.mContext);
    }

    protected void init(ImSessionProcessor imSessionProcessor, ImTranslation imTranslation) {
        this.mImSessionProcessor = imSessionProcessor;
        this.mImTranslation = imTranslation;
    }

    protected void registerFtEventListener(ImConstants.Type type, IFtEventListener iFtEventListener) {
        this.mFtEventListeners.put(type, iFtEventListener);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        AsyncResult asyncResult;
        super.handleMessage(message);
        if (message.what != 1 || (asyncResult = (AsyncResult) message.obj) == null || ((FtResult) asyncResult.result).getImError() == ImError.SUCCESS) {
            return;
        }
        Log.e(LOG_TAG, "CancelingState: Failed to reject transfer.");
    }

    protected void registerImsOngoingFtListenerByPhoneId(IImsOngoingFtEventListener iImsOngoingFtEventListener, int i) {
        String str = LOG_TAG;
        Log.i(str, "registerImsOngoingFtListener phoneId= " + i);
        if (!this.mImsFtListenerList.containsKey(Integer.valueOf(i))) {
            this.mImsFtListenerList.put(Integer.valueOf(i), new RemoteCallbackList<>());
        }
        synchronized (this.mImsFtListenerList) {
            RemoteCallbackList<IImsOngoingFtEventListener> remoteCallbackList = this.mImsFtListenerList.get(Integer.valueOf(i));
            if (iImsOngoingFtEventListener != null) {
                remoteCallbackList.register(iImsOngoingFtEventListener);
                notifyOngoingFtEvent(this.mCache.hasProcessingFileTransfer(), i);
            } else {
                Log.e(str, "no registerImsOngoingFtListener and not work");
            }
        }
    }

    protected void unregisterImsOngoingListenerByPhoneId(IImsOngoingFtEventListener iImsOngoingFtEventListener, int i) {
        Log.i(LOG_TAG, "unregisterImsOngoingListener phoneId= " + i);
        if (this.mImsFtListenerList.containsKey(Integer.valueOf(i))) {
            synchronized (this.mImsFtListenerList) {
                RemoteCallbackList<IImsOngoingFtEventListener> remoteCallbackList = this.mImsFtListenerList.get(Integer.valueOf(i));
                if (iImsOngoingFtEventListener != null) {
                    remoteCallbackList.unregister(iImsOngoingFtEventListener);
                }
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onTransferCreated(FtMessage ftMessage) {
        Log.i(LOG_TAG, "onTransferCreated: " + ftMessage);
        onNotifyCloudMsgFtEvent(ftMessage);
        if (this.mImSessionProcessor.isReportMsg(ftMessage)) {
            ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
            if (imSession != null) {
                imSession.sendFile(ftMessage);
                return;
            }
            return;
        }
        for (IFtEventListener iFtEventListener : this.mFtEventListeners.get(ftMessage.getType())) {
            iFtEventListener.onFileTransferCreated(ftMessage);
            iFtEventListener.onFileTransferAttached(ftMessage);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onTransferReceived(FtMessage ftMessage) {
        Log.i(LOG_TAG, "onFileTransferReceived: " + ftMessage);
        Iterator<IFtEventListener> it = this.mFtEventListeners.get(ftMessage.getType()).iterator();
        while (it.hasNext()) {
            it.next().onFileTransferReceived(ftMessage);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onTransferProgressReceived(FtMessage ftMessage) {
        Log.i(LOG_TAG, "onTransferProgressReceived: " + ftMessage.getId() + " " + ftMessage.getTransferredBytes() + "/" + ftMessage.getFileSize());
        if (this.mImSessionProcessor.isReportMsg(ftMessage)) {
            return;
        }
        Iterator<IFtEventListener> it = this.mFtEventListeners.get(ftMessage.getType()).iterator();
        while (it.hasNext()) {
            it.next().onTransferProgressReceived(ftMessage);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onTransferCompleted(FtMessage ftMessage) {
        String contentType;
        if (this.mImSessionProcessor.isReportMsg(ftMessage)) {
            if (ftMessage.getReportMsgParams() != null) {
                this.mCache.deleteMessage(ftMessage.getId());
                this.mImTranslation.onMessageReportResponse(ftMessage.getReportMsgParams().getSpamMsgImdnId(), ftMessage.getChatId(), true);
                return;
            }
            return;
        }
        IMnoStrategy rcsStrategy = this.mImModule.getRcsStrategy(this.mImModule.getPhoneIdByIMSI(ftMessage.getOwnIMSI()));
        if (rcsStrategy != null && rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.DISPLAY_FT_IN_GALLERY) && ftMessage.isIncoming() && (contentType = ftMessage.getContentType()) != null && (contentType.contains(SipMsg.FEATURE_TAG_MMTEL_VIDEO) || contentType.contains(CallConstants.ComposerData.IMAGE))) {
            Log.i(LOG_TAG, "update gallery app: " + contentType);
            MediaScannerConnection.scanFile(this.mContext, new String[]{ftMessage.getFilePath()}, null, null);
        }
        this.mImModule.setCountReconfiguration(0);
        this.mImModule.removeReconfigurationEvent();
        Iterator<IFtEventListener> it = this.mFtEventListeners.get(ftMessage.getType()).iterator();
        while (it.hasNext()) {
            it.next().onTransferCompleted(ftMessage);
        }
        if (ftMessage instanceof FtHttpOutgoingMessage) {
            return;
        }
        ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
        this.mCache.removeFromPendingList(ftMessage.getId());
        if (imSession == null || this.mCache.hasFileTransferInprogress()) {
            return;
        }
        this.mImSessionProcessor.notifyImSessionClosed(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()));
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onTransferCanceled(FtMessage ftMessage) {
        if (this.mImSessionProcessor.isReportMsg(ftMessage)) {
            if (ftMessage.getReportMsgParams() != null) {
                this.mCache.deleteMessage(ftMessage.getId());
                this.mImTranslation.onMessageReportResponse(ftMessage.getReportMsgParams().getSpamMsgImdnId(), ftMessage.getChatId(), false);
                return;
            }
            return;
        }
        if (ImsGateConfig.isGateEnabled()) {
            IMSLog.g("GATE", "<GATE-M>MMS_ERROR</GATE-M>");
        }
        if (ftMessage.getLastNotificationType() != NotificationStatus.CANCELED) {
            Iterator<IFtEventListener> it = this.mFtEventListeners.get(ftMessage.getType()).iterator();
            while (it.hasNext()) {
                it.next().onTransferCanceled(ftMessage);
            }
        }
        ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.e(LOG_TAG, "onTransferCanceled: session not found in the cache.");
        } else {
            if (this.mCache.hasFileTransferInprogress()) {
                return;
            }
            this.mImSessionProcessor.notifyImSessionClosed(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()));
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onTransferInProgress(FtMessage ftMessage) {
        Iterator<IFtEventListener> it = this.mFtEventListeners.get(ftMessage.getType()).iterator();
        while (it.hasNext()) {
            it.next().onTransferStarted(ftMessage);
        }
        ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
        if (imSession != null) {
            this.mImSessionProcessor.notifyImSessionEstablished(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()));
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onAutoResumeTransfer(final FtMessage ftMessage) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$onAutoResumeTransfer$0(ftMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAutoResumeTransfer$0(FtMessage ftMessage) {
        String str = LOG_TAG;
        Log.i(str, "onAutoResumeTransfer: messageId =" + ftMessage.getId());
        ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.e(str, "onAutoResumeTransfer: session not found in the cache.");
            return;
        }
        if (!this.mImModule.isRegistered(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()))) {
            Log.e(str, "onAutoResumeTransfer: not registered");
            return;
        }
        if (imSession.isGroupChat() && !imSession.isBroadcastMsg(ftMessage)) {
            imSession.startSession();
        }
        this.mCache.addToPendingList(ftMessage);
        imSession.resumeTransferFile(ftMessage);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public Integer onRequestRegistrationType() {
        return this.mImModule.onRequestRegistrationType();
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public String onRequestIncomingFtTransferPath() {
        return FilePathGenerator.getFileDownloadPath(this.mContext, false);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onFileResizingNeeded(FtMessage ftMessage, long j) {
        Iterator<IFtEventListener> it = this.mFtEventListeners.get(ftMessage.getType()).iterator();
        while (it.hasNext()) {
            it.next().onFileResizingNeeded(ftMessage, j);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onCancelRequestFailed(FtMessage ftMessage) {
        Iterator<IFtEventListener> it = this.mFtEventListeners.get(ftMessage.getType()).iterator();
        while (it.hasNext()) {
            it.next().onCancelRequestFailed(ftMessage);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onSendDeliveredNotification(final FtMessage ftMessage) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$onSendDeliveredNotification$1(ftMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendDeliveredNotification$1(FtMessage ftMessage) {
        String str = LOG_TAG;
        Log.i(str, "onSendDeliveredNotification: msgId=" + ftMessage.getId());
        ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
        if (imSession != null) {
            this.mImModule.getImDump().addEventLogs("sendDeliveredNotification: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", imdnId" + ftMessage.getImdnId());
            imSession.sendDeliveredNotification(ftMessage);
            return;
        }
        Log.e(str, "session not found in the cache.");
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onFtErrorReport(ImError imError) {
        IRegistrationGovernor registrationGovernor;
        String str = LOG_TAG;
        Log.i(str, "onFtErrorReport");
        ImsRegistration imsRegistration = this.mImModule.getImsRegistration();
        if (imsRegistration == null || (registrationGovernor = ImsRegistry.getRegistrationManager().getRegistrationGovernor(imsRegistration.getHandle())) == null || imError != ImError.FORBIDDEN_NO_WARNING_HEADER) {
            return;
        }
        Log.i(str, "onFtErrorReport : 403 forbidden w/o warning header");
        registrationGovernor.onSipError("ft", new SipError(403, "Forbidden"));
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onMessageSendingSucceeded(MessageBase messageBase) {
        this.mImSessionProcessor.onMessageSendingSucceeded(messageBase);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onMessageSendingFailed(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse, Result result) {
        this.mImSessionProcessor.onMessageSendingFailed(messageBase, strategyResponse, result);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public ChatData.ChatType onRequestChatType(String str) {
        ImSession imSession = this.mImSessionProcessor.getImSession(str);
        if (imSession != null) {
            return imSession.getChatType();
        }
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public Message onRequestCompleteCallback(String str) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession != null) {
            return imSession.getFtCompleteCallback();
        }
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public Set<ImsUri> onRequestParticipantUris(String str) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession != null) {
            return imSession.getParticipantsUri();
        }
        return new HashSet();
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onImdnNotificationReceived(FtMessage ftMessage, ImsUri imsUri, NotificationStatus notificationStatus, boolean z) {
        Iterator<IFtEventListener> it = this.mFtEventListeners.get(ftMessage.getType()).iterator();
        while (it.hasNext()) {
            it.next().onImdnNotificationReceived(ftMessage, imsUri, notificationStatus, z);
        }
    }

    protected ThumbnailTool getThumbnailTool() {
        return this.mThumbnailTool;
    }

    protected void acceptFileTransfer(final String str, final ImDirection imDirection, final String str2, final Uri uri) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$acceptFileTransfer$2(str, imDirection, str2, uri);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acceptFileTransfer$2(String str, ImDirection imDirection, String str2, Uri uri) {
        String str3 = LOG_TAG;
        Log.i(str3, "acceptFileTransfer: messageId=" + str);
        FtMessage ftMessage = this.mCache.getFtMessage(str, imDirection, str2);
        if (ftMessage == null) {
            Log.e(str3, "FT not found in the cache.");
            return;
        }
        if (!this.mImModule.isRegistered(this.mImModule.getPhoneIdByIMSI(ftMessage.getOwnIMSI()))) {
            Log.i(str3, "acceptFileTransfer: not registered");
            if (this.mCache.getImSession(ftMessage.getChatId()) == null) {
                Log.e(str3, "acceptFileTransfer: No session");
                return;
            } else {
                notifyRegistrationError(ftMessage);
                return;
            }
        }
        ftMessage.acceptTransfer(uri);
    }

    protected Future<FtMessage> attachFileToSingleChat(final int i, final String str, final Uri uri, final ImsUri imsUri, final Set<NotificationStatus> set, final String str2, final String str3, final boolean z, final boolean z2, final boolean z3, final boolean z4, final String str4, final FileDisposition fileDisposition, final boolean z5, final boolean z6) {
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda10
            @Override // java.util.concurrent.Callable
            public final Object call() {
                FtMessage lambda$attachFileToSingleChat$3;
                lambda$attachFileToSingleChat$3 = FtProcessor.this.lambda$attachFileToSingleChat$3(i, str, uri, imsUri, set, str2, str3, z, z2, z3, z4, fileDisposition, z5, z6, str4);
                return lambda$attachFileToSingleChat$3;
            }
        });
        post(futureTask);
        return futureTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FtMessage lambda$attachFileToSingleChat$3(int i, String str, Uri uri, ImsUri imsUri, Set set, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, FileDisposition fileDisposition, boolean z5, boolean z6, String str4) throws Exception {
        ImSession imSession;
        FtMessage makeNewOutgoingFtHttpMessage;
        String str5 = LOG_TAG;
        IMSLog.i(str5, i, "attachFileToSingleChat: fileName=" + IMSLog.checker(str) + " contentUri=" + IMSLog.checker(uri) + " contactUri=" + IMSLog.numberChecker(imsUri) + " disp=" + set + " requestMessageId=" + str2 + " contentType=" + str3 + " isprotectedAccountMsg=" + z + " isResizable=" + z2 + " isExtraft=" + z3 + " isFtSms=" + z4 + " fileDisposition=" + fileDisposition + " isTokenUsed=" + z5 + " isTokenLink=" + z6);
        HashSet hashSet = new HashSet();
        hashSet.add(this.mImModule.normalizeUri(i, imsUri));
        ChatMode chatMode = ChatMode.OFF;
        if (z5 && !z6) {
            chatMode = ChatMode.ON;
        }
        ImCache imCache = this.mCache;
        ChatData.ChatType chatType = ChatData.ChatType.ONE_TO_ONE_CHAT;
        ImSession imSessionByParticipants = imCache.getImSessionByParticipants(hashSet, chatType, this.mImModule.getImsiFromPhoneId(i), chatMode);
        if (imSessionByParticipants == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(imsUri);
            imSessionByParticipants = this.mCache.makeNewEmptySession(this.mImModule.getImsiFromPhoneId(i), this.mImModule.normalizeUri(i, arrayList), chatType, ImDirection.OUTGOING, chatMode);
            IMSLog.i(str5, "session not found, new session created: " + imSessionByParticipants);
        }
        ImSession imSession2 = imSessionByParticipants;
        IMnoStrategy rcsStrategy = this.mImModule.getRcsStrategy(i);
        boolean z7 = rcsStrategy.isFTViaHttp(this.mImModule.getImConfig(i), imSession2.getParticipantsUri(), imSession2.getChatType()) || z4;
        if ((z7 || rcsStrategy.isFtHttpOnlySupported(false)) && !MIMEContentType.LOCATION_PUSH.equals(str3)) {
            ImCache imCache2 = this.mCache;
            String imsiFromPhoneId = this.mImModule.getImsiFromPhoneId(i);
            ImModule imModule = this.mImModule;
            imSession = imSession2;
            makeNewOutgoingFtHttpMessage = imCache2.makeNewOutgoingFtHttpMessage(imsiFromPhoneId, imSession2, str, uri, imsUri, set, str2, str3, z3, imModule.getNetwork(imModule.getImConfig(i).isFtHttpOverDefaultPdn(), i), z4, false, false, fileDisposition, z2);
            if (!z7) {
                Log.e(str5, "attachFileToSingleChat: isFTViaHttp is false");
                makeNewOutgoingFtHttpMessage.cancelTransfer(CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE);
                return null;
            }
            str5 = str5;
        } else {
            imSession = imSession2;
            HashSet hashSet2 = new HashSet();
            boolean z8 = this.mImModule.getImConfig(i).getImMsgTech() == ImConstants.ImMsgTech.CPM;
            boolean isFtStAndFwEnabled = this.mImModule.getImConfig(i).isFtStAndFwEnabled();
            ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
            Capabilities capabilities = capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getCapabilities(imsUri, CapabilityRefreshType.DISABLED, i) : null;
            if (z8) {
                hashSet2.addAll(set);
            } else {
                if (capabilities != null && isFtStAndFwEnabled && capabilities.hasFeature(Capabilities.FEATURE_FT_STORE)) {
                    hashSet2.add(NotificationStatus.DELIVERED);
                } else if (MIMEContentType.LOCATION_PUSH.equals(str3)) {
                    hashSet2.addAll(set);
                } else {
                    hashSet2.add(NotificationStatus.NONE);
                }
                Log.i(str5, "IMDN modified: [" + set + "] to [" + hashSet2 + "]");
            }
            makeNewOutgoingFtHttpMessage = this.mCache.makeNewOutgoingFtMessage(imSession.getOwnImsi(), imSession, str, uri, imsUri, hashSet2, str2, str3, z, z2, false, str4);
            if (TextUtils.isEmpty(makeNewOutgoingFtHttpMessage.getFilePath())) {
                Log.e(str5, "attachFileToSingleChat: File copy failed");
                makeNewOutgoingFtHttpMessage.cancelTransfer(CancelReason.ERROR);
                return null;
            }
        }
        IMSLog.s(str5, "attachFileToSingleChat: Make new outgoing ft " + makeNewOutgoingFtHttpMessage);
        if (!this.mImModule.isRegistered(i)) {
            Log.e(str5, "attachFileToSingleChat: not registered");
            notifyRegistrationError(makeNewOutgoingFtHttpMessage);
            return null;
        }
        if (this.mImModule.mKnoxBlockState == 1 && BlockedNumberUtil.isKnoxBlockedNumber(imSession.getRemoteUri().getMsisdn(), ImDirection.OUTGOING)) {
            makeNewOutgoingFtHttpMessage.cancelTransfer(CancelReason.ERROR);
            return null;
        }
        if ("UNSUPPORTED TYPE".equalsIgnoreCase(makeNewOutgoingFtHttpMessage.getContentType())) {
            makeNewOutgoingFtHttpMessage.cancelTransfer(CancelReason.ERROR);
            return null;
        }
        if (!FileUtils.exists(this.mContext, uri)) {
            Log.e(str5, "attachFileToSingleChat: No files found");
            makeNewOutgoingFtHttpMessage.cancelTransfer(CancelReason.ERROR);
            return null;
        }
        ImSession imSession3 = imSession;
        this.mCache.updateActiveSession(imSession3);
        imSession3.attachFile(makeNewOutgoingFtHttpMessage);
        return makeNewOutgoingFtHttpMessage;
    }

    protected Future<FtMessage> attachFileToGroupChat(final String str, final String str2, final Uri uri, final Set<NotificationStatus> set, final String str3, final String str4, final boolean z, final boolean z2, final boolean z3, final boolean z4, final String str5, final FileDisposition fileDisposition) {
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda7
            @Override // java.util.concurrent.Callable
            public final Object call() {
                FtMessage lambda$attachFileToGroupChat$4;
                lambda$attachFileToGroupChat$4 = FtProcessor.this.lambda$attachFileToGroupChat$4(str, str2, uri, set, str3, z4, str4, z, z2, fileDisposition, z3, str5);
                return lambda$attachFileToGroupChat$4;
            }
        });
        post(futureTask);
        return futureTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FtMessage lambda$attachFileToGroupChat$4(String str, String str2, Uri uri, Set set, String str3, boolean z, String str4, boolean z2, boolean z3, FileDisposition fileDisposition, boolean z4, String str5) throws Exception {
        ImSession imSession;
        FtMessage makeNewOutgoingFtHttpMessage;
        String str6;
        String str7 = LOG_TAG;
        Log.i(str7, "attachFileToGroupChat: chatId=" + str + ", fileName=" + IMSLog.checker(str2) + ", contentUri=" + IMSLog.checker(uri) + ", disp=" + set + ", requestMessageId=" + str3 + "isFtSms=" + z + ", contentType=" + str4 + ", isResizable=" + z2 + ", isBroadcast=" + z3 + ", fileDisposition=" + fileDisposition);
        ImSession imSession2 = this.mCache.getImSession(str);
        if (imSession2 == null) {
            Log.e(str7, "attachFileToGroupChat: chat not exist - " + str);
            return null;
        }
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession2.getOwnImsi());
        IMnoStrategy rcsStrategy = this.mImModule.getRcsStrategy(phoneIdByIMSI);
        boolean isFTViaHttp = rcsStrategy.isFTViaHttp(this.mImModule.getImConfig(phoneIdByIMSI), imSession2.getParticipantsUri(), imSession2.getChatType());
        if (isFTViaHttp || rcsStrategy.isFtHttpOnlySupported(true)) {
            boolean z5 = this.mImModule.isRegistered(phoneIdByIMSI) && this.mImModule.isServiceRegistered(phoneIdByIMSI, "slm") && (!this.mImModule.getImConfig(phoneIdByIMSI).getChatEnabled() || z3) && this.mImModule.getImConfig(phoneIdByIMSI).getSlmAuth() == ImConstants.SlmAuth.ENABLED && ((!imSession2.isGroupChat() || z3 || imSession2.getChatType() == ChatData.ChatType.ONE_TO_MANY_CHAT) && !this.mImModule.isServiceRegistered(phoneIdByIMSI, "ft_http"));
            ImCache imCache = this.mCache;
            String imsiFromPhoneId = this.mImModule.getImsiFromPhoneId(phoneIdByIMSI);
            ImsUri sessionUri = imSession2.getSessionUri();
            ImModule imModule = this.mImModule;
            imSession = imSession2;
            makeNewOutgoingFtHttpMessage = imCache.makeNewOutgoingFtHttpMessage(imsiFromPhoneId, imSession2, str2, uri, sessionUri, set, str3, str4, z4, imModule.getNetwork(imModule.getImConfig(phoneIdByIMSI).isFtHttpOverDefaultPdn(), phoneIdByIMSI), z, z3, z5, fileDisposition, z2);
            if (!this.mImModule.isRegistered(phoneIdByIMSI)) {
                IMSLog.i(str7, "attachFileToGroupChat: not registered");
                notifyRegistrationError(makeNewOutgoingFtHttpMessage);
                return null;
            }
            str6 = str7;
            if (!isFTViaHttp) {
                Log.e(str6, "attachFileToGroupChat: FT MSRP is not supported");
                makeNewOutgoingFtHttpMessage.cancelTransfer(imSession.getChatType() == ChatData.ChatType.PARTICIPANT_BASED_GROUP_CHAT ? CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE : CancelReason.ERROR);
                return null;
            }
        } else {
            makeNewOutgoingFtHttpMessage = this.mCache.makeNewOutgoingFtMessage(this.mImModule.getImsiFromPhoneId(phoneIdByIMSI), imSession2, str2, uri, imSession2.getSessionUri(), set, str3, str4, false, z2, z3, str5);
            IMSLog.s(str7, "attachFileToGroupChat: Make new outgoing ft " + makeNewOutgoingFtHttpMessage);
            if (TextUtils.isEmpty(makeNewOutgoingFtHttpMessage.getFilePath())) {
                Log.e(str7, "attachFileToSingleChat: File copy failed");
                makeNewOutgoingFtHttpMessage.cancelTransfer(CancelReason.ERROR);
                return null;
            }
            if (!this.mImModule.isRegistered(phoneIdByIMSI)) {
                IMSLog.i(str7, "attachFileToGroupChat: not registered");
                notifyRegistrationError(makeNewOutgoingFtHttpMessage);
                return null;
            }
            IMnoStrategy.StrategyResponse checkCapability = this.mImModule.getRcsStrategy(phoneIdByIMSI).checkCapability(imSession2.getParticipantsUri(), Capabilities.FEATURE_FT_SERVICE, imSession2.getChatType(), imSession2.isBroadcastMsg(makeNewOutgoingFtHttpMessage));
            if (!imSession2.isBroadcastMsg(makeNewOutgoingFtHttpMessage) && checkCapability.getStatusCode() == IMnoStrategy.StatusCode.NONE) {
                imSession2.startSession();
            }
            imSession = imSession2;
            str6 = str7;
        }
        if (!FileUtils.exists(this.mContext, uri)) {
            Log.e(str6, "attachFileToGroupChat: No files found");
            makeNewOutgoingFtHttpMessage.cancelTransfer(CancelReason.ERROR);
            return null;
        }
        ImSession imSession3 = imSession;
        this.mCache.updateActiveSession(imSession3);
        imSession3.attachFile(makeNewOutgoingFtHttpMessage);
        return makeNewOutgoingFtHttpMessage;
    }

    protected void sendFile(long j) {
        sendFile(this.mCache.getFtMessage((int) j));
    }

    protected void sendFile(String str) {
        sendFile((FtMessage) this.mCache.getMessage(str, ImDirection.OUTGOING, null));
    }

    protected void sendFile(final FtMessage ftMessage) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$sendFile$5(ftMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendFile$5(FtMessage ftMessage) {
        if (ftMessage == null) {
            Log.e(LOG_TAG, "sendFile: Message not found in cache");
            return;
        }
        String str = LOG_TAG;
        Log.i(str, "sendFile: messageId=" + ftMessage.getId());
        ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.e(str, "sendFile: Session not found in the cache");
            return;
        }
        if (!this.mImModule.isRegistered(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi())) && (ftMessage instanceof FtMsrpMessage)) {
            IMSLog.i(str, "sendFile: not registered");
            notifyRegistrationError(ftMessage);
            return;
        }
        if (imSession.isGroupChat() && !imSession.isBroadcastMsg(ftMessage) && !ftMessage.mIsSlmSvcMsg) {
            imSession.startSession();
        }
        imSession.sendFile(ftMessage);
    }

    protected void rejectFileTransfer(final String str, final ImDirection imDirection, final String str2) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$rejectFileTransfer$6(str, imDirection, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rejectFileTransfer$6(String str, ImDirection imDirection, String str2) {
        String str3 = LOG_TAG;
        Log.i(str3, "rejectFileTransfer: messageId=" + str);
        FtMessage ftMessage = this.mCache.getFtMessage(str, imDirection, str2);
        if (ftMessage == null) {
            Log.e(str3, "FT not found in the cache.");
        } else {
            ftMessage.rejectTransfer();
        }
    }

    protected void resumeSendingTransfer(final String str, final Uri uri, final boolean z) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$resumeSendingTransfer$7(str, z, uri);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resumeSendingTransfer$7(String str, boolean z, Uri uri) {
        String str2 = LOG_TAG;
        Log.i(str2, "resumeSendingTransfer: messageId=" + str);
        FtMessage ftMessage = this.mCache.getFtMessage(str, ImDirection.OUTGOING, null);
        if (ftMessage == null) {
            Log.e(str2, "resumeSendingTransfer: FT not found in the cache.");
            return;
        }
        ftMessage.setIsResizable(z);
        ftMessage.setContentUri(uri);
        ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.e(str2, "resumeSendingTransfer: FT not found in the cache.");
            return;
        }
        if (!this.mImModule.isRegistered(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi())) && (ftMessage instanceof FtMsrpMessage)) {
            IMSLog.i(str2, "resumeSendingTransfer: not registered");
            notifyRegistrationError(ftMessage);
            return;
        }
        if (imSession.isGroupChat() && !imSession.isBroadcastMsg(ftMessage)) {
            imSession.startSession();
        }
        this.mCache.addToPendingList(ftMessage);
        ftMessage.removeAutoResumeFileTimer();
        imSession.resumeTransferFile(ftMessage);
    }

    protected void resumeReceivingTransfer(final String str, final String str2, final Uri uri) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$resumeReceivingTransfer$8(str, str2, uri);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resumeReceivingTransfer$8(String str, String str2, Uri uri) {
        String str3 = LOG_TAG;
        Log.i(str3, "resumeReceivingTransfer: messageId=" + str);
        FtMessage ftMessage = this.mCache.getFtMessage(str, ImDirection.INCOMING, str2);
        if (ftMessage == null) {
            Log.e(str3, "resumeReceivingTransfer: FT not found in the cache.");
            return;
        }
        ftMessage.setContentUri(uri);
        ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.e(str3, "resumeReceivingTransfer: Session not found in the cache.");
            return;
        }
        if (!this.mImModule.isRegistered(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi())) && (ftMessage instanceof FtMsrpMessage)) {
            Log.e(str3, "resumeReceivingTransfer: not registered");
            notifyRegistrationError(ftMessage);
            return;
        }
        this.mCache.addToPendingList(ftMessage);
        if (ftMessage instanceof FtMsrpMessage) {
            Log.i(str3, "request resuming FT to sender using INVITE");
            ftMessage.removeAutoResumeFileTimer();
            imSession.resumeTransferFile(ftMessage);
            return;
        }
        imSession.receiveTransfer(ftMessage, null, true);
    }

    protected void cancelFileTransfer(final String str, final ImDirection imDirection, final String str2) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$cancelFileTransfer$9(str, imDirection, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelFileTransfer$9(String str, ImDirection imDirection, String str2) {
        String str3 = LOG_TAG;
        Log.i(str3, "cancelFileTransfer: messageId=" + str);
        FtMessage ftMessage = this.mCache.getFtMessage(str, imDirection, str2);
        if (ftMessage == null) {
            Log.e(str3, "FT not found in the cache.");
        } else {
            ftMessage.cancelTransfer(CancelReason.CANCELED_BY_USER);
        }
    }

    protected void setAutoAcceptFt(final int i, final int i2) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$setAutoAcceptFt$10(i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setAutoAcceptFt$10(int i, int i2) {
        if (!RcsUtils.DualRcs.isDualRcsSettings()) {
            i = SimUtil.getSimSlotPriority();
        }
        Log.i(LOG_TAG, "setAutoAcceptFt: accept=" + i2 + " isRoaming=" + this.mImModule.isDataRoaming(i));
        this.mImModule.getImConfig(i).setFtAutAccept(this.mContext, i2, this.mImModule.isDataRoaming(i));
        boolean z = i2 == 1 || i2 == 2;
        boolean z2 = i2 == 2;
        RcsSettingsUtils rcsSettingsUtils = this.mRcsSettingsUtils;
        if (rcsSettingsUtils != null) {
            rcsSettingsUtils.writeBoolean(ImSettings.AUTO_ACCEPT_FILE_TRANSFER, z);
            this.mRcsSettingsUtils.writeBoolean(ImSettings.AUTO_ACCEPT_FT_IN_ROAMING, z2);
        }
    }

    protected void onIncomingFileTransferReceived(FtIncomingSessionEvent ftIncomingSessionEvent) {
        String str = LOG_TAG;
        Log.i(str, "onIncomingFileTransferReceived: " + ftIncomingSessionEvent);
        this.mImModule.getImDump().addEventLogs("onIncomingFileTransferReceived: conversationId=" + ftIncomingSessionEvent.mConversationId + ", imdnId=" + ftIncomingSessionEvent.mImdnId + ", isSLM=" + ftIncomingSessionEvent.mIsSlmSvcMsg);
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(ftIncomingSessionEvent.mOwnImsi);
        Set<ImsUri> normalizedParticipants = this.mImSessionProcessor.getNormalizedParticipants(phoneIdByIMSI, ftIncomingSessionEvent.mParticipants, ftIncomingSessionEvent.mSenderUri);
        StringBuilder sb = new StringBuilder();
        sb.append("onIncomingFileTransferReceived normalizedParticipants : ");
        sb.append(IMSLog.numberChecker(normalizedParticipants));
        Log.i(str, sb.toString());
        boolean z = normalizedParticipants.size() > 1 || ftIncomingSessionEvent.mIsConference;
        boolean z2 = ftIncomingSessionEvent.mStart != 0;
        if (ftIncomingSessionEvent.mIsSlmSvcMsg && !ftIncomingSessionEvent.mIsLMM) {
            if (this.mImModule.isBlockedNumber(phoneIdByIMSI, ftIncomingSessionEvent.mSenderUri, z)) {
                this.mSlmService.rejectSlm(new RejectSlmParams(null, ftIncomingSessionEvent.mRawHandle, ImSessionRejectReason.BUSY_HERE, null, ftIncomingSessionEvent.mOwnImsi));
                return;
            }
            this.mSlmService.acceptSlm(new AcceptSlmParams(null, this.mImModule.getUserAlias(phoneIdByIMSI, false), ftIncomingSessionEvent.mRawHandle, null, ftIncomingSessionEvent.mOwnImsi));
        }
        ChatData.ChatType generateChatType = this.mImSessionProcessor.generateChatType(z, ftIncomingSessionEvent.mIsSlmSvcMsg || this.mImModule.getRcsStrategy(phoneIdByIMSI).boolSetting(RcsPolicySettings.RcsPolicy.PARTICIPANTBASED_CLOSED_GROUPCHAT), false);
        ImSessionProcessor imSessionProcessor = this.mImSessionProcessor;
        String str2 = ftIncomingSessionEvent.mOwnImsi;
        String str3 = ftIncomingSessionEvent.mConversationId;
        ImSession findSession = imSessionProcessor.findSession(phoneIdByIMSI, str2, z, generateChatType, null, str3, str3, normalizedParticipants, ChatMode.OFF);
        ImDirection extractImDirection = ImCpimNamespacesHelper.extractImDirection(phoneIdByIMSI, ftIncomingSessionEvent.mCpimNamespaces);
        FtMessage findFileTransfer = findFileTransfer(findSession, ftIncomingSessionEvent, extractImDirection);
        boolean z3 = z2;
        RejectFtSessionParams checkForRejectIncomingFileTransfer = checkForRejectIncomingFileTransfer(phoneIdByIMSI, ftIncomingSessionEvent, z, findSession != null, findSession != null && findSession.getChatData().isMuted(), findFileTransfer != null, z3, findFileTransfer != null && findFileTransfer.getStatus() == ImConstants.Status.SENT);
        if (checkForRejectIncomingFileTransfer != null) {
            rejectFtSession(checkForRejectIncomingFileTransfer);
            return;
        }
        if (z3 && ftIncomingSessionEvent.mPush && findFileTransfer != null) {
            Log.i(str, "onIncomingFileTransferReceived, resume invite");
            int i = ftIncomingSessionEvent.mStart;
            findFileTransfer.setTransferredBytes(i > 0 ? i - 1 : 0);
        }
        if (findSession == null) {
            Log.e(str, "onIncomingFileTransferReceived: Session not found by participants.");
            findSession = this.mCache.makeNewEmptySession(ftIncomingSessionEvent.mOwnImsi, normalizedParticipants, generateChatType, extractImDirection);
        }
        findSession.setConversationId(ftIncomingSessionEvent.mConversationId);
        findSession.setContributionId(ftIncomingSessionEvent.mContributionId);
        findSession.setDirection(extractImDirection);
        if (findFileTransfer != null) {
            this.mCache.addToPendingList(findFileTransfer);
            findFileTransfer.setConversationId(ftIncomingSessionEvent.mConversationId);
            findFileTransfer.setContributionId(ftIncomingSessionEvent.mContributionId);
        } else {
            if (ftIncomingSessionEvent.mIsRoutingMsg) {
                RoutingType msgRoutingType = this.mImModule.getMsgRoutingType(ftIncomingSessionEvent.mRequestUri, ftIncomingSessionEvent.mPAssertedId, ftIncomingSessionEvent.mSenderUri, ftIncomingSessionEvent.mReceiver, findSession.isGroupChat(), phoneIdByIMSI);
                ftIncomingSessionEvent.mRoutingType = msgRoutingType;
                if (msgRoutingType == RoutingType.SENT && !findSession.isGroupChat()) {
                    ftIncomingSessionEvent.mSenderUri = ftIncomingSessionEvent.mReceiver;
                }
            }
            findFileTransfer = this.mCache.makeNewIncomingFtMessage(findSession.getOwnImsi(), findSession, ftIncomingSessionEvent, ftIncomingSessionEvent.mIsSlmSvcMsg);
        }
        if (!findSession.isGroupChat()) {
            this.mImSessionProcessor.setLegacyLatching(findSession.getRemoteUri(), false, findSession.getChatData().getOwnIMSI());
        }
        findSession.receiveTransfer(findFileTransfer, ftIncomingSessionEvent, z3);
        this.mImModule.updateServiceAvailability(ftIncomingSessionEvent.mOwnImsi, ftIncomingSessionEvent.mSenderUri, ftIncomingSessionEvent.mImdnTime);
    }

    protected void handleFileResizeResponse(final String str, final boolean z, final Uri uri) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$handleFileResizeResponse$11(str, z, uri);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleFileResizeResponse$11(String str, boolean z, Uri uri) {
        FtMessage ftMessage = this.mCache.getFtMessage(str, ImDirection.OUTGOING, null);
        if (ftMessage != null) {
            ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
            if (imSession == null) {
                Log.e(LOG_TAG, "handleFileResizeResponse: FT not found in the cache.");
                return;
            }
            if (!this.mImModule.isRegistered(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi()))) {
                IMSLog.i(LOG_TAG, "handleFileResizeResponse: not registered");
                notifyRegistrationError(ftMessage);
                return;
            } else if (ftMessage.getCancelReason() == CancelReason.CANCELED_BY_USER) {
                Log.e(LOG_TAG, "handleFileResizeResponse: FT is cancelled already!");
                return;
            } else {
                ftMessage.handleFileResizeResponse(z, uri);
                return;
            }
        }
        Log.e(LOG_TAG, "Message not found");
    }

    protected void notifyOngoingFtEvent(final boolean z, final int i) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.FtProcessor$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FtProcessor.this.lambda$notifyOngoingFtEvent$12(z, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyOngoingFtEvent$12(boolean z, int i) {
        Log.i(LOG_TAG, "notifyOngoingFtEvent [" + z + "] phoneId = " + i);
        try {
            if (this.mImsFtListenerList.containsKey(Integer.valueOf(i))) {
                RemoteCallbackList<IImsOngoingFtEventListener> remoteCallbackList = this.mImsFtListenerList.get(Integer.valueOf(i));
                int beginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    remoteCallbackList.getBroadcastItem(i2).onFtStateChanged(z);
                }
                remoteCallbackList.finishBroadcast();
            }
        } catch (RemoteException | IllegalStateException e) {
            e.printStackTrace();
        }
    }

    private void notifyRegistrationError(FtMessage ftMessage) {
        IMnoStrategy rcsStrategy = this.mImModule.getRcsStrategy(this.mImModule.getPhoneIdByIMSI(ftMessage.getOwnIMSI()));
        if (rcsStrategy != null && rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.FT_FALLBACK_DIRECTLY_OFFLINE)) {
            ftMessage.cancelTransfer(CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE);
        } else {
            ftMessage.cancelTransfer(CancelReason.DEVICE_UNREGISTERED);
        }
    }

    protected void handleFileTransferProgress(FtTransferProgressEvent ftTransferProgressEvent) {
        FtMessage ftMsrpMessage;
        String str = LOG_TAG;
        Log.i(str, "handleFileTransferProgress: " + ftTransferProgressEvent);
        if (ftTransferProgressEvent != null) {
            int i = ftTransferProgressEvent.mId;
            if (i != -1) {
                ftMsrpMessage = this.mCache.getFtMessage(i);
            } else {
                Object obj = ftTransferProgressEvent.mRawHandle;
                ftMsrpMessage = obj != null ? this.mCache.getFtMsrpMessage(obj) : null;
            }
            if (ftMsrpMessage != null) {
                ftMsrpMessage.handleTransferProgress(ftTransferProgressEvent);
            } else {
                Log.i(str, "handleFileTransferProgress: cannot get FtMessage.");
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.FtMessageListener
    public void onNotifyCloudMsgFtEvent(FtMessage ftMessage) {
        ImSession imSession = this.mCache.getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.e(LOG_TAG, "onNotifyCloudMsgFtEvent: session not found.");
        } else {
            this.mCache.notifyCloudMsgFtEvent(imSession.getOwnImsi(), ftMessage.getId(), ftMessage.getImdnId(), ftMessage.getDirection());
        }
    }

    private void rejectFtSession(RejectFtSessionParams rejectFtSessionParams) {
        if (rejectFtSessionParams.mIsSlmSvcMsg) {
            this.mSlmService.rejectFtSlmMessage(rejectFtSessionParams);
        } else {
            this.mImService.rejectFtSession(rejectFtSessionParams);
        }
    }

    protected Collection<IFtEventListener> getFtEventListener(ImConstants.Type type) {
        return this.mFtEventListeners.get(type);
    }

    private RejectFtSessionParams checkForRejectIncomingFileTransfer(int i, FtIncomingSessionEvent ftIncomingSessionEvent, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        String str = ftIncomingSessionEvent.mContentType;
        if (str != null && str.contains(MIMEContentType.LOCATION_PUSH)) {
            ImModule imModule = this.mImModule;
            if (!imModule.getActiveCall(imModule.normalizeUri(i, ftIncomingSessionEvent.mSenderUri)) && this.mImModule.getImConfig(i).getImMsgTech() == ImConstants.ImMsgTech.SIMPLE_IM) {
                Log.i(LOG_TAG, "Receive geolocation Push via MSRP FT during inactive call!!.");
                return new RejectFtSessionParams(ftIncomingSessionEvent.mRawHandle, null, FtRejectReason.DECLINE, ftIncomingSessionEvent.mFileTransferId);
            }
        }
        if (z) {
            if (!z2 && !ftIncomingSessionEvent.mIsSlmSvcMsg) {
                Log.i(LOG_TAG, "onIncomingFileTransferReceived, no GC session for GC FT. auto reject");
                return new RejectFtSessionParams(ftIncomingSessionEvent.mRawHandle, null, FtRejectReason.NOT_ACCEPTABLE_HERE, ftIncomingSessionEvent.mFileTransferId);
            }
            if (z2 && z3) {
                Log.i(LOG_TAG, "onIncomingFileTransferReceived, user reject GC FT.");
                return new RejectFtSessionParams(ftIncomingSessionEvent.mRawHandle, null, FtRejectReason.DECLINE, ftIncomingSessionEvent.mFileTransferId);
            }
        }
        if (z4 && !z5 && z6) {
            Log.i(LOG_TAG, "onIncomingFileTransferReceived, duplicate message with imdnid: " + ftIncomingSessionEvent.mImdnId);
            return new RejectFtSessionParams(ftIncomingSessionEvent.mRawHandle, Message.obtain(this, 1), FtRejectReason.NOT_ACCEPTABLE_HERE, (String) null, ftIncomingSessionEvent.mIsSlmSvcMsg);
        }
        if (z4 || !z5 || !ftIncomingSessionEvent.mPush) {
            return null;
        }
        Log.i(LOG_TAG, "onIncomingFileTransferReceived, resume invite from MT cannot find history, auto reject");
        return new RejectFtSessionParams(ftIncomingSessionEvent.mRawHandle, Message.obtain(this, 1), FtRejectReason.NOT_ACCEPTABLE_HERE, (String) null, ftIncomingSessionEvent.mIsSlmSvcMsg);
    }

    private FtMessage findFileTransfer(ImSession imSession, FtIncomingSessionEvent ftIncomingSessionEvent, ImDirection imDirection) {
        if (imSession == null) {
            return null;
        }
        FtMessage ftMessageforFtRequest = this.mCache.getFtMessageforFtRequest(imSession.getChatId(), ftIncomingSessionEvent.mFileName, ftIncomingSessionEvent.mFileSize, ftIncomingSessionEvent.mFileTransferId);
        if (ftMessageforFtRequest != null || TextUtils.isEmpty(ftIncomingSessionEvent.mImdnId)) {
            return ftMessageforFtRequest;
        }
        MessageBase message = this.mCache.getMessage(ftIncomingSessionEvent.mImdnId, imDirection, imSession.getChatId());
        if (!(message instanceof FtMessage)) {
            return ftMessageforFtRequest;
        }
        Log.i(LOG_TAG, "onIncomingFileTransferReceived, found messageByImdn: " + ftIncomingSessionEvent.mImdnId);
        return (FtMessage) message;
    }
}
