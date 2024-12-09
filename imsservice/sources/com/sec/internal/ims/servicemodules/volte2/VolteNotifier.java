package com.sec.internal.ims.servicemodules.volte2;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.samsung.android.ims.cmc.ISemCmcRecordingListener;
import com.sec.ims.DialogEvent;
import com.sec.ims.IDialogEventListener;
import com.sec.ims.IRttEventListener;
import com.sec.ims.volte2.IImsCallEventListener;
import com.sec.ims.volte2.IVolteServiceEventListener;
import com.sec.ims.volte2.data.ImsCallInfo;
import com.sec.internal.constants.ims.servicemodules.volte2.CallStateEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.IMSMediaEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.RtpLossRateNoti;
import com.sec.internal.ims.servicemodules.volte2.data.DedicatedBearerEvent;
import com.sec.internal.ims.servicemodules.volte2.data.TextInfo;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class VolteNotifier {
    public static final String LOG_TAG = "VolteNotifier";
    private final Map<Integer, RemoteCallbackList<IVolteServiceEventListener>> mListeners = new ConcurrentHashMap();
    private final Map<Integer, RemoteCallbackList<IImsCallEventListener>> mCallStateListeners = new ConcurrentHashMap();
    private final Map<Integer, RemoteCallbackList<ISemCmcRecordingListener>> mCmcRecordingListeners = new ConcurrentHashMap();
    private final Map<Integer, RemoteCallbackList<IDialogEventListener>> mDialogEventListeners = new ConcurrentHashMap();
    private final Map<Integer, RemoteCallbackList<IRttEventListener>> mRttEventListeners = new ConcurrentHashMap();

    public void registerForVolteServiceEvent(int i, IVolteServiceEventListener iVolteServiceEventListener) {
        Log.i(LOG_TAG, "registerForVolteServiceEvent to phone#" + i);
        if (!this.mListeners.containsKey(Integer.valueOf(i))) {
            this.mListeners.put(Integer.valueOf(i), new RemoteCallbackList<>());
        }
        this.mListeners.get(Integer.valueOf(i)).register(iVolteServiceEventListener);
    }

    public void deRegisterForVolteServiceEvent(int i, IVolteServiceEventListener iVolteServiceEventListener) {
        Log.i(LOG_TAG, "deRegisterForVolteServiceEvent to phone#" + i);
        if (this.mListeners.containsKey(Integer.valueOf(i))) {
            this.mListeners.get(Integer.valueOf(i)).unregister(iVolteServiceEventListener);
        }
    }

    public void registerRttEventListener(int i, IRttEventListener iRttEventListener) {
        Log.i(LOG_TAG, "registerRttEventListener to phone#" + i);
        if (!this.mRttEventListeners.containsKey(Integer.valueOf(i))) {
            this.mRttEventListeners.put(Integer.valueOf(i), new RemoteCallbackList<>());
        }
        this.mRttEventListeners.get(Integer.valueOf(i)).register(iRttEventListener);
    }

    public void unregisterRttEventListener(int i, IRttEventListener iRttEventListener) {
        Log.i(LOG_TAG, "unregisterRttEventListener to phone#" + i);
        if (this.mRttEventListeners.containsKey(Integer.valueOf(i))) {
            this.mRttEventListeners.get(Integer.valueOf(i)).unregister(iRttEventListener);
        }
    }

    public void registerCmcRecordingListener(int i, ISemCmcRecordingListener iSemCmcRecordingListener) {
        Log.i(LOG_TAG, "registerCmcRecordingListener to phone#" + i);
        if (!this.mCmcRecordingListeners.containsKey(Integer.valueOf(i))) {
            this.mCmcRecordingListeners.put(Integer.valueOf(i), new RemoteCallbackList<>());
        }
        this.mCmcRecordingListeners.get(Integer.valueOf(i)).register(iSemCmcRecordingListener);
    }

    public void unregisterCmcRecordingListener(int i, ISemCmcRecordingListener iSemCmcRecordingListener) {
        Log.i(LOG_TAG, "unregisterCmcRecordingListener to phone#" + i);
        if (this.mCmcRecordingListeners.containsKey(Integer.valueOf(i))) {
            this.mCmcRecordingListeners.get(Integer.valueOf(i)).unregister(iSemCmcRecordingListener);
        }
    }

    public void registerDialogEventListener(int i, IDialogEventListener iDialogEventListener) {
        Log.i(LOG_TAG, "registerDialogEventListener to phone#" + i);
        if (!this.mDialogEventListeners.containsKey(Integer.valueOf(i))) {
            this.mDialogEventListeners.put(Integer.valueOf(i), new RemoteCallbackList<>());
        }
        this.mDialogEventListeners.get(Integer.valueOf(i)).register(iDialogEventListener);
    }

    public void unregisterDialogEventListener(int i, IDialogEventListener iDialogEventListener) {
        Log.i(LOG_TAG, "unregisterDialogEventListener to phone#" + i);
        if (this.mDialogEventListeners.containsKey(Integer.valueOf(i))) {
            this.mDialogEventListeners.get(Integer.valueOf(i)).unregister(iDialogEventListener);
        }
    }

    public void registerForCallStateEvent(int i, IImsCallEventListener iImsCallEventListener) {
        Log.i(LOG_TAG, "registerForCallStateEvent to phone#" + i);
        if (!this.mCallStateListeners.containsKey(Integer.valueOf(i))) {
            this.mCallStateListeners.put(Integer.valueOf(i), new RemoteCallbackList<>());
        }
        this.mCallStateListeners.get(Integer.valueOf(i)).register(iImsCallEventListener);
    }

    public void deregisterForCallStateEvent(int i, IImsCallEventListener iImsCallEventListener) {
        Log.i(LOG_TAG, "deregisterForCallStateEvent to phone#" + i);
        if (this.mCallStateListeners.containsKey(Integer.valueOf(i))) {
            this.mCallStateListeners.get(Integer.valueOf(i)).unregister(iImsCallEventListener);
        }
    }

    public synchronized void notifyOnPulling(int i, int i2) {
        if (this.mListeners.containsKey(Integer.valueOf(i))) {
            RemoteCallbackList<IVolteServiceEventListener> remoteCallbackList = this.mListeners.get(Integer.valueOf(i));
            int beginBroadcast = remoteCallbackList.beginBroadcast();
            for (int i3 = 0; i3 < beginBroadcast; i3++) {
                try {
                    remoteCallbackList.getBroadcastItem(i3).onPullingCall(i2);
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "failed notify onPullingCall event!", e);
                }
            }
            remoteCallbackList.finishBroadcast();
        }
    }

    public synchronized void notifyOnIncomingCall(int i, int i2) {
        if (this.mListeners.containsKey(Integer.valueOf(i))) {
            RemoteCallbackList<IVolteServiceEventListener> remoteCallbackList = this.mListeners.get(Integer.valueOf(i));
            int beginBroadcast = remoteCallbackList.beginBroadcast();
            Log.i(LOG_TAG + '/' + i, "onIncomingCall: listeners length = " + beginBroadcast);
            for (int i3 = 0; i3 < beginBroadcast; i3++) {
                try {
                    remoteCallbackList.getBroadcastItem(i3).onIncomingCall(i2);
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "failed notify incoming call event!", e);
                }
            }
            remoteCallbackList.finishBroadcast();
        }
    }

    private ImsCallInfo makeImsCallInfo(ImsCallSession imsCallSession) {
        ImsCallInfo imsCallInfo = new ImsCallInfo(imsCallSession.getCallId(), imsCallSession.getCallProfile().getCallType(), imsCallSession.getCallProfile().isDowngradedVideoCall(), imsCallSession.getCallProfile().isDowngradedAtEstablish(), imsCallSession.getDedicatedBearerState(1), imsCallSession.getDedicatedBearerState(2), imsCallSession.getDedicatedBearerState(8), imsCallSession.getErrorCode(), imsCallSession.getErrorMessage(), imsCallSession.getCallProfile().getDialingNumber(), imsCallSession.getCallProfile().getDirection(), imsCallSession.getCallProfile().isConferenceCall());
        imsCallInfo.setRatInfo(imsCallSession.getCallProfile().getRadioTech());
        return imsCallInfo;
    }

    public synchronized void notifyIncomingPreAlerting(ImsCallSession imsCallSession) {
        int phoneId = imsCallSession.getPhoneId();
        if (this.mCallStateListeners.containsKey(Integer.valueOf(phoneId))) {
            int beginBroadcast = this.mCallStateListeners.get(Integer.valueOf(phoneId)).beginBroadcast();
            ImsCallInfo makeImsCallInfo = makeImsCallInfo(imsCallSession);
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mCallStateListeners.get(Integer.valueOf(phoneId)).getBroadcastItem(i).onIncomingPreAlerting(makeImsCallInfo, imsCallSession.getCallProfile().getDialingNumber());
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mCallStateListeners.get(Integer.valueOf(phoneId)).finishBroadcast();
        }
    }

    public synchronized void notifyIncomingCallEvent(ImsCallSession imsCallSession) {
        int phoneId = imsCallSession.getPhoneId();
        if (this.mCallStateListeners.containsKey(Integer.valueOf(phoneId))) {
            int beginBroadcast = this.mCallStateListeners.get(Integer.valueOf(phoneId)).beginBroadcast();
            ImsCallInfo makeImsCallInfo = makeImsCallInfo(imsCallSession);
            makeImsCallInfo.setSamsungMdmnCall(imsCallSession.getCallProfile().isSamsungMdmnCall());
            makeImsCallInfo.setNumberPlus(imsCallSession.getCallProfile().getNumberPlus());
            makeImsCallInfo.setCmcDeviceId(imsCallSession.getCallProfile().getCmcDeviceId());
            makeImsCallInfo.setRatInfo(imsCallSession.getCallProfile().getRadioTech());
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mCallStateListeners.get(Integer.valueOf(phoneId)).getBroadcastItem(i).onIncomingCall(makeImsCallInfo, imsCallSession.getCallProfile().getDialingNumber());
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mCallStateListeners.get(Integer.valueOf(phoneId)).finishBroadcast();
        }
    }

    public synchronized void notifyCallStateEvent(CallStateEvent callStateEvent, ImsCallSession imsCallSession) {
        int phoneId = imsCallSession.getPhoneId();
        if (this.mCallStateListeners.containsKey(Integer.valueOf(phoneId))) {
            int beginBroadcast = this.mCallStateListeners.get(Integer.valueOf(phoneId)).beginBroadcast();
            ImsCallInfo makeImsCallInfo = makeImsCallInfo(imsCallSession);
            makeImsCallInfo.setSamsungMdmnCall(imsCallSession.getCallProfile().isSamsungMdmnCall());
            makeImsCallInfo.setCmcDeviceId(imsCallSession.getCallProfile().getCmcDeviceId());
            makeImsCallInfo.setRatInfo(imsCallSession.getCallProfile().getRadioTech());
            for (int i = 0; i < beginBroadcast; i++) {
                IImsCallEventListener broadcastItem = this.mCallStateListeners.get(Integer.valueOf(phoneId)).getBroadcastItem(i);
                try {
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[callStateEvent.getState().ordinal()]) {
                    case 1:
                        broadcastItem.onCallStarted(makeImsCallInfo);
                    case 2:
                        broadcastItem.onCallEstablished(makeImsCallInfo);
                    case 3:
                        broadcastItem.onCallModifyRequested(makeImsCallInfo, imsCallSession.getCallProfile().getCallType());
                    case 4:
                        broadcastItem.onCallModified(makeImsCallInfo);
                    case 5:
                        if (callStateEvent.getUpdatedParticipantsList().size() > 0) {
                            broadcastItem.onConferenceParticipantAdded(makeImsCallInfo, callStateEvent.getUpdatedParticipantsList().get(0).getUri());
                        }
                    case 6:
                        if (callStateEvent.getUpdatedParticipantsList().size() > 0) {
                            broadcastItem.onConferenceParticipantRemoved(makeImsCallInfo, callStateEvent.getUpdatedParticipantsList().get(0).getUri());
                        }
                    case 7:
                        broadcastItem.onCallHeld(makeImsCallInfo, true, false);
                    case 8:
                        broadcastItem.onCallHeld(makeImsCallInfo, false, true);
                    case 9:
                        broadcastItem.onCallHeld(makeImsCallInfo, true, true);
                    case 10:
                    case 11:
                        broadcastItem.onCallEnded(makeImsCallInfo, imsCallSession.getErrorCode());
                    default:
                }
            }
            this.mCallStateListeners.get(Integer.valueOf(phoneId)).finishBroadcast();
        }
    }

    public synchronized void onDedicatedBearerEvent(ImsCallSession imsCallSession, DedicatedBearerEvent dedicatedBearerEvent) {
        int phoneId = imsCallSession.getPhoneId();
        if (this.mCallStateListeners.containsKey(Integer.valueOf(phoneId))) {
            int beginBroadcast = this.mCallStateListeners.get(Integer.valueOf(phoneId)).beginBroadcast();
            ImsCallInfo makeImsCallInfo = makeImsCallInfo(imsCallSession);
            makeImsCallInfo.setRatInfo(imsCallSession.getCallProfile().getRadioTech());
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mCallStateListeners.get(Integer.valueOf(phoneId)).getBroadcastItem(i).onDedicatedBearerEvent(makeImsCallInfo, dedicatedBearerEvent.getBearerState(), dedicatedBearerEvent.getQci());
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mCallStateListeners.get(Integer.valueOf(phoneId)).finishBroadcast();
        }
    }

    public synchronized void notifyOnRtpLossRate(int i, RtpLossRateNoti rtpLossRateNoti) {
        Log.i(LOG_TAG, "onRtpLossRateNoti: interval" + rtpLossRateNoti.getInterval() + " : LossRate" + rtpLossRateNoti.getLossRate() + " : Jitter " + rtpLossRateNoti.getJitter() + " : Notification" + rtpLossRateNoti.getNotification());
        if (this.mCallStateListeners.containsKey(Integer.valueOf(i))) {
            synchronized (this.mCallStateListeners.get(Integer.valueOf(i))) {
                int beginBroadcast = this.mCallStateListeners.get(Integer.valueOf(i)).beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    try {
                        this.mCallStateListeners.get(Integer.valueOf(i)).getBroadcastItem(i2).onRtpLossRateNoti(rtpLossRateNoti.getInterval(), rtpLossRateNoti.getLossRate(), rtpLossRateNoti.getJitter(), rtpLossRateNoti.getNotification());
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                this.mCallStateListeners.get(Integer.valueOf(i)).finishBroadcast();
            }
        }
    }

    public synchronized void notifyOnAudioPathUpdated(int i, String str) {
        Log.i(LOG_TAG, "notifyOnAudioPathUpdated: phoneId " + i + " audioInterface - " + str);
        if (this.mCallStateListeners.containsKey(Integer.valueOf(i))) {
            synchronized (this.mCallStateListeners.get(Integer.valueOf(i))) {
                int beginBroadcast = this.mCallStateListeners.get(Integer.valueOf(i)).beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    try {
                        this.mCallStateListeners.get(Integer.valueOf(i)).getBroadcastItem(i2).onAudioPathUpdated(str);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                this.mCallStateListeners.get(Integer.valueOf(i)).finishBroadcast();
            }
        }
    }

    public synchronized void notifyOnCmcRecordingEvent(int i, int i2, int i3) {
        if (this.mCmcRecordingListeners.containsKey(Integer.valueOf(i))) {
            int beginBroadcast = this.mCmcRecordingListeners.get(Integer.valueOf(i)).beginBroadcast();
            for (int i4 = 0; i4 < beginBroadcast; i4++) {
                ISemCmcRecordingListener broadcastItem = this.mCmcRecordingListeners.get(Integer.valueOf(i)).getBroadcastItem(i4);
                if (i2 >= 800) {
                    try {
                        broadcastItem.onInfo(i2, i3);
                    } catch (RemoteException e) {
                        Log.e(LOG_TAG, "failed notify cmc recording event!", e);
                    }
                } else if (i2 > 0 && i2 < 700) {
                    broadcastItem.onError(i2, i3);
                }
            }
            this.mCmcRecordingListeners.get(Integer.valueOf(i)).finishBroadcast();
        }
    }

    public synchronized void notifyOnDialogEvent(DialogEvent dialogEvent) {
        if (this.mDialogEventListeners.containsKey(Integer.valueOf(dialogEvent.getPhoneId()))) {
            int beginBroadcast = this.mDialogEventListeners.get(Integer.valueOf(dialogEvent.getPhoneId())).beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mDialogEventListeners.get(Integer.valueOf(dialogEvent.getPhoneId())).getBroadcastItem(i).onDialogEvent(dialogEvent);
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "failed notify dialog event!", e);
                }
            }
            this.mDialogEventListeners.get(Integer.valueOf(dialogEvent.getPhoneId())).finishBroadcast();
        }
    }

    public void onSendRttSessionModifyRequest(int i, ImsCallSession imsCallSession, boolean z) {
        if (imsCallSession != null && this.mRttEventListeners.containsKey(Integer.valueOf(i))) {
            int beginBroadcast = this.mRttEventListeners.get(Integer.valueOf(i)).beginBroadcast();
            IMSLog.c(LogClass.VOLTE_RECV_REQUEST_RTT, i + "," + imsCallSession.getSessionId() + "," + z);
            String str = LOG_TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onSendRttSessionModifyRequest : mode = ");
            sb.append(z);
            Log.i(str, sb.toString());
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.mRttEventListeners.get(Integer.valueOf(i)).getBroadcastItem(i2).onSendRttSessionModifyRequest(imsCallSession.getCallId(), z);
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "failed notify onSendRttSessionModifyRequest!", e);
                }
            }
            this.mRttEventListeners.get(Integer.valueOf(i)).finishBroadcast();
        }
    }

    public void onSendRttSessionModifyResponse(int i, ImsCallSession imsCallSession, boolean z, boolean z2) {
        if (imsCallSession != null && this.mRttEventListeners.containsKey(Integer.valueOf(i))) {
            int beginBroadcast = this.mRttEventListeners.get(Integer.valueOf(i)).beginBroadcast();
            IMSLog.c(LogClass.VOLTE_RECV_RESPONSE_RTT, i + "," + imsCallSession.getSessionId() + "," + z + "," + z2);
            Log.i(LOG_TAG, "onSendRttSessionModifyResponse : mode = " + z + ", result = " + z2 + ", Listeners length : " + beginBroadcast);
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    IRttEventListener broadcastItem = this.mRttEventListeners.get(Integer.valueOf(i)).getBroadcastItem(i2);
                    if (broadcastItem != null) {
                        broadcastItem.onSendRttSessionModifyResponse(imsCallSession.getCallId(), z, z2);
                    }
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "failed notify onSendRttSessionModifyResponse!", e);
                }
            }
            this.mRttEventListeners.get(Integer.valueOf(i)).finishBroadcast();
        }
    }

    public void notifyOnRttEventBySession(int i, TextInfo textInfo) {
        if (this.mRttEventListeners.containsKey(Integer.valueOf(i))) {
            int beginBroadcast = this.mRttEventListeners.get(Integer.valueOf(i)).beginBroadcast();
            Log.i(LOG_TAG, "notifyOnRttEventBySession: getText = " + IMSLog.checker(textInfo.getText()) + ", len: " + textInfo.getTextLen() + ", SessionId: " + textInfo.getSessionId() + ", Listeners length: " + beginBroadcast);
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.mRttEventListeners.get(Integer.valueOf(i)).getBroadcastItem(i2).onRttEventBySession(textInfo.getSessionId(), textInfo.getText());
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "failed notify onTextReceived event!", e);
                }
            }
            this.mRttEventListeners.get(Integer.valueOf(i)).finishBroadcast();
        }
    }

    public void notifyOnRttEvent(int i, TextInfo textInfo) {
        if (this.mRttEventListeners.containsKey(Integer.valueOf(i))) {
            int beginBroadcast = this.mRttEventListeners.get(Integer.valueOf(i)).beginBroadcast();
            Log.i(LOG_TAG, "notifyOnRttEvent : getText = " + textInfo.getText() + " , len : " + textInfo.getTextLen() + ", Listeners length : " + beginBroadcast);
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.mRttEventListeners.get(Integer.valueOf(i)).getBroadcastItem(i2).onRttEvent(textInfo.getText());
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "failed notify onTextInfo event!", e);
                }
            }
            this.mRttEventListeners.get(Integer.valueOf(i)).finishBroadcast();
        }
    }

    public void notifyImsCallEventForVideo(ImsCallSession imsCallSession, IMSMediaEvent iMSMediaEvent) {
        if (imsCallSession == null) {
            Log.e(LOG_TAG, "notifyImsCallEventForVideo: unknown session");
            return;
        }
        int phoneId = imsCallSession.getPhoneId();
        if (this.mCallStateListeners.containsKey(Integer.valueOf(phoneId))) {
            Log.d(LOG_TAG, "notifyImsCallEventForVideo: session[" + iMSMediaEvent.getSessionID() + "]");
            ImsCallInfo makeImsCallInfo = makeImsCallInfo(imsCallSession);
            makeImsCallInfo.setRatInfo(imsCallSession.getCallProfile().getRadioTech());
            int beginBroadcast = this.mCallStateListeners.get(Integer.valueOf(phoneId)).beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                IImsCallEventListener broadcastItem = this.mCallStateListeners.get(Integer.valueOf(phoneId)).getBroadcastItem(i);
                try {
                    int i2 = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[iMSMediaEvent.getState().ordinal()];
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 == 3) {
                                broadcastItem.onVideoAvailable(makeImsCallInfo);
                            }
                        } else if (!iMSMediaEvent.isHeldCall()) {
                            broadcastItem.onVideoResumed(makeImsCallInfo);
                        }
                    } else if (!iMSMediaEvent.isHeldCall()) {
                        broadcastItem.onVideoHeld(makeImsCallInfo);
                    }
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.mCallStateListeners.get(Integer.valueOf(phoneId)).finishBroadcast();
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.volte2.VolteNotifier$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE;

        static {
            int[] iArr = new int[IMSMediaEvent.MEDIA_STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE = iArr;
            try {
                iArr[IMSMediaEvent.MEDIA_STATE.VIDEO_HELD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_RESUMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE[IMSMediaEvent.MEDIA_STATE.VIDEO_AVAILABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[CallStateEvent.CALL_STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE = iArr2;
            try {
                iArr2[CallStateEvent.CALL_STATE.CALLING.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ESTABLISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.MODIFY_REQUESTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.MODIFIED.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.CONFERENCE_ADDED.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.CONFERENCE_REMOVED.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.HELD_LOCAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.HELD_REMOTE.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.HELD_BOTH.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ENDED.ordinal()] = 10;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE[CallStateEvent.CALL_STATE.ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }
}
