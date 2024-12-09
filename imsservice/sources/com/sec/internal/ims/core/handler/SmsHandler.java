package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface;

/* loaded from: classes.dex */
public class SmsHandler extends BaseHandler implements ISmsServiceInterface {
    @Override // com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void registerForRrcConnectionEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void registerForSMSEvent(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void sendMessage(String str, String str2, String str3, byte[] bArr, boolean z, String str4, int i, int i2, boolean z2) {
    }

    @Override // com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void sendSMSResponse(int i, String str, int i2) {
    }

    @Override // com.sec.internal.ims.servicemodules.sms.ISmsServiceInterface
    public void setMsgAppInfoToSipUa(int i, String str) {
    }

    protected SmsHandler(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
