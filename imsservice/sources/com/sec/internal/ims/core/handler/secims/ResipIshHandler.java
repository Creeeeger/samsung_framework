package com.sec.internal.ims.core.handler.secims;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.translate.ContentTypeTranslator;
import com.sec.internal.ims.core.handler.IshHandler;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.IshIncomingSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.IshSessionEstablished;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.IshSessionTerminated;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.IshTransferProgress;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReqMsg;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestIshAcceptSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestIshStartSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestIshStopSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.CshGeneralResponse;
import com.sec.internal.ims.servicemodules.csh.event.CshCancelSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshErrorReason;
import com.sec.internal.ims.servicemodules.csh.event.CshRejectSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshSessionResult;
import com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback;
import com.sec.internal.ims.servicemodules.csh.event.IshAcceptSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.IshFileTransfer;
import com.sec.internal.ims.servicemodules.csh.event.IshIncomingSessionEvent;
import com.sec.internal.ims.servicemodules.csh.event.IshSessionEstablishedEvent;
import com.sec.internal.ims.servicemodules.csh.event.IshStartSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.IshTransferCompleteEvent;
import com.sec.internal.ims.servicemodules.csh.event.IshTransferFailedEvent;
import com.sec.internal.ims.servicemodules.csh.event.IshTransferProgressEvent;
import com.sec.internal.interfaces.ims.IImsFramework;
import java.util.Locale;

/* loaded from: classes.dex */
public class ResipIshHandler extends IshHandler {
    private static final int EVENT_ACCEPT_ISH_SESSION = 1;
    private static final int EVENT_ACCEPT_SESSION_DONE = 102;
    private static final int EVENT_CANCEL_ISH_SESSION = 3;
    private static final int EVENT_CANCEL_SESSION_DONE = 104;
    private static final int EVENT_REJECT_ISH_SESSION = 2;
    private static final int EVENT_REJECT_SESSION_DONE = 103;
    private static final int EVENT_STACK_NOTIFY = 1000;
    private static final int EVENT_START_ISH_SESSION = 0;
    private static final int EVENT_START_SESSION_DONE = 101;
    private static final int EVENT_STOP_ISH_SESSION = 4;
    private static final int EVENT_STOP_SESSION_DONE = 105;
    private static final String LOG_TAG = ResipIshHandler.class.getSimpleName();
    private final IImsFramework mImsFramework;
    private final RegistrantList mIncomingSessionRegistrants;
    private final RegistrantList mSessionEstablishedRegistrants;
    private final RegistrantList mTransferCompleteRegistrants;
    private final RegistrantList mTransferFailedRegistrants;
    private final RegistrantList mTransferProgressRegistrants;

    public ResipIshHandler(Looper looper, IImsFramework iImsFramework) {
        super(looper);
        this.mSessionEstablishedRegistrants = new RegistrantList();
        this.mTransferFailedRegistrants = new RegistrantList();
        this.mTransferCompleteRegistrants = new RegistrantList();
        this.mTransferProgressRegistrants = new RegistrantList();
        this.mIncomingSessionRegistrants = new RegistrantList();
        this.mImsFramework = iImsFramework;
        StackIF.getInstance().registerIshEvent(this, 1000, null);
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            onStartIshSession((IshStartSessionParams) message.obj);
            return;
        }
        if (i == 1) {
            onAcceptIshSession((IshAcceptSessionParams) message.obj);
            return;
        }
        if (i == 2) {
            onRejectIshSession((CshRejectSessionParams) message.obj);
            return;
        }
        if (i == 3) {
            onCancelIshSession((CshCancelSessionParams) message.obj);
            return;
        }
        if (i == 4) {
            onStopIshSession((CshCancelSessionParams) message.obj);
            return;
        }
        if (i != 1000) {
            switch (i) {
                case 101:
                case 102:
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    CshGeneralResponse cshGeneralResponse = (CshGeneralResponse) asyncResult.result;
                    Message message2 = (Message) asyncResult.userObj;
                    if (message2 != null) {
                        AsyncResult.forMessage(message2, new CshSessionResult((int) cshGeneralResponse.sessionId(), translateToCshResult(cshGeneralResponse.error())), null);
                        message2.sendToTarget();
                        break;
                    }
                    break;
                case 103:
                case 104:
                case 105:
                    AsyncResult asyncResult2 = (AsyncResult) message.obj;
                    CshGeneralResponse cshGeneralResponse2 = (CshGeneralResponse) asyncResult2.result;
                    ICshSuccessCallback iCshSuccessCallback = (ICshSuccessCallback) asyncResult2.userObj;
                    if (translateToCshResult(cshGeneralResponse2.error()) == CshErrorReason.SUCCESS) {
                        iCshSuccessCallback.onSuccess();
                        break;
                    } else {
                        iCshSuccessCallback.onFailure();
                        break;
                    }
                default:
                    Log.e(LOG_TAG, "handleMessage: Undefined message.");
                    break;
            }
            return;
        }
        handleNotify((Notify) ((AsyncResult) message.obj).result);
    }

    private CshErrorReason translateToCshResult(int i) {
        switch (i) {
            case 0:
                return CshErrorReason.SUCCESS;
            case 1:
                return CshErrorReason.USER_BUSY;
            case 2:
                return CshErrorReason.TEMPORAIRLY_NOT_AVAILABLE;
            case 3:
                return CshErrorReason.CANCELED;
            case 4:
                return CshErrorReason.REJECTED;
            case 5:
                return CshErrorReason.FORBIDDEN;
            case 6:
                return CshErrorReason.MSRP_TIMEOUT;
            default:
                return CshErrorReason.UNKNOWN;
        }
    }

    private void handleNotify(Notify notify) {
        switch (notify.notifyid()) {
            case Id.NOTIFY_ISH_INCOMING_SESSION /* 16001 */:
                handleIncomingSessionNotify(notify);
                break;
            case Id.NOTIFY_ISH_SESSION_ESTABLISHED /* 16002 */:
                handleSessionEstablishedNotify(notify);
                break;
            case Id.NOTIFY_ISH_SESSION_TERMINATED /* 16003 */:
                handleSessionTerminatedNotify(notify);
                break;
            case Id.NOTIFY_ISH_TRANSFER_PROGRESS /* 16004 */:
                handleTransferProgressNotify(notify);
                break;
            default:
                Log.w(LOG_TAG, "handleNotify(): unexpected id");
                break;
        }
    }

    private void onStartIshSession(IshStartSessionParams ishStartSessionParams) {
        String str = LOG_TAG;
        Log.i(str, "onStartIshSession: " + ishStartSessionParams);
        UserAgent userAgent = getUserAgent();
        if (userAgent == null) {
            Log.e(str, "onStartIshSession: ISH UA not registered");
            AsyncResult.forMessage(ishStartSessionParams.mCallback, new CshSessionResult(-1, CshErrorReason.ENGINE_ERROR), null);
            return;
        }
        String path = ishStartSessionParams.mfile.getPath();
        if (path == null) {
            Log.e(str, "onStartIshSession: path is null");
            return;
        }
        CharSequence translate = ContentTypeTranslator.translate(path.substring(path.lastIndexOf(".") + 1).toUpperCase(Locale.ENGLISH));
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        CharSequence charSequence = ishStartSessionParams.mReceiver;
        int createString = charSequence != null ? flatBufferBuilder.createString(charSequence) : -1;
        int createString2 = translate != null ? flatBufferBuilder.createString(translate) : -1;
        int createString3 = flatBufferBuilder.createString(path);
        RequestIshStartSession.startRequestIshStartSession(flatBufferBuilder);
        RequestIshStartSession.addRegistrationHandle(flatBufferBuilder, userAgent.getHandle());
        if (createString != -1) {
            RequestIshStartSession.addRemoteUri(flatBufferBuilder, createString);
        }
        if (createString2 != -1) {
            RequestIshStartSession.addContentType(flatBufferBuilder, createString2);
        }
        if (createString3 != -1) {
            RequestIshStartSession.addFilePath(flatBufferBuilder, createString3);
        }
        RequestIshStartSession.addSize(flatBufferBuilder, ishStartSessionParams.mfile.getSize());
        int endRequestIshStartSession = RequestIshStartSession.endRequestIshStartSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 1001);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_ish_start_session);
        Request.addReq(flatBufferBuilder, endRequestIshStartSession);
        sendRequestToStack(1001, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(101, ishStartSessionParams.mCallback), userAgent);
    }

    private void onAcceptIshSession(IshAcceptSessionParams ishAcceptSessionParams) {
        String str = LOG_TAG;
        Log.i(str, "onAcceptIshSession(): " + ishAcceptSessionParams);
        int i = ishAcceptSessionParams.mSessionId;
        UserAgent userAgent = getUserAgent();
        if (userAgent == null) {
            Log.e(str, "onStartIshSession: ISH UA not registered");
            AsyncResult.forMessage(ishAcceptSessionParams.mCallback, new CshSessionResult(-1, CshErrorReason.ENGINE_ERROR), null);
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        String str2 = ishAcceptSessionParams.mPath;
        int createString = str2 != null ? flatBufferBuilder.createString(str2) : -1;
        RequestIshAcceptSession.startRequestIshAcceptSession(flatBufferBuilder);
        RequestIshAcceptSession.addSessionId(flatBufferBuilder, i);
        if (createString != -1) {
            RequestIshAcceptSession.addFilePath(flatBufferBuilder, createString);
        }
        int endRequestIshAcceptSession = RequestIshAcceptSession.endRequestIshAcceptSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 1002);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_ish_accept_session);
        Request.addReq(flatBufferBuilder, endRequestIshAcceptSession);
        sendRequestToStack(1002, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(101, ishAcceptSessionParams.mCallback), userAgent);
    }

    private void onRejectIshSession(CshRejectSessionParams cshRejectSessionParams) {
        String str = LOG_TAG;
        Log.i(str, "onRejectIshSession(): " + cshRejectSessionParams);
        UserAgent userAgent = getUserAgent();
        if (userAgent == null) {
            Log.e(str, "onStartIshSession: ISH UA not registered");
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestIshStopSession.startRequestIshStopSession(flatBufferBuilder);
        RequestIshStopSession.addSessionId(flatBufferBuilder, cshRejectSessionParams.mSessionId);
        int endRequestIshStopSession = RequestIshStopSession.endRequestIshStopSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 1003);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_ish_stop_session);
        Request.addReq(flatBufferBuilder, endRequestIshStopSession);
        sendRequestToStack(1003, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(105, cshRejectSessionParams.mCallback), userAgent);
    }

    private void onCancelIshSession(CshCancelSessionParams cshCancelSessionParams) {
        String str = LOG_TAG;
        Log.i(str, "onCancelIshSession(): " + cshCancelSessionParams);
        UserAgent userAgent = getUserAgent();
        if (userAgent == null) {
            Log.e(str, "onStartIshSession: ISH UA not registered");
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestIshStopSession.startRequestIshStopSession(flatBufferBuilder);
        RequestIshStopSession.addSessionId(flatBufferBuilder, cshCancelSessionParams.mSessionId);
        int endRequestIshStopSession = RequestIshStopSession.endRequestIshStopSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 1003);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_ish_stop_session);
        Request.addReq(flatBufferBuilder, endRequestIshStopSession);
        sendRequestToStack(1003, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(105, cshCancelSessionParams.mCallback), userAgent);
    }

    private void onStopIshSession(CshCancelSessionParams cshCancelSessionParams) {
        String str = LOG_TAG;
        Log.i(str, "onStopIshSession(): " + cshCancelSessionParams);
        UserAgent userAgent = getUserAgent();
        if (userAgent == null) {
            Log.e(str, "onStartIshSession: ISH UA not registered");
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestIshStopSession.startRequestIshStopSession(flatBufferBuilder);
        RequestIshStopSession.addSessionId(flatBufferBuilder, cshCancelSessionParams.mSessionId);
        int endRequestIshStopSession = RequestIshStopSession.endRequestIshStopSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 1003);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_ish_stop_session);
        Request.addReq(flatBufferBuilder, endRequestIshStopSession);
        sendRequestToStack(1003, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(105, cshCancelSessionParams.mCallback), userAgent);
    }

    private void handleIncomingSessionNotify(Notify notify) {
        if (notify.notiType() != 64) {
            Log.e(LOG_TAG, "handleIncomingSessionNotify(): invalid notify");
            return;
        }
        IshIncomingSession ishIncomingSession = (IshIncomingSession) notify.noti(new IshIncomingSession());
        IshIncomingSessionEvent ishIncomingSessionEvent = new IshIncomingSessionEvent((int) ishIncomingSession.sessionId(), ImsUri.parse(ishIncomingSession.remoteUri()), null, new IshFileTransfer(ishIncomingSession.fileName(), (int) ishIncomingSession.size(), ishIncomingSession.contentType()));
        Log.i(LOG_TAG, "handleIncomingSessionNotify: " + ishIncomingSessionEvent);
        this.mIncomingSessionRegistrants.notifyRegistrants(new AsyncResult(null, ishIncomingSessionEvent, null));
    }

    private void handleSessionEstablishedNotify(Notify notify) {
        if (notify.notiType() != 65) {
            Log.e(LOG_TAG, "handleSessionEstablishedNotify(): invalid notify");
            return;
        }
        IshSessionEstablished ishSessionEstablished = (IshSessionEstablished) notify.noti(new IshSessionEstablished());
        Log.i(LOG_TAG, "handleSessionEstablishedNotify: " + ishSessionEstablished.error());
        if (translateToCshResult(ishSessionEstablished.error()) == CshErrorReason.SUCCESS) {
            this.mSessionEstablishedRegistrants.notifyRegistrants(new AsyncResult(null, new IshSessionEstablishedEvent((int) ishSessionEstablished.sessionId()), null));
        }
    }

    private void handleSessionTerminatedNotify(Notify notify) {
        if (notify.notiType() != 66) {
            Log.e(LOG_TAG, "handleSessionTerminatedNotify(): invalid notify");
            return;
        }
        IshSessionTerminated ishSessionTerminated = (IshSessionTerminated) notify.noti(new IshSessionTerminated());
        Log.i(LOG_TAG, "handleSessionTerminatedNotify: " + ishSessionTerminated.reason());
        CshErrorReason translateToCshResult = translateToCshResult(ishSessionTerminated.reason());
        if (translateToCshResult == CshErrorReason.SUCCESS) {
            this.mTransferCompleteRegistrants.notifyRegistrants(new AsyncResult(null, new IshTransferCompleteEvent((int) ishSessionTerminated.sessionId()), null));
        } else {
            this.mTransferFailedRegistrants.notifyRegistrants(new AsyncResult(null, new IshTransferFailedEvent((int) ishSessionTerminated.sessionId(), translateToCshResult), null));
        }
    }

    private void handleTransferProgressNotify(Notify notify) {
        if (notify.notiType() != 67) {
            Log.e(LOG_TAG, "handleTransferProgressNotify(): invalid notify");
            return;
        }
        IshTransferProgress ishTransferProgress = (IshTransferProgress) notify.noti(new IshTransferProgress());
        Log.i(LOG_TAG, "handleTransferProgressNotify: id=" + ishTransferProgress.sessionId() + "(" + ishTransferProgress.transferred() + "/" + ishTransferProgress.total() + ")");
        this.mTransferProgressRegistrants.notifyRegistrants(new AsyncResult(null, new IshTransferProgressEvent((int) ishTransferProgress.sessionId(), ishTransferProgress.transferred()), null));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void startIshSession(IshStartSessionParams ishStartSessionParams) {
        sendMessage(obtainMessage(0, ishStartSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void acceptIshSession(IshAcceptSessionParams ishAcceptSessionParams) {
        sendMessage(obtainMessage(1, ishAcceptSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void rejectIshSession(CshRejectSessionParams cshRejectSessionParams) {
        sendMessage(obtainMessage(2, cshRejectSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void cancelIshSession(CshCancelSessionParams cshCancelSessionParams) {
        sendMessage(obtainMessage(3, cshCancelSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void stopIshSession(CshCancelSessionParams cshCancelSessionParams) {
        sendMessage(obtainMessage(4, cshCancelSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void registerForIshSessionEstablished(Handler handler, int i, Object obj) {
        this.mSessionEstablishedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void unregisterForIshSessionEstablished(Handler handler) {
        this.mSessionEstablishedRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void registerForIshTransferFailed(Handler handler, int i, Object obj) {
        this.mTransferFailedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void unregisterForIshTransferFailed(Handler handler) {
        this.mTransferFailedRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void registerForIshTransferComplete(Handler handler, int i, Object obj) {
        this.mTransferCompleteRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void unregisterForIshTransferComplete(Handler handler) {
        this.mTransferCompleteRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void registerForIshTransferProgress(Handler handler, int i, Object obj) {
        this.mTransferProgressRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void unregisterForIshTransferProgress(Handler handler) {
        this.mTransferProgressRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void registerForIshIncomingSession(Handler handler, int i, Object obj) {
        this.mIncomingSessionRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.IshHandler, com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface
    public void unregisterForIshIncomingSession(Handler handler) {
        this.mIncomingSessionRegistrants.remove(handler);
    }

    private UserAgent getUserAgent() {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent("is");
    }

    private void sendRequestToStack(int i, FlatBufferBuilder flatBufferBuilder, int i2, Message message, UserAgent userAgent) {
        if (userAgent == null) {
            Log.e(LOG_TAG, "sendRequestToStack(): UserAgent not found.");
        } else {
            userAgent.sendRequestToStack(new ResipStackRequest(i, flatBufferBuilder, i2, message));
        }
    }
}
