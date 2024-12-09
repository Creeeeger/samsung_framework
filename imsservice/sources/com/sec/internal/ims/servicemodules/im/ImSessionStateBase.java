package com.sec.internal.ims.servicemodules.im;

import android.os.Message;
import com.sec.internal.helper.State;

/* loaded from: classes.dex */
public abstract class ImSessionStateBase extends State {
    ImSession mImSession;
    int mPhoneId;

    protected boolean processGroupChatManagementEvent(Message message) {
        return false;
    }

    protected boolean processMessagingEvent(Message message) {
        return false;
    }

    protected boolean processSessionConnectionEvent(Message message) {
        return false;
    }

    ImSessionStateBase(int i, ImSession imSession) {
        this.mPhoneId = i;
        this.mImSession = imSession;
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public boolean processMessage(Message message) {
        int i = message.what;
        if (i > 3000) {
            return processMessagingEvent(message);
        }
        if (i > 2000) {
            return processGroupChatManagementEvent(message);
        }
        return processSessionConnectionEvent(message);
    }
}
