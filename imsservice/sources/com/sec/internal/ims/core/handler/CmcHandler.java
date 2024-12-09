package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.interfaces.ims.core.handler.ICmcMediaServiceInterface;

/* loaded from: classes.dex */
public abstract class CmcHandler extends BaseHandler implements ICmcMediaServiceInterface {
    protected final RegistrantList mCmcMediaEventRegistrants;

    @Override // com.sec.internal.interfaces.ims.core.handler.ICmcMediaServiceInterface
    public boolean startCmcRecord(int i, int i2, int i3, int i4, long j, int i5, String str, int i6, int i7, int i8, int i9, int i10, long j2, String str2) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.ICmcMediaServiceInterface
    public boolean stopCmcRecord(int i, int i2) {
        return false;
    }

    protected CmcHandler(Looper looper) {
        super(looper);
        this.mCmcMediaEventRegistrants = new RegistrantList();
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.ICmcMediaServiceInterface
    public void registerForCmcMediaEvent(Handler handler, int i, Object obj) {
        this.mCmcMediaEventRegistrants.addUnique(handler, i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.ICmcMediaServiceInterface
    public void unregisterForCmcMediaEvent(Handler handler) {
        this.mCmcMediaEventRegistrants.remove(handler);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
