package com.sec.internal.ims.config.adapters;

import android.content.Context;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.sec.ims.IAutoConfigurationListener;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.log.IMSLog;
import java.util.Calendar;
import java.util.Iterator;
import java.util.concurrent.Semaphore;

/* loaded from: classes.dex */
public class TelephonyAdapterPrimaryDeviceJibe extends TelephonyAdapterPrimaryDeviceBase {
    private static final String LOG_TAG = TelephonyAdapterPrimaryDeviceJibe.class.getSimpleName();
    protected Semaphore mOtpSemaphore;

    public TelephonyAdapterPrimaryDeviceJibe(Context context, IConfigModule iConfigModule, int i) {
        super(context, iConfigModule, i);
        this.mOtpSemaphore = new Semaphore(0);
        registerPortSmsReceiver();
        initState();
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, android.os.Handler
    public void handleMessage(Message message) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "message:" + message.what);
        int i = message.what;
        if (i == 14) {
            if (this.mIsWaitingForIidToken) {
                notifyAutoConfigurationListener(53, true);
                return;
            }
            return;
        }
        if (i != 15) {
            switch (i) {
                case 2:
                    if (this.mIsWaitingForOtp) {
                        notifyAutoConfigurationListener(50, true);
                        break;
                    }
                    break;
                case 3:
                    this.mOtp = null;
                    try {
                        IMSLog.i(str, this.mPhoneId, "semaphore release with mCurrentOtpPermits: " + this.mCurrentOtpPermits);
                        IMSLog.c(LogClass.TAPDJ_OTP_TIMEOUT, this.mPhoneId + ",OT");
                        this.mOtpSemaphore.release(this.mCurrentOtpPermits);
                        break;
                    } catch (IllegalArgumentException e) {
                        e.printStackTrace();
                        return;
                    }
                case 4:
                    IMSLog.i(str, this.mPhoneId, "receive port sms");
                    Object obj = message.obj;
                    if (obj != null) {
                        if (((String) obj).contains(TelephonyAdapterPrimaryDeviceBase.SMS_CONFIGURATION_REQUEST)) {
                            IMSLog.i(str, this.mPhoneId, "request force configuration");
                            this.mModule.getHandler().sendMessage(obtainMessage(21, Integer.valueOf(this.mPhoneId)));
                            break;
                        } else {
                            removeMessages(5);
                            this.mPortOtp = (String) message.obj;
                            IMSLog.i(str, this.mPhoneId, "mPortOtp: " + IMSLog.checker(this.mPortOtp));
                            this.mPortOtpReceivedTime = Calendar.getInstance().getTimeInMillis();
                            try {
                                IMSLog.i(str, this.mPhoneId, "otp received: semaphore release with mCurrentPortPermits: " + this.mCurrentPortPermits);
                                this.mPortOtpSemaphore.release(this.mCurrentPortPermits);
                                this.mCurrentPortPermits = 0;
                                break;
                            } catch (IllegalArgumentException e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                    } else {
                        IMSLog.i(str, this.mPhoneId, "no SMS data!");
                        break;
                    }
                case 5:
                    this.mPortOtp = null;
                    try {
                        IMSLog.i(str, this.mPhoneId, "otp timeout: semaphore release with mCurrentPortPermits: " + this.mCurrentPortPermits);
                        IMSLog.c(LogClass.TAPDJ_PORT_OTP_TIMEOUT, this.mPhoneId + ",POT");
                        this.mPortOtpSemaphore.release(this.mCurrentPortPermits);
                        this.mCurrentPortPermits = 0;
                        break;
                    } catch (IllegalArgumentException e3) {
                        e3.printStackTrace();
                        return;
                    }
                case 6:
                    if (this.mIsWaitingForMsisdn) {
                        notifyAutoConfigurationListener(51, true);
                        break;
                    }
                    break;
                case 7:
                    this.mMsisdn = null;
                    try {
                        IMSLog.i(str, this.mPhoneId, "semaphore release with mCurrentMsisdnPermits: " + this.mCurrentMsisdnPermits);
                        IMSLog.c(LogClass.TAPDJ_MSISDN_TIMEOUT, this.mPhoneId + ",MT");
                        this.mMsisdnSemaphore.release(this.mCurrentMsisdnPermits);
                        break;
                    } catch (IllegalArgumentException e4) {
                        e4.printStackTrace();
                        return;
                    }
                default:
                    super.handleMessage(message);
                    break;
            }
            return;
        }
        this.mIidToken = null;
        try {
            IMSLog.i(str, this.mPhoneId, "semaphore release with mCurrentIidTokenPermits: " + this.mCurrentIidTokenPermits);
            IMSLog.c(LogClass.TAPDJ_IIDTOKEN_TIMEOUT, this.mPhoneId + ",ITT");
            this.mIidTokenSemaphore.release(this.mCurrentIidTokenPermits);
        } catch (IllegalArgumentException e5) {
            e5.printStackTrace();
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
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "ready state");
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.ReadyState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "getOtp");
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe.mCurrentOtpPermits = 0;
            telephonyAdapterPrimaryDeviceJibe.mIsWaitingForOtp = true;
            telephonyAdapterPrimaryDeviceJibe.sendMessageDelayed(telephonyAdapterPrimaryDeviceJibe.obtainMessage(2), 300L);
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe2 = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe2.sendMessageDelayed(telephonyAdapterPrimaryDeviceJibe2.obtainMessage(3), 310000L);
            try {
                TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe3 = TelephonyAdapterPrimaryDeviceJibe.this;
                telephonyAdapterPrimaryDeviceJibe3.mCurrentOtpPermits = telephonyAdapterPrimaryDeviceJibe3.mOtpSemaphore.availablePermits() + 1;
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "semaphore acquire with mCurrentOtpPermits: " + TelephonyAdapterPrimaryDeviceJibe.this.mCurrentOtpPermits);
                TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe4 = TelephonyAdapterPrimaryDeviceJibe.this;
                telephonyAdapterPrimaryDeviceJibe4.mOtpSemaphore.acquire(telephonyAdapterPrimaryDeviceJibe4.mCurrentOtpPermits);
            } catch (IllegalArgumentException | InterruptedException e) {
                e.printStackTrace();
            }
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe5 = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe5.mIsWaitingForOtp = false;
            return telephonyAdapterPrimaryDeviceJibe5.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getPortOtp() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "getPortOtp");
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe.mCurrentPortPermits = 0;
            telephonyAdapterPrimaryDeviceJibe.sendMessageDelayed(telephonyAdapterPrimaryDeviceJibe.obtainMessage(5), 300000L);
            try {
                TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe2 = TelephonyAdapterPrimaryDeviceJibe.this;
                telephonyAdapterPrimaryDeviceJibe2.mCurrentPortPermits = telephonyAdapterPrimaryDeviceJibe2.mPortOtpSemaphore.availablePermits() + 1;
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "getPortOtp: semaphore acquire with mCurrentPortPermits: " + TelephonyAdapterPrimaryDeviceJibe.this.mCurrentPortPermits);
                TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe3 = TelephonyAdapterPrimaryDeviceJibe.this;
                telephonyAdapterPrimaryDeviceJibe3.mPortOtpSemaphore.acquire(telephonyAdapterPrimaryDeviceJibe3.mCurrentPortPermits);
            } catch (IllegalArgumentException | InterruptedException e) {
                e.printStackTrace();
            }
            return TelephonyAdapterPrimaryDeviceJibe.this.mPortOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getMsisdnNumber() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "getMsisdnNumber");
            String msisdn = getMsisdn();
            if (!TextUtils.isEmpty(msisdn)) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "msisdn exists from telephony");
                IMSLog.c(LogClass.TAPDJ_EXIST_MSISDN_TELEPHONY, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ",EMT");
                TelephonyAdapterPrimaryDeviceJibe.this.mMsisdn = msisdn;
                return msisdn;
            }
            Mno simMno = SimUtil.getSimMno(TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId);
            if (!ConfigUtil.isRcsPreConsent(TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId) && simMno.isEmeasewaoce()) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "operator using jibe, but not GC, use FW's dialog to ask for MSISDN");
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "need to get msisdn from application");
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe.mCurrentMsisdnPermits = 0;
            telephonyAdapterPrimaryDeviceJibe.mIsWaitingForMsisdn = true;
            telephonyAdapterPrimaryDeviceJibe.sendMessageDelayed(telephonyAdapterPrimaryDeviceJibe.obtainMessage(6), 300L);
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe2 = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe2.sendMessageDelayed(telephonyAdapterPrimaryDeviceJibe2.obtainMessage(7), 310000L);
            try {
                TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe3 = TelephonyAdapterPrimaryDeviceJibe.this;
                telephonyAdapterPrimaryDeviceJibe3.mCurrentMsisdnPermits = telephonyAdapterPrimaryDeviceJibe3.mMsisdnSemaphore.availablePermits() + 1;
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "semaphore acquire with mCurrentMsisdnPermits: " + TelephonyAdapterPrimaryDeviceJibe.this.mCurrentMsisdnPermits);
                TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe4 = TelephonyAdapterPrimaryDeviceJibe.this;
                telephonyAdapterPrimaryDeviceJibe4.mMsisdnSemaphore.acquire(telephonyAdapterPrimaryDeviceJibe4.mCurrentMsisdnPermits);
            } catch (IllegalArgumentException | InterruptedException e) {
                e.printStackTrace();
            }
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe5 = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe5.mIsWaitingForMsisdn = false;
            return telephonyAdapterPrimaryDeviceJibe5.mMsisdn;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getIidToken() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "getIidToken");
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe.mCurrentIidTokenPermits = 0;
            telephonyAdapterPrimaryDeviceJibe.mIsWaitingForIidToken = true;
            telephonyAdapterPrimaryDeviceJibe.sendMessageDelayed(telephonyAdapterPrimaryDeviceJibe.obtainMessage(14), 300L);
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe2 = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe2.sendMessageDelayed(telephonyAdapterPrimaryDeviceJibe2.obtainMessage(15), 310000L);
            try {
                TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe3 = TelephonyAdapterPrimaryDeviceJibe.this;
                telephonyAdapterPrimaryDeviceJibe3.mCurrentIidTokenPermits = telephonyAdapterPrimaryDeviceJibe3.mIidTokenSemaphore.availablePermits() + 1;
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "semaphore acquire with mCurrentIidTokenPermits: " + TelephonyAdapterPrimaryDeviceJibe.this.mCurrentIidTokenPermits);
                TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe4 = TelephonyAdapterPrimaryDeviceJibe.this;
                telephonyAdapterPrimaryDeviceJibe4.mIidTokenSemaphore.acquire(telephonyAdapterPrimaryDeviceJibe4.mCurrentIidTokenPermits);
            } catch (IllegalArgumentException | InterruptedException e) {
                e.printStackTrace();
            }
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe5 = TelephonyAdapterPrimaryDeviceJibe.this;
            telephonyAdapterPrimaryDeviceJibe5.mIsWaitingForIidToken = false;
            String str = telephonyAdapterPrimaryDeviceJibe5.mIidToken;
            telephonyAdapterPrimaryDeviceJibe5.mIidToken = null;
            return str;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void registerAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
            if (iAutoConfigurationListener == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "listener: null");
                return;
            }
            synchronized (TelephonyAdapterPrimaryDeviceJibe.this.mLock) {
                if (TelephonyAdapterPrimaryDeviceJibe.this.mAutoConfigurationListener != null) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "register listener: " + iAutoConfigurationListener);
                    IMSLog.c(LogClass.TAPDJ_REG_LISTNER, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ", listener added");
                    TelephonyAdapterPrimaryDeviceJibe.this.mAutoConfigurationListener.register(iAutoConfigurationListener);
                    if (!TelephonyAdapterPrimaryDeviceJibe.this.mPostponedNotification.isEmpty()) {
                        Iterator<Integer> it = TelephonyAdapterPrimaryDeviceJibe.this.mPostponedNotification.keySet().iterator();
                        while (it.hasNext()) {
                            int intValue = it.next().intValue();
                            notifyAutoConfigurationListener(intValue, TelephonyAdapterPrimaryDeviceJibe.this.mPostponedNotification.get(Integer.valueOf(intValue)).booleanValue());
                        }
                    }
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void unregisterAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
            if (iAutoConfigurationListener == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "listener: null");
                return;
            }
            synchronized (TelephonyAdapterPrimaryDeviceJibe.this.mLock) {
                if (TelephonyAdapterPrimaryDeviceJibe.this.mAutoConfigurationListener != null) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "unregister listener: " + iAutoConfigurationListener);
                    IMSLog.c(LogClass.TAPDJ_UNREG_LISTNER, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ",UL:" + iAutoConfigurationListener);
                    TelephonyAdapterPrimaryDeviceJibe.this.mAutoConfigurationListener.unregister(iAutoConfigurationListener);
                    TelephonyAdapterPrimaryDeviceJibe.this.mPostponedNotification.clear();
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void notifyAutoConfigurationListener(int i, boolean z) {
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: type: " + i + ", result: " + z);
            if (i != 50 && i != 51 && i != 53 && i != 52) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: unknown notification type");
                return;
            }
            if ((i == 50 && !TelephonyAdapterPrimaryDeviceJibe.this.mIsWaitingForOtp) || ((i == 51 && !TelephonyAdapterPrimaryDeviceJibe.this.mIsWaitingForMsisdn) || (i == 53 && !TelephonyAdapterPrimaryDeviceJibe.this.mIsWaitingForIidToken))) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: ignore notification type, mIsWaitingForOtp: " + TelephonyAdapterPrimaryDeviceJibe.this.mIsWaitingForOtp + " mIsWaitingForMsisdn: " + TelephonyAdapterPrimaryDeviceJibe.this.mIsWaitingForMsisdn + " mIsWaitingForIidToken: " + TelephonyAdapterPrimaryDeviceJibe.this.mIsWaitingForIidToken);
                return;
            }
            synchronized (TelephonyAdapterPrimaryDeviceJibe.this.mLock) {
                RemoteCallbackList<IAutoConfigurationListener> remoteCallbackList = TelephonyAdapterPrimaryDeviceJibe.this.mAutoConfigurationListener;
                if (remoteCallbackList == null) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: mAutoConfigurationListener: empty");
                    return;
                }
                try {
                    int beginBroadcast = remoteCallbackList.beginBroadcast();
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: listener length: " + beginBroadcast);
                    if (i == 50) {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: onVerificationCodeNeeded");
                        IMSLog.c(LogClass.TAPDJ_OTP_NEEDED, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ",VCN,LEN:" + beginBroadcast);
                    } else if (i == 51) {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: onMsisdnNumberNeeded");
                        IMSLog.c(LogClass.TAPDJ_MSISDN_NEEDED, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ",MNN,LEN:" + beginBroadcast);
                    } else if (i == 53) {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: onIidTokenNeeded");
                        IMSLog.c(LogClass.TAPDJ_IIDTOKEN_NEEDED, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ",ITN,LEN:" + beginBroadcast);
                    } else {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: onAutoConfigurationCompleted");
                        IMSLog.c(LogClass.TAPDJ_ACS_COMPLETED, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ",ACC:" + z + ",LEN:" + beginBroadcast);
                    }
                    if (beginBroadcast == 0) {
                        IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "Listener not registered yet. Postpone notify later: " + i);
                        if (i == 52) {
                            TelephonyAdapterPrimaryDeviceJibe.this.mPostponedNotification.clear();
                        } else {
                            TelephonyAdapterPrimaryDeviceJibe.this.mPostponedNotification.put(Integer.valueOf(i), Boolean.valueOf(z));
                        }
                    }
                    for (int i2 = 0; i2 < beginBroadcast; i2++) {
                        IAutoConfigurationListener broadcastItem = TelephonyAdapterPrimaryDeviceJibe.this.mAutoConfigurationListener.getBroadcastItem(i2);
                        if (i == 50) {
                            broadcastItem.onVerificationCodeNeeded();
                        } else if (i == 51) {
                            broadcastItem.onMsisdnNumberNeeded();
                        } else if (i == 53) {
                            broadcastItem.onIidTokenNeeded();
                        } else {
                            broadcastItem.onAutoConfigurationCompleted(z);
                            TelephonyAdapterPrimaryDeviceJibe.this.mPostponedNotification.clear();
                        }
                    }
                } catch (RemoteException | IllegalStateException | NullPointerException e) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: Exception: " + e.getMessage());
                } catch (AbstractMethodError e2) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: AbstractMethodError: " + e2.getMessage());
                }
                try {
                    TelephonyAdapterPrimaryDeviceJibe.this.mAutoConfigurationListener.finishBroadcast();
                } catch (IllegalStateException e3) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "notifyAutoConfigurationListener: Exception: " + e3.getMessage());
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void sendVerificationCode(String str) {
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "sendVerificationCode value: " + str);
            IMSLog.c(LogClass.TAPDJ_SEND_OTP, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ",VC:" + str);
            TelephonyAdapterPrimaryDeviceJibe.this.removeMessages(3);
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "mIsWaitingForOtp: " + TelephonyAdapterPrimaryDeviceJibe.this.mIsWaitingForOtp);
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe = TelephonyAdapterPrimaryDeviceJibe.this;
            if (telephonyAdapterPrimaryDeviceJibe.mIsWaitingForOtp) {
                telephonyAdapterPrimaryDeviceJibe.mOtp = str;
                try {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "semaphore release with mCurrentOtpPermits: " + TelephonyAdapterPrimaryDeviceJibe.this.mCurrentOtpPermits);
                    TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe2 = TelephonyAdapterPrimaryDeviceJibe.this;
                    telephonyAdapterPrimaryDeviceJibe2.mOtpSemaphore.release(telephonyAdapterPrimaryDeviceJibe2.mCurrentOtpPermits);
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void sendMsisdnNumber(String str) {
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "sendMsisdnNumber");
            IMSLog.c(LogClass.TAPDJ_SEND_MSISDN, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ",MN");
            TelephonyAdapterPrimaryDeviceJibe.this.removeMessages(7);
            if (str == null || "".equals(str)) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "value is null or empty");
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "mIsWaitingForMsisdn: " + TelephonyAdapterPrimaryDeviceJibe.this.mIsWaitingForMsisdn);
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe = TelephonyAdapterPrimaryDeviceJibe.this;
            if (telephonyAdapterPrimaryDeviceJibe.mIsWaitingForMsisdn) {
                telephonyAdapterPrimaryDeviceJibe.mMsisdn = str;
                try {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "semaphore release with mCurrentMsisdnPermits: " + TelephonyAdapterPrimaryDeviceJibe.this.mCurrentMsisdnPermits);
                    TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe2 = TelephonyAdapterPrimaryDeviceJibe.this;
                    telephonyAdapterPrimaryDeviceJibe2.mMsisdnSemaphore.release(telephonyAdapterPrimaryDeviceJibe2.mCurrentMsisdnPermits);
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public void sendIidToken(String str) {
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "sendIidToken");
            IMSLog.c(LogClass.TAPDJ_SEND_IIDTOKEN, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId + ",IT");
            TelephonyAdapterPrimaryDeviceJibe.this.removeMessages(15);
            if (str == null || "".equals(str)) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "value is null or empty");
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "mIsWaitingForIidToken: " + TelephonyAdapterPrimaryDeviceJibe.this.mIsWaitingForIidToken);
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe = TelephonyAdapterPrimaryDeviceJibe.this;
            if (telephonyAdapterPrimaryDeviceJibe.mIsWaitingForIidToken) {
                telephonyAdapterPrimaryDeviceJibe.mIidToken = str;
                try {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "semaphore release with mCurrentIidTokenPermits: " + TelephonyAdapterPrimaryDeviceJibe.this.mCurrentIidTokenPermits);
                    TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe2 = TelephonyAdapterPrimaryDeviceJibe.this;
                    telephonyAdapterPrimaryDeviceJibe2.mIidTokenSemaphore.release(telephonyAdapterPrimaryDeviceJibe2.mCurrentIidTokenPermits);
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

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.AbsentState, com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            return null;
        }

        protected AbsentState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getPortOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            IMSLog.d(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, "CurrentTime =" + timeInMillis + ", mPortOTP = " + TelephonyAdapterPrimaryDeviceJibe.this.mPortOtpReceivedTime);
            TelephonyAdapterPrimaryDeviceJibe telephonyAdapterPrimaryDeviceJibe = TelephonyAdapterPrimaryDeviceJibe.this;
            if (telephonyAdapterPrimaryDeviceJibe.mPortOtp == null || timeInMillis >= telephonyAdapterPrimaryDeviceJibe.mPortOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                return null;
            }
            IMSLog.i(TelephonyAdapterPrimaryDeviceJibe.LOG_TAG, TelephonyAdapterPrimaryDeviceJibe.this.mPhoneId, "getPortOtp exist");
            return TelephonyAdapterPrimaryDeviceJibe.this.mPortOtp;
        }
    }

    @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getOtp() {
        return this.mState.getOtp();
    }
}
