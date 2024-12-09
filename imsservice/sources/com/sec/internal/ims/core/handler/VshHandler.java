package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.ims.servicemodules.csh.event.CshAcceptSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshCancelSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshRejectSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface;
import com.sec.internal.ims.servicemodules.csh.event.VshOrientation;
import com.sec.internal.ims.servicemodules.csh.event.VshStartSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.VshSwitchCameraParams;
import com.sec.internal.ims.servicemodules.csh.event.VshVideoDisplayParams;

/* loaded from: classes.dex */
public abstract class VshHandler extends BaseHandler implements IvshServiceInterface {
    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void acceptVshSession(CshAcceptSessionParams cshAcceptSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void cancelVshSession(CshCancelSessionParams cshCancelSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void registerForVshIncomingSession(Handler handler, int i, Object obj);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void registerForVshSessionEstablished(Handler handler, int i, Object obj);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void registerForVshSessionTerminated(Handler handler, int i, Object obj);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void rejectVshSession(CshRejectSessionParams cshRejectSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void resetVshVideoDisplay(VshVideoDisplayParams vshVideoDisplayParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void setVshPhoneOrientation(VshOrientation vshOrientation);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void setVshVideoDisplay(VshVideoDisplayParams vshVideoDisplayParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void startVshSession(VshStartSessionParams vshStartSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void stopVshSession(CshCancelSessionParams cshCancelSessionParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void switchCamera(VshSwitchCameraParams vshSwitchCameraParams);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void unregisterForVshIncomingSession(Handler handler);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void unregisterForVshSessionEstablished(Handler handler);

    @Override // com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public abstract void unregisterForVshSessionTerminated(Handler handler);

    protected VshHandler(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
