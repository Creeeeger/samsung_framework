package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.event.ImComposingEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImdnNotificationEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SendImdnFailedEvent;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import com.sec.internal.ims.servicemodules.im.listener.IChatEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IFtEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ImdnHandler {
    private static final String LOG_TAG = "ImdnHandler";
    private ImCache mCache;
    private Context mContext;
    private FtProcessor mFtProcessor;
    private ImModule mImModule;
    private ImProcessor mImProcessor;
    private ImSessionProcessor mImSessionProcessor;

    public ImdnHandler(Context context, ImModule imModule, ImCache imCache, ImProcessor imProcessor, FtProcessor ftProcessor, ImSessionProcessor imSessionProcessor) {
        this.mContext = context;
        this.mImModule = imModule;
        this.mCache = imCache;
        this.mImProcessor = imProcessor;
        this.mFtProcessor = ftProcessor;
        this.mImSessionProcessor = imSessionProcessor;
    }

    protected void readMessages(String str, List<String> list, boolean z) {
        String str2 = LOG_TAG;
        Log.i(str2, "readMessage: cid " + str + " index : " + list);
        int phoneIdByChatId = this.mImModule.getPhoneIdByChatId(str);
        this.mCache.readMessagesforCloudSync(phoneIdByChatId, list);
        if (z) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                updateDbForReadMessage(this.mCache.getMessage(it.next(), ImDirection.INCOMING, str));
            }
            return;
        }
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            Log.e(str2, "readMessage: Session not found in the cache.");
            return;
        }
        this.mImModule.getImDump().addEventLogs("sendDisplayedNotification: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", imdnIds=" + list);
        List<MessageBase> messageListToRead = getMessageListToRead(str, list);
        if (!this.mImModule.isRegistered(phoneIdByChatId)) {
            Log.i(str2, "readMessage: not registered, mark status as displayed.");
            this.mCache.updateDesiredNotificationStatusAsDisplay(messageListToRead);
        } else {
            if (this.mImModule.getRcsStrategy().needToCapabilityCheckForImdn(imSession.isGroupChat()) && handleReadMessageForNonRcs(phoneIdByChatId, imSession, messageListToRead)) {
                return;
            }
            sendDisplayedNotification(imSession, messageListToRead);
        }
    }

    protected void cancelMessages(String str, List<String> list) {
        String str2 = LOG_TAG;
        Log.i(str2, "cancelMessages: cid " + str + " imdnIds : " + list);
        int phoneIdByChatId = this.mImModule.getPhoneIdByChatId(str);
        this.mCache.cancelMessagesforCloudSync(phoneIdByChatId, list);
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            Log.e(str2, "cancelMessages: Session not found in the cache.");
            onCancelMessagesFailed(str, list);
            return;
        }
        this.mImModule.getImDump().addEventLogs("sendCanceledNotification: conversationId=" + imSession.getConversationId() + ", imdnIds=" + list);
        if (this.mImModule.isRegistered(phoneIdByChatId)) {
            imSession.cancelMessages(list);
        } else {
            onCancelMessagesFailed(str, list);
        }
        this.mImSessionProcessor.getBigDataProcessor().onMessageCancelSent(imSession.getPhoneId(), list.size());
    }

    protected void sendComposingNotification(String str, int i, boolean z) {
        String str2 = LOG_TAG;
        Log.i(str2, "sendComposingNotification: chatId=" + str + " typing=" + z + " interval=" + i);
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            Log.e(str2, "Session not found in the cache.");
            return;
        }
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getChatData().getOwnIMSI());
        if (!this.mImModule.isRegistered(phoneIdByIMSI)) {
            Log.e(str2, "sendComposingNotification: not registered");
            return;
        }
        if (!imSession.isAutoAccept() && this.mImModule.getImConfig(phoneIdByIMSI).getImSessionStart() != ImConstants.ImSessionStart.WHEN_PRESSES_SEND_BUTTON) {
            imSession.acceptSession(false);
        }
        imSession.sendComposing(z, i);
    }

    protected void onImdnNotificationReceived(ImdnNotificationEvent imdnNotificationEvent) {
        String str = LOG_TAG;
        Log.i(str, "onImdnNotificationReceived: " + imdnNotificationEvent);
        MessageBase message = this.mCache.getMessage(imdnNotificationEvent.mImdnId, ImDirection.OUTGOING, null);
        if (message == null) {
            Log.e(str, "onImdnNotificationReceived: Couldn't find the im message.");
            return;
        }
        ImModule imModule = this.mImModule;
        ImsUri normalizeUri = imModule.normalizeUri(imModule.getPhoneIdByIMSI(message.getOwnIMSI()), imdnNotificationEvent.mRemoteUri);
        imdnNotificationEvent.mRemoteUri = normalizeUri;
        NotificationStatus notificationStatus = this.mCache.getNotificationStatus(imdnNotificationEvent.mImdnId, normalizeUri);
        if (!isValidImdnNotification(notificationStatus, imdnNotificationEvent.mStatus)) {
            Log.i(str, "onImdnNotificationReceived: ignore. current status=" + notificationStatus);
            return;
        }
        ImSession imSession = this.mCache.getImSession(message.getChatId());
        if (imSession == null) {
            Log.e(str, "onImdnNotificationReceived: Session not found.");
            return;
        }
        this.mImModule.getImDump().addEventLogs("onImdnNotificationReceived: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", imdnId=" + imdnNotificationEvent.mImdnId + ", status=" + imdnNotificationEvent.mStatus + ", remoteUri=" + imdnNotificationEvent.mRemoteUri.toStringLimit());
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi());
        boolean isGroupChat = imSession.isGroupChat();
        updateImdnStatusAndNotifyToListener(imdnNotificationEvent, imSession, isGroupChat, getMessagesForReceivedImdn(!imSession.isGroupChat() && RcsPolicyManager.getRcsStrategy(phoneIdByIMSI).boolSetting(RcsPolicySettings.RcsPolicy.USE_AGGREGATION_DISPLAYED_IMDN), imdnNotificationEvent.mStatus, imSession.getChatId(), message));
        if (!isGroupChat) {
            releaseLegacyLatching(imSession, phoneIdByIMSI, imdnNotificationEvent.mRemoteUri);
        }
        NotificationStatus notificationStatus2 = imdnNotificationEvent.mStatus;
        if ((notificationStatus2 == NotificationStatus.DELIVERED || notificationStatus2 == NotificationStatus.DISPLAYED) && !isGroupChat) {
            this.mImModule.updateServiceAvailability(imSession.getChatData().getOwnIMSI(), imdnNotificationEvent.mRemoteUri, imdnNotificationEvent.mCpimDate);
        }
        if (this.mImModule.getImConfig(phoneIdByIMSI).getRealtimeUserAliasAuth()) {
            imSession.updateParticipantAlias(imdnNotificationEvent.mUserAlias, imSession.getParticipant(imdnNotificationEvent.mRemoteUri));
        }
    }

    protected void onCanceledNotificationReceived(ImdnNotificationEvent imdnNotificationEvent) {
        ImSession imSessionByConversationId;
        String str = LOG_TAG;
        Log.i(str, "onCanceledNotificationReceived: " + imdnNotificationEvent);
        String str2 = null;
        if (!TextUtils.isEmpty(imdnNotificationEvent.mConversationId) && !TextUtils.isEmpty(imdnNotificationEvent.mOwnImsi) && (imSessionByConversationId = this.mCache.getImSessionByConversationId(imdnNotificationEvent.mOwnImsi, imdnNotificationEvent.mConversationId, true)) != null) {
            str2 = imSessionByConversationId.getChatId();
        }
        MessageBase message = this.mCache.getMessage(imdnNotificationEvent.mImdnId, ImDirection.INCOMING, str2);
        if (message == null) {
            Log.e(str, "onCanceledNotificationReceived: Couldn't find the im message.");
            return;
        }
        if (message.getLastNotificationType() == NotificationStatus.CANCELED) {
            Log.i(str, "onCanceledNotificationReceived: ignore. current status=" + message.getNotificationStatus());
            return;
        }
        ImSession imSession = this.mCache.getImSession(message.getChatId());
        if (imSession == null) {
            Log.e(str, "onCanceledNotificationReceived: Session not found.");
            return;
        }
        this.mImModule.getImDump().addEventLogs("onCanceledNotificationReceived: conversationId=" + imSession.getConversationId() + ", imdnId=" + imdnNotificationEvent.mImdnId + ", status=" + imdnNotificationEvent.mStatus);
        message.onCanceledNotificationReceived(imdnNotificationEvent);
        notifyCanceledNotificationToListener(imdnNotificationEvent, imSession, message);
        if (this.mImModule.getImConfig(imSession.getPhoneId()).getRealtimeUserAliasAuth()) {
            imSession.updateParticipantAlias(imdnNotificationEvent.mUserAlias, imSession.getParticipant(imdnNotificationEvent.mRemoteUri));
        }
    }

    protected void onComposingNotificationReceived(ImComposingEvent imComposingEvent) {
        String str;
        String str2 = LOG_TAG;
        Log.i(str2, "onComposingNotificationReceived: " + imComposingEvent);
        ImSession imSession = this.mCache.getImSession(imComposingEvent.mChatId);
        if (imSession == null) {
            Log.e(str2, "onComposingNotificationReceived: Session not found.");
            return;
        }
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getChatData().getOwnIMSI());
        ImsUri normalizeUri = this.mImModule.normalizeUri(ImsUri.parse(imComposingEvent.mUri));
        boolean isGroupChat = imSession.isGroupChat();
        if (this.mImModule.isBlockedNumber(phoneIdByIMSI, normalizeUri, isGroupChat)) {
            return;
        }
        imSession.receiveComposingNotification(imComposingEvent);
        if (!isGroupChat) {
            releaseLegacyLatching(imSession, phoneIdByIMSI, normalizeUri);
        }
        if (this.mImModule.getImConfig(phoneIdByIMSI).getUserAliasEnabled()) {
            str = imComposingEvent.mUserAlias;
            if (this.mImModule.getImConfig(phoneIdByIMSI).getRealtimeUserAliasAuth() && isGroupChat) {
                imSession.updateParticipantAlias(str, imSession.getParticipant(normalizeUri));
            }
        } else {
            str = "";
        }
        String str3 = str;
        Iterator<IChatEventListener> it = this.mImSessionProcessor.mChatEventListeners.iterator();
        while (it.hasNext()) {
            it.next().onComposingNotificationReceived(imComposingEvent.mChatId, imSession.isGroupChat(), normalizeUri, str3, imComposingEvent.mIsComposing, imComposingEvent.mInterval);
        }
    }

    protected void onSendImdnFailed(SendImdnFailedEvent sendImdnFailedEvent) {
        String str = LOG_TAG;
        Log.i(str, "onSendImdnFailed: " + sendImdnFailedEvent);
        MessageBase message = this.mCache.getMessage(sendImdnFailedEvent.mImdnId, ImDirection.INCOMING, sendImdnFailedEvent.mChatId);
        if (message == null) {
            Log.e(str, "onSendImdnFailed: Message not found.");
            return;
        }
        ImSession imSession = this.mCache.getImSession(sendImdnFailedEvent.mChatId);
        if (imSession == null) {
            Log.e(str, "onSendImdnFailed: Session not found.");
        } else {
            imSession.onSendImdnFailed(sendImdnFailedEvent, message);
        }
    }

    private void updateDbForReadMessage(MessageBase messageBase) {
        if (messageBase != null) {
            if ((messageBase instanceof FtHttpIncomingMessage) || messageBase.getStatus() != ImConstants.Status.FAILED) {
                if (messageBase.getStatus() == ImConstants.Status.CANCELLATION_UNREAD) {
                    messageBase.updateStatus(ImConstants.Status.CANCELLATION);
                } else {
                    messageBase.updateStatus(ImConstants.Status.READ);
                }
                messageBase.updateDisplayedTimestamp(System.currentTimeMillis());
                NotificationStatus notificationStatus = NotificationStatus.DISPLAYED;
                messageBase.updateDesiredNotificationStatus(notificationStatus);
                messageBase.updateNotificationStatus(notificationStatus);
                return;
            }
            Log.e(LOG_TAG, "Do not update message with status FAILED: messageId" + messageBase.getId());
        }
    }

    private List<MessageBase> getMessageListToRead(String str, List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            MessageBase message = this.mCache.getMessage(it.next(), ImDirection.INCOMING, str);
            if (message != null) {
                arrayList.add(message);
            }
        }
        arrayList.sort(new Comparator() { // from class: com.sec.internal.ims.servicemodules.im.ImdnHandler$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$getMessageListToRead$0;
                lambda$getMessageListToRead$0 = ImdnHandler.lambda$getMessageListToRead$0((MessageBase) obj, (MessageBase) obj2);
                return lambda$getMessageListToRead$0;
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getMessageListToRead$0(MessageBase messageBase, MessageBase messageBase2) {
        long insertedTimestamp = messageBase.getInsertedTimestamp() - messageBase2.getInsertedTimestamp();
        return insertedTimestamp == 0 ? messageBase.getId() < messageBase2.getId() ? -1 : 1 : insertedTimestamp < 0 ? -1 : 1;
    }

    private boolean handleReadMessageForNonRcs(int i, ImSession imSession, List<MessageBase> list) {
        ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
        if (capabilityDiscoveryModule == null) {
            return false;
        }
        Capabilities capabilities = capabilityDiscoveryModule.getCapabilities(imSession.getParticipantsUri().iterator().next(), CapabilityRefreshType.ONLY_IF_NOT_FRESH, i);
        if (capabilities == null) {
            Log.i(LOG_TAG, "readMessage: cap is null");
            return false;
        }
        if (!capabilities.hasFeature(Capabilities.FEATURE_NON_RCS_USER) || imSession.isEstablishedState()) {
            return false;
        }
        for (MessageBase messageBase : list) {
            messageBase.updateDesiredNotificationStatus(NotificationStatus.DISPLAYED);
            messageBase.onSendDisplayedNotificationDone();
        }
        return true;
    }

    private void sendDisplayedNotification(ImSession imSession, List<MessageBase> list) {
        boolean isRespondDisplay = imSession.isRespondDisplay();
        for (MessageBase messageBase : list) {
            if ((messageBase instanceof FtHttpIncomingMessage) || messageBase.getStatus() != ImConstants.Status.FAILED) {
                if (messageBase.getStatus() == ImConstants.Status.CANCELLATION_UNREAD) {
                    messageBase.updateStatus(ImConstants.Status.CANCELLATION);
                } else {
                    messageBase.updateStatus(ImConstants.Status.READ);
                }
                messageBase.updateDisplayedTimestamp(System.currentTimeMillis());
                if (messageBase.isDisplayedNotificationRequired() && isRespondDisplay) {
                    messageBase.updateDesiredNotificationStatus(NotificationStatus.DISPLAYED);
                    imSession.mMessagesToSendDisplayNotification.add(messageBase);
                }
            } else {
                Log.e(LOG_TAG, "Do not update message with status FAILED: " + messageBase.getId());
            }
        }
        if (imSession.mMessagesToSendDisplayNotification.isEmpty()) {
            return;
        }
        imSession.sendMessage(imSession.obtainMessage(ImSessionEvent.SEND_DISPLAYED_NOTIFICATION));
    }

    private boolean isValidImdnNotification(NotificationStatus notificationStatus, NotificationStatus notificationStatus2) {
        if (notificationStatus == null || notificationStatus == NotificationStatus.DISPLAYED) {
            return false;
        }
        NotificationStatus notificationStatus3 = NotificationStatus.DELIVERED;
        return (notificationStatus == notificationStatus3 && notificationStatus2 == notificationStatus3) ? false : true;
    }

    private List<MessageBase> getMessagesForReceivedImdn(boolean z, NotificationStatus notificationStatus, String str, MessageBase messageBase) {
        ArrayList arrayList = new ArrayList();
        if (z && notificationStatus == NotificationStatus.DISPLAYED) {
            List<String> messageIdsForDisplayAggregation = this.mCache.getMessageIdsForDisplayAggregation(str, ImDirection.OUTGOING, Long.valueOf(messageBase.getDeliveredTimestamp()));
            messageIdsForDisplayAggregation.remove(String.valueOf(messageBase.getId()));
            if (!messageIdsForDisplayAggregation.isEmpty()) {
                arrayList.addAll(this.mCache.getMessages(messageIdsForDisplayAggregation));
            }
            arrayList.add(messageBase);
            if (arrayList.size() > 1) {
                arrayList.sort(new Comparator() { // from class: com.sec.internal.ims.servicemodules.im.ImdnHandler$$ExternalSyntheticLambda1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$getMessagesForReceivedImdn$1;
                        lambda$getMessagesForReceivedImdn$1 = ImdnHandler.lambda$getMessagesForReceivedImdn$1((MessageBase) obj, (MessageBase) obj2);
                        return lambda$getMessagesForReceivedImdn$1;
                    }
                });
            }
        } else {
            arrayList.add(messageBase);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getMessagesForReceivedImdn$1(MessageBase messageBase, MessageBase messageBase2) {
        return messageBase.getId() - messageBase2.getId() < 0 ? -1 : 1;
    }

    private void updateRevocationStatus(ImSession imSession, MessageBase messageBase) {
        if (imSession.getNeedToRevokeMessages().containsKey(messageBase.getImdnId())) {
            messageBase.updateRevocationStatus(ImConstants.RevocationStatus.NONE);
            imSession.removeMsgFromListForRevoke(messageBase.getImdnId());
            this.mCache.removeFromPendingList(messageBase.getId());
        }
    }

    private void updateImdnStatusAndNotifyToListener(ImdnNotificationEvent imdnNotificationEvent, ImSession imSession, boolean z, List<MessageBase> list) {
        for (MessageBase messageBase : list) {
            messageBase.onImdnNotificationReceived(imdnNotificationEvent);
            updateRevocationStatus(imSession, messageBase);
            String str = null;
            Cursor queryMessages = this.mCache.queryMessages(new String[]{ImContract.Message.MSG_CREATOR}, "imdn_message_id= ?", new String[]{imdnNotificationEvent.mImdnId}, null);
            if (queryMessages != null) {
                try {
                    if (queryMessages.moveToNext()) {
                        str = queryMessages.getString(queryMessages.getColumnIndexOrThrow(ImContract.Message.MSG_CREATOR));
                    }
                } catch (Throwable th) {
                    try {
                        queryMessages.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (queryMessages != null) {
                queryMessages.close();
            }
            messageBase.setMessageCreator(str);
            if (messageBase instanceof ImMessage) {
                Iterator<IMessageEventListener> it = this.mImProcessor.getMessageEventListener(messageBase.getType()).iterator();
                while (it.hasNext()) {
                    it.next().onImdnNotificationReceived(messageBase, imdnNotificationEvent.mRemoteUri, messageBase.getLastNotificationType(), z);
                }
            } else if (messageBase instanceof FtMessage) {
                Iterator<IFtEventListener> it2 = this.mFtProcessor.getFtEventListener(messageBase.getType()).iterator();
                while (it2.hasNext()) {
                    it2.next().onImdnNotificationReceived((FtMessage) messageBase, imdnNotificationEvent.mRemoteUri, messageBase.getLastNotificationType(), z);
                }
            }
        }
    }

    private void releaseLegacyLatching(ImSession imSession, int i, ImsUri imsUri) {
        this.mImSessionProcessor.setLegacyLatching(imSession.getRemoteUri(), false, imSession.getChatData().getOwnIMSI());
        this.mImModule.getLatchingProcessor().removeUriFromLatchingList(imsUri, i);
    }

    private void onCancelMessagesFailed(String str, List<String> list) {
        for (IMessageEventListener iMessageEventListener : this.mImProcessor.getMessageEventListener(ImConstants.Type.TEXT)) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                iMessageEventListener.onCancelMessageResponse(str, it.next(), false);
            }
        }
    }

    private void notifyCanceledNotificationToListener(ImdnNotificationEvent imdnNotificationEvent, ImSession imSession, MessageBase messageBase) {
        if (messageBase instanceof ImMessage) {
            Iterator<IMessageEventListener> it = this.mImProcessor.getMessageEventListener(messageBase.getType()).iterator();
            while (it.hasNext()) {
                it.next().onImdnNotificationReceived(messageBase, imdnNotificationEvent.mRemoteUri, messageBase.getLastNotificationType(), imSession.isGroupChat());
            }
        } else if (messageBase instanceof FtMessage) {
            FtMessage ftMessage = (FtMessage) messageBase;
            int stateId = ftMessage.getStateId();
            if (stateId == 2) {
                ftMessage.cancelTransfer(CancelReason.CANCELED_NOTIFICATION);
            }
            if (stateId != 0) {
                this.mFtProcessor.onImdnNotificationReceived(ftMessage, imdnNotificationEvent.mRemoteUri, messageBase.getLastNotificationType(), imSession.isGroupChat());
            }
        }
    }
}
