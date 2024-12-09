package com.sec.internal.ims.servicemodules.im;

import android.os.Message;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionConferenceInfoUpdateEvent;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import com.sec.internal.ims.servicemodules.im.data.info.ImSessionInfo;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ImSessionClosingState extends ImSessionStateBase {
    private static final String LOG_TAG = "ClosingState";

    ImSessionClosingState(int i, ImSession imSession) {
        super(i, imSession);
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void enter() {
        this.mImSession.logi("ClosingState enter. " + this.mImSession.getChatId());
        ImSession imSession = this.mImSession;
        imSession.mListener.onChatStatusUpdate(imSession, ImSession.SessionState.CLOSING);
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processMessagingEvent(Message message) {
        this.mImSession.logi("ClosingState, processMessagingEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 3001) {
            this.mImSession.deferMessage(message);
        } else if (i == 3010) {
            onSendDeliveredNotification(message);
        } else if (i == 3012) {
            onSendDisplayedNotification(message);
        } else {
            if (i != 3025) {
                return false;
            }
            this.mImSession.deferMessage(message);
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processGroupChatManagementEvent(Message message) {
        this.mImSession.logi("ClosingState, processGroupChatManagementEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i != 2001 && i != 2008 && i != 2010 && i != 2012 && i != 2014) {
            if (i == 2005) {
                this.mImSession.onConferenceInfoUpdated((ImSessionConferenceInfoUpdateEvent) message.obj);
                return true;
            }
            if (i != 2006) {
                return false;
            }
        }
        this.mImSession.deferMessage(message);
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.ImSessionStateBase
    protected boolean processSessionConnectionEvent(Message message) {
        this.mImSession.logi("ClosingState, processSessionConnectionEvent: " + message.what + " ChatId: " + this.mImSession.getChatId());
        int i = message.what;
        if (i == 1001) {
            this.mImSession.deferMessage(message);
        } else if (i == 1005) {
            onProcessIncomingSession(message);
        } else {
            switch (i) {
                case 1012:
                    return onCloseAllSession(message);
                case 1013:
                    this.mImSession.mClosedState.onCloseSessionDone(message);
                    break;
                case 1014:
                    this.mImSession.mClosedState.onSessionClosed((ImSessionClosedEvent) message.obj);
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    private void onProcessIncomingSession(Message message) {
        if (this.mImSession.isVoluntaryDeparture()) {
            ImIncomingSessionEvent imIncomingSessionEvent = (ImIncomingSessionEvent) message.obj;
            this.mImSession.logi("Explicit departure is in progress. Reject the incoming invite");
            this.mImSession.leaveSessionWithReject(imIncomingSessionEvent.mRawHandle);
            return;
        }
        this.mImSession.deferMessage(message);
    }

    private void onSendDeliveredNotification(Message message) {
        MessageBase messageBase = (MessageBase) message.obj;
        ImSessionInfo imSessionInfoByMessageId = this.mImSession.getImSessionInfoByMessageId(messageBase.getId());
        if (imSessionInfoByMessageId != null && imSessionInfoByMessageId.isSnFSession()) {
            messageBase.sendDeliveredNotification(imSessionInfoByMessageId.mState == ImSessionInfo.ImSessionState.ESTABLISHED ? imSessionInfoByMessageId.mRawHandle : null, this.mImSession.getConversationId(), this.mImSession.getContributionId(), this.mImSession.obtainMessage(ImSessionEvent.SEND_DELIVERED_NOTIFICATION_DONE, messageBase), this.mImSession.getChatData().getOwnIMSI(), this.mImSession.isGroupChat(), this.mImSession.isBotSessionAnonymized());
        } else {
            this.mImSession.deferMessage(message);
        }
    }

    private void onSendDisplayedNotification(Message message) {
        synchronized (this.mImSession.mMessagesToSendDisplayNotification) {
            for (MessageBase messageBase : new ArrayList(this.mImSession.mMessagesToSendDisplayNotification)) {
                ImSessionInfo imSessionInfoByMessageId = this.mImSession.getImSessionInfoByMessageId(messageBase.getId());
                if (imSessionInfoByMessageId != null && imSessionInfoByMessageId.isSnFSession()) {
                    messageBase.sendDisplayedNotification(imSessionInfoByMessageId.mState == ImSessionInfo.ImSessionState.ESTABLISHED ? imSessionInfoByMessageId.mRawHandle : null, this.mImSession.getConversationId(), this.mImSession.getContributionId(), this.mImSession.obtainMessage(ImSessionEvent.SEND_DISPLAYED_NOTIFICATION_DONE, messageBase.toList()), this.mImSession.getChatData().getOwnIMSI(), this.mImSession.isGroupChat(), this.mImSession.isBotSessionAnonymized());
                    this.mImSession.mMessagesToSendDisplayNotification.remove(messageBase);
                }
            }
            if (!this.mImSession.mMessagesToSendDisplayNotification.isEmpty()) {
                this.mImSession.deferMessage(message);
            }
        }
    }

    private boolean onCloseAllSession(Message message) {
        if (!this.mImSession.isVoluntaryDeparture()) {
            return false;
        }
        this.mImSession.logi("Voluntary departure in ClosingState. DeferMessage");
        this.mImSession.deferMessage(message);
        return true;
    }
}
