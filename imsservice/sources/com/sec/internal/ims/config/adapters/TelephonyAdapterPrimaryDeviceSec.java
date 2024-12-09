package com.sec.internal.ims.config.adapters;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.sec.ims.IAutoConfigurationListener;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.log.IMSLog;
import java.util.Calendar;
import java.util.Iterator;

/* loaded from: classes.dex */
public class TelephonyAdapterPrimaryDeviceSec extends TelephonyAdapterPrimaryDeviceBase {
    private static final String LOG_TAG = TelephonyAdapterPrimaryDeviceSec.class.getSimpleName();
    private static final String NIRSMS_KEYWORD = "NIRSMS0001";

    public TelephonyAdapterPrimaryDeviceSec(Context context, IConfigModule iConfigModule, int i) {
        super(context, iConfigModule, i);
        registerPortSmsReceiver();
        initState();
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
        Object obj = message.obj;
        if (obj != null) {
            if (((String) obj).contains(TelephonyAdapterPrimaryDeviceBase.SMS_CONFIGURATION_REQUEST)) {
                boolean z = ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, this.mPhoneId) != -1;
                IMSLog.c(LogClass.TAPDS_RECE_NRCR, this.mPhoneId + ",NRCR:" + TelephonyAdapterPrimaryDeviceBase.SMS_CONFIGURATION_REQUEST + ", RcsUserSetting:" + z);
                if (z) {
                    IMSLog.i(str, this.mPhoneId, "force configuration request");
                    this.mModule.getHandler().sendMessage(obtainMessage(4, Integer.valueOf(this.mPhoneId)));
                    return;
                } else {
                    IMSLog.i(str, this.mPhoneId, "User didn't try RCS service yet");
                    return;
                }
            }
            removeMessages(5);
            this.mPortOtp = (String) message.obj;
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
        public ReadyState() {
            super();
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "ready state");
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.ReadyState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "getOtp");
            TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec = TelephonyAdapterPrimaryDeviceSec.this;
            telephonyAdapterPrimaryDeviceSec.mCurrentPermits = 0;
            telephonyAdapterPrimaryDeviceSec.mIsWaitingForOtp = true;
            telephonyAdapterPrimaryDeviceSec.sendMessageDelayed(telephonyAdapterPrimaryDeviceSec.obtainMessage(8), 300L);
            TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec2 = TelephonyAdapterPrimaryDeviceSec.this;
            telephonyAdapterPrimaryDeviceSec2.sendMessageDelayed(telephonyAdapterPrimaryDeviceSec2.obtainMessage(3), 310000L);
            try {
                TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec3 = TelephonyAdapterPrimaryDeviceSec.this;
                telephonyAdapterPrimaryDeviceSec3.mCurrentPermits = telephonyAdapterPrimaryDeviceSec3.mSemaphore.availablePermits() + 1;
                IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "semaphore acquire with mCurrentPermits: " + TelephonyAdapterPrimaryDeviceSec.this.mCurrentPermits);
                TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec4 = TelephonyAdapterPrimaryDeviceSec.this;
                telephonyAdapterPrimaryDeviceSec4.mSemaphore.acquire(telephonyAdapterPrimaryDeviceSec4.mCurrentPermits);
            } catch (IllegalArgumentException e) {
                TelephonyAdapterPrimaryDeviceSec.this.mIsWaitingForOtp = false;
                e.printStackTrace();
            } catch (InterruptedException e2) {
                TelephonyAdapterPrimaryDeviceSec.this.mIsWaitingForOtp = false;
                e2.printStackTrace();
            }
            TelephonyAdapterPrimaryDeviceSec.this.mIsWaitingForOtp = false;
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "otp: " + IMSLog.checker(TelephonyAdapterPrimaryDeviceSec.this.mOtp));
            return TelephonyAdapterPrimaryDeviceSec.this.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getPortOtp() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "getPortOtp");
            TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec = TelephonyAdapterPrimaryDeviceSec.this;
            telephonyAdapterPrimaryDeviceSec.mCurrentPortPermits = 0;
            telephonyAdapterPrimaryDeviceSec.sendMessageDelayed(telephonyAdapterPrimaryDeviceSec.obtainMessage(5), 900000L);
            try {
                TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec2 = TelephonyAdapterPrimaryDeviceSec.this;
                telephonyAdapterPrimaryDeviceSec2.mCurrentPortPermits = telephonyAdapterPrimaryDeviceSec2.mPortOtpSemaphore.availablePermits() + 1;
                IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "getPortOtp: semaphore acquire with mCurrentPortPermits: " + TelephonyAdapterPrimaryDeviceSec.this.mCurrentPortPermits);
                TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec3 = TelephonyAdapterPrimaryDeviceSec.this;
                telephonyAdapterPrimaryDeviceSec3.mPortOtpSemaphore.acquire(telephonyAdapterPrimaryDeviceSec3.mCurrentPortPermits);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "receive Port OTP:" + IMSLog.checker(TelephonyAdapterPrimaryDeviceSec.this.mPortOtp));
            return TelephonyAdapterPrimaryDeviceSec.this.mPortOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void registerAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
            if (iAutoConfigurationListener == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "listener: null");
                return;
            }
            synchronized (TelephonyAdapterPrimaryDeviceSec.this.mLock) {
                if (TelephonyAdapterPrimaryDeviceSec.this.mAutoConfigurationListener != null) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "register listener: " + iAutoConfigurationListener);
                    IMSLog.c(LogClass.TAPDS_LISTNER, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId + "," + iAutoConfigurationListener);
                    TelephonyAdapterPrimaryDeviceSec.this.mAutoConfigurationListener.register(iAutoConfigurationListener);
                    if (!TelephonyAdapterPrimaryDeviceSec.this.mPostponedNotification.isEmpty()) {
                        Iterator<Integer> it = TelephonyAdapterPrimaryDeviceSec.this.mPostponedNotification.keySet().iterator();
                        while (it.hasNext()) {
                            int intValue = it.next().intValue();
                            notifyAutoConfigurationListener(intValue, TelephonyAdapterPrimaryDeviceSec.this.mPostponedNotification.get(Integer.valueOf(intValue)).booleanValue());
                        }
                    }
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void unregisterAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
            if (iAutoConfigurationListener == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "listener: null");
                return;
            }
            synchronized (TelephonyAdapterPrimaryDeviceSec.this.mLock) {
                if (TelephonyAdapterPrimaryDeviceSec.this.mAutoConfigurationListener != null) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "unregister listener: " + iAutoConfigurationListener);
                    TelephonyAdapterPrimaryDeviceSec.this.mAutoConfigurationListener.unregister(iAutoConfigurationListener);
                    TelephonyAdapterPrimaryDeviceSec.this.mPostponedNotification.clear();
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void notifyAutoConfigurationListener(int i, boolean z) {
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "notifyAutoConfigurationListener: type: " + i + ", result: " + z);
            if (i != 50 && i != 52) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "notifyAutoConfigurationListener: unknown notification type");
                return;
            }
            if (i == 50 && !TelephonyAdapterPrimaryDeviceSec.this.mIsWaitingForOtp) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "notifyAutoConfigurationListener: ignore notification type, mIsWaitingForOtp: " + TelephonyAdapterPrimaryDeviceSec.this.mIsWaitingForOtp);
                return;
            }
            synchronized (TelephonyAdapterPrimaryDeviceSec.this.mLock) {
                RemoteCallbackList<IAutoConfigurationListener> remoteCallbackList = TelephonyAdapterPrimaryDeviceSec.this.mAutoConfigurationListener;
                if (remoteCallbackList == null) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "notifyAutoConfigurationListener: mAutoConfigurationListener: empty");
                    return;
                }
                try {
                    int beginBroadcast = remoteCallbackList.beginBroadcast();
                    IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "notifyAutoConfigurationListener: listener length: " + beginBroadcast);
                    if (i == 50) {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "notifyAutoConfigurationListener: onVerificationCodeNeeded");
                        IMSLog.c(LogClass.TAPDS_OTP_NEEDED, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId + ",VCN,LEN:" + beginBroadcast);
                    } else {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "notifyAutoConfigurationListener: onAutoConfigurationCompleted");
                        IMSLog.c(LogClass.TAPDS_ACS_RESULT, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId + ",ACS:" + z + ",LEN:" + beginBroadcast);
                    }
                    if (beginBroadcast == 0) {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "Listener not registered yet. Postpone notify later: " + i);
                        if (i == 52) {
                            TelephonyAdapterPrimaryDeviceSec.this.mPostponedNotification.clear();
                        }
                        TelephonyAdapterPrimaryDeviceSec.this.mPostponedNotification.put(Integer.valueOf(i), Boolean.valueOf(z));
                    }
                    for (int i2 = 0; i2 < beginBroadcast; i2++) {
                        IAutoConfigurationListener broadcastItem = TelephonyAdapterPrimaryDeviceSec.this.mAutoConfigurationListener.getBroadcastItem(i2);
                        if (i == 50) {
                            broadcastItem.onVerificationCodeNeeded();
                        } else {
                            broadcastItem.onAutoConfigurationCompleted(z);
                            TelephonyAdapterPrimaryDeviceSec.this.mPostponedNotification.clear();
                        }
                    }
                } catch (RemoteException | IllegalStateException | NullPointerException e) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "notifyAutoConfigurationListener: Exception: " + e.getMessage());
                }
                try {
                    TelephonyAdapterPrimaryDeviceSec.this.mAutoConfigurationListener.finishBroadcast();
                } catch (IllegalStateException e2) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "notifyAutoConfigurationListener: finishBroadcast Exception: " + e2.getMessage());
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void sendVerificationCode(String str) {
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "sendVerificationCode value: " + str);
            IMSLog.c(LogClass.TAPDS_SEND_OTP, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId + ",VC:" + str);
            TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec = TelephonyAdapterPrimaryDeviceSec.this;
            if (telephonyAdapterPrimaryDeviceSec.mIsWaitingForOtp) {
                telephonyAdapterPrimaryDeviceSec.removeMessages(3);
                TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec2 = TelephonyAdapterPrimaryDeviceSec.this;
                telephonyAdapterPrimaryDeviceSec2.mOtp = str;
                if (str != null) {
                    telephonyAdapterPrimaryDeviceSec2.mOtpReceivedTime = Calendar.getInstance().getTimeInMillis();
                }
                try {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "semaphore release with mCurrentPermits: " + TelephonyAdapterPrimaryDeviceSec.this.mCurrentPermits);
                    TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec3 = TelephonyAdapterPrimaryDeviceSec.this;
                    telephonyAdapterPrimaryDeviceSec3.mSemaphore.release(telephonyAdapterPrimaryDeviceSec3.mCurrentPermits);
                    return;
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                    return;
                }
            }
            if (TelephonyAdapterPrimaryDeviceSec.NIRSMS_KEYWORD.equals(str)) {
                TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec4 = TelephonyAdapterPrimaryDeviceSec.this;
                if (ImsConstants.SystemSettings.getRcsUserSetting(telephonyAdapterPrimaryDeviceSec4.mContext, -1, telephonyAdapterPrimaryDeviceSec4.mPhoneId) != -1) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "sendVerificationCode: NIRSMS0001 received, force configuration request");
                    IMSLog.c(LogClass.TAPDS_RECE_NIRSMS, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId + ",NRCR:" + str);
                    Handler handler = TelephonyAdapterPrimaryDeviceSec.this.mModule.getHandler();
                    TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec5 = TelephonyAdapterPrimaryDeviceSec.this;
                    handler.sendMessage(telephonyAdapterPrimaryDeviceSec5.obtainMessage(4, Integer.valueOf(telephonyAdapterPrimaryDeviceSec5.mPhoneId)));
                    return;
                }
                IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "sendVerificationCode: NIRSMS0001 received, but User didn't try RCS service yet");
            }
        }
    }

    protected class AbsentState extends TelephonyAdapterPrimaryDeviceBase.AbsentState {
        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getDeviceId(int i) {
            return null;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getMsisdn(int i) {
            return null;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSubscriberId(int i) {
            return null;
        }

        protected AbsentState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec = TelephonyAdapterPrimaryDeviceSec.this;
            if (telephonyAdapterPrimaryDeviceSec.mOtp == null || timeInMillis >= telephonyAdapterPrimaryDeviceSec.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "getOtp exist");
            return TelephonyAdapterPrimaryDeviceSec.this.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getPortOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceSec telephonyAdapterPrimaryDeviceSec = TelephonyAdapterPrimaryDeviceSec.this;
            if (telephonyAdapterPrimaryDeviceSec.mPortOtp == null || timeInMillis >= telephonyAdapterPrimaryDeviceSec.mPortOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, TelephonyAdapterPrimaryDeviceSec.this.mPhoneId, "getPortOtp exist");
            return TelephonyAdapterPrimaryDeviceSec.this.mPortOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getIdentityByPhoneId(int i) {
            String str;
            IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, i, "getIdentityByPhoneId: ABSENT");
            String imei = TelephonyAdapterPrimaryDeviceSec.this.mTelephony.getImei(i);
            if (!TextUtils.isEmpty(imei)) {
                str = "IMEI_" + imei;
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceSec.LOG_TAG, i, "identity error");
                str = "";
            }
            return str.replaceAll("[\\W]", "");
        }
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getOtp() {
        return this.mState.getOtp();
    }
}
