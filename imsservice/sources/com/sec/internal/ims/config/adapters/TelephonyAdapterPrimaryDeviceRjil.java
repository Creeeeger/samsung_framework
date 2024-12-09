package com.sec.internal.ims.config.adapters;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.settings.ImsProfileLoaderInternal;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.ISimEventListener;
import com.sec.internal.log.IMSLog;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes.dex */
public class TelephonyAdapterPrimaryDeviceRjil extends TelephonyAdapterPrimaryDeviceBase {
    private static final String LOG_TAG = TelephonyAdapterPrimaryDeviceRjil.class.getSimpleName();
    protected SimEventListener mSimEventListener;

    public TelephonyAdapterPrimaryDeviceRjil(Context context, IConfigModule iConfigModule, int i) {
        super(context, iConfigModule, i);
        this.mSmsReceiver = new SmsReceiver();
        initState();
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase
    protected void registerSimEventListener() {
        this.mSimEventListener = new SimEventListener();
        if (this.mSimManager != null) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "register SIM event listener");
            this.mSimManager.registerForSimRefresh(this, 101, null);
            this.mSimManager.registerForSimRemoved(this, 101, null);
            this.mSimManager.registerSimCardEventListener(this.mSimEventListener);
        }
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, android.os.Handler
    public void handleMessage(Message message) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "message:" + message.what);
        int i = message.what;
        if (i == 1) {
            handleReceivedDataSms(message, false, false);
            return;
        }
        if (i == 3) {
            handleOtpTimeout(false);
            return;
        }
        if (i != 101) {
            return;
        }
        int simState = this.mTelephony.getSimState(this.mPhoneId);
        IMSLog.i(str, this.mPhoneId, "EVENT_SIM_REMOVED  SIM state" + simState);
        if (1 != simState || (this.mState instanceof AbsentState)) {
            return;
        }
        this.mState = new AbsentState();
    }

    protected class SimEventListener implements ISimEventListener {
        protected SimEventListener() {
        }

        @Override // com.sec.internal.interfaces.ims.core.ISimEventListener
        public void onReady(int i, boolean z) {
            TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil = TelephonyAdapterPrimaryDeviceRjil.this;
            int simState = telephonyAdapterPrimaryDeviceRjil.mTelephony.getSimState(telephonyAdapterPrimaryDeviceRjil.mPhoneId);
            IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "onSimStateChanged: " + simState + "absent" + z);
            if (5 == simState) {
                TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil2 = TelephonyAdapterPrimaryDeviceRjil.this;
                if (telephonyAdapterPrimaryDeviceRjil2.mState instanceof ReadyState) {
                    return;
                }
                telephonyAdapterPrimaryDeviceRjil2.mState = TelephonyAdapterPrimaryDeviceRjil.this.new ReadyState();
                return;
            }
            TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil3 = TelephonyAdapterPrimaryDeviceRjil.this;
            if (telephonyAdapterPrimaryDeviceRjil3.mState instanceof TelephonyAdapterPrimaryDeviceBase.IdleState) {
                return;
            }
            telephonyAdapterPrimaryDeviceRjil3.mState = new TelephonyAdapterPrimaryDeviceBase.IdleState();
        }
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase
    protected void getState(String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "getState: change to " + str);
        if (TelephonyAdapterState.READY_STATE.equals(str)) {
            this.mState = new ReadyState();
        } else if (TelephonyAdapterState.ABSENT_STATE.equals(str)) {
            this.mState = new AbsentState();
        } else {
            super.getState(str);
        }
    }

    protected class ReadyState extends TelephonyAdapterPrimaryDeviceBase.ReadyState {
        public ReadyState() {
            super();
            IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "TelephonyAdapter:ready state");
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.ReadyState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil = TelephonyAdapterPrimaryDeviceRjil.this;
            if (telephonyAdapterPrimaryDeviceRjil.mOtp != null && timeInMillis < telephonyAdapterPrimaryDeviceRjil.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "OTP exist. send immediately");
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "OTP don't exist. wait OTP");
                try {
                    TelephonyAdapterPrimaryDeviceRjil.this.mSemaphore.acquire();
                } catch (InterruptedException e) {
                    TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil2 = TelephonyAdapterPrimaryDeviceRjil.this;
                    telephonyAdapterPrimaryDeviceRjil2.mOtp = null;
                    telephonyAdapterPrimaryDeviceRjil2.mOtpReceivedTime = 0L;
                    e.printStackTrace();
                }
                TelephonyAdapterPrimaryDeviceRjil.this.removeMessages(3);
                IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "receive OTP: " + IMSLog.checker(TelephonyAdapterPrimaryDeviceRjil.this.mOtp));
            }
            return TelephonyAdapterPrimaryDeviceRjil.this.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void registerUneregisterForOTP(boolean z) {
            if (z) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "registerUneregisterForOTP");
                TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil = TelephonyAdapterPrimaryDeviceRjil.this;
                if (telephonyAdapterPrimaryDeviceRjil.mModule != null) {
                    Context context = telephonyAdapterPrimaryDeviceRjil.mContext;
                    TelephonyAdapterPrimaryDeviceBase.SmsReceiverBase smsReceiverBase = telephonyAdapterPrimaryDeviceRjil.mSmsReceiver;
                    context.registerReceiver(smsReceiverBase, smsReceiverBase.getIntentFilter());
                    return;
                }
                IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "disable SMS receiver");
                return;
            }
            TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil2 = TelephonyAdapterPrimaryDeviceRjil.this;
            if (telephonyAdapterPrimaryDeviceRjil2.mModule == null || telephonyAdapterPrimaryDeviceRjil2.mSmsReceiver == null) {
                return;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "unregister mSmsReceiver");
            TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil3 = TelephonyAdapterPrimaryDeviceRjil.this;
            telephonyAdapterPrimaryDeviceRjil3.mContext.unregisterReceiver(telephonyAdapterPrimaryDeviceRjil3.mSmsReceiver);
            TelephonyAdapterPrimaryDeviceRjil.this.mOtp = null;
        }
    }

    private class AbsentState extends TelephonyAdapterPrimaryDeviceBase.AbsentState {
        ImsProfile mImsProfile;

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getDeviceId(int i) {
            return null;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getIdentityByPhoneId(int i) {
            return null;
        }

        public AbsentState() {
            super();
            this.mImsProfile = null;
            IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "TelephonyAdapter:Absent state");
            List<ImsProfile> profileList = ImsProfileLoaderInternal.getProfileList(TelephonyAdapterPrimaryDeviceRjil.this.mContext, SimManagerFactory.getSimManager().getSimSlotIndex());
            if (profileList != null && profileList.size() > 0 && profileList.get(0) != null) {
                this.mImsProfile = profileList.get(0);
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "AbsentState : no ImsProfile loaded");
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil = TelephonyAdapterPrimaryDeviceRjil.this;
            if (telephonyAdapterPrimaryDeviceRjil.mOtp != null && timeInMillis < telephonyAdapterPrimaryDeviceRjil.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "OTP exist. send immediately");
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "OTP don't exist. wait OTP");
                try {
                    TelephonyAdapterPrimaryDeviceRjil.this.mSemaphore.acquire();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "receive OTP: " + IMSLog.checker(TelephonyAdapterPrimaryDeviceRjil.this.mOtp));
            }
            return TelephonyAdapterPrimaryDeviceRjil.this.mOtp;
        }
    }

    protected class SmsReceiver extends TelephonyAdapterPrimaryDeviceBase.SmsReceiverBase {
        protected SmsReceiver() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.SmsReceiverBase, com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.SmsReceiver
        protected void readMessageFromSMSIntent(Intent intent) {
            SmsMessage smsMessage;
            SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
            IMSLog.i(TelephonyAdapterPrimaryDeviceRjil.LOG_TAG, TelephonyAdapterPrimaryDeviceRjil.this.mPhoneId, "readMessageFromSMSIntent: enter");
            if (messagesFromIntent == null || (smsMessage = messagesFromIntent[0]) == null) {
                return;
            }
            String displayMessageBody = smsMessage.getDisplayMessageBody();
            if (displayMessageBody == null) {
                displayMessageBody = new String(smsMessage.getUserData(), Charset.forName("UTF-16"));
            }
            TelephonyAdapterPrimaryDeviceRjil telephonyAdapterPrimaryDeviceRjil = TelephonyAdapterPrimaryDeviceRjil.this;
            telephonyAdapterPrimaryDeviceRjil.sendMessage(telephonyAdapterPrimaryDeviceRjil.obtainMessage(1, displayMessageBody));
        }
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void cleanup() {
        if (this.mSimManager != null && this.mSimEventListener != null) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "unregister mSimEventListener");
            this.mSimManager.deRegisterSimCardEventListener(this.mSimEventListener);
            this.mSimManager.deregisterForSimRefresh(this);
            this.mSimManager.deregisterForSimRemoved(this);
            this.mSimEventListener = null;
        }
        this.mState.cleanup();
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void registerUneregisterForOTP(boolean z) {
        this.mState.registerUneregisterForOTP(z);
    }
}
