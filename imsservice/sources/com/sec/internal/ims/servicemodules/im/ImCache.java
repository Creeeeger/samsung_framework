package com.sec.internal.ims.servicemodules.im;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Network;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.CmsJsonConstants;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ChatMode;
import com.sec.internal.constants.ims.servicemodules.im.FileDisposition;
import com.sec.internal.constants.ims.servicemodules.im.ImCacheAction;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.event.FtIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingMessageEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SlmIncomingMessageEvent;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.ImExtensionMNOHeadersHelper;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.FtHttpIncomingMessage;
import com.sec.internal.ims.servicemodules.im.FtHttpOutgoingMessage;
import com.sec.internal.ims.servicemodules.im.FtMsrpMessage;
import com.sec.internal.ims.servicemodules.im.ImMessage;
import com.sec.internal.ims.servicemodules.im.data.MessageKey;
import com.sec.internal.ims.servicemodules.im.listener.IImCacheActionListener;
import com.sec.internal.ims.servicemodules.im.util.ImCpimNamespacesHelper;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.StringIdGenerator;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

@SuppressLint({"UseSparseArrays"})
/* loaded from: classes.dex */
public class ImCache {
    private static final int DEFAULT_MAX_CONCURRENT_SESSION = 100;
    private static final String LOG_TAG = "ImCache";
    private static final int MAX_CACHED_MESSAGE = 30;
    private static final int MAX_CACHED_SESSION = 500;
    private static ImCache sInstance;
    private CmStoreInvoker mCmStoreInvoker;
    private ImModule mImModule;
    private boolean mIsLoaded;
    private ImPersister mPersister;
    private final LruCache<Integer, ImSession> mActiveSessions = new LruCache<Integer, ImSession>(100) { // from class: com.sec.internal.ims.servicemodules.im.ImCache.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public void entryRemoved(boolean z, Integer num, ImSession imSession, ImSession imSession2) {
            if (z) {
                Log.i(ImCache.LOG_TAG, "mActiveSessions#entryRemoved: " + imSession.getChatId());
                imSession.closeSession();
            }
        }
    };
    private final MessageMap mPendingMessages = new MessageMap();
    private final Set<IImCacheActionListener> mListener = new HashSet();
    private final Map<String, Set<ImsUri>> mChatbotRoleUris = new HashMap();
    private final Observer mObserver = new Observer() { // from class: com.sec.internal.ims.servicemodules.im.ImCache$$ExternalSyntheticLambda2
        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            ImCache.this.lambda$new$0(observable, obj);
        }
    };
    private final LruCache<String, ImSession> mImSessions = new LruCache<String, ImSession>(500) { // from class: com.sec.internal.ims.servicemodules.im.ImCache.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public ImSession create(String str) {
            Log.i(ImCache.LOG_TAG, "Cache miss. attempt to load from db: " + str);
            ChatData querySessionByChatId = ImCache.this.mPersister.querySessionByChatId(str);
            if (querySessionByChatId == null) {
                Log.i(ImCache.LOG_TAG, "Couldn't load from db.");
                return null;
            }
            return ImCache.this.createSession(querySessionByChatId);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public void entryRemoved(boolean z, String str, ImSession imSession, ImSession imSession2) {
            if (z) {
                ImCache.this.mActiveSessions.remove(Integer.valueOf(imSession.getId()));
                Log.i(ImCache.LOG_TAG, "ImSessions#entryRemoved: " + imSession.getChatId());
                imSession.closeSession();
            }
        }
    };
    private LruCache<MessageKey, MessageBase> mCachingMessages = new LruCache<MessageKey, MessageBase>(30) { // from class: com.sec.internal.ims.servicemodules.im.ImCache.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public MessageBase create(MessageKey messageKey) {
            Log.i(ImCache.LOG_TAG, "Cache miss. attempt to load from db: " + messageKey);
            MessageBase queryMessage = ImCache.this.mPersister.queryMessage(messageKey.imdnId, messageKey.direction, messageKey.chatId);
            if (queryMessage == null) {
                Log.i(ImCache.LOG_TAG, "Couldn't load from db.");
                return null;
            }
            return ImCache.this.loadExtras(queryMessage);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public void entryRemoved(boolean z, MessageKey messageKey, MessageBase messageBase, MessageBase messageBase2) {
            if (z) {
                Log.i(ImCache.LOG_TAG, "CachingMessage#entryRemoved: id= " + messageBase.getId());
                ImCache.this.unregisterObserver(messageBase);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Observable observable, Object obj) {
        if (observable instanceof ChatData) {
            updateChat((ChatData) observable, (ImCacheAction) obj);
            return;
        }
        if (observable instanceof MessageBase) {
            updateMessage((MessageBase) observable, (ImCacheAction) obj);
            return;
        }
        if (observable instanceof ImParticipant) {
            updateParticipant((ImParticipant) observable, (ImCacheAction) obj);
            return;
        }
        Log.e(LOG_TAG, "Unknown observable :" + observable + ", data : " + obj);
    }

    protected ImCache() {
    }

    public static synchronized ImCache getInstance() {
        ImCache imCache;
        synchronized (ImCache.class) {
            if (sInstance == null) {
                sInstance = new ImCache();
            }
            imCache = sInstance;
        }
        return imCache;
    }

    public void initializeLruCache(int i) {
        if (i <= 0) {
            i = 100;
        }
        this.mActiveSessions.resize(Math.min(i, 500));
    }

    public void addImCacheActionListener(IImCacheActionListener iImCacheActionListener) {
        this.mListener.add(iImCacheActionListener);
    }

    public void removeImCacheActionListener(IImCacheActionListener iImCacheActionListener) {
        this.mListener.remove(iImCacheActionListener);
    }

    private void registerObserver(Observable observable) {
        observable.addObserver(this.mObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterObserver(Observable observable) {
        observable.deleteObserver(this.mObserver);
    }

    private void updateChat(ChatData chatData, ImCacheAction imCacheAction) {
        this.mPersister.updateChat(chatData, imCacheAction);
    }

    private void updateMessage(MessageBase messageBase, ImCacheAction imCacheAction) {
        this.mPersister.updateMessage(messageBase, imCacheAction);
        Iterator<IImCacheActionListener> it = this.mListener.iterator();
        while (it.hasNext()) {
            it.next().updateMessage(messageBase, imCacheAction);
        }
    }

    private void updateMessage(Collection<MessageBase> collection, ImCacheAction imCacheAction) {
        this.mPersister.updateMessage(collection, imCacheAction);
        Iterator<IImCacheActionListener> it = this.mListener.iterator();
        while (it.hasNext()) {
            it.next().updateMessage(collection, imCacheAction);
        }
    }

    private void updateParticipant(ImParticipant imParticipant, ImCacheAction imCacheAction) {
        this.mPersister.updateParticipant(imParticipant, imCacheAction);
        Iterator<IImCacheActionListener> it = this.mListener.iterator();
        while (it.hasNext()) {
            it.next().updateParticipant(imParticipant, imCacheAction);
        }
    }

    private void updateParticipant(Collection<ImParticipant> collection, ImCacheAction imCacheAction) {
        this.mPersister.updateParticipant(collection, imCacheAction);
        Iterator<IImCacheActionListener> it = this.mListener.iterator();
        while (it.hasNext()) {
            it.next().updateParticipant(collection, imCacheAction);
        }
    }

    public synchronized void load(ImModule imModule) {
        if (this.mIsLoaded) {
            Log.i(LOG_TAG, "Alraedy loaded");
            return;
        }
        this.mImModule = imModule;
        this.mPersister = new ImPersister(this.mImModule.getContext(), this.mImModule);
        this.mCmStoreInvoker = new CmStoreInvoker(imModule);
        this.mIsLoaded = true;
    }

    public synchronized void loadImSessionByChatType(String str, boolean z) {
        List<String> querySessionByChatType = this.mPersister.querySessionByChatType(str, z);
        Log.i(LOG_TAG, "loadImSessionByChatType loaded chat ids : " + querySessionByChatType);
        if (querySessionByChatType != null && !querySessionByChatType.isEmpty()) {
            Iterator<String> it = querySessionByChatType.iterator();
            while (it.hasNext()) {
                this.mImSessions.get(it.next());
            }
        }
    }

    public synchronized void loadImSessionForAutoRejoin(boolean z) {
        List<String> querySessionForAutoRejoin = this.mPersister.querySessionForAutoRejoin(z);
        Log.i(LOG_TAG, "loadImSessionForAutoRejoin isForAll : " + z + ", Autorejoin chat ids : " + querySessionForAutoRejoin);
        if (!querySessionForAutoRejoin.isEmpty()) {
            Iterator<String> it = querySessionForAutoRejoin.iterator();
            while (it.hasNext()) {
                this.mImSessions.get(it.next());
            }
        }
    }

    public synchronized void loadImSessionWithPendingMessages() {
        List<String> queryAllChatIDwithPendingMessages = this.mPersister.queryAllChatIDwithPendingMessages();
        Log.i(LOG_TAG, "loadImSessionWithPendingMessages " + queryAllChatIDwithPendingMessages.size() + " pending message(s)");
        if (!queryAllChatIDwithPendingMessages.isEmpty()) {
            Iterator<String> it = queryAllChatIDwithPendingMessages.iterator();
            while (it.hasNext()) {
                this.mImSessions.get(it.next());
            }
        }
    }

    public synchronized void loadImSessionWithFailedFTMessages() {
        List<String> queryAllChatIDwithFailedFTMessages = this.mPersister.queryAllChatIDwithFailedFTMessages();
        Log.i(LOG_TAG, "loadImSessionWithFailedFTMessages " + queryAllChatIDwithFailedFTMessages.size() + " failed message(s)");
        if (!queryAllChatIDwithFailedFTMessages.isEmpty()) {
            Iterator<String> it = queryAllChatIDwithFailedFTMessages.iterator();
            while (it.hasNext()) {
                this.mImSessions.get(it.next());
            }
        }
    }

    public synchronized void updateUriGenerator(int i) {
        Log.i(LOG_TAG, "updateUriGenerator");
        UriGenerator uriGenerator = this.mImModule.getUriGenerator(i);
        Iterator<ImSession> it = this.mImSessions.snapshot().values().iterator();
        while (it.hasNext()) {
            it.next().updateUriGenerator(uriGenerator);
        }
    }

    public synchronized List<Bundle> loadLastSentMessages(List<String> list) {
        return this.mPersister.queryLastSentMessages(list);
    }

    public synchronized boolean isLoaded() {
        return this.mIsLoaded;
    }

    public synchronized void clear() {
        this.mImSessions.evictAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized ImSession createSession(ChatData chatData) {
        HashMap hashMap;
        int phoneIdByIMSI;
        HashMap hashMap2;
        hashMap = new HashMap();
        for (ImParticipant imParticipant : this.mPersister.queryParticipantSet(chatData.getChatId())) {
            hashMap.put(imParticipant.getUri(), imParticipant);
            registerObserver(imParticipant);
        }
        phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(chatData.getOwnIMSI());
        Log.i(LOG_TAG, "Load participants: size()=" + hashMap.size() + ", values()=" + IMSLog.checker(hashMap.values()));
        if (this.mImModule.getImConfig(phoneIdByIMSI).getImMsgTech() == ImConstants.ImMsgTech.CPM) {
            if (chatData.getConversationId() == null) {
                chatData.setConversationId(StringIdGenerator.generateConversationId());
            }
            if (chatData.getContributionId() == null) {
                chatData.setContributionId(chatData.isGroupChat() ? chatData.getConversationId() : StringIdGenerator.generateContributionId());
            }
        } else if (chatData.getContributionId() == null) {
            chatData.setContributionId(StringIdGenerator.generateContributionId());
        }
        loadPendingMessages(chatData);
        hashMap2 = new HashMap();
        if (this.mImModule.getImConfig(phoneIdByIMSI).getChatRevokeTimer() > 0) {
            for (MessageBase messageBase : loadMessageListForRevoke(chatData)) {
                hashMap2.put(messageBase.getImdnId(), Integer.valueOf(messageBase.getId()));
            }
        }
        registerObserver(chatData);
        return new ImSessionBuilder().looper(this.mImModule.getLooper()).listener(this.mImModule.getImSessionProcessor()).config(this.mImModule.getImConfig(phoneIdByIMSI)).imsService(getImHandler()).slmService(ImsRegistry.getHandlerFactory().getSlmHandler()).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI)).chatData(chatData).participants(hashMap).needToRevokeMessages(hashMap2).getter(this.mImModule).build();
    }

    private void loadPendingMessages(ChatData chatData) {
        List<Integer> queryPendingMessageIds = this.mPersister.queryPendingMessageIds(chatData.getChatId());
        Log.i(LOG_TAG, "pending messages count:" + queryPendingMessageIds.size());
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(chatData.getOwnIMSI());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = queryPendingMessageIds.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            MessageBase messageBase = this.mPendingMessages.get(intValue);
            if (messageBase != null) {
                if ((messageBase instanceof FtHttpIncomingMessage) || (messageBase instanceof FtHttpOutgoingMessage)) {
                    ImModule imModule = this.mImModule;
                    messageBase.setNetwork(imModule.getNetwork(imModule.getImConfig(phoneIdByIMSI).isFtHttpOverDefaultPdn(), phoneIdByIMSI));
                } else {
                    messageBase.setNetwork(this.mImModule.getNetwork(false, phoneIdByIMSI));
                }
            } else {
                arrayList.add(String.valueOf(intValue));
            }
        }
        for (MessageBase messageBase2 : this.mPersister.queryMessages(arrayList)) {
            messageBase2.setImdnRecRouteList(this.mPersister.queryImImdnRecRoute(messageBase2));
            if ((messageBase2 instanceof FtHttpIncomingMessage) || (messageBase2 instanceof FtHttpOutgoingMessage)) {
                ImModule imModule2 = this.mImModule;
                messageBase2.setNetwork(imModule2.getNetwork(imModule2.getImConfig(phoneIdByIMSI).isFtHttpOverDefaultPdn(), phoneIdByIMSI));
            } else {
                messageBase2.setNetwork(this.mImModule.getNetwork(false, phoneIdByIMSI));
            }
            if (messageBase2 instanceof FtMessage) {
                FtMessage ftMessage = (FtMessage) messageBase2;
                ftMessage.setIsGroupChat(chatData.isGroupChat());
                ftMessage.setContributionId(chatData.getContributionId());
                ftMessage.setConversationId(chatData.getConversationId());
            }
            registerObserver(messageBase2);
            this.mPendingMessages.put(messageBase2);
        }
    }

    private List<MessageBase> loadMessageListForRevoke(ChatData chatData) {
        List<Integer> queryMessagesIdsForRevoke = this.mPersister.queryMessagesIdsForRevoke(chatData.getChatId());
        Log.i(LOG_TAG, "revoke messages count:" + queryMessagesIdsForRevoke.size());
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<Integer> it = queryMessagesIdsForRevoke.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (this.mPendingMessages.containsKey(intValue)) {
                arrayList.add(this.mPendingMessages.get(intValue));
            } else {
                arrayList2.add(String.valueOf(intValue));
            }
        }
        for (MessageBase messageBase : this.mPersister.queryMessages(arrayList2)) {
            this.mPendingMessages.put(messageBase);
            messageBase.setImdnRecRouteList(this.mPersister.queryImImdnRecRoute(messageBase));
            registerObserver(messageBase);
            arrayList.add(messageBase);
        }
        return arrayList;
    }

    private IImServiceInterface getImHandler() {
        return this.mImModule.getImHandler();
    }

    public ImSession getImSession(String str) {
        ImSession imSession;
        if (str == null) {
            return null;
        }
        synchronized (this) {
            imSession = this.mImSessions.get(str);
        }
        return imSession;
    }

    public synchronized ImSession getImSessionByContributionId(String str, String str2, boolean z) {
        if (str2 == null) {
            return null;
        }
        for (ImSession imSession : this.mImSessions.snapshot().values()) {
            if (str.equals(imSession.getOwnImsi()) && str2.equals(imSession.getContributionId()) && imSession.isGroupChat() == z) {
                return imSession;
            }
        }
        ChatData querySessionByContributionId = this.mPersister.querySessionByContributionId(str, str2, z);
        if (querySessionByContributionId == null) {
            Log.i(LOG_TAG, "getImSessionByContributionId: Couldn't load from db.");
            return null;
        }
        return this.mImSessions.get(querySessionByContributionId.getChatId());
    }

    public synchronized ImSession getImSessionByConversationId(String str, String str2, boolean z) {
        IMSLog.s(LOG_TAG, "getImSessionByConversationId cid=" + str2 + " isGroupChat=" + z);
        if (str2 == null) {
            return null;
        }
        for (ImSession imSession : this.mImSessions.snapshot().values()) {
            if (str.equals(imSession.getOwnImsi()) && imSession.isGroupChat() == z && str2.equals(imSession.getConversationId())) {
                return imSession;
            }
        }
        ChatData querySessionByConversationId = this.mPersister.querySessionByConversationId(str, str2, z);
        if (querySessionByConversationId == null) {
            Log.i(LOG_TAG, "getImSessionByConversationId: Couldn't load from db.");
            return null;
        }
        return this.mImSessions.get(querySessionByConversationId.getChatId());
    }

    public synchronized ImSession getImSessionByRawHandle(Object obj) {
        for (ImSession imSession : this.mImSessions.snapshot().values()) {
            if (imSession.hasImSessionInfo(obj)) {
                return imSession;
            }
        }
        return null;
    }

    public ImSession getImSessionByParticipants(Set<ImsUri> set, ChatData.ChatType chatType, String str) {
        return getImSessionByParticipants(set, chatType, str, ChatMode.OFF);
    }

    public synchronized ImSession getImSessionByParticipants(Set<ImsUri> set, ChatData.ChatType chatType, String str, ChatMode chatMode) {
        Log.i(LOG_TAG, "getImSessionByParticipants chatType= " + chatType + " participants=" + IMSLog.numberChecker(set) + " imsi=" + IMSLog.numberChecker(str));
        if (set != null && !set.isEmpty()) {
            for (ImSession imSession : this.mImSessions.snapshot().values()) {
                String ownImsi = imSession.getOwnImsi();
                Log.i(LOG_TAG, "chat Type " + imSession.getChatType() + " imsi=" + IMSLog.checker(ownImsi));
                if (imSession.getChatType() == chatType && ownImsi != null && ownImsi.equals(str) && set.equals(imSession.getParticipantsUri())) {
                    return imSession;
                }
            }
            ChatData querySessionByParticipants = this.mPersister.querySessionByParticipants(set, chatType, str, chatMode);
            if (querySessionByParticipants == null) {
                Log.i(LOG_TAG, "getImSessionByParticipants: Couldn't load from db.");
                return null;
            }
            return this.mImSessions.get(querySessionByParticipants.getChatId());
        }
        return null;
    }

    public synchronized Set<ImSession> getAllImSessionByParticipants(Set<ImsUri> set, ChatData.ChatType chatType) {
        String str = LOG_TAG;
        Log.i(str, "getAllImSessionByParticipants chatType= " + chatType + " participants=" + IMSLog.numberChecker(set));
        HashSet hashSet = new HashSet();
        if (set != null && !set.isEmpty()) {
            List<String> queryAllSessionByParticipant = this.mPersister.queryAllSessionByParticipant(set, chatType);
            if (queryAllSessionByParticipant != null && !queryAllSessionByParticipant.isEmpty()) {
                Iterator<String> it = queryAllSessionByParticipant.iterator();
                while (it.hasNext()) {
                    hashSet.add(this.mImSessions.get(it.next()));
                }
                return hashSet;
            }
            Log.i(str, "getImSessionByParticipants: Couldn't load from db.");
            return null;
        }
        return null;
    }

    public synchronized FtMessage getFtMessageforFtRequest(String str, String str2, long j, String str3) {
        String str4 = LOG_TAG;
        IMSLog.s(str4, "getFtMessageforFtRequest chatid:" + str + " fileName:" + str2 + " fileSize:" + j + " fileTransferId:" + str3);
        if (str != null && str2 != null && j > 0 && str3 != null) {
            ImSession imSession = this.mImSessions.get(str);
            FtMessage findFtMessage = imSession != null ? imSession.findFtMessage(str2, j, str3) : null;
            if (findFtMessage != null) {
                return findFtMessage;
            }
            Log.i(str4, "getFtMessageforFtRequest Couldn't find a FtMessage in ImSession.");
            FtMessage queryFtMessageByFileTransferId = this.mPersister.queryFtMessageByFileTransferId(str3, str);
            if (queryFtMessageByFileTransferId != null) {
                return (FtMessage) loadExtras(queryFtMessageByFileTransferId);
            }
            Log.i(str4, "getFtMessageforFtRequest Couldn't find a FtMessage by fileTransferId in db.");
            return null;
        }
        return null;
    }

    public synchronized Collection<ImSession> getAllImSessions() {
        return this.mImSessions.snapshot().values();
    }

    public Cursor querySessions(String[] strArr, String str, String[] strArr2, String str2) {
        return this.mPersister.querySessions(strArr, str, strArr2, str2);
    }

    public int cloudUpdateSession(String str, ContentValues contentValues) {
        return this.mPersister.cloudUpdateSession(str, contentValues);
    }

    public Cursor queryMessages(String[] strArr, String str, String[] strArr2, String str2) {
        return this.mPersister.queryMessages(strArr, str, strArr2, str2);
    }

    public Cursor queryChatMessagesForTapi(String[] strArr, String str, String[] strArr2, String str2) {
        return this.mPersister.queryChatMessagesForTapi(strArr, str, strArr2, str2);
    }

    public Cursor queryFtMessagesForTapi(String[] strArr, String str, String[] strArr2, String str2) {
        return this.mPersister.queryFtMessagesForTapi(strArr, str, strArr2, str2);
    }

    public Cursor queryParticipants(String[] strArr, String str, String[] strArr2, String str2) {
        return this.mPersister.queryParticipants(strArr, str, strArr2, str2);
    }

    public Cursor queryMessageNotification(String[] strArr, String str, String[] strArr2, String str2) {
        return this.mPersister.queryMessageNotification(strArr, str, strArr2, str2);
    }

    public Uri cloudInsertMessage(Uri uri, ContentValues contentValues) {
        return this.mPersister.cloudInsertMessage(uri, contentValues);
    }

    public synchronized int cloudDeleteMessage(String str) {
        Log.i(LOG_TAG, "cloud delete message: " + str);
        int parseInt = Integer.parseInt(str);
        MessageBase message = getMessage(parseInt);
        if (message != null) {
            if (message instanceof FtMessage) {
                handleDeleteFtMessage((FtMessage) message);
            }
            unregisterMessage(message);
        }
        this.mPersister.deleteMessage(parseInt);
        return 1;
    }

    public int cloudUpdateMessage(String str, ContentValues contentValues) {
        return this.mPersister.cloudUpdateMessage(str, contentValues);
    }

    public Uri cloudInsertNotification(Uri uri, ContentValues contentValues) {
        return this.mPersister.cloudInsertNotification(uri, contentValues);
    }

    public int cloudupdateNotification(String str, ContentValues contentValues, String str2, String[] strArr) {
        return this.mPersister.cloudUpdateNotification(str, contentValues, str2, strArr);
    }

    public Uri cloudInsertParticipant(Uri uri, ContentValues contentValues) {
        String asString = contentValues.getAsString("chat_id");
        ImSession imSession = getImSession(asString);
        if (imSession == null) {
            Log.i(LOG_TAG, "cloudInsertParticipant: failed. session is null.");
            return null;
        }
        ImParticipant imParticipant = new ImParticipant(asString, ImsUri.parse(contentValues.getAsString("uri")));
        Integer asInteger = contentValues.getAsInteger("status");
        if (asInteger != null) {
            imParticipant.setStatus(ImParticipant.Status.fromId(asInteger.intValue()));
        }
        Integer asInteger2 = contentValues.getAsInteger("type");
        if (asInteger2 != null) {
            imParticipant.setType(ImParticipant.Type.fromId(asInteger2.intValue()));
        }
        HashSet hashSet = new HashSet();
        hashSet.add(imParticipant);
        this.mPersister.insertParticipant(hashSet);
        imSession.addParticipant(hashSet);
        return ContentUris.withAppendedId(uri, imParticipant.getId());
    }

    public int cloudDeleteParticipant(String str) {
        ImSession imSession;
        List<ImParticipant> queryParticipants = this.mPersister.queryParticipants("_id=" + str);
        if (queryParticipants.isEmpty() || (imSession = getImSession(queryParticipants.get(0).getChatId())) == null) {
            return -1;
        }
        imSession.deleteParticipant(queryParticipants);
        this.mPersister.deleteParticipant(queryParticipants.get(0));
        return queryParticipants.get(0).getId();
    }

    public void cloudMakeNewSystemUserMessage(ContentValues contentValues) {
        ImSession imSession = getImSession(contentValues.getAsString("chat_id"));
        if (imSession == null) {
            Log.i(LOG_TAG, "cloudMakeNewSystemUserMessage: failed. session is null.");
            return;
        }
        String asString = contentValues.getAsString(CmsJsonConstants.PARTICIPANTS);
        Integer asInteger = contentValues.getAsInteger("type");
        if (asInteger != null) {
            makeNewSystemUserMessage(imSession, asString, ImConstants.Type.fromId(asInteger.intValue()));
        }
    }

    public int cloudUpdateParticipant(String str, ContentValues contentValues) {
        ImSession imSession;
        ImParticipant participant;
        List<ImParticipant> queryParticipants = this.mPersister.queryParticipants("_id=" + str);
        if (queryParticipants.isEmpty() || (imSession = getImSession(queryParticipants.get(0).getChatId())) == null || (participant = imSession.getParticipant(queryParticipants.get(0).getUri())) == null) {
            return -1;
        }
        Integer asInteger = contentValues.getAsInteger("status");
        if (asInteger != null) {
            participant.setStatus(ImParticipant.Status.fromId(asInteger.intValue()));
        }
        Integer asInteger2 = contentValues.getAsInteger("type");
        if (asInteger2 != null) {
            participant.setType(ImParticipant.Type.fromId(asInteger2.intValue()));
        }
        this.mPersister.onParticipantUpdated(participant);
        return Integer.valueOf(str).intValue();
    }

    public synchronized int cloudsearchAndInsertSession(Uri uri, ContentValues contentValues, ContentValues[] contentValuesArr) {
        ChatData querySessionByParticipants;
        String str = LOG_TAG;
        IMSLog.s(str, "cloudsearchAndInsertSession: " + uri);
        try {
            if (contentValues == null || contentValuesArr == null) {
                Log.i(str, "cloudsearchAndInsertSession: no values inserted");
                return 0;
            }
            HashSet hashSet = new HashSet();
            for (ContentValues contentValues2 : contentValuesArr) {
                hashSet.add(ImsUri.parse(contentValues2.getAsString("uri")));
            }
            ChatData cloudSessionTranslation = cloudSessionTranslation(contentValues);
            int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(cloudSessionTranslation.getOwnIMSI());
            if ((this.mImModule.getRcsStrategy(phoneIdByIMSI) == null || !this.mImModule.getRcsStrategy(phoneIdByIMSI).boolSetting(RcsPolicySettings.RcsPolicy.CENTRAL_MSG_STORE)) && !CmsUtil.isMcsSupported(this.mImModule.getContext(), phoneIdByIMSI)) {
                return 0;
            }
            ChatData.ChatType chatType = cloudSessionTranslation.getChatType();
            Log.i(LOG_TAG, "chatType = " + chatType.toString());
            String asString = contentValues.getAsString("conversation_id");
            Integer valueOf = Integer.valueOf(contentValues.getAsInteger("status") != null ? contentValues.getAsInteger("status").intValue() : 0);
            long longValue = !TextUtils.isEmpty(contentValues.getAsString(ImContract.ImSession.INSERTED_TIMESTAMP)) ? Long.valueOf(contentValues.getAsString(ImContract.ImSession.INSERTED_TIMESTAMP)).longValue() : 0L;
            boolean z = true;
            if (ChatData.ChatType.REGULAR_GROUP_CHAT == chatType) {
                querySessionByParticipants = this.mPersister.querySessionByConversationId(cloudSessionTranslation.getOwnIMSI(), asString, true);
            } else {
                querySessionByParticipants = this.mPersister.querySessionByParticipants(hashSet, chatType, cloudSessionTranslation.getOwnIMSI(), cloudSessionTranslation.getChatMode());
            }
            if (querySessionByParticipants != null) {
                if (asString != null && asString.equals(querySessionByParticipants.getConversationId())) {
                    querySessionByParticipants.setConversationId(asString);
                    this.mPersister.onSessionUpdated(querySessionByParticipants);
                }
                return querySessionByParticipants.getId();
            }
            ArrayList arrayList = new ArrayList();
            for (ContentValues contentValues3 : contentValuesArr) {
                arrayList.add(cloudParticipantTranslation(contentValues3));
            }
            this.mPersister.insertParticipant(arrayList);
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((ImParticipant) it.next()).getId() <= 0) {
                    z = false;
                    break;
                }
            }
            if (!z || valueOf == null) {
                return 0;
            }
            if (longValue > 0) {
                cloudSessionTranslation.setInsertedTimeStamp(longValue);
            }
            cloudSessionTranslation.setState(valueOf.intValue());
            this.mPersister.insertSession(cloudSessionTranslation);
            return cloudSessionTranslation.getId();
        } catch (NullPointerException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private ChatData cloudSessionTranslation(ContentValues contentValues) {
        String asString = contentValues.getAsString("chat_id");
        String asString2 = contentValues.getAsString(ImContract.ImSession.OWN_PHONE_NUMBER);
        String asString3 = contentValues.getAsString("session_uri");
        Integer asInteger = contentValues.getAsInteger("direction");
        if (asInteger == null) {
            asInteger = Integer.valueOf(ImDirection.INCOMING.getId());
        }
        String asString4 = contentValues.getAsString("conversation_id");
        String asString5 = contentValues.getAsString("contribution_id");
        boolean z = (contentValues.getAsInteger("is_group_chat") == null || contentValues.getAsInteger("is_group_chat").intValue() == 0) ? false : true;
        String asString6 = contentValues.getAsString("subject");
        Integer asInteger2 = contentValues.getAsInteger(ImContract.ImSession.CHAT_TYPE);
        if (asInteger2 == null) {
            asInteger2 = Integer.valueOf((z ? ChatData.ChatType.PARTICIPANT_BASED_GROUP_CHAT : ChatData.ChatType.ONE_TO_ONE_CHAT).getId());
        }
        Integer asInteger3 = contentValues.getAsInteger(ImContract.ImSession.CHAT_MODE);
        Log.i(LOG_TAG, "set own sim imsi: " + contentValues.getAsString("sim_imsi"));
        if (asInteger3 == null) {
            asInteger3 = Integer.valueOf(ChatMode.OFF.getId());
        }
        ImsUri parse = !TextUtils.isEmpty(asString3) ? ImsUri.parse(asString3) : null;
        String asString7 = contentValues.getAsString("created_by");
        String asString8 = contentValues.getAsString("invited_by");
        return new ChatData(asString, asString2, "", asString6, ChatData.ChatType.fromId(asInteger2.intValue()), ImDirection.fromId(asInteger.intValue()), asString4, asString5, contentValues.getAsString("sim_imsi"), null, ChatMode.fromId(asInteger3.intValue()), parse, !TextUtils.isEmpty(asString7) ? ImsUri.parse(asString7) : null, !TextUtils.isEmpty(asString8) ? ImsUri.parse(asString8) : null);
    }

    private ImParticipant cloudParticipantTranslation(ContentValues contentValues) {
        return new ImParticipant(contentValues.getAsString("chat_id"), ImParticipant.Status.fromId(Integer.valueOf(contentValues.getAsInteger("status") != null ? contentValues.getAsInteger("status").intValue() : 0).intValue()), ImsUri.parse(contentValues.getAsString("uri")));
    }

    public synchronized MessageBase getMessage(int i) {
        MessageBase messageBase = this.mPendingMessages.get(i);
        if (messageBase != null) {
            return messageBase;
        }
        MessageBase queryMessage = this.mPersister.queryMessage(String.valueOf(i));
        if (queryMessage == null) {
            return null;
        }
        return loadExtras(queryMessage);
    }

    public synchronized List<MessageBase> getMessages(Collection<String> collection) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str : collection) {
            try {
                MessageBase messageBase = this.mPendingMessages.get(Integer.valueOf(str).intValue());
                if (messageBase != null) {
                    arrayList.add(messageBase);
                } else {
                    arrayList2.add(str);
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        if (!arrayList2.isEmpty()) {
            for (MessageBase messageBase2 : this.mPersister.queryMessages(arrayList2)) {
                loadExtras(messageBase2);
                arrayList.add(messageBase2);
            }
        }
        return arrayList;
    }

    public synchronized List<MessageBase> getMessagesUsingChatId(List<String> list) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : list) {
            ArrayList arrayList2 = new ArrayList();
            List<MessageBase> all = this.mPendingMessages.getAll(str);
            if (all.size() > 0) {
                for (MessageBase messageBase : all) {
                    arrayList2.add(String.valueOf(messageBase.getId()));
                    arrayList.add(messageBase);
                }
                List<MessageBase> queryMessagesUsingChatIDExceptPending = this.mPersister.queryMessagesUsingChatIDExceptPending(str, arrayList2);
                if (queryMessagesUsingChatIDExceptPending != null) {
                    for (MessageBase messageBase2 : queryMessagesUsingChatIDExceptPending) {
                        loadExtras(messageBase2);
                        arrayList.add(messageBase2);
                    }
                }
            } else {
                List<MessageBase> queryMessagesUsingChatID = this.mPersister.queryMessagesUsingChatID(str);
                if (queryMessagesUsingChatID != null) {
                    for (MessageBase messageBase3 : queryMessagesUsingChatID) {
                        loadExtras(messageBase3);
                        arrayList.add(messageBase3);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized List<MessageBase> getMessages(Collection<String> collection, ImDirection imDirection, String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : collection) {
            MessageBase messageBase = this.mPendingMessages.get(str2, imDirection, str);
            if (messageBase != null) {
                arrayList.add(messageBase);
            } else {
                arrayList2.add(str2);
            }
        }
        if (!arrayList2.isEmpty()) {
            for (MessageBase messageBase2 : this.mPersister.queryMessages(arrayList2, imDirection, str)) {
                loadExtras(messageBase2);
                arrayList.add(messageBase2);
            }
        }
        return arrayList;
    }

    public MessageBase getPendingMessage(int i) {
        return this.mPendingMessages.get(i);
    }

    public List<MessageBase> getAllPendingMessages(String str) {
        return this.mPendingMessages.getAll(str);
    }

    public ImMessage getImMessage(int i) {
        MessageBase message = getMessage(i);
        if (message instanceof ImMessage) {
            return (ImMessage) message;
        }
        return null;
    }

    public ImMessage getImMessage(String str, ImDirection imDirection, String str2) {
        MessageBase message = getMessage(str, imDirection, str2);
        if (message instanceof ImMessage) {
            return (ImMessage) message;
        }
        return null;
    }

    public FtMessage getFtMessage(int i) {
        MessageBase message = getMessage(i);
        if (message instanceof FtMessage) {
            return (FtMessage) message;
        }
        return null;
    }

    public FtMessage getFtMessage(String str, ImDirection imDirection, String str2) {
        MessageBase message = getMessage(str, imDirection, str2);
        if (message instanceof FtMessage) {
            return (FtMessage) message;
        }
        return null;
    }

    public FtMsrpMessage getFtMsrpMessage(Object obj) {
        if (obj == null) {
            return null;
        }
        for (MessageBase messageBase : this.mPendingMessages.getAll()) {
            if (messageBase instanceof FtMsrpMessage) {
                FtMsrpMessage ftMsrpMessage = (FtMsrpMessage) messageBase;
                if (obj.equals(ftMsrpMessage.getRawHandle())) {
                    return ftMsrpMessage;
                }
            }
        }
        return null;
    }

    public synchronized List<MessageBase> getMessagesForPendingNotificationByChatId(String str) {
        ArrayList arrayList;
        List<Integer> queryMessageIdsForPendingNotification = this.mPersister.queryMessageIdsForPendingNotification(str);
        Log.i(LOG_TAG, "pending notifications count:" + queryMessageIdsForPendingNotification.size());
        arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<Integer> it = queryMessageIdsForPendingNotification.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (this.mPendingMessages.containsKey(intValue)) {
                arrayList.add(this.mPendingMessages.get(intValue));
            } else {
                arrayList2.add(String.valueOf(intValue));
            }
        }
        for (MessageBase messageBase : this.mPersister.queryMessages(arrayList2)) {
            loadExtras(messageBase);
            arrayList.add(messageBase);
        }
        return arrayList;
    }

    public synchronized MessageBase getMessage(String str, ImDirection imDirection, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        MessageBase messageBase = this.mPendingMessages.get(str, imDirection, str2);
        if (messageBase != null) {
            return messageBase;
        }
        return this.mCachingMessages.get(new MessageKey(str, imDirection, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003d A[Catch: all -> 0x0066, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0018, B:8:0x001d, B:9:0x0039, B:11:0x003d, B:13:0x004c, B:14:0x0061, B:19:0x0028), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized com.sec.internal.ims.servicemodules.im.MessageBase loadExtras(com.sec.internal.ims.servicemodules.im.MessageBase r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            com.sec.internal.ims.servicemodules.im.ImPersister r0 = r3.mPersister     // Catch: java.lang.Throwable -> L66
            java.util.List r0 = r0.queryImImdnRecRoute(r4)     // Catch: java.lang.Throwable -> L66
            com.sec.internal.ims.servicemodules.im.ImModule r1 = r3.mImModule     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = r4.getOwnIMSI()     // Catch: java.lang.Throwable -> L66
            int r1 = r1.getPhoneIdByIMSI(r2)     // Catch: java.lang.Throwable -> L66
            r4.setImdnRecRouteList(r0)     // Catch: java.lang.Throwable -> L66
            boolean r0 = r4 instanceof com.sec.internal.ims.servicemodules.im.FtHttpIncomingMessage     // Catch: java.lang.Throwable -> L66
            if (r0 != 0) goto L28
            boolean r0 = r4 instanceof com.sec.internal.ims.servicemodules.im.FtHttpOutgoingMessage     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L1d
            goto L28
        L1d:
            com.sec.internal.ims.servicemodules.im.ImModule r0 = r3.mImModule     // Catch: java.lang.Throwable -> L66
            r2 = 0
            android.net.Network r0 = r0.getNetwork(r2, r1)     // Catch: java.lang.Throwable -> L66
            r4.setNetwork(r0)     // Catch: java.lang.Throwable -> L66
            goto L39
        L28:
            com.sec.internal.ims.servicemodules.im.ImModule r0 = r3.mImModule     // Catch: java.lang.Throwable -> L66
            com.sec.internal.ims.servicemodules.im.ImConfig r2 = r0.getImConfig(r1)     // Catch: java.lang.Throwable -> L66
            boolean r2 = r2.isFtHttpOverDefaultPdn()     // Catch: java.lang.Throwable -> L66
            android.net.Network r0 = r0.getNetwork(r2, r1)     // Catch: java.lang.Throwable -> L66
            r4.setNetwork(r0)     // Catch: java.lang.Throwable -> L66
        L39:
            boolean r0 = r4 instanceof com.sec.internal.ims.servicemodules.im.FtMessage     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L61
            r0 = r4
            com.sec.internal.ims.servicemodules.im.FtMessage r0 = (com.sec.internal.ims.servicemodules.im.FtMessage) r0     // Catch: java.lang.Throwable -> L66
            com.sec.internal.ims.servicemodules.im.ImPersister r1 = r3.mPersister     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = r0.getChatId()     // Catch: java.lang.Throwable -> L66
            com.sec.internal.constants.ims.servicemodules.im.ChatData r1 = r1.querySessionByChatId(r2)     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L61
            boolean r2 = r1.isGroupChat()     // Catch: java.lang.Throwable -> L66
            r0.setIsGroupChat(r2)     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = r1.getContributionId()     // Catch: java.lang.Throwable -> L66
            r0.setContributionId(r2)     // Catch: java.lang.Throwable -> L66
            java.lang.String r1 = r1.getConversationId()     // Catch: java.lang.Throwable -> L66
            r0.setConversationId(r1)     // Catch: java.lang.Throwable -> L66
        L61:
            r3.registerObserver(r4)     // Catch: java.lang.Throwable -> L66
            monitor-exit(r3)
            return r4
        L66:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.ImCache.loadExtras(com.sec.internal.ims.servicemodules.im.MessageBase):com.sec.internal.ims.servicemodules.im.MessageBase");
    }

    public List<String> getMessageIdsForDisplayAggregation(String str, ImDirection imDirection, Long l) {
        List<Integer> queryMessageIdsForDisplayAggregation = this.mPersister.queryMessageIdsForDisplayAggregation(str, imDirection, l);
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = queryMessageIdsForDisplayAggregation.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next().intValue()));
        }
        Log.i(LOG_TAG, "getMessageIdsForDisplayAggregation: list=" + arrayList);
        return arrayList;
    }

    public Set<ImParticipant> getParticipants(String str) {
        ImSession imSession = getImSession(str);
        if (imSession != null) {
            return imSession.getParticipants();
        }
        return null;
    }

    public NotificationStatus getNotificationStatus(String str, ImsUri imsUri) {
        if (str == null || imsUri == null) {
            return null;
        }
        return this.mPersister.queryNotificationStatus(str, imsUri);
    }

    public synchronized MessageBase queryMessageForOpenApi(String str) {
        return this.mPersister.queryMessage(str);
    }

    public synchronized ImSession makeNewOutgoingSession(String str, Set<ImsUri> set, ChatData.ChatType chatType, String str2, String str3, int i, String str4, String str5, ChatMode chatMode) {
        return makeNewOutgoingSession(str, set, chatType, str2, str3, i, str4, str5, chatMode, null, null, null);
    }

    public synchronized ImSession makeNewOutgoingSession(String str, Set<ImsUri> set, ChatData.ChatType chatType, String str2, String str3, int i, String str4, String str5, ChatMode chatMode, String str6, String str7, ImsUri imsUri) {
        String str8;
        String str9;
        ImSession build;
        IMSLog.i(LOG_TAG, "makeNewOutgoingSession: chatType=" + chatType + " participants=" + IMSLog.numberChecker(set) + " imsi= " + IMSLog.numberChecker(str));
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
        if (!TextUtils.isEmpty(str6) || !TextUtils.isEmpty(str7)) {
            str8 = str6;
            str9 = str7;
        } else if (this.mImModule.getImConfig(phoneIdByIMSI).getImMsgTech() == ImConstants.ImMsgTech.CPM) {
            str8 = StringIdGenerator.generateConversationId();
            str9 = ChatData.ChatType.isGroupChat(chatType) ? str8 : StringIdGenerator.generateContributionId();
        } else {
            str9 = StringIdGenerator.generateContributionId();
            str8 = str6;
        }
        String ownPhoneNum = this.mImModule.getOwnPhoneNum(phoneIdByIMSI);
        ImsUri normalizedUri = (!ChatData.ChatType.isGroupChat(chatType) || TextUtils.isEmpty(ownPhoneNum)) ? null : this.mImModule.getUriGenerator(phoneIdByIMSI).getNormalizedUri(ownPhoneNum, true);
        build = new ImSessionBuilder().looper(this.mImModule.getLooper()).listener(this.mImModule.getImSessionProcessor()).config(this.mImModule.getImConfig(phoneIdByIMSI)).imsService(getImHandler()).slmService(ImsRegistry.getHandlerFactory().getSlmHandler()).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI)).chatId(StringIdGenerator.generateChatId(set, str, ChatData.ChatType.isGroupChat(chatType), chatMode.getId())).participantsUri(set).chatType(chatType).chatMode(chatMode).ownPhoneNum(ownPhoneNum).ownSimIMSI(str).ownGroupAlias("").subject(str2).iconPath(str5).sdpContentType(str3).threadId(i).requestMessageId(str4).contributionId(str9).conversationId(str8).direction(ImDirection.OUTGOING).getter(this.mImModule).sessionUri(imsUri).createdBy(normalizedUri).invitedBy(normalizedUri).build();
        registerSession(build);
        registerParticipant(build.getParticipants());
        this.mCmStoreInvoker.onCreateSession(phoneIdByIMSI, build);
        return build;
    }

    public synchronized ImSession makeNewIncomingSession(ImIncomingSessionEvent imIncomingSessionEvent, Set<ImsUri> set, ChatData.ChatType chatType, ChatMode chatMode) {
        ImSession build;
        Log.i(LOG_TAG, "makeNewIncomingSession: chatType=" + chatType + " participants=" + IMSLog.numberChecker(set));
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imIncomingSessionEvent.mOwnImsi);
        build = new ImSessionBuilder().looper(this.mImModule.getLooper()).listener(this.mImModule.getImSessionProcessor()).config(this.mImModule.getImConfig(phoneIdByIMSI)).imsService(getImHandler()).slmService(ImsRegistry.getHandlerFactory().getSlmHandler()).uriGenerator(this.mImModule.getUriGenerator()).chatId(StringIdGenerator.generateChatId(set, imIncomingSessionEvent.mOwnImsi, ChatData.ChatType.isGroupChat(chatType), chatMode.getId())).participantsUri(set).chatType(chatType).chatMode(chatMode).ownPhoneNum(this.mImModule.getOwnPhoneNum(phoneIdByIMSI)).ownSimIMSI(imIncomingSessionEvent.mOwnImsi).ownGroupAlias("").subject(imIncomingSessionEvent.mSubject).contributionId(imIncomingSessionEvent.mContributionId).conversationId(imIncomingSessionEvent.mConversationId).sdpContentType(imIncomingSessionEvent.mSdpContentType).direction(ImDirection.INCOMING).rawHandle(imIncomingSessionEvent.mIsDeferred ? null : imIncomingSessionEvent.mRawHandle).sessionType(imIncomingSessionEvent.mSessionType).createdBy(imIncomingSessionEvent.mCreatedBy).invitedBy(imIncomingSessionEvent.mInvitedBy).getter(this.mImModule).build();
        registerSession(build);
        registerParticipant(build.getParticipants());
        this.mCmStoreInvoker.onCreateSession(phoneIdByIMSI, build);
        return build;
    }

    public ImSession makeNewEmptySession(String str, Set<ImsUri> set, ChatData.ChatType chatType, ImDirection imDirection) {
        return makeNewEmptySession(str, set, chatType, imDirection, ChatMode.OFF);
    }

    public synchronized ImSession makeNewEmptySession(String str, Set<ImsUri> set, ChatData.ChatType chatType, ImDirection imDirection, ChatMode chatMode) {
        String generateContributionId;
        String str2;
        ImSession build;
        Log.i(LOG_TAG, "makeNewEmptySession: chatType=" + chatType + " participants=" + IMSLog.numberChecker(set) + " ownImsi= " + IMSLog.numberChecker(str));
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
        if (this.mImModule.getImConfig(phoneIdByIMSI).getImMsgTech() == ImConstants.ImMsgTech.CPM) {
            str2 = StringIdGenerator.generateConversationId();
            generateContributionId = ChatData.ChatType.isGroupChat(chatType) ? str2 : StringIdGenerator.generateContributionId();
        } else {
            generateContributionId = StringIdGenerator.generateContributionId();
            str2 = null;
        }
        build = new ImSessionBuilder().looper(this.mImModule.getLooper()).listener(this.mImModule.getImSessionProcessor()).config(this.mImModule.getImConfig(phoneIdByIMSI)).imsService(getImHandler()).slmService(ImsRegistry.getHandlerFactory().getSlmHandler()).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI)).chatId(StringIdGenerator.generateChatId(set, str, ChatData.ChatType.isGroupChat(chatType), chatMode.getId())).participantsUri(set).chatType(chatType).chatMode(chatMode).ownSimIMSI(str).ownPhoneNum(this.mImModule.getOwnPhoneNum(phoneIdByIMSI)).contributionId(generateContributionId).conversationId(str2).direction(imDirection).getter(this.mImModule).build();
        registerSession(build);
        registerParticipant(build.getParticipants());
        this.mCmStoreInvoker.onCreateSession(phoneIdByIMSI, build);
        return build;
    }

    public synchronized ImMessage makeNewOutgoingMessage(String str, ImSession imSession, String str2, Set<NotificationStatus> set, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str5) {
        return makeNewOutgoingMessage(str, imSession, str2, set, str3, str4, z, z2, z3, z4, z5, str5, null, null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized ImMessage makeNewOutgoingMessage(String str, ImSession imSession, String str2, Set<NotificationStatus> set, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str5, String str6, String str7, String str8) {
        ImConstants.Type type;
        ImMessage build;
        try {
            if (z2) {
                type = ImConstants.Type.TEXT_PUBLICACCOUNT;
            } else if (z4) {
                type = ImConstants.Type.LOCATION;
            } else {
                type = MessageBase.getType(str3);
            }
            int i = z5 ? 2 : 0;
            int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
            build = ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ImMessage.builder().module(this.mImModule)).listener(this.mImModule.getImProcessor()).config(this.mImModule.getImConfig(phoneIdByIMSI))).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI))).imsService(getImHandler())).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).chatId(imSession.getChatId())).remoteUri(imSession.isGroupChat() ? null : ImsUri.parse(imSession.getParticipantsString().get(0)))).body(str2)).userAlias(this.mImModule.getUserAlias(phoneIdByIMSI, false))).imdnId(StringIdGenerator.generateImdn())).dispNotification(set)).contentType(str3)).direction(ImDirection.OUTGOING)).status(ImConstants.Status.TO_SEND)).type(type)).notDisplayedCounter(imSession.getParticipantsSize())).requestMessageId(str4)).insertedTimestamp(System.currentTimeMillis())).isSlmSvcMsg(z)).isBroadcastMsg(z3)).mnoStrategy(this.mImModule.getRcsStrategy(phoneIdByIMSI))).simIMSI(str)).maapTrafficType(str5)).messagingTech(ImConstants.MessagingTech.NORMAL)).flagMask(i)).referenceImdnId(str6)).referenceType(str7)).referenceValue(str8)).build();
            registerMessage(build);
            addToPendingList(build);
        } catch (Throwable th) {
            throw th;
        }
        return build;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized ImMessage makeNewIncomingMessage(String str, ImSession imSession, ImIncomingMessageEvent imIncomingMessageEvent, Network network, String str2) {
        ImMessage build;
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
        ImDirection extractImDirection = ImCpimNamespacesHelper.extractImDirection(phoneIdByIMSI, imIncomingMessageEvent.mCpimNamespaces);
        String extractMaapTrafficType = ImCpimNamespacesHelper.extractMaapTrafficType(imIncomingMessageEvent.mCpimNamespaces);
        String extractRcsReferenceId = ImCpimNamespacesHelper.extractRcsReferenceId(imIncomingMessageEvent.mCpimNamespaces);
        String extractRcsReferenceType = ImCpimNamespacesHelper.extractRcsReferenceType(imIncomingMessageEvent.mCpimNamespaces);
        String extractRcsReferenceValue = ImCpimNamespacesHelper.extractRcsReferenceValue(imIncomingMessageEvent.mCpimNamespaces);
        String extractRcsTrafficType = ImCpimNamespacesHelper.extractRcsTrafficType(imIncomingMessageEvent.mCpimNamespaces);
        ImMessage.Builder builder = (ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ImMessage.builder().module(this.mImModule)).imsService(getImHandler())).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).listener(this.mImModule.getImProcessor()).config(this.mImModule.getImConfig(phoneIdByIMSI))).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI))).chatId(imSession.getChatId())).body(imIncomingMessageEvent.mBody)).suggestion(str2)).remoteUri(this.mImModule.normalizeUri(phoneIdByIMSI, imIncomingMessageEvent.mSender))).userAlias(imIncomingMessageEvent.mUserAlias)).imdnId(imIncomingMessageEvent.mImdnMessageId)).imdnIdOriginalTo(imIncomingMessageEvent.mOriginalToHdr)).direction(extractImDirection)).type(MessageBase.getType(imIncomingMessageEvent.mContentType))).contentType(imIncomingMessageEvent.mContentType)).status(ImConstants.Status.UNREAD)).dispNotification(imIncomingMessageEvent.mDispositionNotification)).insertedTimestamp(System.currentTimeMillis());
        Date date = imIncomingMessageEvent.mImdnTime;
        build = ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) builder.sentTimestamp(date != null ? date.getTime() : System.currentTimeMillis())).imdnRecordRouteList(imIncomingMessageEvent.mImdnRecRouteList)).mnoStrategy(this.mImModule.getRcsStrategy(phoneIdByIMSI))).notDisplayedCounter(extractImDirection == ImDirection.OUTGOING ? imSession.getParticipantsSize() : 0)).isRoutingMsg(imIncomingMessageEvent.mIsRoutingMsg)).routingType(imIncomingMessageEvent.mRoutingType)).network(network)).conversationId(imSession.getConversationId())).contributionId(imSession.getContributionId())).deviceId(imIncomingMessageEvent.mDeviceId)).simIMSI(str)).maapTrafficType(extractMaapTrafficType)).referenceImdnId(extractRcsReferenceId)).referenceType(extractRcsReferenceType)).referenceValue(extractRcsReferenceValue)).rcsTrafficType(extractRcsTrafficType)).build();
        registerMessage(build);
        this.mCmStoreInvoker.onReceiveRcsMessage(str, build.getId(), build.getImdnId());
        return build;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized ImMessage makeNewIncomingMessage(String str, ImSession imSession, SlmIncomingMessageEvent slmIncomingMessageEvent, Network network, String str2) {
        ImMessage build;
        ImConstants.Type type = MessageBase.getType(slmIncomingMessageEvent.mContentType);
        if (slmIncomingMessageEvent.mIsPublicAccountMsg) {
            type = ImConstants.Type.TEXT_PUBLICACCOUNT;
        }
        if (slmIncomingMessageEvent.mBody.toLowerCase().startsWith("geo")) {
            type = ImConstants.Type.LOCATION;
        }
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
        ImConstants.MessagingTech messagingTech = slmIncomingMessageEvent.mIsLMM ? ImConstants.MessagingTech.SLM_LARGE_MODE : ImConstants.MessagingTech.SLM_PAGER_MODE;
        ImDirection extractImDirection = ImCpimNamespacesHelper.extractImDirection(phoneIdByIMSI, slmIncomingMessageEvent.mCpimNamespaces);
        String extractMaapTrafficType = ImCpimNamespacesHelper.extractMaapTrafficType(slmIncomingMessageEvent.mCpimNamespaces);
        String extractRcsTrafficType = ImCpimNamespacesHelper.extractRcsTrafficType(slmIncomingMessageEvent.mCpimNamespaces);
        ImMessage.Builder builder = (ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ImMessage.builder().module(this.mImModule)).imsService(getImHandler())).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).listener(this.mImModule.getImProcessor()).config(this.mImModule.getImConfig(phoneIdByIMSI))).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI))).chatId(imSession.getChatId())).body(slmIncomingMessageEvent.mBody)).suggestion(str2)).remoteUri(this.mImModule.normalizeUri(phoneIdByIMSI, slmIncomingMessageEvent.mSender))).userAlias(slmIncomingMessageEvent.mUserAlias)).imdnId(slmIncomingMessageEvent.mImdnMessageId)).imdnIdOriginalTo(slmIncomingMessageEvent.mOriginalToHdr)).direction(extractImDirection)).type(type)).isSlmSvcMsg(true)).contentType(slmIncomingMessageEvent.mContentType)).status(ImConstants.Status.UNREAD)).dispNotification(slmIncomingMessageEvent.mDispositionNotification)).insertedTimestamp(System.currentTimeMillis());
        Date date = slmIncomingMessageEvent.mImdnTime;
        build = ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) builder.sentTimestamp(date != null ? date.getTime() : System.currentTimeMillis())).imdnRecordRouteList(slmIncomingMessageEvent.mImdnRecRouteList)).mnoStrategy(this.mImModule.getRcsStrategy(phoneIdByIMSI))).notDisplayedCounter(extractImDirection == ImDirection.OUTGOING ? imSession.getParticipantsSize() : 0)).isRoutingMsg(slmIncomingMessageEvent.mIsRoutingMsg)).routingType(slmIncomingMessageEvent.mRoutingType)).isVM2TextMsg(ImExtensionMNOHeadersHelper.isVM2TextMsg(slmIncomingMessageEvent.mImExtensionMNOHeaders))).network(network)).conversationId(slmIncomingMessageEvent.mConversationId)).contributionId(slmIncomingMessageEvent.mContributionId)).simIMSI(str)).maapTrafficType(extractMaapTrafficType)).messagingTech(messagingTech)).rcsTrafficType(extractRcsTrafficType)).build();
        registerMessage(build);
        this.mCmStoreInvoker.onReceiveRcsMessage(str, build.getId(), build.getImdnId());
        return build;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized ImMessage makeNewSystemUserMessage(ImSession imSession, String str, ImConstants.Type type, Date date) {
        ImMessage build;
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi());
        build = ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ((ImMessage.Builder) ImMessage.builder().module(this.mImModule)).imsService(getImHandler())).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).listener(this.mImModule.getImProcessor()).config(this.mImModule.getImConfig(phoneIdByIMSI))).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI))).chatId(imSession.getChatId())).body(str)).imdnId(StringIdGenerator.generateImdn())).direction(ImDirection.IRRELEVANT)).status(ImConstants.Status.UNREAD)).type(type)).insertedTimestamp(System.currentTimeMillis())).sentTimestamp(date == null ? System.currentTimeMillis() : date.getTime())).mnoStrategy(this.mImModule.getRcsStrategy(phoneIdByIMSI))).build();
        registerMessage(build);
        return build;
    }

    public synchronized ImMessage makeNewSystemUserMessage(ImSession imSession, String str, ImConstants.Type type) {
        return makeNewSystemUserMessage(imSession, str, type, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized FtMessage makeNewIncomingFtMessage(String str, ImSession imSession, FtIncomingSessionEvent ftIncomingSessionEvent, boolean z) {
        FtMsrpMessage build;
        ImConstants.Type type = FtMessage.getType(ftIncomingSessionEvent.mContentType);
        if (ftIncomingSessionEvent.mIsPublicAccountMsg) {
            type = ImConstants.Type.MULTIMEDIA_PUBLICACCOUNT;
        }
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
        ImDirection extractImDirection = ImCpimNamespacesHelper.extractImDirection(phoneIdByIMSI, ftIncomingSessionEvent.mCpimNamespaces);
        String extractMaapTrafficType = ImCpimNamespacesHelper.extractMaapTrafficType(ftIncomingSessionEvent.mCpimNamespaces);
        Log.i(LOG_TAG, "makeNewIncomingFtMessage msgType: " + type);
        ImConstants.MessagingTech messagingTech = ImConstants.MessagingTech.NORMAL;
        if (ftIncomingSessionEvent.mIsSlmSvcMsg) {
            messagingTech = ftIncomingSessionEvent.mIsLMM ? ImConstants.MessagingTech.SLM_LARGE_MODE : ImConstants.MessagingTech.SLM_PAGER_MODE;
        }
        FtMsrpMessage.Builder builder = (FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) FtMsrpMessage.builder().module(this.mImModule)).imsService(getImHandler())).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).listener(this.mImModule.getFtProcessor())).looper(this.mImModule.getLooper())).config(this.mImModule.getImConfig(phoneIdByIMSI))).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI))).chatId(imSession.getChatId())).direction(extractImDirection);
        String str2 = ftIncomingSessionEvent.mFilePath;
        if (str2 == null) {
            str2 = ftIncomingSessionEvent.mFileName;
        }
        FtMsrpMessage.Builder builder2 = (FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) builder.filePath(str2)).fileName(ftIncomingSessionEvent.mFileName)).fileSize(ftIncomingSessionEvent.mFileSize)).thumbnailPath(ftIncomingSessionEvent.mThumbPath)).thumbnailTool(this.mImModule.getFtProcessor().getThumbnailTool())).timeDuration(ftIncomingSessionEvent.mTimeDuration)).remoteUri(this.mImModule.normalizeUri(phoneIdByIMSI, ftIncomingSessionEvent.mSenderUri))).userAlias(ftIncomingSessionEvent.mUserAlias)).rawHandle(ftIncomingSessionEvent.mRawHandle).isGroupChat(imSession.isGroupChat())).status(ImConstants.Status.UNREAD)).type(type)).isSlmSvcMsg(z)).contentType(ftIncomingSessionEvent.mContentType)).insertedTimestamp(System.currentTimeMillis())).conversationId(imSession.getConversationId())).contributionId(ftIncomingSessionEvent.mContributionId)).inReplyToConversationId(ftIncomingSessionEvent.mInReplyToConversationId)).imdnId(ftIncomingSessionEvent.mImdnId)).imdnIdOriginalTo(ftIncomingSessionEvent.mOriginalToHdr)).dispNotification(ftIncomingSessionEvent.mDisposition)).fileTransferId(ftIncomingSessionEvent.mFileTransferId)).setState(0);
        Date date = ftIncomingSessionEvent.mImdnTime;
        build = ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) builder2.sentTimestamp(date != null ? date.getTime() : System.currentTimeMillis())).imdnRecordRouteList(ftIncomingSessionEvent.mRecRouteList)).mnoStrategy(this.mImModule.getRcsStrategy(phoneIdByIMSI))).notDisplayedCounter(extractImDirection == ImDirection.OUTGOING ? imSession.getParticipantsSize() : 0)).isRoutingMsg(ftIncomingSessionEvent.mIsRoutingMsg)).routingType(ftIncomingSessionEvent.mRoutingType)).deviceId(imSession.getDeviceId())).simIMSI(str)).maapTrafficType(extractMaapTrafficType)).messagingTech(messagingTech)).build();
        registerMessage(build);
        addToPendingList(build);
        return build;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized FtMessage makeNewOutgoingFtMessage(String str, ImSession imSession, String str2, Uri uri, ImsUri imsUri, Set<NotificationStatus> set, String str3, String str4, boolean z, boolean z2, boolean z3, String str5) {
        String str6;
        String copyFileToCacheFromUri;
        FtMsrpMessage build;
        String str7 = str4;
        synchronized (this) {
            if (imSession.getDirection() == ImDirection.INCOMING) {
                str6 = imSession.getInReplyToContributionId();
                imSession.setDirection(ImDirection.OUTGOING);
            } else {
                str6 = null;
            }
            if (!TextUtils.isEmpty(str4) && str7.equalsIgnoreCase(MIMEContentType.LOCATION_PUSH)) {
                copyFileToCacheFromUri = this.mImModule.getContext().getExternalCacheDir().getAbsolutePath() + "/" + str2;
            } else {
                copyFileToCacheFromUri = FileUtils.copyFileToCacheFromUri(this.mImModule.getContext(), str2, uri);
            }
            File file = new File(copyFileToCacheFromUri);
            int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
            if (str7 == null) {
                str7 = FileUtils.getContentType(file);
            }
            ImConstants.Type type = FtMessage.getType(str7);
            if (z) {
                type = ImConstants.Type.MULTIMEDIA_PUBLICACCOUNT;
            }
            Log.i(LOG_TAG, "makeNewOutgoingFtMessage msgType: " + type);
            build = ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) ((FtMsrpMessage.Builder) FtMsrpMessage.builder().module(this.mImModule)).imsService(getImHandler())).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).listener(this.mImModule.getFtProcessor())).looper(this.mImModule.getLooper())).config(this.mImModule.getImConfig(phoneIdByIMSI))).thumbnailTool(this.mImModule.getFtProcessor().getThumbnailTool())).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI))).chatId(imSession.getChatId())).direction(ImDirection.OUTGOING)).filePath(copyFileToCacheFromUri)).contentUri(uri)).fileName(file.getName())).fileSize(file.length())).thumbnailPath(null)).timeDuration(0)).remoteUri(imsUri)).userAlias(this.mImModule.getUserAlias(phoneIdByIMSI, false))).contributionId(StringIdGenerator.generateContributionId())).isGroupChat(imSession.isGroupChat())).status(ImConstants.Status.TO_SEND)).type(type)).contentType(str7)).insertedTimestamp(System.currentTimeMillis())).conversationId(imSession.getConversationId())).inReplyToConversationId(str6)).dispNotification(set)).imdnId(StringIdGenerator.generateImdn())).fileTransferId(StringIdGenerator.generateFileTransferId())).setState(0)).notDisplayedCounter(imSession.getParticipantsSize())).requestMessageId(str3)).isResizable(z2)).isBroadcastMsg(z3)).mnoStrategy(this.mImModule.getRcsStrategy(phoneIdByIMSI))).extinfo(str5)).simIMSI(str)).messagingTech(ImConstants.MessagingTech.NORMAL)).build();
            registerMessage(build);
            addToPendingList(build);
        }
        return build;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized FtHttpOutgoingMessage makeNewOutgoingFtHttpMessage(String str, ImSession imSession, String str2, Uri uri, ImsUri imsUri, Set<NotificationStatus> set, String str3, String str4, boolean z, Network network, boolean z2, boolean z3, boolean z4, FileDisposition fileDisposition, boolean z5) {
        FtHttpOutgoingMessage build;
        long sizeFromUri = FileUtils.getSizeFromUri(this.mImModule.getContext(), uri);
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
        String contentType = str4 == null ? FileUtils.getContentType(this.mImModule.getContext(), str2, uri) : str4;
        build = ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) ((FtHttpOutgoingMessage.Builder) FtHttpOutgoingMessage.builder().module(this.mImModule)).imsService(getImHandler())).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).listener(this.mImModule.getFtProcessor())).looper(this.mImModule.getLooper())).config(this.mImModule.getImConfig(phoneIdByIMSI))).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI))).chatId(imSession.getChatId())).contentUri(uri)).fileName(str2)).fileSize(sizeFromUri)).contentType(contentType)).remoteUri(imsUri)).userAlias(this.mImModule.getUserAlias(phoneIdByIMSI, false))).imdnId(StringIdGenerator.generateImdn())).direction(ImDirection.OUTGOING)).type(FtMessage.getType(contentType))).status(ImConstants.Status.TO_SEND)).dispNotification(set)).insertedTimestamp(System.currentTimeMillis())).setState(0)).notDisplayedCounter(imSession.getParticipantsSize())).requestMessageId(str3)).isGroupChat(imSession.isGroupChat())).mnoStrategy(this.mImModule.getRcsStrategy(phoneIdByIMSI))).setFileDisposition(fileDisposition)).network(network)).extraFt(z)).isBroadcastMsg(z3)).isSlmSvcMsg(z4)).simIMSI(str)).isResizable(z5)).build();
        registerMessage(build);
        build.setFtSms(z2);
        addToPendingList(build);
        return build;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized FtHttpIncomingMessage makeNewIncomingFtHttpMessage(String str, ImSession imSession, ImIncomingMessageEvent imIncomingMessageEvent, Network network, String str2) {
        FtHttpIncomingMessage build;
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
        ImDirection extractImDirection = ImCpimNamespacesHelper.extractImDirection(phoneIdByIMSI, imIncomingMessageEvent.mCpimNamespaces);
        String extractMaapTrafficType = ImCpimNamespacesHelper.extractMaapTrafficType(imIncomingMessageEvent.mCpimNamespaces);
        String extractRcsTrafficType = ImCpimNamespacesHelper.extractRcsTrafficType(imIncomingMessageEvent.mCpimNamespaces);
        FtHttpIncomingMessage.Builder builder = (FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) FtHttpIncomingMessage.builder().module(this.mImModule)).imsService(getImHandler())).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).listener(this.mImModule.getFtProcessor())).looper(this.mImModule.getLooper())).config(this.mImModule.getImConfig(phoneIdByIMSI))).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI))).chatId(imSession.getChatId())).body(imIncomingMessageEvent.mBody)).remoteUri(this.mImModule.normalizeUri(phoneIdByIMSI, imIncomingMessageEvent.mSender))).userAlias(imIncomingMessageEvent.mUserAlias)).imdnId(imIncomingMessageEvent.mImdnMessageId)).imdnIdOriginalTo(imIncomingMessageEvent.mOriginalToHdr)).direction(extractImDirection)).type(FtMessage.getType(imIncomingMessageEvent.mContentType))).contentType(imIncomingMessageEvent.mContentType)).status(ImConstants.Status.UNREAD)).dispNotification(imIncomingMessageEvent.mDispositionNotification)).insertedTimestamp(System.currentTimeMillis());
        Date date = imIncomingMessageEvent.mImdnTime;
        build = ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) builder.sentTimestamp(date != null ? date.getTime() : System.currentTimeMillis())).setState(0)).imdnRecordRouteList(imIncomingMessageEvent.mImdnRecRouteList)).mnoStrategy(this.mImModule.getRcsStrategy(phoneIdByIMSI))).network(network)).conversationId(imSession.getConversationId())).contributionId(imSession.getContributionId())).deviceId(imSession.getDeviceId())).simIMSI(str)).suggestion(str2)).maapTrafficType(extractMaapTrafficType)).isGroupChat(imSession.isGroupChat())).rcsTrafficType(extractRcsTrafficType)).build();
        registerMessage(build);
        addToPendingList(build);
        return build;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized FtHttpIncomingMessage makeNewIncomingFtHttpMessage(String str, ImSession imSession, SlmIncomingMessageEvent slmIncomingMessageEvent, Network network, String str2) {
        FtHttpIncomingMessage build;
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
        ImDirection extractImDirection = ImCpimNamespacesHelper.extractImDirection(phoneIdByIMSI, slmIncomingMessageEvent.mCpimNamespaces);
        String extractMaapTrafficType = ImCpimNamespacesHelper.extractMaapTrafficType(slmIncomingMessageEvent.mCpimNamespaces);
        String extractRcsTrafficType = ImCpimNamespacesHelper.extractRcsTrafficType(slmIncomingMessageEvent.mCpimNamespaces);
        FtHttpIncomingMessage.Builder builder = (FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) FtHttpIncomingMessage.builder().module(this.mImModule)).imsService(getImHandler())).slmService(ImsRegistry.getHandlerFactory().getSlmHandler())).listener(this.mImModule.getFtProcessor())).looper(this.mImModule.getLooper())).config(this.mImModule.getImConfig(phoneIdByIMSI))).uriGenerator(this.mImModule.getUriGenerator(phoneIdByIMSI))).chatId(imSession.getChatId())).body(slmIncomingMessageEvent.mBody)).remoteUri(this.mImModule.normalizeUri(phoneIdByIMSI, slmIncomingMessageEvent.mSender))).userAlias(slmIncomingMessageEvent.mUserAlias)).imdnId(slmIncomingMessageEvent.mImdnMessageId)).imdnIdOriginalTo(slmIncomingMessageEvent.mOriginalToHdr)).direction(extractImDirection)).type(FtMessage.getType(slmIncomingMessageEvent.mContentType))).isSlmSvcMsg(true)).contentType(slmIncomingMessageEvent.mContentType)).status(ImConstants.Status.UNREAD)).dispNotification(slmIncomingMessageEvent.mDispositionNotification)).insertedTimestamp(System.currentTimeMillis());
        Date date = slmIncomingMessageEvent.mImdnTime;
        build = ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) ((FtHttpIncomingMessage.Builder) builder.sentTimestamp(date != null ? date.getTime() : System.currentTimeMillis())).setState(0)).imdnRecordRouteList(slmIncomingMessageEvent.mImdnRecRouteList)).mnoStrategy(this.mImModule.getRcsStrategy(phoneIdByIMSI))).network(network)).conversationId(imSession.getConversationId())).contributionId(imSession.getContributionId())).deviceId(imSession.getDeviceId())).simIMSI(str)).suggestion(str2)).maapTrafficType(extractMaapTrafficType)).rcsTrafficType(extractRcsTrafficType)).build();
        registerMessage(build);
        addToPendingList(build);
        return build;
    }

    public synchronized void addParticipant(Collection<ImParticipant> collection) {
        registerParticipant(collection);
    }

    public synchronized void deleteParticipant(Collection<ImParticipant> collection) {
        unregisterParticipant(collection);
    }

    public synchronized void updateParticipant(Collection<ImParticipant> collection) {
        updateParticipant(collection, ImCacheAction.UPDATED);
    }

    public synchronized void deleteSession(ImSession imSession) {
        unregisterMessage(this.mPendingMessages.getAll(imSession.getChatId()));
        this.mPersister.deleteParticipant(imSession.getParticipants());
        unregisterSession(imSession);
        removeActiveSession(imSession);
    }

    private void handleDeleteFtMessage(FtMessage ftMessage) {
        String str = LOG_TAG;
        Log.i(str, "handleDeleteFtMessage: msgId:" + ftMessage.getId() + " direction:" + ftMessage.getDirection() + " transferState:" + ftMessage.getStateId());
        ftMessage.removeAutoResumeFileTimer();
        if (ftMessage.getStateId() != 3 && ftMessage.getStateId() != 4 && ftMessage.getStateId() != 1) {
            ftMessage.cancelTransfer(CancelReason.CANCELED_BY_SYSTEM);
        }
        if (ftMessage.getDirection() == ImDirection.INCOMING) {
            Log.i(str, "handleDeleteFtMessage: msgId:" + ftMessage.getId() + " isDeleted:" + ftMessage.deleteFile() + " isThumbnailDeleted:" + ftMessage.deleteThumbnail());
        }
    }

    public void readMessagesforCloudSync(int i, List<String> list) {
        this.mCmStoreInvoker.onReadRcsMessageList(i, list);
    }

    public void cancelMessagesforCloudSync(int i, List<String> list) {
        this.mCmStoreInvoker.onCancelRcsMessageList(i, list);
    }

    public void deleteMessagesforCloudSyncUsingMsgId(List<String> list) {
        Log.i(LOG_TAG, "deleteMessagesforCloudSyncUsingMsgId: " + list);
        List<MessageBase> messages = getMessages(list);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str = null;
        String str2 = null;
        for (MessageBase messageBase : messages) {
            String ownIMSI = messageBase.getOwnIMSI();
            Log.d(LOG_TAG, "message imsi " + IMSLog.checker(ownIMSI) + "getphoneid " + this.mCmStoreInvoker.getPhoneIdByIMSI(ownIMSI));
            if (this.mCmStoreInvoker.getPhoneIdByIMSI(ownIMSI) == 0) {
                arrayList.add(String.valueOf(messageBase.getId()));
                str = ownIMSI;
            } else {
                arrayList2.add(String.valueOf(messageBase.getId()));
                str2 = ownIMSI;
            }
        }
        if (arrayList.size() != 0) {
            this.mCmStoreInvoker.onDeleteRcsMessagesUsingMsgId(arrayList, str);
        }
        if (arrayList2.size() != 0) {
            this.mCmStoreInvoker.onDeleteRcsMessagesUsingMsgId(arrayList2, str2);
        }
    }

    public void deleteMessagesforCloudSyncUsingImdnId(Map<String, Integer> map, String str) {
        Log.i(LOG_TAG, "deleteMessagesforCloudSyncUsingImdnId: " + map);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str2 = null;
        String str3 = null;
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            MessageBase message = getMessage(entry.getKey(), ImDirection.fromId(entry.getValue().intValue()), str);
            if (message != null) {
                String ownIMSI = message.getOwnIMSI();
                if (this.mCmStoreInvoker.getPhoneIdByIMSI(ownIMSI) == 0) {
                    arrayList.add(String.valueOf(message.getImdnId()));
                    str2 = ownIMSI;
                } else {
                    arrayList2.add(String.valueOf(message.getImdnId()));
                    str3 = ownIMSI;
                }
            }
        }
        Log.d(LOG_TAG, "deleteMessagesforCloudSyncUsingImdnId: msgListSlot1.size = " + arrayList.size() + " msgListSlot2.size = " + arrayList2.size());
        if (arrayList.size() != 0) {
            this.mCmStoreInvoker.onDeleteRcsMessagesUsingImdnId(arrayList, str2);
        }
        if (arrayList2.size() != 0) {
            this.mCmStoreInvoker.onDeleteRcsMessagesUsingImdnId(arrayList2, str3);
        }
    }

    public synchronized void deleteMessagesforCloudSyncUsingChatId(List<String> list) {
        Log.i(LOG_TAG, "deleteMessagesforCloudSyncUsingChatId: " + list);
        List<MessageBase> messagesUsingChatId = getMessagesUsingChatId(list);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str = null;
        String str2 = null;
        for (MessageBase messageBase : messagesUsingChatId) {
            String ownIMSI = messageBase.getOwnIMSI();
            if (this.mCmStoreInvoker.getPhoneIdByIMSI(ownIMSI) == 0) {
                if (!arrayList.contains(messageBase.getChatId())) {
                    arrayList.add(String.valueOf(messageBase.getChatId()));
                    str = ownIMSI;
                }
            } else if (!arrayList2.contains(messageBase.getChatId())) {
                arrayList2.add(String.valueOf(messageBase.getChatId()));
                str2 = ownIMSI;
            }
        }
        if (arrayList.size() != 0) {
            this.mCmStoreInvoker.onDeleteRcsMessagesUsingChatId(arrayList, str);
        }
        if (arrayList2.size() != 0) {
            this.mCmStoreInvoker.onDeleteRcsMessagesUsingChatId(arrayList2, str2);
        }
    }

    public synchronized void sentMessageForCloudSync(String str, int i, String str2) {
        this.mCmStoreInvoker.onSentMessage(str, i, str2);
    }

    public synchronized void notifyCloudMsgFtEvent(String str, int i, String str2, ImDirection imDirection) {
        this.mCmStoreInvoker.notifyFtEvent(str, i, str2, imDirection);
    }

    public synchronized void deleteMessage(int i) {
        deleteMessage(getMessage(i));
    }

    public synchronized void deleteMessages(Map<String, Integer> map, String str) {
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            deleteMessage(getMessage(entry.getKey(), ImDirection.fromId(entry.getValue().intValue()), str));
        }
    }

    private void deleteMessage(MessageBase messageBase) {
        if (messageBase != null) {
            if (messageBase instanceof FtMessage) {
                handleDeleteFtMessage((FtMessage) messageBase);
            }
            unregisterMessage(messageBase);
            this.mPersister.deleteMessage(messageBase.mId);
        }
    }

    public synchronized void deleteAllMessages(final String str) {
        if (!TextUtils.isEmpty(str)) {
            List<Integer> queryAllMessageIdsByChatId = this.mPersister.queryAllMessageIdsByChatId(str, true);
            Log.i(LOG_TAG, "deleteAllMessages ft message ids : " + queryAllMessageIdsByChatId);
            Iterator<Integer> it = queryAllMessageIdsByChatId.iterator();
            while (it.hasNext()) {
                FtMessage ftMessage = getFtMessage(it.next().intValue());
                if (ftMessage != null) {
                    handleDeleteFtMessage(ftMessage);
                }
            }
            final HashSet hashSet = new HashSet();
            hashSet.addAll(this.mPendingMessages.getAll(str));
            this.mCachingMessages.snapshot().values().stream().filter(new Predicate() { // from class: com.sec.internal.ims.servicemodules.im.ImCache$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$deleteAllMessages$1;
                    lambda$deleteAllMessages$1 = ImCache.lambda$deleteAllMessages$1(str, (MessageBase) obj);
                    return lambda$deleteAllMessages$1;
                }
            }).forEach(new Consumer() { // from class: com.sec.internal.ims.servicemodules.im.ImCache$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    hashSet.add((MessageBase) obj);
                }
            });
            unregisterMessage(new ArrayList(hashSet));
        }
        this.mPersister.deleteMessage(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$deleteAllMessages$1(String str, MessageBase messageBase) {
        return str.equals(messageBase.getChatId());
    }

    private void registerSession(ImSession imSession) {
        ChatData chatData = imSession.getChatData();
        registerObserver(chatData);
        chatData.triggerObservers(ImCacheAction.INSERTED);
        this.mImSessions.put(imSession.getChatId(), imSession);
    }

    private void unregisterSession(ImSession imSession) {
        ChatData chatData = imSession.getChatData();
        chatData.triggerObservers(ImCacheAction.DELETED);
        unregisterObserver(chatData);
        this.mImSessions.remove(imSession.getChatId());
    }

    private void registerMessage(MessageBase messageBase) {
        registerObserver(messageBase);
        messageBase.triggerObservers(ImCacheAction.INSERTED);
    }

    public void addToPendingList(MessageBase messageBase) {
        if (messageBase != null) {
            this.mPendingMessages.put(messageBase);
        } else {
            Log.w(LOG_TAG, "Message is null.");
        }
    }

    public void removeFromPendingList(int i) {
        MessageBase messageBase = this.mPendingMessages.get(i);
        if (messageBase != null) {
            unregisterObserver(messageBase);
            this.mPendingMessages.remove(i);
            Log.i(LOG_TAG, "removed message from cache:" + i);
            return;
        }
        Log.w(LOG_TAG, "Message is not in the cache:" + i);
    }

    private void unregisterMessage(MessageBase messageBase) {
        messageBase.triggerObservers(ImCacheAction.DELETED);
        unregisterObserver(messageBase);
        this.mPendingMessages.remove(messageBase.getId());
        this.mCachingMessages.remove(new MessageKey(messageBase.getImdnId(), messageBase.getDirection(), messageBase.getChatId()));
    }

    private void unregisterMessage(List<MessageBase> list) {
        updateMessage(list, ImCacheAction.DELETED);
        for (MessageBase messageBase : list) {
            unregisterObserver(messageBase);
            this.mPendingMessages.remove(messageBase.getId());
            this.mCachingMessages.remove(new MessageKey(messageBase.getImdnId(), messageBase.getDirection(), messageBase.getChatId()));
        }
    }

    private void registerParticipant(Collection<ImParticipant> collection) {
        Iterator<ImParticipant> it = collection.iterator();
        while (it.hasNext()) {
            registerObserver(it.next());
        }
        updateParticipant(collection, ImCacheAction.INSERTED);
    }

    private void unregisterParticipant(Collection<ImParticipant> collection) {
        updateParticipant(collection, ImCacheAction.DELETED);
        Iterator<ImParticipant> it = collection.iterator();
        while (it.hasNext()) {
            unregisterObserver(it.next());
        }
    }

    public void updateActiveSession(ImSession imSession) {
        this.mActiveSessions.put(Integer.valueOf(imSession.getId()), imSession);
    }

    public void removeActiveSession(ImSession imSession) {
        this.mActiveSessions.remove(Integer.valueOf(imSession.getId()));
    }

    public Collection<ImSession> getActiveSessions() {
        return this.mActiveSessions.snapshot().values();
    }

    public boolean isEstablishedSessionExist() {
        Iterator<ImSession> it = this.mActiveSessions.snapshot().values().iterator();
        while (it.hasNext()) {
            if (it.next().isEstablishedState()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasFileTransferInprogress() {
        for (MessageBase messageBase : new ArrayList(this.mPendingMessages.getAll())) {
            if ((messageBase instanceof FtMsrpMessage) && ((FtMessage) messageBase).getStateId() == 2) {
                return true;
            }
        }
        return false;
    }

    public synchronized boolean hasProcessingFileTransfer() {
        for (ImSession imSession : this.mImSessions.snapshot().values()) {
            if (!imSession.mProcessingFileTransfer.isEmpty() || !imSession.mPendingFileTransfer.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public void updateDesiredNotificationStatusAsDisplay(List<MessageBase> list) {
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        ArrayList arrayList = new ArrayList();
        for (MessageBase messageBase : list) {
            if (messageBase != null) {
                messageBase.setDesiredNotificationStatus(NotificationStatus.DISPLAYED);
                messageBase.setDisplayedTimestamp(valueOf.longValue());
                if (messageBase.getStatus() != ImConstants.Status.FAILED) {
                    messageBase.setStatus(ImConstants.Status.READ);
                }
                arrayList.add(String.valueOf(messageBase.getId()));
            }
        }
        this.mPersister.updateDesiredNotificationStatusAsDisplayed(arrayList, NotificationStatus.DISPLAYED.getId(), valueOf.longValue());
    }

    public synchronized void addToChatbotRoleUris(ImsUri imsUri, String str) {
        if (imsUri != null && str != null) {
            if (this.mIsLoaded) {
                Log.i(LOG_TAG, "addToChatbotRoleUris: uri = " + IMSLog.checker(imsUri) + " " + IMSLog.checker(this.mChatbotRoleUris));
                getOrLoadChatbotRoleUris(str).add(imsUri);
            }
        }
    }

    public synchronized void removeFromChatbotRoleUris(ImsUri imsUri, String str) {
        if (imsUri != null && str != null) {
            if (this.mIsLoaded) {
                Log.i(LOG_TAG, "removeFromChatbotRoleUris: uri = " + IMSLog.checker(imsUri) + " " + IMSLog.checker(this.mChatbotRoleUris));
                getOrLoadChatbotRoleUris(str).remove(imsUri);
            }
        }
    }

    public synchronized boolean isChatbotRoleUri(ImsUri imsUri, String str) {
        if (imsUri != null && str != null) {
            if (this.mIsLoaded) {
                return getOrLoadChatbotRoleUris(str).contains(imsUri);
            }
        }
        return false;
    }

    private synchronized Set<ImsUri> getOrLoadChatbotRoleUris(String str) {
        Set<ImsUri> set;
        Log.i(LOG_TAG, "getOrloadChatbotRoleUris()");
        set = this.mChatbotRoleUris.get(str);
        if (set == null) {
            set = new HashSet<>();
            set.addAll(this.mPersister.queryChatbotRoleUris(str));
            this.mChatbotRoleUris.put(str, set);
        }
        return set;
    }

    public void closeDB() {
        this.mPersister.closeDB();
    }

    public ImPersister getPersister() {
        return this.mPersister;
    }

    public synchronized long getConferenceTimestamp(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        return this.mPersister.querySessionByChatId(str).getInsertedTimeStamp();
    }
}
