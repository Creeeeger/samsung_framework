package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptSlmParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectSlmParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendSlmFileTransferParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendSlmMessageParams;
import com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface;

/* loaded from: classes.dex */
public abstract class SlmHandler extends BaseHandler implements ISlmServiceInterface {
    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void acceptFtSlmMessage(AcceptFtSessionParams acceptFtSessionParams) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void acceptSlm(AcceptSlmParams acceptSlmParams) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void cancelFtSlmMessage(RejectFtSessionParams rejectFtSessionParams) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void registerForSlmImdnNotification(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void registerForSlmIncomingFileTransfer(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void registerForSlmIncomingMessage(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void registerForSlmLMMIncomingSession(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void registerForSlmTransferProgress(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void rejectFtSlmMessage(RejectFtSessionParams rejectFtSessionParams) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void rejectSlm(RejectSlmParams rejectSlmParams) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void sendFtSlmMessage(SendSlmFileTransferParams sendSlmFileTransferParams) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void sendSlmMessage(SendSlmMessageParams sendSlmMessageParams) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void unregisterAllSLMFileTransferProgress() {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void unregisterForSlmImdnNotification(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void unregisterForSlmIncomingFileTransfer(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void unregisterForSlmIncomingMessage(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void unregisterForSlmLMMIncomingSession(Handler handler) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface
    public void unregisterForSlmTransferProgress(Handler handler) {
    }

    protected SlmHandler(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
