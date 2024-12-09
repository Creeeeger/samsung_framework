package com.sec.internal.imsphone.cmc;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.sec.ims.volte2.IImsCallSession;
import com.sec.ims.volte2.IImsCallSessionEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.ims.volte2.data.MediaProfile;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class CmcCallSessionManager {
    private static final String LOG_TAG = "CmcCallSessionManager";
    private ICmcConnectivityController mCC;
    private IImsCallSessionEventListener mImpleEventListener;
    private IImsCallSession mMainSession;
    private IVolteServiceModule mVolteServiceModule;
    private Map<Integer, IImsCallSession> mSubSessionList = new ConcurrentHashMap();
    private int mReplacedSessionId = 0;
    private String mTargetNumber = "";
    private CallProfile mReservedCallProfile = null;
    private boolean mIsReplacedSession = false;

    public CmcCallSessionManager(IImsCallSession iImsCallSession, ICmcConnectivityController iCmcConnectivityController, IVolteServiceModule iVolteServiceModule) {
        Log.i(LOG_TAG, "add mainSession");
        this.mMainSession = iImsCallSession;
        this.mCC = iCmcConnectivityController;
        this.mVolteServiceModule = iVolteServiceModule;
    }

    public int getP2pSessionSize() {
        return this.mSubSessionList.size();
    }

    public boolean isExistP2pConnection() {
        return this.mCC.isExistP2pConnection();
    }

    public boolean isReplacedSession() {
        Log.i(LOG_TAG, "mIsReplacedSession: " + this.mIsReplacedSession);
        return this.mIsReplacedSession;
    }

    public void addP2pSession(IImsCallSession iImsCallSession) {
        try {
            if (iImsCallSession == null) {
                Log.i(LOG_TAG, "session is null. do not add");
                return;
            }
            if (this.mSubSessionList.containsKey(Integer.valueOf(iImsCallSession.getCallId()))) {
                Log.i(LOG_TAG, "already contains session with this callId! Return");
                return;
            }
            this.mSubSessionList.put(Integer.valueOf(iImsCallSession.getCallId()), iImsCallSession);
            if (this.mImpleEventListener != null) {
                Log.i(LOG_TAG, "register VolteEventListener for [SUB] session: " + iImsCallSession.getCallId());
                iImsCallSession.registerSessionEventListener(new VolteEventListener(iImsCallSession));
            }
            Log.i(LOG_TAG, "mSubSessionList size: " + getP2pSessionSize());
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "getCallId failed due to " + e.getMessage());
        }
    }

    public void startP2pSessions(boolean z) throws RemoteException {
        if (z) {
            getMainSession().start(this.mTargetNumber, (CallProfile) null);
        }
        Iterator<Map.Entry<Integer, IImsCallSession>> it = this.mSubSessionList.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().start(this.mTargetNumber, (CallProfile) null);
        }
    }

    public void registerSessionEventListener(IImsCallSessionEventListener iImsCallSessionEventListener) throws RemoteException {
        this.mImpleEventListener = iImsCallSessionEventListener;
        this.mMainSession.registerSessionEventListener(new VolteEventListener(this.mMainSession));
        Log.i(LOG_TAG, "register VolteEventListener for [MAIN] session: " + this.mMainSession.getCallId());
        Iterator<Map.Entry<Integer, IImsCallSession>> it = this.mSubSessionList.entrySet().iterator();
        while (it.hasNext()) {
            IImsCallSession value = it.next().getValue();
            VolteEventListener volteEventListener = new VolteEventListener(value);
            Log.i(LOG_TAG, "register VolteEventListener for [SUB] session: " + value.getCallId());
            value.registerSessionEventListener(volteEventListener);
        }
    }

    public int getPhoneId() throws RemoteException {
        IImsCallSession iImsCallSession = this.mMainSession;
        if (iImsCallSession == null) {
            return 0;
        }
        return iImsCallSession.getPhoneId();
    }

    public int getCallId() throws RemoteException {
        IImsCallSession iImsCallSession = this.mMainSession;
        if (iImsCallSession == null) {
            return 0;
        }
        return iImsCallSession.getCallId();
    }

    public IImsCallSession getMainSession() {
        return this.mMainSession;
    }

    public void setMainSession(IImsCallSession iImsCallSession) {
        this.mMainSession = iImsCallSession;
    }

    public void setReservedCallProfile(CallProfile callProfile) {
        this.mReservedCallProfile = callProfile;
    }

    public int getSessionId() throws RemoteException {
        Log.i(LOG_TAG, "current sessionId: " + this.mMainSession.getSessionId() + ", mReplacedSessionId:" + this.mReplacedSessionId);
        int i = this.mReplacedSessionId;
        return i != 0 ? i : this.mMainSession.getSessionId();
    }

    public CallProfile getCallProfile() throws RemoteException {
        IImsCallSession iImsCallSession = this.mMainSession;
        if (iImsCallSession == null) {
            if (this.mReservedCallProfile != null) {
                Log.i(LOG_TAG, "return reserved callProfile");
                return this.mReservedCallProfile;
            }
            Log.i(LOG_TAG, "return dummy callProfile");
            return new CallProfile();
        }
        return iImsCallSession.getCallProfile();
    }

    public int start(String str, CallProfile callProfile) throws RemoteException {
        if (this.mMainSession == null) {
            Log.i(LOG_TAG, "need to create p2p sessions: " + str);
            this.mTargetNumber = str;
            return 0;
        }
        for (Map.Entry<Integer, IImsCallSession> entry : this.mSubSessionList.entrySet()) {
            Log.i(LOG_TAG, "start(), subSession cmcType: " + entry.getValue().getCmcType());
            entry.getValue().start(str, callProfile);
        }
        Log.i(LOG_TAG, "start(), mainSession cmcType: " + this.mMainSession.getCmcType());
        return this.mMainSession.start(str, callProfile);
    }

    public boolean terminate(int i) throws RemoteException {
        IImsCallSession iImsCallSession = this.mMainSession;
        if (iImsCallSession == null) {
            Log.i(LOG_TAG, "not yet start call session. update call state as terminated.");
            return false;
        }
        try {
            iImsCallSession.terminate(i);
        } catch (RemoteException unused) {
            Log.e(LOG_TAG, "exception session is maybe a cmcSession, need to terminate subSession");
        }
        Iterator<Map.Entry<Integer, IImsCallSession>> it = this.mSubSessionList.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().terminate(i);
        }
        return true;
    }

    private class VolteEventListener extends IImsCallSessionEventListener.Stub {
        private IImsCallSession mSession;

        public void notifyReadyToHandleImsCallbacks() {
        }

        public void onCallQualityChanged() throws RemoteException {
        }

        public void onEPdgUnavailable(int i) {
        }

        public void onRetryingVoLteOrCsCall(int i) throws RemoteException {
        }

        public void onSessionUpdateRequested(int i, byte[] bArr) {
        }

        public void onStopAlertTone() {
        }

        public void onTtyTextRequest(int i, byte[] bArr) {
        }

        public void onUssdResponse(int i) throws RemoteException {
        }

        VolteEventListener(IImsCallSession iImsCallSession) {
            this.mSession = iImsCallSession;
        }

        public void onCalling() throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onCalling()");
            IImsCallSession iImsCallSession = this.mSession;
            if (iImsCallSession == null || iImsCallSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onCalling();
        }

        public void onTrying() throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onTrying()");
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onTrying();
        }

        public void onRingingBack() throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onRingingBack()");
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onRingingBack();
        }

        public void onSessionProgress(int i) throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onSessionProgress()");
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onSessionProgress(i);
        }

        public void onEarlyMediaStarted(int i) throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onEarlyMediaStarted()");
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onEarlyMediaStarted(i);
        }

        public void onEstablished(int i) throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onEstablished(), established on session: " + this.mSession.getSessionId() + ", mainSession: " + this.mSession.getSessionId());
            if (CmcCallSessionManager.this.mMainSession.getCallId() != this.mSession.getCallId()) {
                CmcCallSessionManager cmcCallSessionManager = CmcCallSessionManager.this;
                cmcCallSessionManager.mReplacedSessionId = cmcCallSessionManager.mMainSession.getSessionId();
                try {
                    Log.i(CmcCallSessionManager.LOG_TAG, "prev main session terminate, replaced mainSessionId: " + CmcCallSessionManager.this.mReplacedSessionId);
                    CmcCallSessionManager.this.mMainSession.terminate(5);
                } catch (RemoteException e) {
                    Log.e(CmcCallSessionManager.LOG_TAG, "main terminate failed.." + e);
                }
                Log.i(CmcCallSessionManager.LOG_TAG, "switch main session to p2p session.");
                CmcCallSessionManager.this.mMainSession = this.mSession;
                CmcCallSessionManager.this.mSubSessionList.remove(Integer.valueOf(this.mSession.getCallId()));
            }
            CmcCallSessionManager.this.mImpleEventListener.onEstablished(i);
            Log.i(CmcCallSessionManager.LOG_TAG, "mSubSessionList size: " + CmcCallSessionManager.this.getP2pSessionSize());
            Iterator it = CmcCallSessionManager.this.mSubSessionList.entrySet().iterator();
            while (it.hasNext()) {
                IImsCallSession iImsCallSession = (IImsCallSession) ((Map.Entry) it.next()).getValue();
                if (iImsCallSession.getCallId() != this.mSession.getCallId()) {
                    try {
                        iImsCallSession.terminate(5);
                    } catch (RemoteException e2) {
                        Log.e(CmcCallSessionManager.LOG_TAG, "p2p terminate failed.." + e2);
                    }
                }
            }
        }

        public void onFailure(int i) throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onFailure() : reason = " + i);
            IImsCallSession iImsCallSession = this.mSession;
            if (iImsCallSession == null) {
                Log.e(CmcCallSessionManager.LOG_TAG, "already ended!!");
                return;
            }
            if (iImsCallSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                Log.i(CmcCallSessionManager.LOG_TAG, "remove session from mSubSessionList");
                CmcCallSessionManager.this.mSubSessionList.remove(Integer.valueOf(this.mSession.getCallId()));
                Log.i(CmcCallSessionManager.LOG_TAG, "mSubSessionList size: " + CmcCallSessionManager.this.getP2pSessionSize());
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onFailure(i);
            this.mSession = null;
        }

        public void onSwitched(int i) throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onSwitched()");
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onSwitched(i);
        }

        public void onHeld(boolean z, boolean z2) throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onHeld(z, z2);
        }

        public void onResumed(boolean z) throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onResumed(z);
        }

        public void onForwarded() throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onForwarded();
        }

        public void onEnded(int i) throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onEnded(), error: " + i);
            if (this.mSession == null) {
                Log.e(CmcCallSessionManager.LOG_TAG, "already ended!!");
                return;
            }
            CmcCallSessionManager.this.mIsReplacedSession = false;
            Log.i(CmcCallSessionManager.LOG_TAG, "MainSession: " + CmcCallSessionManager.this.mMainSession.getCallId() + ", cmcType: " + CmcCallSessionManager.this.mMainSession.getCmcType());
            Log.i(CmcCallSessionManager.LOG_TAG, "mSession: " + this.mSession.getCallId() + ", cmcType: " + this.mSession.getCmcType());
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                Log.i(CmcCallSessionManager.LOG_TAG, "mMainSession callState: " + CallConstants.STATE.values()[CmcCallSessionManager.this.mMainSession.getCallStateOrdinal()]);
                CmcCallSessionManager.this.mSubSessionList.remove(Integer.valueOf(this.mSession.getCallId()));
                Log.i(CmcCallSessionManager.LOG_TAG, "mSubSessionList size: " + CmcCallSessionManager.this.getP2pSessionSize());
                if (CallConstants.STATE.values()[CmcCallSessionManager.this.mMainSession.getCallStateOrdinal()] != CallConstants.STATE.InCall && CallConstants.STATE.values()[CmcCallSessionManager.this.mMainSession.getCallStateOrdinal()] != CallConstants.STATE.AlertingCall) {
                    Log.i(CmcCallSessionManager.LOG_TAG, "CMC session ended, switch mainSession to p2p session.");
                    CmcCallSessionManager.this.mMainSession = this.mSession;
                    CmcCallSessionManager.this.mIsReplacedSession = true;
                } else {
                    Log.i(CmcCallSessionManager.LOG_TAG, "SUB(WIFI or WIFI-DIRECT) session ended, ignore onEnded");
                    this.mSession = null;
                    return;
                }
            } else if (CmcCallSessionManager.this.mSubSessionList.size() > 0) {
                Log.i(CmcCallSessionManager.LOG_TAG, "Ignore onEnded as there are other call sessions waiting");
                return;
            } else {
                CmcCallSessionManager.this.mReplacedSessionId = 0;
                CmcCallSessionManager.this.mSubSessionList.remove(Integer.valueOf(this.mSession.getCallId()));
            }
            CmcCallSessionManager.this.mImpleEventListener.onEnded(i);
            this.mSession = null;
        }

        public void onError(int i, String str, int i2) throws RemoteException {
            Log.i(CmcCallSessionManager.LOG_TAG, "onError(), error: " + i);
            if (this.mSession == null) {
                Log.e(CmcCallSessionManager.LOG_TAG, "already ended!!");
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onError(i, str, i2);
            if (i != 1105 && i != 1106 && i != 1118 && i != 1119) {
                switch (i) {
                    case 1109:
                    case 1110:
                    case NSDSNamespaces.NSDSResponseCode.ERROR_SERVER_ERROR /* 1111 */:
                    case 1112:
                        break;
                    default:
                        this.mSession = null;
                        break;
                }
                return;
            }
            Log.i(CmcCallSessionManager.LOG_TAG, "Do not set mSession to null");
        }

        public void onProfileUpdated(MediaProfile mediaProfile, MediaProfile mediaProfile2) throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onProfileUpdated(mediaProfile, mediaProfile2);
        }

        public void onConferenceEstablished() throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onConferenceEstablished();
        }

        public void onParticipantUpdated(int i, String[] strArr, int[] iArr, int[] iArr2) throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onParticipantUpdated(i, strArr, iArr, iArr2);
        }

        public void onParticipantAdded(int i) throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onParticipantAdded(i);
        }

        public void onParticipantRemoved(int i) throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onParticipantRemoved(i);
        }

        public void onConfParticipantHeld(int i, boolean z) throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onConfParticipantHeld(i, z);
        }

        public void onConfParticipantResumed(int i, boolean z) throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onConfParticipantResumed(i, z);
        }

        public void onUssdReceived(int i, int i2, byte[] bArr) throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onUssdReceived(i, i2, bArr);
        }

        public void onEpdgStateChanged() throws RemoteException {
            if (this.mSession.getCallId() != CmcCallSessionManager.this.mMainSession.getCallId()) {
                return;
            }
            CmcCallSessionManager.this.mImpleEventListener.onEpdgStateChanged();
        }

        public void onSessionChanged(int i) throws RemoteException {
            CmcCallSessionManager.this.mImpleEventListener.onSessionChanged(i);
        }

        public void onImsGeneralEvent(String str, Bundle bundle) throws RemoteException {
            CmcCallSessionManager.this.mImpleEventListener.onImsGeneralEvent(str, bundle);
        }
    }
}
