package com.sec.internal.ims.core.handler;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface;

/* loaded from: classes.dex */
public abstract class EucHandler extends BaseHandler implements IEucServiceInterface {
    protected EucHandler(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
