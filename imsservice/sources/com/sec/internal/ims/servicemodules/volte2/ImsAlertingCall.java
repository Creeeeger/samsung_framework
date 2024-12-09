package com.sec.internal.ims.servicemodules.volte2;

import android.os.Bundle;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.SipReason;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;

/* loaded from: classes.dex */
public class ImsAlertingCall extends CallState {
    ImsAlertingCall(CallStateMachine callStateMachine) {
        super(callStateMachine);
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void enter() {
        KeepAliveSender keepAliveSender;
        this.mCsm.resetCallTypeAndErrorFlags();
        Log.i(this.LOG_TAG, "Enter [AlertingCall]");
        if (this.mMno == Mno.CMCC) {
            this.mSession.getCallProfile().setVCrtIsAlerting(true);
        }
        if ((this.mMno.isChn() || this.mMno.isOneOf(Mno.VIVA_BAHRAIN, Mno.ETISALAT_UAE)) && (keepAliveSender = this.mSession.mKaSender) != null) {
            keepAliveSender.start();
        }
        this.mCsm.isStartedCamera(this.mSession.getCallProfile().getCallType(), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0108, code lost:
    
        if (dbrLost_AlertingCall() != false) goto L64;
     */
    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean processMessage(android.os.Message r10) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.ImsAlertingCall.processMessage(android.os.Message):boolean");
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void exit() {
        this.mCsm.setPreviousState(this);
        KeepAliveSender keepAliveSender = this.mSession.mKaSender;
        if (keepAliveSender != null) {
            keepAliveSender.stop();
        }
        this.mCsm.stopRingTimer();
        if (this.mMno == Mno.CMCC) {
            this.mSession.getCallProfile().setVCrtIsAlerting(false);
        }
    }

    private void ringingBack_AlertingCall() {
        boolean z = this.mMno == Mno.RAKUTEN_JAPAN && this.mCsm.hasMessages(204);
        if (this.mRegistration != null && !z) {
            this.mCsm.startRingTimer(r1.getImsProfile().getRingbackTimer() * 1000);
        }
        this.mCsm.notifyOnRingingBack();
    }

    protected void sessionProgress_AlertingCall(int i) {
        int beginBroadcast = this.mListeners.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            try {
                this.mListeners.getBroadcastItem(i2).onSessionProgress(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mListeners.finishBroadcast();
    }

    private void established_AlertingCall() {
        IRegistrationGovernor registrationGovernor;
        CallStateMachine callStateMachine = this.mCsm;
        callStateMachine.transitionTo(callStateMachine.mInCall);
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration == null || (registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(imsRegistration.getHandle())) == null) {
            return;
        }
        registrationGovernor.onCallStatus(IRegistrationGovernor.CallEvent.EVENT_CALL_ESTABLISHED, null, this.mSession.getCallProfile().isDowngradedVideoCall() ? 2 : this.mSession.getCallProfile().getCallType());
    }

    private boolean dbrLost_AlertingCall() {
        Mno mno = this.mMno;
        if (mno != Mno.VIVA_KUWAIT && mno != Mno.TELEFONICA_GERMANY && mno != Mno.ETISALAT_UAE && mno != Mno.TELE2_SWE) {
            return false;
        }
        Log.e(this.LOG_TAG, "[AlertingCall] processMessage DBR LOST ignored!");
        return true;
    }

    private boolean error_AlertingCall(Message message) {
        this.mCsm.handleSPRoutgoingError(message);
        CallStateMachine callStateMachine = this.mCsm;
        if (!callStateMachine.mIsWPSCall) {
            return false;
        }
        callStateMachine.sendMessageDelayed(26, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
        return true;
    }

    private void earlymedia_AlertingCall(Message message) {
        Log.i(this.LOG_TAG, "mSession.getCallProfile().isVideoCRBT: " + this.mSession.getCallProfile().isVideoCRBT());
        if (this.mRegistration != null && this.mSession.getCallProfile().isVideoCRBT()) {
            this.mVolteSvcIntf.startVideoEarlyMedia(this.mSession.getSessionId());
        }
        this.mCsm.notifyOnEarlyMediaStarted(message.arg1);
    }

    private void update_AlertingCall(Message message) {
        Bundle bundle = (Bundle) message.obj;
        CallProfile parcelable = bundle.getParcelable("profile");
        int srvccVersion = this.mModule.getSrvccVersion(this.mSession.getPhoneId());
        if (parcelable != null || srvccVersion == 0) {
            return;
        }
        if (srvccVersion >= 10 || DeviceUtil.getGcfMode()) {
            Log.i(this.LOG_TAG, "MO aSRVCC supported");
            this.mVolteSvcIntf.sendReInvite(this.mSession.getSessionId(), new SipReason("SIP", bundle.getInt("cause"), bundle.getString("reasonText"), new String[0]));
        }
    }

    private void forwarded_AlertingCall() {
        this.mCsm.stopRingTimer();
        if (this.mMno.isKor()) {
            return;
        }
        this.mCsm.notifyOnCallForwarded();
    }
}
