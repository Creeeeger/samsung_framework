package com.sec.internal.ims.config.adapters;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import com.sec.ims.IAutoConfigurationListener;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.Iterator;

/* loaded from: classes.dex */
public class TelephonyAdapterPrimaryDeviceUp extends TelephonyAdapterPrimaryDeviceBase {
    private static final String LOG_TAG = TelephonyAdapterPrimaryDeviceUp.class.getSimpleName();

    public TelephonyAdapterPrimaryDeviceUp(Context context, IConfigModule iConfigModule, int i) {
        super(context, iConfigModule, i);
        registerSmsReceiver();
        registerPortSmsReceiver();
        initState();
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase
    protected void createSmsReceiver() {
        this.mSmsReceiver = new SmsReceiver();
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase
    protected void createPortSmsReceiver() {
        this.mPortSmsReceiver = new PortSmsReceiver();
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, android.os.Handler
    public void handleMessage(Message message) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "message:" + message.what);
        int i = message.what;
        if (i == 3) {
            this.mOtp = null;
            try {
                IMSLog.i(str, this.mPhoneId, "semaphore release with mCurrentPermits: " + this.mCurrentPermits);
                this.mSemaphore.release(this.mCurrentPermits);
                return;
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
                return;
            }
        }
        if (i != 4) {
            if (i != 5) {
                if (i == 8) {
                    if (this.mIsWaitingForOtp) {
                        notifyAutoConfigurationListener(50, true);
                        return;
                    }
                    return;
                }
                super.handleMessage(message);
                return;
            }
            this.mPortOtp = null;
            try {
                IMSLog.i(str, this.mPhoneId, "otp timeout: semaphore release with mCurrentPortPermits: " + this.mCurrentPortPermits);
                this.mPortOtpSemaphore.release(this.mCurrentPortPermits);
                this.mCurrentPortPermits = 0;
                return;
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                return;
            }
        }
        IMSLog.i(str, this.mPhoneId, "receive port sms");
        if (message.obj != null) {
            Mno simMno = SimUtil.getSimMno(this.mPhoneId);
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
            if (((String) message.obj).contains(TelephonyAdapterPrimaryDeviceBase.SMS_CONFIGURATION_REQUEST)) {
                if (!simMno.isEmeasewaoce() || ConfigUtil.isRcsAvailable(this.mContext, this.mPhoneId, simManagerFromSimSlot)) {
                    IMSLog.i(str, this.mPhoneId, "request force configuration");
                    this.mModule.getHandler().sendMessage(obtainMessage(4, Integer.valueOf(this.mPhoneId)));
                    return;
                } else {
                    IMSLog.i(str, this.mPhoneId, "RCS service is disabled(Default app is set as others or RCS switch turned off)");
                    return;
                }
            }
            removeMessages(5);
            this.mPortOtp = (String) message.obj;
            IMSLog.i(str, this.mPhoneId, "mPortOtp: " + IMSLog.checker(this.mPortOtp));
            this.mPortOtpReceivedTime = Calendar.getInstance().getTimeInMillis();
            try {
                IMSLog.i(str, this.mPhoneId, "otp received: semaphore release with mCurrentPortPermits: " + this.mCurrentPortPermits);
                this.mPortOtpSemaphore.release(this.mCurrentPortPermits);
                this.mCurrentPortPermits = 0;
                return;
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
                return;
            }
        }
        IMSLog.i(str, this.mPhoneId, "no SMS data!");
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
        protected ReadyState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSmsDestPort() {
            return TelephonyAdapterState.SMS_DEST_PORT;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSmsOrigPort() {
            return TelephonyAdapterState.SMS_ORIG_PORT;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getExistingOtp() {
            TelephonyAdapterPrimaryDeviceUp.this.mIsWaitingForOtp = false;
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            if (telephonyAdapterPrimaryDeviceUp.mOtp == null || timeInMillis >= telephonyAdapterPrimaryDeviceUp.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "getExistingOtp exist");
            return TelephonyAdapterPrimaryDeviceUp.this.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getExistingPortOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            if (telephonyAdapterPrimaryDeviceUp.mPortOtp == null || timeInMillis >= telephonyAdapterPrimaryDeviceUp.mPortOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "getExistingPortOtp exist");
            return TelephonyAdapterPrimaryDeviceUp.this.mPortOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.ReadyState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "getOtp");
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            telephonyAdapterPrimaryDeviceUp.mCurrentPermits = 0;
            telephonyAdapterPrimaryDeviceUp.mIsWaitingForOtp = true;
            telephonyAdapterPrimaryDeviceUp.sendMessageDelayed(telephonyAdapterPrimaryDeviceUp.obtainMessage(8), 300L);
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp2 = TelephonyAdapterPrimaryDeviceUp.this;
            telephonyAdapterPrimaryDeviceUp2.sendMessageDelayed(telephonyAdapterPrimaryDeviceUp2.obtainMessage(3), 310000L);
            try {
                TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp3 = TelephonyAdapterPrimaryDeviceUp.this;
                telephonyAdapterPrimaryDeviceUp3.mCurrentPermits = telephonyAdapterPrimaryDeviceUp3.mSemaphore.availablePermits() + 1;
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "semaphore acquire with mCurrentPermits: " + TelephonyAdapterPrimaryDeviceUp.this.mCurrentPermits);
                TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp4 = TelephonyAdapterPrimaryDeviceUp.this;
                telephonyAdapterPrimaryDeviceUp4.mSemaphore.acquire(telephonyAdapterPrimaryDeviceUp4.mCurrentPermits);
            } catch (IllegalArgumentException | InterruptedException e) {
                TelephonyAdapterPrimaryDeviceUp.this.mIsWaitingForOtp = false;
                e.printStackTrace();
            }
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp5 = TelephonyAdapterPrimaryDeviceUp.this;
            telephonyAdapterPrimaryDeviceUp5.mIsWaitingForOtp = false;
            return telephonyAdapterPrimaryDeviceUp5.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getPortOtp() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "getPortOtp");
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            telephonyAdapterPrimaryDeviceUp.mCurrentPortPermits = 0;
            telephonyAdapterPrimaryDeviceUp.sendMessageDelayed(telephonyAdapterPrimaryDeviceUp.obtainMessage(5), 300000L);
            try {
                TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp2 = TelephonyAdapterPrimaryDeviceUp.this;
                telephonyAdapterPrimaryDeviceUp2.mCurrentPortPermits = telephonyAdapterPrimaryDeviceUp2.mPortOtpSemaphore.availablePermits() + 1;
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "getPortOtp: semaphore acquire with mCurrentPortPermits: " + TelephonyAdapterPrimaryDeviceUp.this.mCurrentPortPermits);
                TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp3 = TelephonyAdapterPrimaryDeviceUp.this;
                telephonyAdapterPrimaryDeviceUp3.mPortOtpSemaphore.acquire(telephonyAdapterPrimaryDeviceUp3.mCurrentPortPermits);
            } catch (IllegalArgumentException | InterruptedException e) {
                e.printStackTrace();
            }
            return TelephonyAdapterPrimaryDeviceUp.this.mPortOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void registerAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
            if (iAutoConfigurationListener == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "listener: null");
                return;
            }
            synchronized (TelephonyAdapterPrimaryDeviceUp.this.mLock) {
                if (TelephonyAdapterPrimaryDeviceUp.this.mAutoConfigurationListener != null) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "register listener: " + iAutoConfigurationListener);
                    IMSLog.c(LogClass.TAPDU_LISTNER, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId + "," + iAutoConfigurationListener);
                    TelephonyAdapterPrimaryDeviceUp.this.mAutoConfigurationListener.register(iAutoConfigurationListener);
                    if (!TelephonyAdapterPrimaryDeviceUp.this.mPostponedNotification.isEmpty()) {
                        Iterator<Integer> it = TelephonyAdapterPrimaryDeviceUp.this.mPostponedNotification.keySet().iterator();
                        while (it.hasNext()) {
                            int intValue = it.next().intValue();
                            notifyAutoConfigurationListener(intValue, TelephonyAdapterPrimaryDeviceUp.this.mPostponedNotification.get(Integer.valueOf(intValue)).booleanValue());
                        }
                    }
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void unregisterAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
            if (iAutoConfigurationListener == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "listener: null");
                return;
            }
            synchronized (TelephonyAdapterPrimaryDeviceUp.this.mLock) {
                if (TelephonyAdapterPrimaryDeviceUp.this.mAutoConfigurationListener != null) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "unregister listener: " + iAutoConfigurationListener);
                    TelephonyAdapterPrimaryDeviceUp.this.mAutoConfigurationListener.unregister(iAutoConfigurationListener);
                    TelephonyAdapterPrimaryDeviceUp.this.mPostponedNotification.clear();
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void notifyAutoConfigurationListener(int i, boolean z) {
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "notifyAutoConfigurationListener: type: " + i + ", result: " + z);
            if (i != 50 && i != 52) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "unknown notification type");
                return;
            }
            if (i == 50 && !TelephonyAdapterPrimaryDeviceUp.this.mIsWaitingForOtp) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "ignore notification type, mIsWaitingForOtp: " + TelephonyAdapterPrimaryDeviceUp.this.mIsWaitingForOtp);
                return;
            }
            synchronized (TelephonyAdapterPrimaryDeviceUp.this.mLock) {
                RemoteCallbackList<IAutoConfigurationListener> remoteCallbackList = TelephonyAdapterPrimaryDeviceUp.this.mAutoConfigurationListener;
                if (remoteCallbackList == null) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "mAutoConfigurationListener: empty");
                    return;
                }
                try {
                    int beginBroadcast = remoteCallbackList.beginBroadcast();
                    IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "listener length: " + beginBroadcast);
                    if (i == 50) {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "onVerificationCodeNeeded");
                        IMSLog.c(LogClass.TAPDU_OTP_NEEDED, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId + ",VCN,LEN:" + beginBroadcast);
                    } else {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "onAutoConfigurationCompleted, result: " + z);
                        IMSLog.c(LogClass.TAPDU_ACS_RESULT, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId + ",ACS:" + z + ",LEN:" + beginBroadcast);
                    }
                    if (beginBroadcast == 0) {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "Listener not registered yet. Postpone notify later: " + i);
                        if (i == 52) {
                            TelephonyAdapterPrimaryDeviceUp.this.mPostponedNotification.clear();
                        }
                        TelephonyAdapterPrimaryDeviceUp.this.mPostponedNotification.put(Integer.valueOf(i), Boolean.valueOf(z));
                    }
                    for (int i2 = 0; i2 < beginBroadcast; i2++) {
                        IAutoConfigurationListener broadcastItem = TelephonyAdapterPrimaryDeviceUp.this.mAutoConfigurationListener.getBroadcastItem(i2);
                        if (i == 50) {
                            broadcastItem.onVerificationCodeNeeded();
                        } else {
                            broadcastItem.onAutoConfigurationCompleted(z);
                            TelephonyAdapterPrimaryDeviceUp.this.mPostponedNotification.clear();
                        }
                    }
                } catch (RemoteException | IllegalStateException | NullPointerException e) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "beginBroadcast Exception: " + e.getMessage());
                }
                try {
                    TelephonyAdapterPrimaryDeviceUp.this.mAutoConfigurationListener.finishBroadcast();
                } catch (IllegalStateException e2) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "finishBroadcast Exception: " + e2.getMessage());
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void sendVerificationCode(String str) {
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "sendVerificationCode value: " + str);
            IMSLog.c(LogClass.TAPDU_SEND_OTP, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId + ",VC:" + str);
            TelephonyAdapterPrimaryDeviceUp.this.removeMessages(3);
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "mIsWaitingForOtp: " + TelephonyAdapterPrimaryDeviceUp.this.mIsWaitingForOtp);
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            if (telephonyAdapterPrimaryDeviceUp.mIsWaitingForOtp) {
                telephonyAdapterPrimaryDeviceUp.mOtp = str;
                if (str != null) {
                    telephonyAdapterPrimaryDeviceUp.mOtpReceivedTime = Calendar.getInstance().getTimeInMillis();
                }
                try {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "semaphore release with mCurrentPermits: " + TelephonyAdapterPrimaryDeviceUp.this.mCurrentPermits);
                    TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp2 = TelephonyAdapterPrimaryDeviceUp.this;
                    telephonyAdapterPrimaryDeviceUp2.mSemaphore.release(telephonyAdapterPrimaryDeviceUp2.mCurrentPermits);
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                }
            }
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

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSmsDestPort() {
            return TelephonyAdapterState.SMS_DEST_PORT;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSmsOrigPort() {
            return TelephonyAdapterState.SMS_ORIG_PORT;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getExistingOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            if (telephonyAdapterPrimaryDeviceUp.mOtp == null || timeInMillis >= telephonyAdapterPrimaryDeviceUp.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "getExistingOtp exist");
            return TelephonyAdapterPrimaryDeviceUp.this.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getExistingPortOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            if (telephonyAdapterPrimaryDeviceUp.mPortOtp == null || timeInMillis >= telephonyAdapterPrimaryDeviceUp.mPortOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "getExistingPortOtp exist");
            return TelephonyAdapterPrimaryDeviceUp.this.mPortOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            if (telephonyAdapterPrimaryDeviceUp.mOtp == null || timeInMillis >= telephonyAdapterPrimaryDeviceUp.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "getOtp exist");
            return TelephonyAdapterPrimaryDeviceUp.this.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getPortOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            if (telephonyAdapterPrimaryDeviceUp.mPortOtp == null || timeInMillis >= telephonyAdapterPrimaryDeviceUp.mPortOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "getPortOtp exist");
            return TelephonyAdapterPrimaryDeviceUp.this.mPortOtp;
        }
    }

    private class SmsReceiver extends TelephonyAdapterPrimaryDeviceBase.SmsReceiverBase {
        private static final String SMS_OTP_FORMAT_IOT_SERVER = "your messenger verification code is";
        private static final String SMS_OTP_FORMAT_PROD_SERVER = "messenger's enhanced features have been enabled";
        private static final String SMS_OTP_NEW_FORMAT_GOOGLE_SERVER = "confirmation id";
        private static final String SMS_OTP_NEW_FORMAT_GOOGLE_SERVER_AMX = "activation code is";
        private static final String SMS_OTP_NEW_FORMAT_NEWPACE_SERVER = "the verification code for new messaging features";
        private static final String SMS_OTP_OLD_FORMAT_NEWPACE_SERVER = "here is your krypton code. please be aware that this code expires after 15 minutes then re-authentication might be needed";
        private static final String SMS_RECEIVED_ACTION = "android.provider.Telephony.SMS_RECEIVED";

        public SmsReceiver() {
            super();
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "SmsReceiver");
            IntentFilter intentFilter = new IntentFilter();
            this.mIntentFilter = intentFilter;
            intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.SmsReceiver, android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "onReceive");
            if (!intent.getAction().equals("android.provider.Telephony.SMS_RECEIVED")) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "invalid intent");
                return;
            }
            StringBuilder sb = new StringBuilder();
            Object[] objArr = (Object[]) intent.getExtras().get("pdus");
            if (objArr == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "invalid pdus");
                return;
            }
            String stringExtra = intent.getStringExtra("format");
            if (TextUtils.isEmpty(stringExtra)) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "invalid format");
                return;
            }
            int length = objArr.length;
            SmsMessage[] smsMessageArr = new SmsMessage[length];
            for (int i = 0; i < objArr.length; i++) {
                smsMessageArr[i] = SmsMessage.createFromPdu((byte[]) objArr[i], stringExtra);
            }
            for (int i2 = 0; i2 < length; i2++) {
                sb.append(smsMessageArr[i2].getDisplayMessageBody());
            }
            String sb2 = sb.toString();
            if (TextUtils.isEmpty(sb2)) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "invalid smsBody");
                return;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "smsBody: " + IMSLog.checker(sb2));
            String parseOtp = parseOtp(sb2);
            if (parseOtp == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "failed to parse smsBody, wait for next one");
                return;
            }
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            if (telephonyAdapterPrimaryDeviceUp.mIsWaitingForOtp) {
                telephonyAdapterPrimaryDeviceUp.mOtp = parseOtp;
                IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "mOtp: " + IMSLog.checker(TelephonyAdapterPrimaryDeviceUp.this.mOtp));
                TelephonyAdapterPrimaryDeviceUp.this.mOtpReceivedTime = Calendar.getInstance().getTimeInMillis();
            }
        }

        private String parseOtp(String str) {
            String stringBuffer;
            int length = str.length();
            if (str.toLowerCase().contains(SMS_OTP_FORMAT_PROD_SERVER) || str.toLowerCase().contains(SMS_OTP_FORMAT_IOT_SERVER)) {
                StringBuffer stringBuffer2 = new StringBuffer();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (charAt >= '0' && charAt <= '9') {
                        stringBuffer2.append(charAt);
                    }
                }
                stringBuffer = stringBuffer2.toString();
            } else if (str.toLowerCase().contains(SMS_OTP_NEW_FORMAT_GOOGLE_SERVER)) {
                StringBuffer stringBuffer3 = new StringBuffer();
                for (int indexOf = str.indexOf(58); indexOf > 0 && indexOf < length && indexOf < str.indexOf(41); indexOf++) {
                    stringBuffer3.append(str.charAt(indexOf));
                }
                stringBuffer = stringBuffer3.toString();
            } else if (str.toLowerCase().contains(SMS_OTP_NEW_FORMAT_GOOGLE_SERVER_AMX)) {
                StringBuffer stringBuffer4 = new StringBuffer();
                int indexOf2 = str.indexOf(40);
                while (true) {
                    indexOf2++;
                    if (indexOf2 <= 0 || indexOf2 >= length || indexOf2 >= str.indexOf(41)) {
                        break;
                    }
                    stringBuffer4.append(str.charAt(indexOf2));
                }
                stringBuffer = stringBuffer4.toString();
            } else if (str.toLowerCase().contains(SMS_OTP_OLD_FORMAT_NEWPACE_SERVER) || str.toLowerCase().contains(SMS_OTP_NEW_FORMAT_NEWPACE_SERVER)) {
                StringBuffer stringBuffer5 = new StringBuffer();
                for (int indexOf3 = str.indexOf(58); indexOf3 > 0 && indexOf3 < length; indexOf3++) {
                    char charAt2 = str.charAt(indexOf3);
                    if (charAt2 >= '0' && charAt2 <= '9') {
                        stringBuffer5.append(charAt2);
                    }
                }
                stringBuffer = stringBuffer5.toString();
            } else {
                stringBuffer = null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "parseOtp: " + IMSLog.checker(stringBuffer));
            return stringBuffer;
        }
    }

    private class PortSmsReceiver extends TelephonyAdapterPrimaryDeviceBase.PortSmsReceiverBase {
        private PortSmsReceiver() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.PortSmsReceiverBase, com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.SmsReceiver
        protected void readMessageFromSMSIntent(Intent intent) {
            SmsMessage smsMessage;
            SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
            IMSLog.i(TelephonyAdapterPrimaryDeviceUp.LOG_TAG, TelephonyAdapterPrimaryDeviceUp.this.mPhoneId, "readMessageFromSMSIntent: enter");
            if (messagesFromIntent == null || (smsMessage = messagesFromIntent[0]) == null) {
                return;
            }
            int slotId = SimManagerFactory.getSlotId(intent.getIntExtra(PhoneConstants.SUBSCRIPTION_KEY, -1));
            String displayMessageBody = smsMessage.getDisplayMessageBody();
            if (displayMessageBody == null) {
                displayMessageBody = new String(smsMessage.getUserData(), Charset.forName("UTF-16"));
            }
            Message obtainMessage = TelephonyAdapterPrimaryDeviceUp.this.obtainMessage();
            obtainMessage.what = 4;
            obtainMessage.arg1 = slotId;
            obtainMessage.obj = displayMessageBody;
            TelephonyAdapterPrimaryDeviceUp telephonyAdapterPrimaryDeviceUp = TelephonyAdapterPrimaryDeviceUp.this;
            if (telephonyAdapterPrimaryDeviceUp.mPhoneId == slotId) {
                telephonyAdapterPrimaryDeviceUp.sendMessage(obtainMessage);
            }
        }
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getOtp() {
        return this.mState.getOtp();
    }
}
