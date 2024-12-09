package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface;
import java.util.List;

/* loaded from: classes.dex */
public abstract class OptionsHandler extends BaseHandler implements IOptionsServiceInterface {
    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void registerForCmcOptionsEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void registerForOptionsEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void registerForP2pOptionsEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void requestCapabilityExchange(ImsUri imsUri, long j, int i, String str, List<String> list) {
    }

    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void requestSendCmcCheckMsg(int i, int i2, String str) {
    }

    @Override // com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface
    public void setOwnCapabilities(long j, int i) {
    }

    protected OptionsHandler(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
