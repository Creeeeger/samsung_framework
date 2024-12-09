package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.interfaces.ims.core.handler.IMiscHandler;

/* loaded from: classes.dex */
public class MiscHandler extends BaseHandler implements IMiscHandler {
    @Override // com.sec.internal.interfaces.ims.core.handler.IMiscHandler
    public void registerForEcholocateEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMiscHandler
    public void registerForXqMtripEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMiscHandler
    public void unregisterForEcholocateEvent(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IMiscHandler
    public void unregisterForXqMtripEvent(Handler handler) {
    }

    protected MiscHandler(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
