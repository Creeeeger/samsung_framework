package com.sec.internal.ims.servicemodules.volte2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.util.Log;
import android.util.SparseArray;
import com.samsung.android.ims.cmc.ISemCmcRecordingListener;
import com.samsung.android.ims.cmc.SemCmcRecordingInfo;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.IMSMediaEvent;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.volte2.data.RelayChannel;
import com.sec.internal.ims.servicemodules.volte2.data.RelayStreams;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.handler.ICmcMediaServiceInterface;
import com.sec.internal.log.IMSLog;
import java.util.List;

/* loaded from: classes.dex */
public class CmcMediaController implements ICmcMediaController {
    private static final int EVENT_CMC_MEDIA_EVENT = 11;
    private static final int EVENT_CMC_RECORDER_START = 2;
    private static final int EVENT_CMC_RECORDER_STOP = 3;
    private static final int EVENT_RETRY_CREATE_RELAY_CHANNEL = 12;
    private static final String LOG_TAG = "CmcMediaController";
    private Handler mCmcMediaEventHandler;
    private ICmcMediaServiceInterface mCmcMediaIntf;
    private SimpleEventLog mEventLog;
    protected ImsCallSessionManager mImsCallSessionManager;
    private IVolteServiceModuleInternal mVolteServiceModule;
    private final RemoteCallbackList<ISemCmcRecordingListener> mCmcRecordingCallbacks = new RemoteCallbackList<>();
    private SparseArray<RelayStreams> mRelayStreamMap = new SparseArray<>();
    private int mExtStream = -1;
    private int mIntStream = -1;
    private int mRelayDirection = 0;
    private boolean mPendingRelayChannelCreation = false;
    private RelayChannel mRelayChannel = null;

    public CmcMediaController(IVolteServiceModuleInternal iVolteServiceModuleInternal, Looper looper, ImsCallSessionManager imsCallSessionManager, SimpleEventLog simpleEventLog) {
        this.mCmcMediaIntf = null;
        this.mCmcMediaEventHandler = null;
        this.mVolteServiceModule = null;
        this.mEventLog = simpleEventLog;
        this.mImsCallSessionManager = imsCallSessionManager;
        this.mVolteServiceModule = iVolteServiceModuleInternal;
        this.mCmcMediaIntf = ImsRegistry.getHandlerFactory().getCmcHandler();
        this.mCmcMediaEventHandler = new Handler(looper) { // from class: com.sec.internal.ims.servicemodules.volte2.CmcMediaController.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                AsyncResult asyncResult = (AsyncResult) message.obj;
                int i = message.what;
                if (i == 11) {
                    CmcMediaController.this.onImsRelayEvent((IMSMediaEvent) asyncResult.result);
                    return;
                }
                if (i != 12) {
                    return;
                }
                int i2 = message.arg1;
                int i3 = message.arg2;
                Log.i(CmcMediaController.LOG_TAG, "EVT_RETRY_CREATE_RELAY_CHANNEL extStreamId: " + i2 + " intStreamId: " + i3);
                RelayStreams relayStreams = (RelayStreams) CmcMediaController.this.mRelayStreamMap.get(i2);
                RelayStreams relayStreams2 = (RelayStreams) CmcMediaController.this.mRelayStreamMap.get(i3);
                if (relayStreams != null && relayStreams2 != null) {
                    ImsCallSession session = CmcMediaController.this.getSession(relayStreams.getSessionId());
                    ImsCallSession session2 = CmcMediaController.this.getSession(relayStreams2.getSessionId());
                    if (CmcMediaController.this.mPendingRelayChannelCreation && session != null && session2 != null) {
                        int sreCreateRelayChannel = CmcMediaController.this.mCmcMediaIntf.sreCreateRelayChannel(i2, i3);
                        if (sreCreateRelayChannel > -1) {
                            CallConstants.STATE callState = session.getCallState();
                            CallConstants.STATE state = CallConstants.STATE.HeldCall;
                            int i4 = (callState == state || session2.getCallState() == state) ? 1 : 0;
                            IMSLog.c(LogClass.CMC_START_RELAY, sreCreateRelayChannel + "," + i4);
                            CmcMediaController.this.mCmcMediaIntf.sreStartRelayChannel(sreCreateRelayChannel, i4);
                            relayStreams.setRelayChannelId(sreCreateRelayChannel);
                            relayStreams2.setRelayChannelId(sreCreateRelayChannel);
                            CmcMediaController.this.mEventLog.add("Start Pending RelayChannel " + sreCreateRelayChannel + " with direction " + i4);
                        } else {
                            Log.i(CmcMediaController.LOG_TAG, "failed to create relay channel relayChannelId: " + sreCreateRelayChannel);
                        }
                    }
                }
                CmcMediaController.this.resetCreateRelayChannelParams();
            }
        };
        init();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcMediaController
    public void connectToSve(int i) {
        this.mCmcMediaIntf.sendConnectToSve(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcMediaController
    public void disconnectToSve() {
        this.mCmcMediaIntf.sendDisonnectToSve();
    }

    public void init() {
        this.mCmcMediaIntf.registerForCmcMediaEvent(this.mCmcMediaEventHandler, 11, null);
    }

    private synchronized void onRelayStreamEvent(IMSMediaEvent iMSMediaEvent) {
        RelayStreams relayStreams;
        String str = LOG_TAG;
        Log.i(str, "onRelayStreamEvent : " + iMSMediaEvent.getRelayStreamEvent() + " phoneId : " + iMSMediaEvent.getPhoneId());
        int relayStreamEvent = iMSMediaEvent.getRelayStreamEvent();
        if (relayStreamEvent == 0) {
            ImsCallSession session = this.mImsCallSessionManager.getSession(iMSMediaEvent.getSessionID());
            RelayStreams relayStreams2 = new RelayStreams(iMSMediaEvent, session != null ? session.getCmcType() : 0);
            handleRelayStream(iMSMediaEvent);
            this.mRelayStreamMap.put(iMSMediaEvent.getStreamId(), relayStreams2);
            if (this.mRelayStreamMap.size() >= 2) {
                handleRelayChannel();
            }
            return;
        }
        if (relayStreamEvent == 1) {
            resetCreateRelayChannelParams();
            int streamId = iMSMediaEvent.getStreamId();
            RelayStreams relayStreams3 = this.mRelayStreamMap.get(streamId);
            this.mRelayStreamMap.delete(streamId);
            if (relayStreams3 != null && relayStreams3.getBoundStreamId() > -1 && (relayStreams = this.mRelayStreamMap.get(relayStreams3.getBoundStreamId())) != null) {
                Log.i(str, "reset bound stream " + relayStreams.getStreamId());
                relayStreams.setRelayChannelId(-1);
                relayStreams.setBoundStreamId(-1);
            }
            return;
        }
        if (relayStreamEvent == 3 || relayStreamEvent == 4) {
            Log.i(str, "Ignore RTP/RTCP_TIMEOUT for CMC at PD");
            return;
        }
        if (relayStreamEvent == 5) {
            this.mCmcMediaIntf.sendRtpStatsToStack(iMSMediaEvent.getRelayRtpStats());
            return;
        }
        switch (relayStreamEvent) {
            case 10:
            case 11:
            case 12:
                break;
            default:
                Log.e(str, "not handled RelayStreamEvent : " + iMSMediaEvent.getRelayStreamEvent());
                return;
        }
        while (r2 < this.mRelayStreamMap.size()) {
            RelayStreams valueAt = this.mRelayStreamMap.valueAt(r2);
            if (valueAt.getSessionId() == iMSMediaEvent.getSessionID()) {
                if (iMSMediaEvent.getRelayStreamEvent() == 10) {
                    Log.i(LOG_TAG, "hold relay channel : " + valueAt.getRelayChannelId());
                    this.mCmcMediaIntf.sreHoldRelayChannel(valueAt.getRelayChannelId());
                } else if (iMSMediaEvent.getRelayStreamEvent() == 11) {
                    Log.i(LOG_TAG, "resume relay channel : " + valueAt.getRelayChannelId());
                    this.mCmcMediaIntf.sreResumeRelayChannel(valueAt.getRelayChannelId());
                } else if (iMSMediaEvent.getRelayStreamEvent() == 12) {
                    Log.i(LOG_TAG, "start record relay channel : " + valueAt.getRelayChannelId());
                    this.mCmcMediaIntf.sreStartRecordingChannel(iMSMediaEvent.getSessionID(), valueAt.getStreamId(), valueAt.getRelayChannelId());
                }
            }
            r2++;
        }
    }

    private void handleRelayStream(IMSMediaEvent iMSMediaEvent) {
        Log.i(LOG_TAG, "handleRelayStream");
        for (int i = 0; i < this.mRelayStreamMap.size(); i++) {
            RelayStreams valueAt = this.mRelayStreamMap.valueAt(i);
            String str = LOG_TAG;
            Log.i(str, "StreamId: " + valueAt.getStreamId() + " SessionId : " + valueAt.getSessionId());
            if (iMSMediaEvent.getSessionID() == valueAt.getSessionId() || iMSMediaEvent.getStreamId() == valueAt.getStreamId()) {
                Log.i(str, "delete exist RelayStreams");
                this.mRelayStreamMap.delete(valueAt.getStreamId());
            }
        }
    }

    private void handleRelayChannel() {
        Log.i(LOG_TAG, "handleRelayChannel");
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < this.mRelayStreamMap.size(); i3++) {
            RelayStreams valueAt = this.mRelayStreamMap.valueAt(i3);
            ImsCallSession session = getSession(valueAt.getSessionId());
            String str = LOG_TAG;
            Log.i(str, "Streamid : " + valueAt.getStreamId() + " SessionId : " + valueAt.getSessionId());
            if (session == null) {
                Log.e(str, "Session is null");
                this.mRelayStreamMap.delete(valueAt.getStreamId());
            } else {
                int cmcType = session.getCmcType();
                if (cmcType == 0 && session.getCallProfile().getCmcBoundSessionId() > -1 && valueAt.getRelayChannelId() == -1) {
                    if (i > -1) {
                        this.mRelayStreamMap.delete(i);
                    }
                    i = valueAt.getStreamId();
                } else if ((cmcType == 1 || cmcType == 3 || cmcType == 7 || cmcType == 5) && session.getCallProfile().getCmcBoundSessionId() > -1 && valueAt.getRelayChannelId() == -1) {
                    if (i2 > -1) {
                        this.mRelayStreamMap.delete(i2);
                    }
                    i2 = valueAt.getStreamId();
                }
            }
        }
        Log.i(LOG_TAG, "extStream: " + i + ", intStream" + i2);
        if (i == -1 || i2 == -1) {
            return;
        }
        startRelayChannel(i, i2);
    }

    private void startRelayChannel(int i, int i2) {
        RelayStreams relayStreams = this.mRelayStreamMap.get(i);
        RelayStreams relayStreams2 = this.mRelayStreamMap.get(i2);
        if (relayStreams == null || relayStreams2 == null || relayStreams.getRelayChannelId() != -1 || relayStreams2.getRelayChannelId() != -1) {
            return;
        }
        ImsCallSession session = getSession(relayStreams.getSessionId());
        ImsCallSession session2 = getSession(relayStreams2.getSessionId());
        if (session == null || session2 == null) {
            Log.e(LOG_TAG, "extSession or intSession is null");
            return;
        }
        if (session.getCallProfile().getCmcBoundSessionId() == relayStreams2.getSessionId() || session2.getCallProfile().getCmcBoundSessionId() == relayStreams.getSessionId()) {
            relayStreams.setBoundStreamId(i2);
            relayStreams2.setBoundStreamId(i);
            int sreCreateRelayChannel = this.mCmcMediaIntf.sreCreateRelayChannel(i, i2);
            CallConstants.STATE callState = session.getCallState();
            CallConstants.STATE state = CallConstants.STATE.HeldCall;
            int i3 = (callState == state || session2.getCallState() == state) ? 1 : 0;
            Log.i(LOG_TAG, "Start Relay Channel " + sreCreateRelayChannel + " with direction " + i3);
            if (sreCreateRelayChannel > -1) {
                IMSLog.c(LogClass.CMC_START_RELAY, sreCreateRelayChannel + "," + i3);
                this.mCmcMediaIntf.sreStartRelayChannel(sreCreateRelayChannel, i3);
                relayStreams.setRelayChannelId(sreCreateRelayChannel);
                relayStreams2.setRelayChannelId(sreCreateRelayChannel);
                resetCreateRelayChannelParams();
                this.mEventLog.add("Start RelayChannel " + sreCreateRelayChannel + " with direction " + i3);
                return;
            }
            Handler handler = this.mCmcMediaEventHandler;
            handler.sendMessageDelayed(handler.obtainMessage(12, i, i2), 200L);
            this.mPendingRelayChannelCreation = true;
            this.mExtStream = i;
            this.mIntStream = i2;
            this.mRelayDirection = i3;
            this.mEventLog.add("Pending StartRelayChannel with " + i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImsCallSession getSession(int i) {
        List<ImsCallSession> sessionList = this.mImsCallSessionManager.getSessionList();
        synchronized (sessionList) {
            for (ImsCallSession imsCallSession : sessionList) {
                if (imsCallSession != null && imsCallSession.getSessionId() == i) {
                    return imsCallSession;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onImsRelayEvent(IMSMediaEvent iMSMediaEvent) {
        RelayChannel relayChannel;
        ImsCallSession session;
        int i;
        if (iMSMediaEvent.isRelayChannelEvent()) {
            String str = LOG_TAG;
            Log.i(str, "RelayEvent : " + iMSMediaEvent.getRelayChannelEvent());
            RelayStreams relayStreams = null;
            if (iMSMediaEvent.getRelayChannelEvent() == 0) {
                RelayStreams relayStreams2 = null;
                for (int i2 = 0; i2 < this.mRelayStreamMap.size(); i2++) {
                    RelayStreams valueAt = this.mRelayStreamMap.valueAt(i2);
                    if (relayStreams == null && ImsCallUtil.isCmcPrimaryType(valueAt.getCmcType())) {
                        relayStreams = valueAt;
                    } else if (relayStreams2 == null && valueAt.getCmcType() == 0) {
                        relayStreams2 = valueAt;
                    }
                }
                if (relayStreams == null || relayStreams2 == null) {
                    return;
                }
                this.mRelayChannel = new RelayChannel(relayStreams, relayStreams2, relayStreams.getRelayChannelId());
                ImsCallSession session2 = getSession(relayStreams2.getSessionId());
                this.mVolteServiceModule.notifyOnCmcRelayEvent(iMSMediaEvent.getRelayChannelEvent(), session2 != null ? session2.getPhoneId() : -1, relayStreams.getSessionId());
                return;
            }
            if (iMSMediaEvent.getRelayChannelEvent() == 1) {
                if (this.mPendingRelayChannelCreation && (i = this.mExtStream) != -1 && this.mIntStream != -1) {
                    RelayStreams relayStreams3 = this.mRelayStreamMap.get(i);
                    RelayStreams relayStreams4 = this.mRelayStreamMap.get(this.mIntStream);
                    if (relayStreams3 != null && relayStreams4 != null) {
                        int sreCreateRelayChannel = this.mCmcMediaIntf.sreCreateRelayChannel(this.mExtStream, this.mIntStream);
                        Log.i(str, "Retry Start Relay Channel : " + sreCreateRelayChannel);
                        IMSLog.c(LogClass.CMC_START_RELAY, sreCreateRelayChannel + "," + this.mRelayDirection);
                        this.mCmcMediaIntf.sreStartRelayChannel(sreCreateRelayChannel, this.mRelayDirection);
                        relayStreams3.setRelayChannelId(sreCreateRelayChannel);
                        relayStreams4.setRelayChannelId(sreCreateRelayChannel);
                        this.mEventLog.add("Retry StartRelayChannel " + sreCreateRelayChannel + " with direction " + this.mRelayDirection);
                    }
                }
                resetCreateRelayChannelParams();
                if (!this.mPendingRelayChannelCreation && (relayChannel = this.mRelayChannel) != null) {
                    RelayStreams intStream = relayChannel.getIntStream();
                    RelayStreams extStream = this.mRelayChannel.getExtStream();
                    int sessionId = intStream != null ? intStream.getSessionId() : -1;
                    if (extStream != null && (session = getSession(extStream.getSessionId())) != null) {
                        r3 = session.getPhoneId();
                    }
                    this.mVolteServiceModule.notifyOnCmcRelayEvent(iMSMediaEvent.getRelayChannelEvent(), r3, sessionId);
                }
                this.mRelayChannel = null;
                return;
            }
            return;
        }
        ImsCallSession session3 = getSession(iMSMediaEvent.getSessionID());
        if (session3 == null) {
            Log.i(LOG_TAG, "onImsRelayEvent: session " + iMSMediaEvent.getSessionID() + " not found.");
            return;
        }
        iMSMediaEvent.setSessionID(session3.getSessionId());
        iMSMediaEvent.setPhoneId(session3.getPhoneId());
        if (iMSMediaEvent.isRelayStreamEvent()) {
            onRelayStreamEvent(iMSMediaEvent);
        } else if (iMSMediaEvent.isCmcRecordingEvent()) {
            onCmcRecordingEvent(iMSMediaEvent);
        }
    }

    private void onCmcRecordingEvent(IMSMediaEvent iMSMediaEvent) {
        int i;
        Log.i(LOG_TAG, "onCmcRecordingEvent: event " + iMSMediaEvent.getCmcRecordingEvent());
        int cmcRecordingEvent = iMSMediaEvent.getCmcRecordingEvent();
        if (cmcRecordingEvent != 0) {
            if (cmcRecordingEvent != 5) {
                switch (cmcRecordingEvent) {
                    case 7:
                        i = 801;
                        break;
                    case 8:
                        i = 900;
                        break;
                    case 9:
                        i = 901;
                        break;
                    case 10:
                        i = 701;
                        break;
                    case 11:
                        i = Id.REQUEST_PRESENCE_UNPUBLISH;
                        break;
                    default:
                        i = 1;
                        break;
                }
            } else {
                i = 800;
            }
            this.mVolteServiceModule.notifyOnCmcRecordingEvent(iMSMediaEvent.getPhoneId(), i, iMSMediaEvent.getCmcRecordingArg(), iMSMediaEvent.getSessionID());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetCreateRelayChannelParams() {
        if (this.mCmcMediaEventHandler.hasMessages(12)) {
            this.mCmcMediaEventHandler.removeMessages(12);
        }
        this.mPendingRelayChannelCreation = false;
        this.mExtStream = -1;
        this.mIntStream = -1;
        this.mRelayDirection = 0;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ICmcMediaController
    public synchronized void sendCmcRecordingEvent(int i, int i2, SemCmcRecordingInfo semCmcRecordingInfo) {
        boolean startCmcRecord;
        ImsCallSession activeCallByCmcType = getActiveCallByCmcType(i, 1);
        if (activeCallByCmcType == null) {
            Log.e(LOG_TAG, "sendCmcRecordingEvent: PD active session is null");
            return;
        }
        if (i2 == 2) {
            Log.i(LOG_TAG, "sendCmcRecordingEvent: SemCmcRecordingInfo " + semCmcRecordingInfo.toString());
            startCmcRecord = this.mCmcMediaIntf.startCmcRecord(activeCallByCmcType.getPhoneId(), activeCallByCmcType.getSessionId(), semCmcRecordingInfo.getAudioSource(), semCmcRecordingInfo.getOutputFormat(), semCmcRecordingInfo.getMaxFileSize(), semCmcRecordingInfo.getMaxDuration(), semCmcRecordingInfo.getOutputPath(), semCmcRecordingInfo.getAudioEncodingBitRate(), semCmcRecordingInfo.getAudioChannels(), semCmcRecordingInfo.getAudioSamplingRate(), semCmcRecordingInfo.getAudioEncoder(), semCmcRecordingInfo.getDurationInterval(), semCmcRecordingInfo.getFileSizeInterval(), semCmcRecordingInfo.getAuthor());
        } else if (i2 == 3) {
            startCmcRecord = this.mCmcMediaIntf.stopCmcRecord(activeCallByCmcType.getPhoneId(), activeCallByCmcType.getSessionId());
        } else {
            Log.e(LOG_TAG, "sendCmcRecordingEvent: ignore event = " + i2);
            return;
        }
        if (!startCmcRecord) {
            IMSMediaEvent iMSMediaEvent = new IMSMediaEvent();
            iMSMediaEvent.setCmcRecordingEvent(4);
            iMSMediaEvent.setState(IMSMediaEvent.MEDIA_STATE.RECORD_START_FAILURE);
            iMSMediaEvent.setPhoneId(i);
            onCmcRecordingEvent(iMSMediaEvent);
        }
    }

    private ImsCallSession getActiveCallByCmcType(int i, int i2) {
        List<ImsCallSession> sessionList = this.mImsCallSessionManager.getSessionList();
        synchronized (sessionList) {
            for (ImsCallSession imsCallSession : sessionList) {
                if (imsCallSession != null && imsCallSession.getCallState() == CallConstants.STATE.InCall && imsCallSession.getCmcType() == i2 && imsCallSession.getPhoneId() == i) {
                    return imsCallSession;
                }
            }
            return null;
        }
    }
}
