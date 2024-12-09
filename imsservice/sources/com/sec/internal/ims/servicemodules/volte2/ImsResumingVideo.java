package com.sec.internal.ims.servicemodules.volte2;

import android.os.Message;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;

/* loaded from: classes.dex */
public class ImsResumingVideo extends CallState {
    ImsResumingVideo(CallStateMachine callStateMachine) {
        super(callStateMachine);
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void enter() {
        Log.i(this.LOG_TAG, "Enter [ResumingVideo]");
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public boolean processMessage(Message message) {
        Log.i(this.LOG_TAG, "[ResumingVideo] processMessage " + message.what);
        int i = message.what;
        if (i == 51) {
            Log.i(this.LOG_TAG, "[ResumingVideo] defer HOLD request.");
            this.mCsm.deferMessage(message);
            return true;
        }
        if (i == 71) {
            Log.i(this.LOG_TAG, "[ResumingVideo] defer RESUME request.");
            this.mCsm.deferMessage(message);
            return true;
        }
        if (i == 85) {
            Log.i(this.LOG_TAG, "[ResumingVideo] video resume failed, Try again");
            CallStateMachine callStateMachine = this.mCsm;
            callStateMachine.transitionTo(callStateMachine.mInCall);
            this.mCsm.sendMessageDelayed(81, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
            return true;
        }
        if (i != 502) {
            switch (i) {
                case 80:
                    Log.i(this.LOG_TAG, "[ResumingVideo] defer HOLD_VIDEO request.");
                    this.mCsm.deferMessage(message);
                    return true;
                case 81:
                    Log.i(this.LOG_TAG, "[ResumingVideo] defer RESUME_VIDEO request.");
                    this.mCsm.deferMessage(message);
                    return true;
                case 82:
                    Log.i(this.LOG_TAG, "[ResumingVideo] Video held by remote.");
                    this.mCsm.notifyOnModified(this.mSession.getCallProfile().getCallType());
                    CallStateMachine callStateMachine2 = this.mCsm;
                    callStateMachine2.transitionTo(callStateMachine2.mInCall);
                    return true;
                case 83:
                    Log.i(this.LOG_TAG, "[ResumingVideo] Video resumed.");
                    this.mCsm.notifyOnModified(this.mSession.getCallProfile().getCallType());
                    CallStateMachine callStateMachine3 = this.mCsm;
                    callStateMachine3.transitionTo(callStateMachine3.mInCall);
                    return true;
                default:
                    return false;
            }
        }
        if (this.mMno == Mno.ROGERS) {
            Log.i(this.LOG_TAG, "[ResumingVideo] defer RE_INVITE request.");
            this.mCsm.deferMessage(message);
            return true;
        }
        Log.i(this.LOG_TAG, "[ResumingVideo] ignore re-INVITE");
        return true;
    }

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void exit() {
        this.mCsm.setPreviousState(this);
    }
}
