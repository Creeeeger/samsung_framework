package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.MessageRevokeResponse;
import com.sec.internal.helper.PhoneIdKeyMap;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.listener.IChatEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IFtEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ImRevocationHandler extends Handler {
    private static final String LOG_TAG = ImRevocationHandler.class.getSimpleName();
    private final ImCache mCache;
    private final Context mContext;
    private final ImModule mImModule;
    private final ImSessionProcessor mImSessionProcessor;
    private final PhoneIdKeyMap<Boolean> mIsReconnectGuardTimersRunning;
    private final Map<String, String> mRevokingMessages;

    public ImRevocationHandler(Context context, ImModule imModule, ImCache imCache, ImSessionProcessor imSessionProcessor) {
        super(imModule.getLooper());
        this.mRevokingMessages = new HashMap();
        this.mContext = context;
        this.mImModule = imModule;
        this.mCache = imCache;
        this.mImSessionProcessor = imSessionProcessor;
        this.mIsReconnectGuardTimersRunning = new PhoneIdKeyMap<>(SimManagerFactory.getAllSimManagers().size(), Boolean.FALSE);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (message.what != 26) {
            return;
        }
        handleEventReconnectGuardTimerExpired(((Integer) message.obj).intValue());
    }

    protected void setLegacyLatching(ImsUri imsUri, boolean z, String str) {
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str);
        if (this.mImModule.getImConfig(phoneIdByIMSI).getLegacyLatching() && ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule().setLegacyLatching(imsUri, z, phoneIdByIMSI)) {
            Log.i(LOG_TAG, "setLegacyLatching: Uri = " + IMSLog.checker(imsUri) + ", bool = " + z);
        }
    }

    protected void onMessageRevokeTimerExpired(String str, Collection<String> collection, String str2) {
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(str2);
        ImsUtil.listToDumpFormat(LogClass.IM_REVOKE_TIMEOUT, phoneIdByIMSI, str);
        if (this.mImModule.isRegistered(phoneIdByIMSI) && !isReconnectGuardTimersRunning(phoneIdByIMSI)) {
            Iterator<IChatEventListener> it = this.mImSessionProcessor.getChatEventListeners().iterator();
            while (it.hasNext()) {
                it.next().onMessageRevokeTimerExpired(str, collection);
            }
            return;
        }
        Log.e(LOG_TAG, "onMessageRevokeTimerExpired: Deregi state or ReconnectGuardTimerRunning");
    }

    protected void requestMessageRevocation(final String str, final List<String> list, final boolean z, final int i) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImRevocationHandler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ImRevocationHandler.this.lambda$requestMessageRevocation$0(str, z, i, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestMessageRevocation$0(String str, boolean z, int i, List list) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession == null) {
            Log.e(LOG_TAG, "requestMessageRevocation(): Session not found in the cache.");
            return;
        }
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi());
        if (this.mImModule.isRegistered(phoneIdByIMSI)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(z ? "1" : "0");
            arrayList.add(String.valueOf(i));
            ImsUtil.listToDumpFormat(LogClass.IM_REVOKE_REQ, phoneIdByIMSI, str, arrayList);
            if (list != null) {
                imSession.messageRevocationRequest(list, z, i);
                return;
            } else {
                imSession.messageRevocationRequestAll(z, i);
                return;
            }
        }
        Log.e(LOG_TAG, "requestMessageRevocation(): Deregi state");
    }

    protected void onMessageRevocationDone(ImConstants.RevocationStatus revocationStatus, Collection<MessageBase> collection, ImSession imSession) {
        Log.i(LOG_TAG, "onMessageRevocationDone() : Status : " + revocationStatus);
        ArrayList arrayList = new ArrayList();
        for (MessageBase messageBase : collection) {
            messageBase.updateRevocationStatus(revocationStatus);
            arrayList.add(messageBase.getImdnId());
        }
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$RevocationStatus[revocationStatus.ordinal()];
        if (i == 1 || i == 2) {
            IMnoStrategy.StrategyResponse strategyResponse = new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY_CFS);
            for (MessageBase messageBase2 : collection) {
                if (messageBase2 instanceof ImMessage) {
                    Iterator<IMessageEventListener> it = this.mImSessionProcessor.getMessageEventListener(messageBase2.getType()).iterator();
                    while (it.hasNext()) {
                        it.next().onMessageSendingFailed(messageBase2, strategyResponse, null);
                    }
                } else if (messageBase2 instanceof FtMessage) {
                    Iterator<IFtEventListener> it2 = this.mImSessionProcessor.getFtEventListener(messageBase2.getType()).iterator();
                    while (it2.hasNext()) {
                        it2.next().onMessageSendingFailed(messageBase2, strategyResponse, null);
                    }
                }
            }
        }
        Iterator<MessageBase> it3 = collection.iterator();
        while (it3.hasNext()) {
            this.mCache.removeFromPendingList(it3.next().getId());
        }
        imSession.removeMsgFromListForRevoke(arrayList);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.ImRevocationHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$RevocationStatus;

        static {
            int[] iArr = new int[ImConstants.RevocationStatus.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$RevocationStatus = iArr;
            try {
                iArr[ImConstants.RevocationStatus.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$RevocationStatus[ImConstants.RevocationStatus.SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$RevocationStatus[ImConstants.RevocationStatus.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected void addToRevokingMessages(String str, String str2) {
        this.mRevokingMessages.put(str, str2);
    }

    protected void removeFromRevokingMessages(Collection<String> collection) {
        this.mRevokingMessages.keySet().removeAll(collection);
    }

    protected void onSendMessageRevokeRequestDone(MessageRevokeResponse messageRevokeResponse) {
        MessageBase message;
        String str = LOG_TAG;
        Log.i(str, "onSendMessageRevokeRequestDone(): " + messageRevokeResponse);
        ImSession imSession = this.mCache.getImSession(this.mRevokingMessages.get(messageRevokeResponse.mImdnId));
        if (imSession == null) {
            Log.e(str, "onSendMessageRevokeRequestDone(): Session not found.");
            return;
        }
        this.mImModule.getImDump().addEventLogs("onSendMessageRevokeRequestDone: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", imdnId=" + messageRevokeResponse.mImdnId);
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getChatData().getOwnIMSI());
        if (this.mImModule.getImConfig(phoneIdByIMSI).isCfsTrigger()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(ImsUtil.hideInfo(messageRevokeResponse.mImdnId, 4));
            arrayList.add(messageRevokeResponse.mResult ? "1" : "0");
            ImsUtil.listToDumpFormat(LogClass.IM_REVOKE_REQ_RES, phoneIdByIMSI, imSession.getChatId(), arrayList);
            Integer num = imSession.getNeedToRevokeMessages().get(messageRevokeResponse.mImdnId);
            if (num == null || (message = this.mCache.getMessage(num.intValue())) == null) {
                return;
            }
            if (messageRevokeResponse.mResult) {
                message.updateRevocationStatus(ImConstants.RevocationStatus.SENT);
                imSession.startMsgRevokeOperationTimer(message.getImdnId());
            } else {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(message);
                onMessageRevocationDone(ImConstants.RevocationStatus.NONE, arrayList2, imSession);
            }
        }
    }

    protected void onMessageRevokeResponseReceived(MessageRevokeResponse messageRevokeResponse) {
        String str = LOG_TAG;
        Log.i(str, "onMessageRevokeResponseReceived(): " + messageRevokeResponse);
        ImSession imSession = this.mCache.getImSession(this.mRevokingMessages.remove(messageRevokeResponse.mImdnId));
        if (imSession == null) {
            Log.e(str, "onSendMessageRevokeRequestDone(): Session not found.");
            return;
        }
        this.mImModule.getImDump().addEventLogs("onMessageRevokeResponseReceived: chatId=" + imSession.getChatId() + ", convId=" + imSession.getConversationId() + ", contId=" + imSession.getContributionId() + ", imdnId=" + messageRevokeResponse.mImdnId + ", result=" + messageRevokeResponse.mResult);
        int phoneIdByIMSI = this.mImModule.getPhoneIdByIMSI(imSession.getChatData().getOwnIMSI());
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mImModule.getImConfig(phoneIdByIMSI).isCfsTrigger() ? "1" : "0");
        if (!this.mImModule.getImConfig(phoneIdByIMSI).isCfsTrigger()) {
            ImsUtil.listToDumpFormat(LogClass.IM_REVOKE_RES, phoneIdByIMSI, imSession.getChatId(), arrayList);
            return;
        }
        arrayList.add(ImsUtil.hideInfo(messageRevokeResponse.mImdnId, 4));
        arrayList.add(messageRevokeResponse.mResult ? "1" : "0");
        ImsUtil.listToDumpFormat(LogClass.IM_REVOKE_RES, phoneIdByIMSI, imSession.getChatId(), arrayList);
        MessageBase message = this.mCache.getMessage(imSession.getNeedToRevokeMessages().get(messageRevokeResponse.mImdnId).intValue());
        if (message == null) {
            Log.e(str, "onSendMessageRevokeRequestDone(): message not found.");
            return;
        }
        imSession.stopMsgRevokeOperationTimer(message.getImdnId());
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(message);
        if (messageRevokeResponse.mResult) {
            onMessageRevocationDone(ImConstants.RevocationStatus.SUCCESS, arrayList2, imSession);
        } else {
            onMessageRevocationDone(ImConstants.RevocationStatus.FAILED, arrayList2, imSession);
        }
    }

    protected void stopReconnectGuardTimer(int i) {
        if (this.mIsReconnectGuardTimersRunning.get(i).booleanValue()) {
            this.mIsReconnectGuardTimersRunning.remove(i);
            PreciseAlarmManager.getInstance(this.mContext).removeMessage(obtainMessage(26, Integer.valueOf(i)));
        }
        this.mRevokingMessages.clear();
    }

    protected void handleEventReconnectGuardTimerExpired(int i) {
        Log.i(LOG_TAG, "handleEventReconnectGuardTimerExpired()");
        if (this.mIsReconnectGuardTimersRunning.get(i).booleanValue()) {
            this.mIsReconnectGuardTimersRunning.put(i, Boolean.FALSE);
            for (ImSession imSession : this.mCache.getAllImSessions()) {
                if (!imSession.getNeedToRevokeMessages().isEmpty()) {
                    imSession.reconnectGuardTimerExpired();
                }
            }
        }
    }

    protected void startReconnectGuardTiemer(int i) {
        int reconnectGuardTimer = this.mImModule.getImConfig(i).getReconnectGuardTimer();
        for (ImSession imSession : this.mCache.getAllImSessions()) {
            if (!this.mIsReconnectGuardTimersRunning.get(i).booleanValue() && reconnectGuardTimer >= 0 && !imSession.getNeedToRevokeMessages().isEmpty()) {
                IMSLog.s(LOG_TAG, "mIsReconnectGuardTimersRunning:" + this.mIsReconnectGuardTimersRunning.get(i) + " reconnectGuardTimer:" + reconnectGuardTimer + " list : " + imSession.getNeedToRevokeMessages().size());
                this.mIsReconnectGuardTimersRunning.put(i, Boolean.TRUE);
                PreciseAlarmManager.getInstance(this.mContext).sendMessageDelayed(obtainMessage(26, Integer.valueOf(i)), ((long) reconnectGuardTimer) * 1000);
                imSession.handleSendingStateRevokeMessages();
            }
        }
    }

    protected boolean isReconnectGuardTimersRunning(int i) {
        return this.mIsReconnectGuardTimersRunning.get(i).booleanValue();
    }
}
