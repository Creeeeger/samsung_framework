package com.sec.internal.ims.config.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import com.sec.ims.IAutoConfigurationListener;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.os.IccCardConstants;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.settings.ImsProfileLoaderInternal;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.ITelephonyAdapter;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Semaphore;

/* loaded from: classes.dex */
public class TelephonyAdapterPrimaryDeviceBase extends Handler implements ITelephonyAdapter {
    protected static final int EVENT_ADS_CHANGED = 100;
    protected static final int EVENT_SIM_REMOVE_OR_REFRESH = 101;
    protected static final int HANDLE_EVENT_SIM_READY = 9;
    protected static final int HANDLE_EVENT_SIM_REMOVED = 10;
    protected static final int HANDLE_EVENT_SIM_STATE_CHANGED = 11;
    protected static final int HANDLE_GET_APP_TOKEN = 12;
    protected static final int HANDLE_GET_APP_TOKEN_TIMEOUT = 13;
    protected static final int HANDLE_GET_IIDTOKEN = 14;
    protected static final int HANDLE_GET_IIDTOKEN_TIMEOUT = 15;
    protected static final int HANDLE_GET_MSISDN = 6;
    protected static final int HANDLE_GET_MSISDN_TIMEOUT = 7;
    protected static final int HANDLE_GET_OTP = 2;
    protected static final int HANDLE_GET_OTP_TIMEOUT = 3;
    protected static final int HANDLE_GET_PORT_OTP = 4;
    protected static final int HANDLE_GET_PORT_OTP_TIMEOUT = 5;
    protected static final int HANDLE_INTENT_DATA_SMS_RECEIVED_ACTION = 1;
    protected static final int HANDLE_NOTIFY_OTP_NEEDED = 8;
    protected static final int HANDLE_SMS_CONFIGURATION_REQUEST = 0;
    protected static final int NOTIFY_AUTO_CONFIGURATION_COMPLETED = 52;
    protected static final int NOTIFY_IID_TOKEN_NEEDED = 53;
    protected static final int NOTIFY_MSISDN_NUMBER_NEEDED = 51;
    protected static final int NOTIFY_VERIFICATION_CODE_NEEDED = 50;
    protected final RemoteCallbackList<IAutoConfigurationListener> mAutoConfigurationListener;
    protected Context mContext;
    protected int mCurrentIidTokenPermits;
    protected int mCurrentMsisdnPermits;
    protected int mCurrentOtpPermits;
    protected int mCurrentPermits;
    protected int mCurrentPortPermits;
    protected String mIidToken;
    protected Semaphore mIidTokenSemaphore;
    protected boolean mIsWaitingForIidToken;
    protected boolean mIsWaitingForMsisdn;
    protected boolean mIsWaitingForOtp;
    protected final Object mLock;
    protected Looper mLooper;
    protected IConfigModule mModule;
    protected String mMsisdn;
    protected Semaphore mMsisdnSemaphore;
    protected String mOtp;
    protected long mOtpReceivedTime;
    protected int mPhoneId;
    protected String mPortOtp;
    protected long mPortOtpReceivedTime;
    protected Semaphore mPortOtpSemaphore;
    protected PortSmsReceiverBase mPortSmsReceiver;
    protected Map<Integer, Boolean> mPostponedNotification;
    protected Semaphore mSemaphore;
    protected ISimManager mSimManager;
    protected SmsReceiverBase mSmsReceiver;
    protected TelephonyAdapterState mState;
    protected ITelephonyManager mTelephony;
    private static final String LOG_TAG = TelephonyAdapterPrimaryDeviceBase.class.getSimpleName();
    protected static String SMS_CONFIGURATION_REQUEST = "-rcscfg";

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void registerUneregisterForOTP(boolean z) {
    }

    public TelephonyAdapterPrimaryDeviceBase(Context context, IConfigModule iConfigModule, int i) {
        super(iConfigModule.getHandler().getLooper());
        this.mSemaphore = new Semaphore(0);
        this.mPortOtpSemaphore = new Semaphore(0);
        this.mMsisdnSemaphore = new Semaphore(0);
        this.mIidTokenSemaphore = new Semaphore(0);
        this.mCurrentPermits = 0;
        this.mCurrentOtpPermits = 0;
        this.mCurrentPortPermits = 0;
        this.mCurrentMsisdnPermits = 0;
        this.mCurrentIidTokenPermits = 0;
        this.mLock = new Object();
        this.mAutoConfigurationListener = new RemoteCallbackList<>();
        this.mIsWaitingForOtp = false;
        this.mOtp = null;
        this.mPortOtp = null;
        this.mOtpReceivedTime = 0L;
        this.mPortOtpReceivedTime = 0L;
        this.mMsisdn = null;
        this.mIsWaitingForMsisdn = false;
        this.mIidToken = null;
        this.mIsWaitingForIidToken = false;
        this.mState = null;
        this.mContext = context;
        this.mModule = iConfigModule;
        this.mLooper = iConfigModule.getHandler().getLooper();
        this.mPhoneId = i;
        this.mTelephony = TelephonyManagerWrapper.getInstance(this.mContext);
        this.mSimManager = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        this.mPostponedNotification = new HashMap();
        getState(TelephonyAdapterState.IDLE_STATE);
        registerSimEventListener();
    }

    protected void registerSimEventListener() {
        ISimManager iSimManager = this.mSimManager;
        if (iSimManager != null) {
            iSimManager.registerForSimReady(this, 9, null);
            this.mSimManager.registerForSimRemoved(this, 10, null);
            this.mSimManager.registerForSimStateChanged(this, 11, null);
        }
    }

    protected void createSmsReceiver() {
        this.mSmsReceiver = new SmsReceiverBase();
    }

    protected void registerSmsReceiver() {
        if (this.mModule != null) {
            createSmsReceiver();
            Context context = this.mContext;
            SmsReceiverBase smsReceiverBase = this.mSmsReceiver;
            context.registerReceiver(smsReceiverBase, smsReceiverBase.getIntentFilter());
        }
    }

    protected void createPortSmsReceiver() {
        this.mPortSmsReceiver = new PortSmsReceiverBase();
    }

    protected void registerPortSmsReceiver() {
        if (this.mModule != null) {
            createPortSmsReceiver();
            Context context = this.mContext;
            PortSmsReceiverBase portSmsReceiverBase = this.mPortSmsReceiver;
            context.registerReceiver(portSmsReceiverBase, portSmsReceiverBase.getIntentFilter());
        }
    }

    protected void sendSmsPushForConfigRequest(boolean z) {
        Message obtainMessage;
        IMSLog.i(LOG_TAG, this.mPhoneId, "sendSmsPushForConfigRequest: isForceConfigRequest: " + z);
        IMSLog.c(LogClass.TAPDB_RECE_PUSHSMS, this.mPhoneId + ",RPUSH");
        Handler handler = this.mModule.getHandler();
        if (z) {
            obtainMessage = obtainMessage(4, Integer.valueOf(this.mPhoneId));
        } else {
            obtainMessage = obtainMessage(21, Integer.valueOf(this.mPhoneId));
        }
        handler.sendMessage(obtainMessage);
    }

    protected void updateOtpInfo(Message message, boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "updateOtpInfo: mIsWaitingForOtp: " + this.mIsWaitingForOtp + " useWaitingForOtp: " + z);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mPhoneId);
        sb.append(",ROTP");
        IMSLog.c(LogClass.TAPDB_RECE_OTP, sb.toString());
        this.mOtp = (String) message.obj;
        this.mOtpReceivedTime = Calendar.getInstance().getTimeInMillis();
        if (this.mIsWaitingForOtp || !z) {
            this.mSemaphore.release();
        }
    }

    protected void handleReceivedDataSms(Message message, boolean z, boolean z2) {
        Object obj = message.obj;
        if (obj == null) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "handleReceivedDataSms: no received data sms");
        } else if (((String) obj).contains(SMS_CONFIGURATION_REQUEST)) {
            sendSmsPushForConfigRequest(z);
        } else {
            updateOtpInfo(message, z2);
        }
    }

    protected void handleOtpTimeout(boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "handleOtpTimeout: useWaitingForOtpFlag: " + z);
        IMSLog.c(LogClass.TAPDB_OTP_TIMEOUT, this.mPhoneId + ",TOTP");
        removeMessages(3);
        this.mOtp = null;
        this.mOtpReceivedTime = 0L;
        if (this.mIsWaitingForOtp || !z) {
            this.mSemaphore.release();
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "message:" + message.what);
        int i = message.what;
        if (i == 1) {
            handleReceivedDataSms(message, true, true);
        }
        if (i == 3) {
            handleOtpTimeout(true);
            return;
        }
        switch (i) {
            case 9:
                IMSLog.i(str, this.mPhoneId, "SIM_READY, Current state: " + this.mState.getClass().getSimpleName());
                if (!(this.mState instanceof ReadyState)) {
                    getState(TelephonyAdapterState.READY_STATE);
                    break;
                }
                break;
            case 10:
                IMSLog.i(str, this.mPhoneId, "SIM_REMOVED, Current state: " + this.mState.getClass().getSimpleName());
                if (!(this.mState instanceof AbsentState)) {
                    getState(TelephonyAdapterState.ABSENT_STATE);
                    break;
                }
                break;
            case 11:
                IMSLog.i(str, this.mPhoneId, "SIM_STATE_CHANGED, Current state: " + this.mState.getClass().getSimpleName());
                int simState = this.mTelephony.getSimState();
                String telephonyProperty = this.mTelephony.getTelephonyProperty(this.mPhoneId, ImsConstants.SystemProperties.SIM_STATE, "UNKNOWN");
                int simSlotPriority = SimUtil.getSimSlotPriority();
                IMSLog.i(str, this.mPhoneId, "sim state:" + simState + ", icc state:" + telephonyProperty);
                int i2 = this.mPhoneId;
                if (i2 != simSlotPriority) {
                    IMSLog.i(str, i2, "Omit no default sim event. phoneId = " + this.mPhoneId + " default_phoneId = " + simSlotPriority);
                    break;
                } else if (!IccCardConstants.INTENT_VALUE_ICC_LOADED.equals(telephonyProperty)) {
                    if (1 == simState) {
                        if (this.mState instanceof IdleState) {
                            getState(TelephonyAdapterState.ABSENT_STATE);
                            break;
                        }
                    } else if (!"IMSI".equals(telephonyProperty)) {
                        TelephonyAdapterState telephonyAdapterState = this.mState;
                        if ((telephonyAdapterState instanceof ReadyState) || (telephonyAdapterState instanceof AbsentState)) {
                            getState(TelephonyAdapterState.IDLE_STATE);
                            break;
                        }
                    }
                } else if (this.mState instanceof IdleState) {
                    getState(TelephonyAdapterState.READY_STATE);
                    break;
                }
                break;
        }
    }

    protected abstract class SmsReceiver extends BroadcastReceiver {
        protected IntentFilter mIntentFilter;

        protected abstract void readMessageFromSMSIntent(Intent intent);

        public SmsReceiver() {
            this.mIntentFilter = null;
            IntentFilter intentFilter = new IntentFilter();
            this.mIntentFilter = intentFilter;
            intentFilter.addAction(AECNamespace.Action.RECEIVED_SMS_NOTIFICATION);
            this.mIntentFilter.addDataScheme("sms");
            this.mIntentFilter.addDataAuthority("localhost", TelephonyAdapterState.SMS_DEST_PORT);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AECNamespace.Action.RECEIVED_SMS_NOTIFICATION.equals(intent.getAction())) {
                try {
                    readMessageFromSMSIntent(intent);
                } catch (NullPointerException e) {
                    e.printStackTrace();
                }
            }
        }

        public IntentFilter getIntentFilter() {
            return this.mIntentFilter;
        }
    }

    protected class PortSmsReceiverBase extends SmsReceiver {
        public PortSmsReceiverBase() {
            super();
            IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "PortSmsReceiverBase");
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.SmsReceiver
        protected void readMessageFromSMSIntent(Intent intent) {
            SmsMessage smsMessage;
            SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
            IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "readMessageFromSMSIntent: enter");
            if (messagesFromIntent == null || (smsMessage = messagesFromIntent[0]) == null) {
                return;
            }
            String displayMessageBody = smsMessage.getDisplayMessageBody();
            int slotId = SimManagerFactory.getSlotId(intent.getIntExtra(PhoneConstants.SUBSCRIPTION_KEY, -1));
            if (displayMessageBody == null) {
                displayMessageBody = new String(smsMessage.getUserData(), Charset.forName("UTF-16"));
            }
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase = TelephonyAdapterPrimaryDeviceBase.this;
            if (telephonyAdapterPrimaryDeviceBase.mPhoneId == slotId) {
                telephonyAdapterPrimaryDeviceBase.sendMessage(telephonyAdapterPrimaryDeviceBase.obtainMessage(4, slotId, 0, displayMessageBody));
            }
        }
    }

    protected class SmsReceiverBase extends SmsReceiver {
        public SmsReceiverBase() {
            super();
            IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "SmsReceiverBase");
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceBase.SmsReceiver
        protected void readMessageFromSMSIntent(Intent intent) {
            SmsMessage smsMessage;
            SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
            IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "readMessageFromSMSIntent: enter");
            if (messagesFromIntent == null || (smsMessage = messagesFromIntent[0]) == null) {
                return;
            }
            int slotId = SimManagerFactory.getSlotId(intent.getIntExtra(PhoneConstants.SUBSCRIPTION_KEY, -1));
            String displayMessageBody = smsMessage.getDisplayMessageBody();
            if (displayMessageBody == null) {
                displayMessageBody = new String(smsMessage.getUserData(), Charset.forName("UTF-16"));
            }
            Message obtainMessage = TelephonyAdapterPrimaryDeviceBase.this.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.arg1 = slotId;
            obtainMessage.obj = displayMessageBody;
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase = TelephonyAdapterPrimaryDeviceBase.this;
            if (telephonyAdapterPrimaryDeviceBase.mPhoneId == slotId) {
                telephonyAdapterPrimaryDeviceBase.sendMessage(obtainMessage);
            }
        }
    }

    protected void initState() {
        int simState = this.mTelephony.getSimState(this.mPhoneId);
        if (5 == simState) {
            if (TextUtils.isEmpty(this.mTelephony.getSubscriberId(SimUtil.getSubId(this.mPhoneId)))) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "simState is ready but imsi is empty");
                getState(TelephonyAdapterState.IDLE_STATE);
                return;
            } else {
                IMSLog.i(LOG_TAG, this.mPhoneId, "simState is ready and imsi is existed");
                getState(TelephonyAdapterState.READY_STATE);
                return;
            }
        }
        if (1 == simState) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "simState is absent");
            getState(TelephonyAdapterState.ABSENT_STATE);
        } else {
            IMSLog.i(LOG_TAG, this.mPhoneId, "simState is not ready");
            getState(TelephonyAdapterState.IDLE_STATE);
        }
    }

    protected void getState(String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "getState: change to " + str);
        if (TelephonyAdapterState.IDLE_STATE.equals(str)) {
            this.mState = new IdleState();
        } else if (TelephonyAdapterState.READY_STATE.equals(str)) {
            this.mState = new ReadyState();
        } else if (TelephonyAdapterState.ABSENT_STATE.equals(str)) {
            this.mState = new AbsentState();
        }
    }

    protected class IdleState extends TelephonyAdapterState {
        public IdleState() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "idle state");
        }
    }

    protected class ReadyState extends TelephonyAdapterState {
        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSipUri() {
            return "";
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public boolean isReady() {
            return true;
        }

        public ReadyState() {
            IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "ready state");
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getPrimaryIdentity() {
            String str;
            IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "getPrimaryIdentity()");
            if (!TextUtils.isEmpty(getImsi())) {
                str = "IMSI_" + getImsi();
            } else if (!TextUtils.isEmpty(getMsisdn())) {
                str = "MSISDN_" + getMsisdn();
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "identity error");
                str = "";
            }
            return str.replaceAll("[\\W]", "");
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getMcc() {
            ISimManager iSimManager = TelephonyAdapterPrimaryDeviceBase.this.mSimManager;
            String simOperator = iSimManager != null ? iSimManager.getSimOperator() : "";
            if (TextUtils.isEmpty(simOperator)) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "MCC sim operator: empty");
                return simOperator;
            }
            try {
                return simOperator.substring(0, 3);
            } catch (IndexOutOfBoundsException unused) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "sim operator:" + simOperator);
                return simOperator;
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getMnc() {
            ISimManager iSimManager = TelephonyAdapterPrimaryDeviceBase.this.mSimManager;
            String simOperator = iSimManager != null ? iSimManager.getSimOperator() : "";
            if (TextUtils.isEmpty(simOperator)) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "MNC sim operator: empty");
                return simOperator;
            }
            try {
                if (simOperator.length() > 5) {
                    return simOperator.substring(3, 6);
                }
                return "0" + simOperator.substring(3, 5);
            } catch (IndexOutOfBoundsException unused) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "sim operator:" + simOperator);
                return simOperator;
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getImsi() {
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase = TelephonyAdapterPrimaryDeviceBase.this;
            if (telephonyAdapterPrimaryDeviceBase.mTelephony.getSubscriberId(SimUtil.getSubId(telephonyAdapterPrimaryDeviceBase.mPhoneId)) == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "imsi error");
                return "";
            }
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase2 = TelephonyAdapterPrimaryDeviceBase.this;
            return telephonyAdapterPrimaryDeviceBase2.mTelephony.getSubscriberId(SimUtil.getSubId(telephonyAdapterPrimaryDeviceBase2.mPhoneId));
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getImei() {
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase = TelephonyAdapterPrimaryDeviceBase.this;
            if (telephonyAdapterPrimaryDeviceBase.mTelephony.getImei(telephonyAdapterPrimaryDeviceBase.mPhoneId) == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "imei error");
                return "";
            }
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase2 = TelephonyAdapterPrimaryDeviceBase.this;
            return telephonyAdapterPrimaryDeviceBase2.mTelephony.getImei(telephonyAdapterPrimaryDeviceBase2.mPhoneId);
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getMsisdn() {
            int subId = SimUtil.getSubId(TelephonyAdapterPrimaryDeviceBase.this.mPhoneId);
            String msisdn = TelephonyAdapterPrimaryDeviceBase.this.mTelephony.getMsisdn(subId);
            if (TextUtils.isEmpty(msisdn)) {
                msisdn = TelephonyAdapterPrimaryDeviceBase.this.mTelephony.getLine1Number(subId);
                if (TextUtils.isEmpty(msisdn)) {
                    IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "MSISDN doesn't exist");
                    msisdn = "";
                }
            }
            return ImsCallUtil.validatePhoneNumber(msisdn, getSimCountryCode());
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSimCountryCode() {
            return TelephonyAdapterPrimaryDeviceBase.this.mTelephony.getSimCountryIso().toUpperCase(Locale.ENGLISH);
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getNetType() {
            return TelephonyAdapterPrimaryDeviceBase.this.mTelephony.getNetworkType() == 13 ? "LTE" : "3G";
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v11, types: [int] */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v7 */
        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase = TelephonyAdapterPrimaryDeviceBase.this;
            if (telephonyAdapterPrimaryDeviceBase.mOtp != null && timeInMillis < telephonyAdapterPrimaryDeviceBase.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "OTP exist. send immediately");
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "OTP don't exist. wait OTP");
                IMSLog.c(LogClass.TAPDB_WAIT_OTP, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId + ",WOTP");
                TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase2 = TelephonyAdapterPrimaryDeviceBase.this;
                telephonyAdapterPrimaryDeviceBase2.mIsWaitingForOtp = true;
                boolean z = 0;
                z = 0;
                try {
                    try {
                        telephonyAdapterPrimaryDeviceBase2.mSemaphore.acquire();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    TelephonyAdapterPrimaryDeviceBase.this.mIsWaitingForOtp = false;
                    TelephonyAdapterPrimaryDeviceBase.this.removeMessages(3);
                    String str = TelephonyAdapterPrimaryDeviceBase.LOG_TAG;
                    z = TelephonyAdapterPrimaryDeviceBase.this.mPhoneId;
                    IMSLog.i(str, z, "receive OTP: " + IMSLog.checker(TelephonyAdapterPrimaryDeviceBase.this.mOtp));
                } catch (Throwable th) {
                    TelephonyAdapterPrimaryDeviceBase.this.mIsWaitingForOtp = z;
                    throw th;
                }
            }
            return TelephonyAdapterPrimaryDeviceBase.this.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getIdentityByPhoneId(int i) {
            return ConfigUtil.buildIdentity(TelephonyAdapterPrimaryDeviceBase.this.mContext, i);
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSubscriberId(int i) {
            return TelephonyAdapterPrimaryDeviceBase.this.mTelephony.getSubscriberId(i);
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getMsisdn(int i) {
            return TelephonyAdapterPrimaryDeviceBase.this.mTelephony.getMsisdn(i);
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getDeviceId(int i) {
            return TelephonyAdapterPrimaryDeviceBase.this.mTelephony.getImei(i);
        }
    }

    protected class AbsentState extends TelephonyAdapterState {
        ImsProfile mImsProfile;

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getImsi() {
            return "";
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getMsisdn() {
            return "";
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSimCountryCode() {
            return "";
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getSipUri() {
            return "";
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public boolean isReady() {
            return true;
        }

        public AbsentState() {
            this.mImsProfile = null;
            IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "absent state");
            List<ImsProfile> profileList = ImsProfileLoaderInternal.getProfileList(TelephonyAdapterPrimaryDeviceBase.this.mContext, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId);
            if (profileList != null && profileList.size() > 0 && profileList.get(0) != null) {
                this.mImsProfile = profileList.get(0);
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "AbsentState : no ImsProfile loaded");
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getPrimaryIdentity() {
            String str;
            if (!TextUtils.isEmpty(getImsi())) {
                str = "IMSI_" + getImsi();
            } else if (!TextUtils.isEmpty(getMsisdn())) {
                str = "MSISDN_" + getMsisdn();
            } else if (!TextUtils.isEmpty(getImei())) {
                str = "IMEI_" + getImei();
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "identity error");
                str = "";
            }
            return str.replaceAll("[\\W]", "");
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getMcc() {
            ImsProfile imsProfile = this.mImsProfile;
            return imsProfile != null ? imsProfile.getDefaultMcc() : "450";
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getMnc() {
            ImsProfile imsProfile = this.mImsProfile;
            if (imsProfile != null) {
                return imsProfile.getDefaultMnc();
            }
            try {
                return "001";
            } catch (IndexOutOfBoundsException unused) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "sim operator:45001");
                return "45001";
            }
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getImei() {
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase = TelephonyAdapterPrimaryDeviceBase.this;
            if (telephonyAdapterPrimaryDeviceBase.mTelephony.getImei(telephonyAdapterPrimaryDeviceBase.mPhoneId) == null) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "imei error");
                return "";
            }
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase2 = TelephonyAdapterPrimaryDeviceBase.this;
            return telephonyAdapterPrimaryDeviceBase2.mTelephony.getImei(telephonyAdapterPrimaryDeviceBase2.mPhoneId);
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getNetType() {
            return TelephonyAdapterPrimaryDeviceBase.this.mTelephony.getNetworkType() == 13 ? "LTE" : "3G";
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getOtp() {
            long timeInMillis = Calendar.getInstance().getTimeInMillis();
            TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase = TelephonyAdapterPrimaryDeviceBase.this;
            if (telephonyAdapterPrimaryDeviceBase.mOtp != null && timeInMillis < telephonyAdapterPrimaryDeviceBase.mOtpReceivedTime + RegistrationGovernor.RETRY_AFTER_PDNLOST_MS) {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "OTP exist. send immediately");
            } else {
                IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "OTP don't exist. wait OTP");
                TelephonyAdapterPrimaryDeviceBase telephonyAdapterPrimaryDeviceBase2 = TelephonyAdapterPrimaryDeviceBase.this;
                telephonyAdapterPrimaryDeviceBase2.mIsWaitingForOtp = true;
                try {
                    try {
                        telephonyAdapterPrimaryDeviceBase2.mSemaphore.acquire();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    TelephonyAdapterPrimaryDeviceBase.this.mIsWaitingForOtp = false;
                    IMSLog.i(TelephonyAdapterPrimaryDeviceBase.LOG_TAG, TelephonyAdapterPrimaryDeviceBase.this.mPhoneId, "receive OTP:" + IMSLog.checker(TelephonyAdapterPrimaryDeviceBase.this.mOtp));
                } catch (Throwable th) {
                    TelephonyAdapterPrimaryDeviceBase.this.mIsWaitingForOtp = false;
                    throw th;
                }
            }
            return TelephonyAdapterPrimaryDeviceBase.this.mOtp;
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getIdentityByPhoneId(int i) {
            return ConfigUtil.buildIdentity(TelephonyAdapterPrimaryDeviceBase.this.mContext, i);
        }

        @Override // com.sec.internal.ims.config.adapters.TelephonyAdapterState, com.sec.internal.interfaces.ims.config.ITelephonyAdapter
        public String getDeviceId(int i) {
            return TelephonyAdapterPrimaryDeviceBase.this.mTelephony.getImei(i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public boolean isReady() {
        if (this.mState instanceof IdleState) {
            initState();
        }
        return this.mState.isReady();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getPrimaryIdentity() {
        return this.mState.getPrimaryIdentity();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMcc() {
        return this.mState.getMcc();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMnc() {
        return this.mState.getMnc();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getImsi() {
        return this.mState.getImsi();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getImei() {
        return this.mState.getImei();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSimCountryCode() {
        return this.mState.getSimCountryCode();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMsisdn() {
        return this.mState.getMsisdn();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSipUri() {
        return this.mState.getSipUri();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getNetType() {
        return this.mState.getNetType();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSmsDestPort() {
        return this.mState.getSmsDestPort();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSmsOrigPort() {
        return this.mState.getSmsOrigPort();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getExistingOtp() {
        return this.mState.getExistingOtp();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getExistingPortOtp() {
        return this.mState.getExistingPortOtp();
    }

    public String getOtp() {
        sendMessageDelayed(obtainMessage(3), 300000L);
        return this.mState.getOtp();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getPortOtp() {
        return this.mState.getPortOtp();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMsisdnNumber() {
        return this.mState.getMsisdnNumber();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getIidToken() {
        return this.mState.getIidToken();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getAppToken(boolean z) {
        return this.mState.getAppToken(z);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void registerAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
        this.mState.registerAutoConfigurationListener(iAutoConfigurationListener);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void unregisterAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener) {
        this.mState.unregisterAutoConfigurationListener(iAutoConfigurationListener);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void notifyAutoConfigurationListener(int i, boolean z) {
        this.mState.notifyAutoConfigurationListener(i, z);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void sendVerificationCode(String str) {
        this.mState.sendVerificationCode(str);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void sendMsisdnNumber(String str) {
        this.mState.sendMsisdnNumber(str);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void onADSChanged() {
        this.mState.onADSChanged();
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void sendIidToken(String str) {
        this.mState.sendIidToken(str);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getIdentityByPhoneId(int i) {
        return this.mState.getIdentityByPhoneId(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getSubscriberId(int i) {
        return this.mState.getSubscriberId(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getMsisdn(int i) {
        return this.mState.getMsisdn(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public String getDeviceId(int i) {
        return this.mState.getDeviceId(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.ITelephonyAdapter
    public void cleanup() {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "cleanup");
        if (this.mModule != null && this.mSmsReceiver != null) {
            IMSLog.i(str, this.mPhoneId, "unregister mSmsReceiver");
            this.mContext.unregisterReceiver(this.mSmsReceiver);
            this.mSmsReceiver = null;
        }
        if (this.mModule != null && this.mPortSmsReceiver != null) {
            IMSLog.i(str, this.mPhoneId, "unregister mPortSmsReceiver");
            this.mContext.unregisterReceiver(this.mPortSmsReceiver);
            this.mPortSmsReceiver = null;
        }
        if (this.mSimManager != null) {
            IMSLog.i(str, this.mPhoneId, "deregister SimReady/SimRemoved/SimStateChanged");
            this.mSimManager.deregisterForSimReady(this);
            this.mSimManager.deregisterForSimRemoved(this);
            this.mSimManager.deregisterForSimStateChanged(this);
        }
        this.mState.cleanup();
    }
}
