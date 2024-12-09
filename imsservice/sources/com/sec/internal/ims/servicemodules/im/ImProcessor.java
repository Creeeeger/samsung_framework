package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ChatMode;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingMessageEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SendMessageFailedEvent;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener;
import com.sec.internal.ims.servicemodules.im.listener.ImMessageListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.im.util.ImCpimNamespacesHelper;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class ImProcessor extends Handler implements ImMessageListener {
    private static final String LOG_TAG = ImProcessor.class.getSimpleName();
    private ImCache mCache;
    private Context mContext;
    private ImModule mImModule;
    private ImSessionProcessor mImSessionProcessor;
    private ImTranslation mImTranslation;
    private final CollectionUtils.ArrayListMultimap<ImConstants.Type, IMessageEventListener> mMessageEventListeners;
    private final ISlmServiceInterface mSlmService;

    public ImProcessor(Context context, ISlmServiceInterface iSlmServiceInterface, ImModule imModule, ImCache imCache) {
        super(imModule.getLooper());
        this.mMessageEventListeners = CollectionUtils.createArrayListMultimap();
        this.mContext = context;
        this.mImModule = imModule;
        this.mSlmService = iSlmServiceInterface;
        this.mCache = imCache;
    }

    protected void init(ImSessionProcessor imSessionProcessor, ImTranslation imTranslation) {
        this.mImSessionProcessor = imSessionProcessor;
        this.mImTranslation = imTranslation;
    }

    protected void registerMessageEventListener(ImConstants.Type type, IMessageEventListener iMessageEventListener) {
        this.mMessageEventListeners.put(type, iMessageEventListener);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageSendResponse(ImMessage imMessage) {
        List<String> participantsString;
        ImSession imSession = this.mCache.getImSession(imMessage.getChatId());
        if (imSession != null && ((participantsString = imSession.getParticipantsString()) == null || participantsString.isEmpty())) {
            Log.i(LOG_TAG, "onMessageSendResponse: no participants for this chat");
        }
        Iterator<IMessageEventListener> it = this.mMessageEventListeners.get(imMessage.getType()).iterator();
        while (it.hasNext()) {
            it.next().onMessageSendResponse(imMessage);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageReceived(ImMessage imMessage) {
        ImSession imSession = this.mCache.getImSession(imMessage.getChatId());
        if (imSession != null) {
            Iterator<IMessageEventListener> it = this.mMessageEventListeners.get(imMessage.getType()).iterator();
            while (it.hasNext()) {
                it.next().onMessageReceived(imMessage, imSession);
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageSendingSucceeded(MessageBase messageBase) {
        this.mImSessionProcessor.onMessageSendingSucceeded(messageBase);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageSendResponseTimeout(ImMessage imMessage) {
        Iterator<IMessageEventListener> it = this.mMessageEventListeners.get(imMessage.getType()).iterator();
        while (it.hasNext()) {
            it.next().onMessageSendResponseTimeout(imMessage);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.ImMessageListener
    public void onMessageSendingFailed(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse, Result result) {
        this.mImSessionProcessor.onMessageSendingFailed(messageBase, strategyResponse, result);
    }

    protected void sendMessage(ImSession imSession, MessageBase messageBase) {
        Log.i(LOG_TAG, "sendMessage: message id = " + messageBase.getId());
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi());
        if (this.mImModule.isRegistered(phoneIdByIMSI)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(ImsUtil.hideInfo(imSession.getConversationId(), 4));
            arrayList.add(ImsUtil.hideInfo(messageBase.getImdnId(), 4));
            arrayList.add(ImsUtil.hideInfo(imSession.getRequestMessageId(), 4));
            arrayList.add(" 0");
            ImsUtil.listToDumpFormat(LogClass.IM_SEND_IM, phoneIdByIMSI, messageBase.getChatId(), arrayList);
            imSession.setDirection(ImDirection.OUTGOING);
            imSession.sendImMessage(messageBase);
        } else if (RcsPolicyManager.getRcsStrategy(phoneIdByIMSI).boolSetting(RcsPolicySettings.RcsPolicy.PENDING_FOR_REGI)) {
            messageBase.updateStatus(ImConstants.Status.TO_SEND);
        } else {
            messageBase.onSendMessageDone(new Result(ImError.REMOTE_TEMPORARILY_UNAVAILABLE, Result.Type.NONE), new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY));
        }
        this.mCache.updateActiveSession(imSession);
    }

    protected Future<ImMessage> sendMessage(final String str, final String str2, final Set<NotificationStatus> set, final String str3, final String str4, final int i, final boolean z, final boolean z2, final boolean z3, final List<ImsUri> list, final boolean z4, final String str5, final String str6, final String str7, final String str8) {
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.sec.internal.ims.servicemodules.im.ImProcessor$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ImMessage lambda$sendMessage$0;
                lambda$sendMessage$0 = ImProcessor.this.lambda$sendMessage$0(str, str2, set, str3, str4, z, z2, z3, str5, str6, str7, i, z4, str8, list);
                return lambda$sendMessage$0;
            }
        });
        post(futureTask);
        return futureTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:89:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0292  */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener] */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.sec.internal.ims.servicemodules.im.ImProcessor] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ com.sec.internal.ims.servicemodules.im.ImMessage lambda$sendMessage$0(java.lang.String r24, java.lang.String r25, java.util.Set r26, java.lang.String r27, java.lang.String r28, boolean r29, boolean r30, boolean r31, java.lang.String r32, java.lang.String r33, java.lang.String r34, int r35, boolean r36, java.lang.String r37, java.util.List r38) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 692
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.ImProcessor.lambda$sendMessage$0(java.lang.String, java.lang.String, java.util.Set, java.lang.String, java.lang.String, boolean, boolean, boolean, java.lang.String, java.lang.String, java.lang.String, int, boolean, java.lang.String, java.util.List):com.sec.internal.ims.servicemodules.im.ImMessage");
    }

    protected void resendMessage(final int i) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImProcessor$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ImProcessor.this.lambda$resendMessage$1(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resendMessage$1(int i) {
        ImMessage imMessage = this.mCache.getImMessage(i);
        if (imMessage == null) {
            Log.e(LOG_TAG, "resendMessage: message not found in the cache.");
            return;
        }
        ImSession imSession = this.mCache.getImSession(imMessage.getChatId());
        if (imSession == null) {
            Iterator<IMessageEventListener> it = this.mMessageEventListeners.get(imMessage.getType()).iterator();
            while (it.hasNext()) {
                it.next().onMessageSendResponse(imMessage);
            }
        } else if (imMessage.getStatus() == ImConstants.Status.FAILED) {
            sendMessage(imSession, imMessage);
        }
    }

    protected void reportMessages(final List<String> list, final String str) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImProcessor$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ImProcessor.this.lambda$reportMessages$2(list, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reportMessages$2(List list, String str) {
        String str2;
        ImsUri imsUri;
        HashSet hashSet;
        ImsUri imsUri2;
        ImsUri imsUri3;
        ImsUri imsUri4;
        ImSession imSession;
        if (this.mImModule.isRegistered()) {
            String str3 = LOG_TAG;
            Log.i(str3, "reportMessages: list=" + list);
            ImsUri parse = ImsUri.parse(this.mImModule.getRcsStrategy().stringSetting(RcsPolicySettings.RcsPolicy.ONEKEY_REPORT_PSI));
            if (parse == null) {
                Log.e(str3, "reportMessages: reportPSI is null");
                return;
            }
            HashSet hashSet2 = new HashSet();
            hashSet2.add(this.mImModule.normalizeUri(parse));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MessageBase message = this.mCache.getMessage((String) it.next(), ImDirection.INCOMING, str);
                if (message == null) {
                    return;
                }
                Date date = new Date(message.getSentTimestamp());
                ImsUri remoteUri = message.getRemoteUri();
                ImsUri parse2 = ImsUri.parse("tel:+" + this.mImModule.getOwnPhoneNum());
                ImSession imSession2 = this.mCache.getImSession(message.getChatId());
                if (imSession2 == null || imSession2.getOwnImsi() == null) {
                    str2 = "";
                    imsUri = parse2;
                } else {
                    String ownImsi = imSession2.getOwnImsi();
                    StringBuilder sb = new StringBuilder();
                    sb.append("tel:+");
                    ImModule imModule = this.mImModule;
                    sb.append(imModule.getOwnPhoneNum(imModule.getPhoneIdByIMSI(ownImsi)));
                    imsUri = ImsUri.parse(sb.toString());
                    str2 = ownImsi;
                }
                if (remoteUri == null || imsUri == null) {
                    return;
                }
                ImCache imCache = this.mCache;
                ChatData.ChatType chatType = ChatData.ChatType.ONE_TO_ONE_CHAT;
                ImSession imSessionByParticipants = imCache.getImSessionByParticipants(hashSet2, chatType, str2);
                if (imSessionByParticipants == null) {
                    HashSet hashSet3 = hashSet2;
                    imsUri2 = imsUri;
                    hashSet = hashSet2;
                    imsUri3 = remoteUri;
                    imSessionByParticipants = this.mCache.makeNewOutgoingSession(str2, hashSet3, chatType, null, null, 0, "0", null, ChatMode.OFF);
                } else {
                    hashSet = hashSet2;
                    imsUri2 = imsUri;
                    imsUri3 = remoteUri;
                }
                ImSession imSession3 = imSessionByParticipants;
                if (message instanceof ImMessage) {
                    ImMessage imMessage = (ImMessage) message;
                    ImMessage makeNewOutgoingMessage = this.mCache.makeNewOutgoingMessage(imSession3.getOwnImsi(), imSession3, imMessage.getBody(), NotificationStatus.toSet("display_delivery"), imMessage.getContentType(), "0", false, false, false, false, false, imMessage.getMaapTrafficType());
                    makeNewOutgoingMessage.setSpamInfo(imsUri3, imsUri2, date.toString(), message.getImdnId());
                    imSession3.setDirection(ImDirection.OUTGOING);
                    imSession3.sendImMessage(makeNewOutgoingMessage);
                    imsUri4 = parse;
                    imSession = imSession3;
                } else {
                    FtMessage ftMessage = (FtMessage) message;
                    imsUri4 = parse;
                    FtMessage makeNewOutgoingFtMessage = this.mCache.makeNewOutgoingFtMessage(imSession3.getOwnImsi(), imSession3, ftMessage.getFileName(), ftMessage.getContentUri(), parse, NotificationStatus.toSet("display_delivery"), "1", null, false, false, false, null);
                    makeNewOutgoingFtMessage.setSpamInfo(imsUri3, imsUri2, date.toString(), message.getImdnId());
                    imSession = imSession3;
                    imSession.attachFile(makeNewOutgoingFtMessage);
                }
                this.mCache.updateActiveSession(imSession);
                hashSet2 = hashSet;
                parse = imsUri4;
            }
            return;
        }
        Log.e(LOG_TAG, "reportMessages: not registered");
    }

    protected FutureTask<Boolean> deleteMessages(final List<String> list, final boolean z) {
        FutureTask<Boolean> futureTask = new FutureTask<>(new Callable() { // from class: com.sec.internal.ims.servicemodules.im.ImProcessor$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Boolean lambda$deleteMessages$3;
                lambda$deleteMessages$3 = ImProcessor.this.lambda$deleteMessages$3(list, z);
                return lambda$deleteMessages$3;
            }
        });
        post(futureTask);
        return futureTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$deleteMessages$3(List list, boolean z) throws Exception {
        Log.i(LOG_TAG, "deleteMessage: list=" + list + " localWipeout: " + z);
        if (!z) {
            this.mCache.deleteMessagesforCloudSyncUsingMsgId(list);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null) {
                this.mCache.deleteMessage(Integer.valueOf(str).intValue());
            }
        }
        return Boolean.TRUE;
    }

    protected FutureTask<Boolean> deleteMessagesByImdnId(final Map<String, Integer> map, final String str, final boolean z) {
        FutureTask<Boolean> futureTask = new FutureTask<>(new Callable() { // from class: com.sec.internal.ims.servicemodules.im.ImProcessor$$ExternalSyntheticLambda7
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Boolean lambda$deleteMessagesByImdnId$4;
                lambda$deleteMessagesByImdnId$4 = ImProcessor.this.lambda$deleteMessagesByImdnId$4(map, z, str);
                return lambda$deleteMessagesByImdnId$4;
            }
        });
        post(futureTask);
        return futureTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$deleteMessagesByImdnId$4(Map map, boolean z, String str) throws Exception {
        Log.i(LOG_TAG, "deleteMessage: imdnIds=" + map + " localWipeout: " + z);
        if (!z) {
            this.mCache.deleteMessagesforCloudSyncUsingImdnId(map, str);
        }
        this.mCache.deleteMessages(map, str);
        return Boolean.TRUE;
    }

    protected void deleteAllMessages(final List<String> list, final boolean z) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImProcessor$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ImProcessor.this.lambda$deleteAllMessages$5(list, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllMessages$5(List list, boolean z) {
        Log.i(LOG_TAG, "deleteAllMessages: list=" + list);
        if (!z) {
            this.mCache.deleteMessagesforCloudSyncUsingChatId(list);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.mCache.deleteAllMessages((String) it.next());
        }
    }

    protected void onSendMessageHandleReportFailed(SendMessageFailedEvent sendMessageFailedEvent) {
        String str = LOG_TAG;
        Log.i(str, "onSendMessageHandleReportFailed: " + sendMessageFailedEvent);
        ImSession imSession = this.mCache.getImSession(sendMessageFailedEvent.mChatId);
        if (imSession != null) {
            MessageBase message = this.mCache.getMessage(sendMessageFailedEvent.mImdnId, ImDirection.OUTGOING, sendMessageFailedEvent.mChatId);
            if (message != null) {
                this.mImModule.mNeedToRemoveFromPendingList.remove(Integer.valueOf(message.getId()));
                imSession.onSendMessageHandleReportFailed(sendMessageFailedEvent, message);
                return;
            } else {
                Log.e(str, "onSendMessageHandleReportFailed: Message not found.");
                return;
            }
        }
        Log.e(str, "onSendMessageHandleReportFailed: Session not found.");
    }

    protected void getLastSentMessagesStatus(final List<String> list) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImProcessor$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ImProcessor.this.lambda$getLastSentMessagesStatus$6(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getLastSentMessagesStatus$6(List list) {
        List<Bundle> loadLastSentMessages = this.mCache.loadLastSentMessages(list);
        Log.i(LOG_TAG, "getLastSentMessagesStatus " + loadLastSentMessages.size() + " messages(s)");
        if (loadLastSentMessages.isEmpty()) {
            this.mImTranslation.notifyLastSentMessagesStatus(null);
        } else {
            this.mImTranslation.notifyLastSentMessagesStatus(loadLastSentMessages);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0091, code lost:
    
        if (com.sec.internal.helper.BlockedNumberUtil.isKnoxBlockedNumber(r1.getRemoteUri().getMsisdn(), com.sec.internal.constants.ims.servicemodules.im.ImDirection.INCOMING) != false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onIncomingMessageReceived(com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingMessageEvent r14) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.ImProcessor.onIncomingMessageReceived(com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingMessageEvent):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onIncomingSlmMessage(com.sec.internal.constants.ims.servicemodules.im.event.SlmIncomingMessageEvent r23) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.ImProcessor.onIncomingSlmMessage(com.sec.internal.constants.ims.servicemodules.im.event.SlmIncomingMessageEvent):void");
    }

    protected void onProcessPendingMessages(final int i) {
        Log.i(LOG_TAG, "EVENT_PROCESS_PENDING_MESSAGES");
        int intSetting = RcsPolicyManager.getRcsStrategy(i).intSetting(RcsPolicySettings.RcsPolicy.NUM_OF_DISPLAY_NOTIFICATION_ATONCE);
        for (final ImSession imSession : this.mCache.getAllImSessions()) {
            if (this.mImModule.isRegistered(i)) {
                imSession.processPendingMessages(i);
                List<MessageBase> messagesForPendingNotificationByChatId = this.mCache.getMessagesForPendingNotificationByChatId(imSession.getChatId());
                Log.i(LOG_TAG, "pending notification list size : " + messagesForPendingNotificationByChatId.size() + " limit : " + intSetting);
                if (intSetting > 0) {
                    Iterator<List<T>> it = CollectionUtils.partition(messagesForPendingNotificationByChatId, intSetting).iterator();
                    int i2 = 0;
                    while (it.hasNext()) {
                        final List list = (List) it.next();
                        postDelayed(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImProcessor$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                ImProcessor.this.lambda$onProcessPendingMessages$7(i, imSession, list);
                            }
                        }, i2 * 1000);
                        i2++;
                    }
                } else {
                    imSession.processPendingNotifications(messagesForPendingNotificationByChatId);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onProcessPendingMessages$7(int i, ImSession imSession, List list) {
        if (this.mImModule.isRegistered(i)) {
            imSession.processPendingNotifications(list);
        }
    }

    protected Collection<IMessageEventListener> getMessageEventListener(ImConstants.Type type) {
        return this.mMessageEventListeners.get(type);
    }

    private boolean isDuplicateMessage(int i, ImSession imSession, ImIncomingMessageEvent imIncomingMessageEvent) {
        MessageBase message = this.mCache.getMessage(imIncomingMessageEvent.mImdnMessageId, ImCpimNamespacesHelper.extractImDirection(i, imIncomingMessageEvent.mCpimNamespaces), imSession.getChatId());
        if (message == null) {
            return false;
        }
        Log.e(LOG_TAG, "Duplicated message: " + message);
        if (!message.isDeliveredNotificationRequired()) {
            return true;
        }
        this.mImModule.getImDump().addEventLogs("sendDeliveredNotification: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", imdnId=" + imIncomingMessageEvent.mImdnMessageId);
        imSession.sendDeliveredNotification(message);
        return true;
    }

    private void updateMessageSenderAlias(int i, ImSession imSession, ImIncomingMessageEvent imIncomingMessageEvent) {
        ImsUri normalizeUri = this.mImModule.normalizeUri(i, imIncomingMessageEvent.mSender);
        if (normalizeUri == null) {
            return;
        }
        if (this.mImModule.getImConfig(i).getUserAliasEnabled()) {
            if (!imSession.isGroupChat() && imIncomingMessageEvent.mUserAlias.isEmpty() && !this.mImModule.getImConfig(i).getRealtimeUserAliasAuth()) {
                ImParticipant participant = imSession.getParticipant(normalizeUri);
                if (participant == null) {
                    IMSLog.e(LOG_TAG, "Participant is null");
                } else {
                    imIncomingMessageEvent.mUserAlias = participant.getUserAlias();
                }
            }
        } else {
            imIncomingMessageEvent.mUserAlias = "";
        }
        if (imSession.isGroupChat() || this.mImModule.getImConfig(i).getRealtimeUserAliasAuth()) {
            imSession.updateParticipantAlias(imIncomingMessageEvent.mUserAlias, imSession.getParticipant(normalizeUri));
        }
    }
}
