package com.sec.internal.ims.config.adapters;

import android.content.Context;
import android.os.Message;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.log.IMSLog;
import java.util.Calendar;

/* loaded from: classes.dex */
public class TelephonyAdapterPrimaryDeviceChn extends TelephonyAdapterPrimaryDeviceBase {
    private static final String LOG_TAG = TelephonyAdapterPrimaryDeviceChn.class.getSimpleName();

    public TelephonyAdapterPrimaryDeviceChn(Context context, IConfigModule iConfigModule, int i) {
        super(context, iConfigModule, i);
        registerSmsReceiver();
        initState();
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "message:" + message.what);
        int i = message.what;
        if (i == 1) {
            handleReceivedDataSms(message, false, false);
        } else if (i == 3) {
            handleOtpTimeout(false);
        } else {
            super.handleMessage(message);
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

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase
    protected void sendSmsPushForConfigRequest(boolean z) {
        IConfigModule iConfigModule = this.mModule;
        if (iConfigModule != null && !iConfigModule.isRcsEnabled(this.mPhoneId)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "RCS service is not supported for this sim or model, omit this sms push for config request!");
        } else {
            super.sendSmsPushForConfigRequest(z);
        }
    }

    protected class ReadyState extends TelephonyAdapterPrimaryDeviceBase.ReadyState {
        protected ReadyState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.ReadyState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceChn telephonyAdapterPrimaryDeviceChn = TelephonyAdapterPrimaryDeviceChn.this;
            if (telephonyAdapterPrimaryDeviceChn.mOtp != null && timeInMillis < telephonyAdapterPrimaryDeviceChn.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceChn.LOG_TAG, TelephonyAdapterPrimaryDeviceChn.this.mPhoneId, "OTP exist. send immediately");
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceChn.LOG_TAG, TelephonyAdapterPrimaryDeviceChn.this.mPhoneId, "OTP don't exist. wait OTP");
                try {
                    TelephonyAdapterPrimaryDeviceChn.this.mSemaphore.acquire();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                TelephonyAdapterPrimaryDeviceChn.this.removeMessages(3);
                IMSLog.i(TelephonyAdapterPrimaryDeviceChn.LOG_TAG, TelephonyAdapterPrimaryDeviceChn.this.mPhoneId, "receive OTP: " + IMSLog.checker(TelephonyAdapterPrimaryDeviceChn.this.mOtp));
            }
            return TelephonyAdapterPrimaryDeviceChn.this.mOtp;
        }
    }

    protected class AbsentState extends TelephonyAdapterPrimaryDeviceBase.AbsentState {
        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getDeviceId(int i) {
            return null;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getIdentityByPhoneId(int i) {
            return null;
        }

        protected AbsentState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceChn telephonyAdapterPrimaryDeviceChn = TelephonyAdapterPrimaryDeviceChn.this;
            if (telephonyAdapterPrimaryDeviceChn.mOtp != null && timeInMillis < telephonyAdapterPrimaryDeviceChn.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceChn.LOG_TAG, TelephonyAdapterPrimaryDeviceChn.this.mPhoneId, "OTP exist. send immediately");
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceChn.LOG_TAG, TelephonyAdapterPrimaryDeviceChn.this.mPhoneId, "OTP don't exist. wait OTP");
                try {
                    TelephonyAdapterPrimaryDeviceChn.this.mSemaphore.acquire();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                IMSLog.i(TelephonyAdapterPrimaryDeviceChn.LOG_TAG, TelephonyAdapterPrimaryDeviceChn.this.mPhoneId, "receive OTP:" + IMSLog.checker(TelephonyAdapterPrimaryDeviceChn.this.mOtp));
            }
            return TelephonyAdapterPrimaryDeviceChn.this.mOtp;
        }
    }
}
