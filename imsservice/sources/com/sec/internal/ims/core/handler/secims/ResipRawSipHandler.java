package com.sec.internal.ims.core.handler.secims;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.ims.core.handler.RawSipHandler;
import com.sec.internal.interfaces.ims.IImsFramework;

/* loaded from: classes.dex */
public class ResipRawSipHandler extends RawSipHandler {
    private static final int EVENT_SIP_INCOMING_MESSAGE = 100;
    private static final int EVENT_SIP_OUTGOING_MESSAGE = 200;
    private static final String LOG_TAG = ResipRawSipHandler.class.getSimpleName();
    private final IImsFramework mImsFramework;
    private final RegistrantList mRawSipIncomingRegistrantList;
    private final RegistrantList mRawSipOutgoingRegistrantList;
    private StackIF mStackIf;

    protected ResipRawSipHandler(Looper looper, IImsFramework iImsFramework) {
        super(looper);
        this.mStackIf = null;
        this.mRawSipIncomingRegistrantList = new RegistrantList();
        this.mRawSipOutgoingRegistrantList = new RegistrantList();
        this.mImsFramework = iImsFramework;
    }

    @Override // com.sec.internal.ims.core.handler.BaseHandler
    public void init() {
        super.init();
        StackIF stackIF = StackIF.getInstance();
        this.mStackIf = stackIF;
        stackIF.registerRawSipIncomingEvent(this, 100, null);
        this.mStackIf.registerRawSipOutgoingEvent(this, 200, null);
    }

    @Override // com.sec.internal.ims.core.handler.RawSipHandler, com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public void registerForIncomingMessages(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForIncomingMessages");
        this.mRawSipIncomingRegistrantList.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.RawSipHandler, com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public void registerForOutgoingMessages(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForOutgoingMessages");
        this.mRawSipOutgoingRegistrantList.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.RawSipHandler, com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public void unregisterForEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForEvent");
        this.mRawSipIncomingRegistrantList.remove(handler);
        this.mRawSipOutgoingRegistrantList.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.RawSipHandler, com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public boolean sendSip(int i, String str, Message message) {
        UserAgent ua = getUa(i);
        if (ua == null) {
            Log.e(LOG_TAG, "sendSip: UserAgent not found");
            return false;
        }
        this.mStackIf.sendSip(ua.getHandle(), str, message);
        return true;
    }

    @Override // com.sec.internal.ims.core.handler.RawSipHandler, com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public void openSipDialog(boolean z) {
        this.mStackIf.openSipDialog(z);
    }

    private UserAgent getUa(int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgentByRegId(i);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Log.i(LOG_TAG, "handleMessage: event: " + message.what);
        int i = message.what;
        if (i == 100) {
            this.mRawSipIncomingRegistrantList.notifyResult(((AsyncResult) message.obj).result);
        } else {
            if (i != 200) {
                return;
            }
            this.mRawSipOutgoingRegistrantList.notifyResult(((AsyncResult) message.obj).result);
        }
    }
}
