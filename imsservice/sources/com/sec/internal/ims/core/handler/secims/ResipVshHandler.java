package com.sec.internal.ims.core.handler.secims;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.handler.VshHandler;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.VshIncomingSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.VshSessionEstablished;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.VshSessionTerminated;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReqMsg;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestVshAcceptSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestVshStartSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestVshStopSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.CshGeneralResponse;
import com.sec.internal.ims.servicemodules.csh.event.CshAcceptSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshCancelSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshErrorReason;
import com.sec.internal.ims.servicemodules.csh.event.CshRejectSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.CshSessionResult;
import com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback;
import com.sec.internal.ims.servicemodules.csh.event.VshIncomingSessionEvent;
import com.sec.internal.ims.servicemodules.csh.event.VshOrientation;
import com.sec.internal.ims.servicemodules.csh.event.VshResolution;
import com.sec.internal.ims.servicemodules.csh.event.VshSessionEstablishedEvent;
import com.sec.internal.ims.servicemodules.csh.event.VshSessionTerminatedEvent;
import com.sec.internal.ims.servicemodules.csh.event.VshStartSessionParams;
import com.sec.internal.ims.servicemodules.csh.event.VshSwitchCameraParams;
import com.sec.internal.ims.servicemodules.csh.event.VshVideoDisplayParams;
import com.sec.internal.ims.servicemodules.csh.event.VshViewType;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.sve.SecVideoEngineManager;

/* loaded from: classes.dex */
public class ResipVshHandler extends VshHandler {
    private static final int EVENT_ACCEPT_SESSION_DONE = 101;
    private static final int EVENT_ACCEPT_VSH_SESSION = 1;
    private static final int EVENT_CANCEL_SESSION_DONE = 104;
    private static final int EVENT_CANCEL_VSH_SESSION = 3;
    private static final int EVENT_REJECT_SESSION_DONE = 102;
    private static final int EVENT_REJECT_VSH_SESSION = 2;
    private static final int EVENT_RESET_VIDEO_DISPLAY = 7;
    private static final int EVENT_SET_VIDEO_DISPLAY = 6;
    private static final int EVENT_SET_VSH_PHONE_ORIENTATION = 5;
    private static final int EVENT_STACK_NOTIFY = 1000;
    private static final int EVENT_START_SESSION_DONE = 100;
    private static final int EVENT_START_VSH_SESSION = 0;
    private static final int EVENT_STOP_SESSION_DONE = 103;
    private static final int EVENT_STOP_VSH_SESSION = 4;
    private static final int EVENT_SWITCH_CAMERA = 8;
    private static final String LOG_TAG = ResipVshHandler.class.getSimpleName();
    private final IImsFramework mImsFramework;
    private final RegistrantList mIncomingSessionRegistrants;
    private final RegistrantList mSessionEstablishedRegistrants;
    private final RegistrantList mSessionTerminatedRegistrants;
    private final StackIF mStackIf;
    private SecVideoEngineManager mSveManager;

    private void onResetVshVideoDisplay() {
    }

    public ResipVshHandler(Looper looper, Context context, IImsFramework iImsFramework) {
        super(looper);
        this.mSveManager = null;
        this.mIncomingSessionRegistrants = new RegistrantList();
        this.mSessionEstablishedRegistrants = new RegistrantList();
        this.mSessionTerminatedRegistrants = new RegistrantList();
        this.mImsFramework = iImsFramework;
        StackIF stackIF = StackIF.getInstance();
        this.mStackIf = stackIF;
        stackIF.registerVshEvent(this, 1000, null);
        SecVideoEngineManager secVideoEngineManager = new SecVideoEngineManager(context, new SecVideoEngineManager.ConnectionListener() { // from class: com.sec.internal.ims.core.handler.secims.ResipVshHandler.1
            @Override // com.sec.sve.SecVideoEngineManager.ConnectionListener
            public void onDisconnected() {
            }

            @Override // com.sec.sve.SecVideoEngineManager.ConnectionListener
            public void onConnected() {
                Log.i(ResipVshHandler.LOG_TAG, "sve connected.");
            }
        });
        this.mSveManager = secVideoEngineManager;
        secVideoEngineManager.connectService();
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i != 1000) {
            switch (i) {
                case 0:
                    onStartVshSession((VshStartSessionParams) message.obj);
                    break;
                case 1:
                    onAcceptVshSession((CshAcceptSessionParams) message.obj);
                    break;
                case 2:
                    onRejectVshSession((CshRejectSessionParams) message.obj);
                    break;
                case 3:
                    onCancelVshSession((CshCancelSessionParams) message.obj);
                    break;
                case 4:
                    onStopVshSession((CshCancelSessionParams) message.obj);
                    break;
                case 5:
                    onSetOrientation((VshOrientation) message.obj);
                    break;
                case 6:
                    onSetVshVideoDisplay((VshVideoDisplayParams) message.obj);
                    break;
                case 7:
                    onResetVshVideoDisplay();
                    break;
                case 8:
                    onSwitchCamera((VshSwitchCameraParams) message.obj);
                    break;
                default:
                    switch (i) {
                        case 100:
                        case 101:
                            AsyncResult asyncResult = (AsyncResult) message.obj;
                            CshGeneralResponse cshGeneralResponse = (CshGeneralResponse) asyncResult.result;
                            Message message2 = (Message) asyncResult.userObj;
                            if (message2 != null) {
                                AsyncResult.forMessage(message2, new CshSessionResult((int) cshGeneralResponse.sessionId(), translateToCshResult(cshGeneralResponse.error())), null);
                                message2.sendToTarget();
                                break;
                            }
                            break;
                        case 102:
                        case 103:
                        case 104:
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
            }
        }
        handleNotify((Notify) ((AsyncResult) message.obj).result);
    }

    private void handleNotify(Notify notify) {
        switch (notify.notifyid()) {
            case Id.NOTIFY_VSH_INCOMING_SESSION /* 17001 */:
                handleIncomingSessionNotify(notify);
                break;
            case Id.NOTIFY_VSH_SESSION_ESTABLISHED /* 17002 */:
                handleSessionEstablishedNotify(notify);
                break;
            case Id.NOTIFY_VSH_SESSION_TERMINATED /* 17003 */:
                handleSessionTerminatedNotify(notify);
                break;
            default:
                Log.w(LOG_TAG, "handleNotify(): unexpected id");
                break;
        }
    }

    private void handleIncomingSessionNotify(Notify notify) {
        if (notify.notiType() != 68) {
            Log.e(LOG_TAG, "Invalid notify");
            return;
        }
        VshIncomingSession vshIncomingSession = (VshIncomingSession) notify.noti(new VshIncomingSession());
        VshIncomingSessionEvent vshIncomingSessionEvent = new VshIncomingSessionEvent((int) vshIncomingSession.sessionId(), ImsUri.parse(vshIncomingSession.remoteUri()), null, 1, null);
        Log.i(LOG_TAG, "handleIncomingSessionNotify: " + vshIncomingSessionEvent);
        this.mIncomingSessionRegistrants.notifyRegistrants(new AsyncResult(null, vshIncomingSessionEvent, null));
    }

    private void handleSessionEstablishedNotify(Notify notify) {
        if (notify.notiType() != 69) {
            Log.e(LOG_TAG, "Invalid notify");
            return;
        }
        VshSessionEstablished vshSessionEstablished = (VshSessionEstablished) notify.noti(new VshSessionEstablished());
        VshSessionEstablishedEvent vshSessionEstablishedEvent = new VshSessionEstablishedEvent((int) vshSessionEstablished.sessionId(), translateToVshResolution(vshSessionEstablished.resolution()));
        Log.i(LOG_TAG, "handleIncomingSessionNotify: " + vshSessionEstablishedEvent);
        this.mSessionEstablishedRegistrants.notifyRegistrants(new AsyncResult(null, vshSessionEstablishedEvent, null));
    }

    private void handleSessionTerminatedNotify(Notify notify) {
        if (notify.notiType() != 70) {
            Log.e(LOG_TAG, "Invalid notify");
            return;
        }
        VshSessionTerminated vshSessionTerminated = (VshSessionTerminated) notify.noti(new VshSessionTerminated());
        VshSessionTerminatedEvent vshSessionTerminatedEvent = new VshSessionTerminatedEvent((int) vshSessionTerminated.sessionId(), translateToCshResult(vshSessionTerminated.reason()));
        Log.i(LOG_TAG, "handleSessionTerminatedNotify: " + vshSessionTerminatedEvent);
        this.mSessionTerminatedRegistrants.notifyRegistrants(new AsyncResult(null, vshSessionTerminatedEvent, null));
    }

    private CshErrorReason translateToCshResult(int i) {
        if (i == 0) {
            return CshErrorReason.SUCCESS;
        }
        if (i == 3) {
            return CshErrorReason.CANCELED;
        }
        if (i == 6) {
            return CshErrorReason.RTP_RTCP_TIMEOUT;
        }
        if (i == 7) {
            return CshErrorReason.CSH_CAM_ERROR;
        }
        return CshErrorReason.UNKNOWN;
    }

    private VshResolution translateToVshResolution(int i) {
        switch (i) {
            case 0:
                return VshResolution.NONE;
            case 1:
                return VshResolution.QCIF;
            case 2:
                return VshResolution.QVGA;
            case 3:
                return VshResolution.VGA;
            case 4:
                return VshResolution.CIF;
            case 5:
                return VshResolution.QCIF_PORTRAIT;
            case 6:
                return VshResolution.QVGA_PORTRAIT;
            case 7:
                return VshResolution.VGA_PORTRAIT;
            case 8:
                return VshResolution.CIF_PORTRAIT;
            default:
                return VshResolution.QCIF;
        }
    }

    private void onStartVshSession(VshStartSessionParams vshStartSessionParams) {
        String str = LOG_TAG;
        Log.i(str, "onStartVshSession(): " + vshStartSessionParams);
        UserAgent userAgent = getUserAgent();
        if (userAgent == null) {
            Log.e(str, "UA not found.");
            Message message = vshStartSessionParams.mCallback;
            if (message != null) {
                AsyncResult.forMessage(message, new CshSessionResult(-1, CshErrorReason.ENGINE_ERROR), null);
                vshStartSessionParams.mCallback.sendToTarget();
                return;
            }
            return;
        }
        if (userAgent.getImsRegistration() != null) {
            Log.i(str, "bind network for VSH " + userAgent.getImsRegistration().getNetwork());
            this.mSveManager.bindToNetwork(userAgent.getImsRegistration().getNetwork());
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(vshStartSessionParams.mReceiver);
        RequestVshStartSession.startRequestVshStartSession(flatBufferBuilder);
        RequestVshStartSession.addRegistrationHandle(flatBufferBuilder, userAgent.getHandle());
        RequestVshStartSession.addRemoteUri(flatBufferBuilder, createString);
        int endRequestVshStartSession = RequestVshStartSession.endRequestVshStartSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_VSH_START_SESSION);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_vsh_start_session);
        Request.addReq(flatBufferBuilder, endRequestVshStartSession);
        sendRequestToStack(Id.REQUEST_VSH_START_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(100, vshStartSessionParams.mCallback));
    }

    private void onAcceptVshSession(CshAcceptSessionParams cshAcceptSessionParams) {
        String str = LOG_TAG;
        Log.i(str, "onAcceptVshSession(): " + cshAcceptSessionParams);
        int i = cshAcceptSessionParams.mSessionId;
        UserAgent userAgent = getUserAgent();
        if (userAgent == null) {
            Log.e(str, "UA not found.");
            Message message = cshAcceptSessionParams.mCallback;
            if (message != null) {
                AsyncResult.forMessage(message, new CshSessionResult(i, CshErrorReason.ENGINE_ERROR), null);
                cshAcceptSessionParams.mCallback.sendToTarget();
                return;
            }
            return;
        }
        if (userAgent.getImsRegistration() != null) {
            Log.i(str, "bind network for VSH " + userAgent.getImsRegistration().getNetwork());
            this.mSveManager.bindToNetwork(userAgent.getImsRegistration().getNetwork());
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestVshAcceptSession.startRequestVshAcceptSession(flatBufferBuilder);
        RequestVshAcceptSession.addSessionId(flatBufferBuilder, i);
        int endRequestVshAcceptSession = RequestVshAcceptSession.endRequestVshAcceptSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_VSH_ACCEPT_SESSION);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_vsh_accept_session);
        Request.addReq(flatBufferBuilder, endRequestVshAcceptSession);
        sendRequestToStack(Id.REQUEST_VSH_ACCEPT_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(101, cshAcceptSessionParams.mCallback));
    }

    private void onRejectVshSession(CshRejectSessionParams cshRejectSessionParams) {
        Log.i(LOG_TAG, "onRejectVshSession(): " + cshRejectSessionParams);
        int i = cshRejectSessionParams.mSessionId;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestVshStopSession.startRequestVshStopSession(flatBufferBuilder);
        RequestVshStopSession.addSessionId(flatBufferBuilder, i);
        int endRequestVshStopSession = RequestVshStopSession.endRequestVshStopSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_VSH_STOP_SESSION);
        Request.addReq(flatBufferBuilder, endRequestVshStopSession);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_vsh_stop_session);
        sendRequestToStack(Id.REQUEST_VSH_STOP_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(102, cshRejectSessionParams.mCallback));
    }

    private void onCancelVshSession(CshCancelSessionParams cshCancelSessionParams) {
        Log.i(LOG_TAG, "onCancelVshSession(): " + cshCancelSessionParams);
        int i = cshCancelSessionParams.mSessionId;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestVshStopSession.startRequestVshStopSession(flatBufferBuilder);
        RequestVshStopSession.addSessionId(flatBufferBuilder, i);
        int endRequestVshStopSession = RequestVshStopSession.endRequestVshStopSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_VSH_STOP_SESSION);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_vsh_stop_session);
        Request.addReq(flatBufferBuilder, endRequestVshStopSession);
        sendRequestToStack(Id.REQUEST_VSH_STOP_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(104, cshCancelSessionParams.mCallback));
    }

    private void onStopVshSession(CshCancelSessionParams cshCancelSessionParams) {
        Log.i(LOG_TAG, "onStopVshSession(): " + cshCancelSessionParams);
        int i = cshCancelSessionParams.mSessionId;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestVshStopSession.startRequestVshStopSession(flatBufferBuilder);
        RequestVshStopSession.addSessionId(flatBufferBuilder, i);
        int endRequestVshStopSession = RequestVshStopSession.endRequestVshStopSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_VSH_STOP_SESSION);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_vsh_stop_session);
        Request.addReq(flatBufferBuilder, endRequestVshStopSession);
        sendRequestToStack(Id.REQUEST_VSH_STOP_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), obtainMessage(103, cshCancelSessionParams.mCallback));
    }

    /* renamed from: com.sec.internal.ims.core.handler.secims.ResipVshHandler$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation;

        static {
            int[] iArr = new int[VshOrientation.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation = iArr;
            try {
                iArr[VshOrientation.LANDSCAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation[VshOrientation.PORTRAIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation[VshOrientation.FLIPPED_LANDSCAPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation[VshOrientation.REVERSE_PORTRAIT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
    
        if (r4 != 4) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onSetOrientation(com.sec.internal.ims.servicemodules.csh.event.VshOrientation r4) {
        /*
            r3 = this;
            int[] r0 = com.sec.internal.ims.core.handler.secims.ResipVshHandler.AnonymousClass2.$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation
            int r4 = r4.ordinal()
            r4 = r0[r4]
            r0 = 1
            if (r4 == r0) goto L18
            r0 = 2
            r1 = 0
            if (r4 == r0) goto L15
            r2 = 3
            if (r4 == r2) goto L17
            r2 = 4
            if (r4 == r2) goto L18
        L15:
            r0 = r1
            goto L18
        L17:
            r0 = r2
        L18:
            com.sec.sve.SecVideoEngineManager r3 = r3.mSveManager
            r3.setOrientation(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.handler.secims.ResipVshHandler.onSetOrientation(com.sec.internal.ims.servicemodules.csh.event.VshOrientation):void");
    }

    private void onSetVshVideoDisplay(VshVideoDisplayParams vshVideoDisplayParams) {
        if (vshVideoDisplayParams.mViewType == VshViewType.LOCAL) {
            this.mSveManager.setPreviewSurface(vshVideoDisplayParams.mSessionId, vshVideoDisplayParams.mVideoDisplay.getWindowHandle(), vshVideoDisplayParams.mVideoDisplay.getColor());
        } else {
            this.mSveManager.setDisplaySurface(vshVideoDisplayParams.mSessionId, vshVideoDisplayParams.mVideoDisplay.getWindowHandle(), vshVideoDisplayParams.mVideoDisplay.getColor());
        }
        vshVideoDisplayParams.mCallback.onSuccess();
    }

    private void onSwitchCamera(VshSwitchCameraParams vshSwitchCameraParams) {
        this.mSveManager.switchCamera();
        vshSwitchCameraParams.mCallback.onSuccess();
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void setVshPhoneOrientation(VshOrientation vshOrientation) {
        sendMessage(obtainMessage(5, vshOrientation));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void startVshSession(VshStartSessionParams vshStartSessionParams) {
        sendMessage(obtainMessage(0, vshStartSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void acceptVshSession(CshAcceptSessionParams cshAcceptSessionParams) {
        sendMessage(obtainMessage(1, cshAcceptSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void rejectVshSession(CshRejectSessionParams cshRejectSessionParams) {
        sendMessage(obtainMessage(2, cshRejectSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void cancelVshSession(CshCancelSessionParams cshCancelSessionParams) {
        sendMessage(obtainMessage(3, cshCancelSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void stopVshSession(CshCancelSessionParams cshCancelSessionParams) {
        sendMessage(obtainMessage(4, cshCancelSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void switchCamera(VshSwitchCameraParams vshSwitchCameraParams) {
        sendMessage(obtainMessage(8, vshSwitchCameraParams));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void setVshVideoDisplay(VshVideoDisplayParams vshVideoDisplayParams) {
        sendMessage(obtainMessage(6, vshVideoDisplayParams));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void resetVshVideoDisplay(VshVideoDisplayParams vshVideoDisplayParams) {
        sendMessage(obtainMessage(7, vshVideoDisplayParams));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void registerForVshIncomingSession(Handler handler, int i, Object obj) {
        this.mIncomingSessionRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void unregisterForVshIncomingSession(Handler handler) {
        this.mIncomingSessionRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void registerForVshSessionEstablished(Handler handler, int i, Object obj) {
        this.mSessionEstablishedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void unregisterForVshSessionEstablished(Handler handler) {
        this.mSessionEstablishedRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void registerForVshSessionTerminated(Handler handler, int i, Object obj) {
        this.mSessionTerminatedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.VshHandler, com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface
    public void unregisterForVshSessionTerminated(Handler handler) {
        this.mSessionTerminatedRegistrants.remove(handler);
    }

    private UserAgent getUserAgent() {
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        Log.i(LOG_TAG, "getUserAgent() of SIM slot: " + activeDataPhoneId);
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent("vs", activeDataPhoneId);
    }

    private void sendRequestToStack(int i, FlatBufferBuilder flatBufferBuilder, int i2, Message message) {
        UserAgent userAgent = getUserAgent();
        if (userAgent == null) {
            Log.e(LOG_TAG, "sendRequestToStack(): UserAgent not found.");
        } else {
            userAgent.sendRequestToStack(new ResipStackRequest(i, flatBufferBuilder, i2, message));
        }
    }
}
