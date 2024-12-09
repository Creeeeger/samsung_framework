package com.sec.internal.ims.servicemodules.volte2;

import android.os.Message;
import android.util.Log;
import com.sec.epdg.EpdgManager;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;

/* loaded from: classes.dex */
public class ImsCallDedicatedBearer {
    private static final String LOG_TAG = "ImsCallDedicatedBearer";
    private PreciseAlarmManager mAm;
    private boolean mIsDRBLost;
    private Mno mMno;
    private IVolteServiceModuleInternal mModule;
    private ImsRegistration mRegistration;
    private IRegistrationManager mRegistrationManager;
    private int mRttBearerState;
    private Message mRttDedicatedBearerTimeoutMessage;
    private ImsCallSession mSession;
    private int mVideoBearerState;
    private int mVideoNGbrBearerState;
    private int mVoiceBearerState;
    private CallStateMachine smCallStateMachine;

    public ImsCallDedicatedBearer(ImsCallSession imsCallSession, IVolteServiceModuleInternal iVolteServiceModuleInternal, ImsRegistration imsRegistration, IRegistrationManager iRegistrationManager, Mno mno, PreciseAlarmManager preciseAlarmManager, CallStateMachine callStateMachine) {
        this.mSession = null;
        this.mRegistrationManager = null;
        this.mModule = null;
        this.smCallStateMachine = null;
        this.mRegistration = null;
        this.mAm = null;
        char c = Mno.MVNO_DELIMITER;
        this.mVoiceBearerState = 3;
        this.mVideoBearerState = 3;
        this.mVideoNGbrBearerState = 3;
        this.mRttBearerState = 3;
        this.mRttDedicatedBearerTimeoutMessage = null;
        this.mIsDRBLost = false;
        this.mSession = imsCallSession;
        this.mModule = iVolteServiceModuleInternal;
        this.mRegistration = imsRegistration;
        this.mRegistrationManager = iRegistrationManager;
        this.mMno = mno;
        this.smCallStateMachine = callStateMachine;
        this.mAm = preciseAlarmManager;
    }

    private boolean isIgnoredDedicatedBearLost(int i) {
        if ((i == 99 || i == 1) && this.mMno == Mno.ATT) {
            return true;
        }
        return i != 99 && (this.mMno.isKor() || this.mMno.isOneOf(Mno.VZW, Mno.TELENOR_NORWAY, Mno.SFR, Mno.TELE2NL, Mno.SWISSCOM, Mno.CLARO_PERU, Mno.ENTEL_PERU, Mno.SMARTFREN, Mno.CABLE_PANAMA));
    }

    private void onDedicatedBearerLost(int i) {
        EpdgManager epdgManager;
        if (isIgnoredDedicatedBearLost(i)) {
            Log.i(LOG_TAG, "onDedicatedBearerLost: ignore DBR lost for mno:" + this.mMno + " qci:" + i);
            return;
        }
        if (this.mMno.isChn() && i == 1 && this.smCallStateMachine.getState() == CallConstants.STATE.IncomingCall) {
            Log.i(LOG_TAG, "onDedicatedBearerLost: ignore DBR lost at incoming state for mno:" + this.mMno + " qci:" + i);
            return;
        }
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mSession.getPhoneId());
        if (simManagerFromSimSlot != null && simManagerFromSimSlot.isSimAvailable() && this.mRegistrationManager.isVoWiFiSupported(this.mSession.getPhoneId()) && (((epdgManager = this.mModule.getEpdgManager()) != null && epdgManager.isDuringHandoverForIMSBySim(this.mSession.getPhoneId())) || this.mSession.isEpdgCall())) {
            Log.i(LOG_TAG, "onDedicatedBearerLost: ignore Dedicated Bearer Lost due to EPDG for mno:" + this.mMno + ", qci:" + i);
            return;
        }
        if (this.mMno == Mno.KDDI && this.smCallStateMachine.mConfCallAdded) {
            Log.i(LOG_TAG, "onDedicatedBearerLost: igonre dedicated Bearer Lost mno:" + this.mMno + " after ending 3way conference call");
            return;
        }
        Log.i(LOG_TAG, "onDedicatedBearerLost: Dedicated Bearer Lost mno:" + this.mMno + ", qci:" + i);
        if (i == 99) {
            if (this.smCallStateMachine.hasMessages(5000)) {
                return;
            }
            Message obtainMessage = this.smCallStateMachine.obtainMessage(210);
            this.mRttDedicatedBearerTimeoutMessage = obtainMessage;
            this.smCallStateMachine.sendMessageDelayed(obtainMessage, 500L);
            return;
        }
        this.mIsDRBLost = true;
        this.smCallStateMachine.sendMessageDelayed(5000, i, this.mMno.isChn() ? 500 : 1000);
    }

    public void setDedicatedBearerState(int i, int i2) {
        Log.i(LOG_TAG, "qci:" + i + ", state:" + i2);
        if (i == 1) {
            if (this.mVoiceBearerState != 3 && i2 == 3) {
                onDedicatedBearerLost(i);
            }
            this.mVoiceBearerState = i2;
            return;
        }
        if (i == 2 || i == 3) {
            Mno mno = this.mMno;
            if ((mno == Mno.CTC || mno == Mno.CU || mno == Mno.CTCMO) && this.mVideoBearerState != 3 && i2 == 3) {
                onDedicatedBearerLost(i);
            }
            this.mVideoBearerState = i2;
            return;
        }
        if (i == 7 || i == 8 || i == 9) {
            this.mVideoNGbrBearerState = i2;
            return;
        }
        if (i != 99) {
            return;
        }
        int i3 = this.mRttBearerState;
        if (i3 == 3 && i2 == 1) {
            this.mSession.stopRttDedicatedBearerTimer();
        } else if (i3 == 1 && i2 == 3) {
            onDedicatedBearerLost(i);
        }
        this.mRttBearerState = i2;
    }

    public int getDedicatedBearerState(int i) {
        int i2;
        if (i == 1) {
            i2 = this.mVoiceBearerState;
        } else {
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    if (i == 7 || i == 8 || i == 9) {
                        i2 = this.mVideoNGbrBearerState;
                    } else if (i == 99) {
                        i2 = this.mRttBearerState;
                    } else {
                        Log.i(LOG_TAG, "unknown qci:" + i);
                    }
                }
            }
            i2 = this.mVideoBearerState;
        }
        Log.i(LOG_TAG, "qci:" + i + ", state:" + i2);
        return i2;
    }

    protected void startRttDedicatedBearerTimer(long j) {
        if (j <= 0) {
            Log.i(LOG_TAG, "startRttDedicatedBearerTimer: Not start RttDedicatedBearerTimer : millis = " + j);
            return;
        }
        Mno mno = this.mMno;
        if (mno == Mno.ATT || (mno == Mno.TMOUS && this.mSession.mIsNrSaMode)) {
            Log.i(LOG_TAG, "startRttDedicatedBearerTimer: Not start RttDedicatedBearerTimer");
            return;
        }
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration != null && imsRegistration.getImsProfile() != null && this.mRegistration.getImsProfile().getUsePrecondition() == 0) {
            Log.i(LOG_TAG, "startRttDedicatedBearerTimer: Not start RttDedicatedBearerTimer");
            return;
        }
        if (getDedicatedBearerState(99) != 3) {
            Log.i(LOG_TAG, "RTT Dedicated Bearer opened");
            return;
        }
        if (this.mRttDedicatedBearerTimeoutMessage != null) {
            Log.i(LOG_TAG, "RTT Dedicated Bearer Timer already has been started");
            return;
        }
        Log.i(LOG_TAG, "startRttDedicatedBearerTimer: " + j);
        stopRttDedicatedBearerTimer();
        Message obtainMessage = this.smCallStateMachine.obtainMessage(209);
        this.mRttDedicatedBearerTimeoutMessage = obtainMessage;
        this.mAm.sendMessageDelayed(obtainMessage, j);
    }

    protected void stopRttDedicatedBearerTimer() {
        if (this.mRttDedicatedBearerTimeoutMessage == null) {
            return;
        }
        Log.i(LOG_TAG, "stopRttDedicatedBearerTimer: ");
        this.mAm.removeMessage(this.mRttDedicatedBearerTimeoutMessage);
        this.mRttDedicatedBearerTimeoutMessage = null;
    }

    protected void setRttDedicatedBearerTimeoutMessage(Message message) {
        this.mRttDedicatedBearerTimeoutMessage = message;
    }

    public boolean getDRBLost() {
        return this.mIsDRBLost;
    }

    public void setDRBLost(boolean z) {
        this.mIsDRBLost = z;
    }
}
