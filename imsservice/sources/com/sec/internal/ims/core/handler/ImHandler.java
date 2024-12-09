package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.AddParticipantsParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ImSendComposingParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendImdnParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendMessageParams;
import com.sec.internal.constants.ims.servicemodules.im.params.StartImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.StopImSessionParams;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;

/* loaded from: classes.dex */
public abstract class ImHandler extends BaseHandler implements IImServiceInterface {
    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void acceptFtSession(AcceptFtSessionParams acceptFtSessionParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void acceptImSession(AcceptImSessionParams acceptImSessionParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void addImParticipants(AddParticipantsParams addParticipantsParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void cancelFtSession(RejectFtSessionParams rejectFtSessionParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void extendToGroupChat(StartImSessionParams startImSessionParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForComposingNotification(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForConferenceInfoUpdate(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForImIncomingFileTransfer(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForImIncomingMessage(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForImIncomingSession(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForImSessionClosed(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForImSessionEstablished(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForImdnFailed(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForImdnNotification(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForImdnResponse(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForMessageFailed(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void registerForTransferProgress(Handler handler, int i, Object obj);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void rejectFtSession(RejectFtSessionParams rejectFtSessionParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void sendComposingNotification(ImSendComposingParams imSendComposingParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void sendDeliveredNotification(SendImdnParams sendImdnParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void sendDisplayedNotification(SendImdnParams sendImdnParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void sendFtDeliveredNotification(SendImdnParams sendImdnParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void sendFtDisplayedNotification(SendImdnParams sendImdnParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void sendFtSession(SendFtSessionParams sendFtSessionParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void sendImMessage(SendMessageParams sendMessageParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void setFtMessageId(Object obj, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void startImSession(StartImSessionParams startImSessionParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void stopImSession(StopImSessionParams stopImSessionParams);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void unregisterForImIncomingMessage(Handler handler);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void unregisterForImIncomingSession(Handler handler);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void unregisterForImSessionClosed(Handler handler);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void unregisterForImSessionEstablished(Handler handler);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void unregisterForImdnResponse(Handler handler);

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public abstract void unregisterForMessageFailed(Handler handler);

    protected ImHandler(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
