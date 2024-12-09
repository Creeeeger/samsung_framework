package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.os.RemoteCallbackList;
import com.sec.ims.ImsRegistration;
import com.sec.ims.volte2.IImsCallSessionEventListener;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.State;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class CallState extends State {
    protected Context mContext;
    CallStateMachine mCsm;
    protected RemoteCallbackList<IImsCallSessionEventListener> mListeners;
    protected IImsMediaController mMediaController;
    protected Mno mMno;
    protected IVolteServiceModuleInternal mModule;
    protected ImsRegistration mRegistration;
    protected IRegistrationManager mRegistrationManager;
    protected ImsCallSession mSession;
    protected ITelephonyManager mTelephonyManager;
    protected IVolteServiceInterface mVolteSvcIntf;
    protected String LOG_TAG = "CallStateMachine";
    protected String LOG_IDC_FW_TAG = "[IDC][FW]" + this.LOG_TAG;

    CallState(CallStateMachine callStateMachine) {
        this.mCsm = null;
        this.mContext = null;
        this.mModule = null;
        this.mMno = Mno.DEFAULT;
        this.mVolteSvcIntf = null;
        this.mListeners = null;
        this.mRegistrationManager = null;
        this.mMediaController = null;
        this.mSession = null;
        this.mRegistration = null;
        Context context = callStateMachine.mContext;
        this.mContext = context;
        this.mVolteSvcIntf = callStateMachine.mVolteSvcIntf;
        this.mMno = callStateMachine.mMno;
        this.mCsm = callStateMachine;
        this.mSession = callStateMachine.mSession;
        this.mRegistration = callStateMachine.mRegistration;
        this.mModule = callStateMachine.mModule;
        this.mRegistrationManager = callStateMachine.mRegistrationManager;
        this.mMediaController = callStateMachine.mMediaController;
        this.mListeners = callStateMachine.mListeners;
        this.mTelephonyManager = TelephonyManagerWrapper.getInstance(context);
    }

    public void setLogTag(int i) {
        this.LOG_TAG = IMSLog.appendSessionIdToLogTag(this.LOG_TAG, i);
    }
}
