package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.ims.servicemodules.csh.event.CshCancelSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshRejectSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface;
import com.sec.internal.ims.servicemodules.csh.event.IshAcceptSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.IshStartSessionParams;

/* loaded from: classes.dex */
public abstract class IshHandler extends BaseHandler implements IIshServiceInterface {
    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void acceptIshSession(IshAcceptSessionParams ishAcceptSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void cancelIshSession(CshCancelSessionParams cshCancelSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void registerForIshIncomingSession(Handler handler, int i, Object obj);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void registerForIshSessionEstablished(Handler handler, int i, Object obj);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void registerForIshTransferComplete(Handler handler, int i, Object obj);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void registerForIshTransferFailed(Handler handler, int i, Object obj);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void registerForIshTransferProgress(Handler handler, int i, Object obj);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void rejectIshSession(CshRejectSessionParams cshRejectSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void startIshSession(IshStartSessionParams ishStartSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void stopIshSession(CshCancelSessionParams cshCancelSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void unregisterForIshIncomingSession(Handler handler);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void unregisterForIshSessionEstablished(Handler handler);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void unregisterForIshTransferComplete(Handler handler);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void unregisterForIshTransferFailed(Handler handler);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public abstract void unregisterForIshTransferProgress(Handler handler);

    protected IshHandler(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
