package com.sec.internal.ims.cmstore.mcs.provision.workflow;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import com.sec.ims.ICentralMsgStoreServiceListener;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestApproveSd;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestDeleteAccount;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestGetAccount;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestGetListOfSD;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestGetSD;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestGetUser;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestMCSToken;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestOtpSms;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestRemoveSd;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestUpdateAccount;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestUserAuthentication;
import com.sec.internal.ims.cmstore.mcs.provision.cloudrequest.RequestUserRegistration;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nc.data.McsLargePollingNotification;
import com.sec.internal.omanetapi.nms.data.NmsEventList;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WorkflowMcs extends StateMachine implements IAPICallFlowListener {
    private static final int API_FAILED = 2;
    private static final int API_SUCCEED = 1;
    private static final int APPROVE_SD = 15;
    private static final int AUTHENTICATION = 12;
    protected static final long A_DAY = 86400;
    private static final int DEFAULT = 0;
    protected static final int DEFAULT_OTP_VALIDITY = 60;
    private static final int DELETE_ACCOUNT = 23;
    private static final int GET_ACCOUNT = 21;
    private static final int GET_LIST_OF_SD = 17;
    private static final int GET_SD = 18;
    private static final int GET_USER = 11;
    protected static String OASIS_OTP_PREFIX = "-auth, otp=";
    protected static String OASIS_RECOVERY_PREFIX = "-recovery";
    private static final int REGISTRATION = 13;
    private static final int REMOVE_SD = 16;
    private static final int REQUEST_OTP = 19;
    private static final int REQUEST_OTP_TIMEOUT = 20;
    private static final int RESET_STATE = 3;
    private static final int START_PROVISION = 10;
    private static final int TOKEN = 14;
    private static final int UPDATE_ACCOUNT = 22;
    public String LOG_TAG;
    protected PendingIntent mAccessTokenValidityIntent;
    private final Uri mAliasUri;
    protected PendingIntent mAuthCodeValidityIntent;
    private boolean mChangedToSamsungMessage;
    protected final Handler mClientHandler;
    private String mConsentContext;
    private final Context mContext;
    private State mDefaultState;
    private final IAPICallFlowListener mListener;
    protected final Object mLock;
    protected RemoteCallbackList<ICentralMsgStoreServiceListener> mMcsProvisioningListener;
    protected boolean mNeedInternalRegistration;
    private final NetAPIWorkingStatusControllerMcs mNetAPIWorkingController;
    private String mOtp;
    protected PendingIntent mOtpTimeoutIntent;
    private Set<Integer> mPendingRequests;
    protected int mPhoneId;
    private final CloudMessagePreferenceManager mPreferenceManager;
    private State mProvisionedState;
    private State mProvisioningState;
    RCSContentObserver mRCSContentObserver;
    protected PendingIntent mRefreshTokenValidityIntent;
    private State mRegisteredState;
    private State mRegisteringState;
    protected PendingIntent mRegistrationCodeValidityIntent;
    private String mRequestType;
    private final ISimManager mSimManager;
    protected SmsReceiver mSmsReceiver;
    private final MessageStoreClient mStoreClient;
    private boolean mWaitOtp;

    public boolean isBearerAuthRequest(int i) {
        return i == 15 || i == 16 || i == 17 || i == 18 || i == 21 || i == 22 || i == 23;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam, SyncMsgType syncMsgType, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedEvent(int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlow(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlowWithMessage(Message message) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
    }

    public int translateRequestToNotify(int i) {
        switch (i) {
            case 15:
                return 3;
            case 16:
                return 4;
            case 17:
                return 6;
            case 18:
                return 5;
            case 19:
            case 20:
            default:
                return 0;
            case 21:
            case 22:
                return 7;
            case 23:
                return 2;
        }
    }

    public WorkflowMcs(Looper looper, MessageStoreClient messageStoreClient, Handler handler, NetAPIWorkingStatusControllerMcs netAPIWorkingStatusControllerMcs) {
        super("WorkflowMcs[" + messageStoreClient.getClientID() + "]", looper);
        this.LOG_TAG = WorkflowMcs.class.getSimpleName();
        this.mDefaultState = new DefaultState();
        this.mRegisteringState = new RegisteringState();
        this.mRegisteredState = new RegisteredState();
        this.mProvisioningState = new ProvisioningState();
        this.mProvisionedState = new ProvisionedState();
        this.mRequestType = McsConstants.Auth.TYPE_MOBILE_IP;
        this.mPendingRequests = new HashSet();
        this.mPhoneId = 0;
        this.mNeedInternalRegistration = false;
        this.mConsentContext = null;
        this.mChangedToSamsungMessage = false;
        this.mLock = new Object();
        this.mAccessTokenValidityIntent = null;
        this.mRefreshTokenValidityIntent = null;
        this.mRegistrationCodeValidityIntent = null;
        this.mAuthCodeValidityIntent = null;
        this.mOtpTimeoutIntent = null;
        this.mSimManager = messageStoreClient.getSimManager();
        this.mStoreClient = messageStoreClient;
        this.mPhoneId = messageStoreClient.getClientID();
        Context context = messageStoreClient.getContext();
        this.mContext = context;
        this.mListener = this;
        this.mClientHandler = handler;
        this.mPreferenceManager = messageStoreClient.getPrerenceManager();
        this.mNetAPIWorkingController = netAPIWorkingStatusControllerMcs;
        this.mMcsProvisioningListener = messageStoreClient.getMcsProvisioningListener();
        this.mRCSContentObserver = new RCSContentObserver(getHandler());
        this.mAliasUri = McsConstants.Uris.RCS_USER_ALIAS_URI.buildUpon().fragment("simslot" + this.mPhoneId).build();
        initStates();
        registerSmsReceiver();
        registerSyncStatusListener();
        registerContentObservers();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(McsConstants.McsActions.INTENT_ACCESS_TOKEN_VALIDITY_TIMEOUT);
        intentFilter.addAction(McsConstants.McsActions.INTENT_REFRESH_TOKEN_VALIDITY_TIMEOUT);
        intentFilter.addAction(McsConstants.McsActions.INTENT_REGISTRATION_CODE_VALIDITY_TIMEOUT);
        intentFilter.addAction(McsConstants.McsActions.INTENT_AUTH_CODE_VALIDITY_TIMEOUT);
        intentFilter.addAction(McsConstants.McsActions.INTENT_OTP_RESPONSE_TIMEOUT);
        context.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.mcs.provision.workflow.WorkflowMcs.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (McsConstants.McsActions.INTENT_ACCESS_TOKEN_VALIDITY_TIMEOUT.equals(intent.getAction())) {
                    int intExtra = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                    WorkflowMcs workflowMcs = WorkflowMcs.this;
                    int i = workflowMcs.mPhoneId;
                    if (i == intExtra) {
                        EventLogHelper.infoLogAndAdd(workflowMcs.LOG_TAG, i, "onReceive: access token is expired");
                        IMSLog.c(LogClass.MCS_PV_TOKEN_TIMEOUT, WorkflowMcs.this.mPhoneId + ",PV:ATKN");
                        WorkflowMcs workflowMcs2 = WorkflowMcs.this;
                        workflowMcs2.mAccessTokenValidityIntent = null;
                        if (workflowMcs2.getCurrentState() != WorkflowMcs.this.mProvisioningState) {
                            WorkflowMcs.this.sendMessage(14);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (McsConstants.McsActions.INTENT_REFRESH_TOKEN_VALIDITY_TIMEOUT.equals(intent.getAction())) {
                    int intExtra2 = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                    WorkflowMcs workflowMcs3 = WorkflowMcs.this;
                    int i2 = workflowMcs3.mPhoneId;
                    if (i2 == intExtra2) {
                        EventLogHelper.infoLogAndAdd(workflowMcs3.LOG_TAG, i2, "onReceive: refresh token is expired");
                        IMSLog.c(LogClass.MCS_PV_TOKEN_TIMEOUT, WorkflowMcs.this.mPhoneId + ",PV:RTKN");
                        WorkflowMcs workflowMcs4 = WorkflowMcs.this;
                        workflowMcs4.mRefreshTokenValidityIntent = null;
                        if (workflowMcs4.getCurrentState() != WorkflowMcs.this.mProvisioningState) {
                            WorkflowMcs.this.sendMessage(12);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (McsConstants.McsActions.INTENT_REGISTRATION_CODE_VALIDITY_TIMEOUT.equals(intent.getAction())) {
                    int intExtra3 = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                    WorkflowMcs workflowMcs5 = WorkflowMcs.this;
                    int i3 = workflowMcs5.mPhoneId;
                    if (i3 == intExtra3) {
                        EventLogHelper.infoLogAndAdd(workflowMcs5.LOG_TAG, i3, "onReceive: registration code is expired, remove it");
                        WorkflowMcs workflowMcs6 = WorkflowMcs.this;
                        workflowMcs6.mRegistrationCodeValidityIntent = null;
                        workflowMcs6.mPreferenceManager.saveRegCode("");
                        return;
                    }
                    return;
                }
                if (McsConstants.McsActions.INTENT_AUTH_CODE_VALIDITY_TIMEOUT.equals(intent.getAction())) {
                    int intExtra4 = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                    WorkflowMcs workflowMcs7 = WorkflowMcs.this;
                    int i4 = workflowMcs7.mPhoneId;
                    if (i4 == intExtra4) {
                        EventLogHelper.infoLogAndAdd(workflowMcs7.LOG_TAG, i4, "onReceive: auht code is expired, remove it");
                        WorkflowMcs workflowMcs8 = WorkflowMcs.this;
                        workflowMcs8.mAuthCodeValidityIntent = null;
                        workflowMcs8.mPreferenceManager.saveAuthCode("");
                        return;
                    }
                    return;
                }
                if (McsConstants.McsActions.INTENT_OTP_RESPONSE_TIMEOUT.equals(intent.getAction())) {
                    int intExtra5 = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                    WorkflowMcs workflowMcs9 = WorkflowMcs.this;
                    int i5 = workflowMcs9.mPhoneId;
                    if (i5 == intExtra5) {
                        EventLogHelper.infoLogAndAdd(workflowMcs9.LOG_TAG, i5, "onReceive: Time out, do not receive ported OTP SMS");
                        WorkflowMcs workflowMcs10 = WorkflowMcs.this;
                        workflowMcs10.mOtpTimeoutIntent = null;
                        workflowMcs10.mOtp = null;
                        WorkflowMcs.this.mWaitOtp = false;
                        WorkflowMcs.this.sendMessage(20);
                    }
                }
            }
        }, intentFilter);
    }

    private void registerSyncStatusListener() {
        this.mStoreClient.setMcsFcmPushNotificationListener(new IMcsFcmPushNotificationListener() { // from class: com.sec.internal.ims.cmstore.mcs.provision.workflow.WorkflowMcs.2
            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void largePollingPushNotification(McsLargePollingNotification mcsLargePollingNotification) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void nmsEventListPushNotification(NmsEventList nmsEventList) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncBlockfilterPushNotification(String str) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncContactPushNotification(String str) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncMessagePushNotification(String str, int i) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncStatusPushNotification(String str) {
                WorkflowMcs workflowMcs = WorkflowMcs.this;
                EventLogHelper.infoLogAndAdd(workflowMcs.LOG_TAG, workflowMcs.mPhoneId, "syncStatusPushNotification: status: " + str);
                if (McsConstants.PushMessages.VALUE_ENABLE_MCS.equals(str)) {
                    WorkflowMcs.this.requestMcsReAuthentication();
                } else if (McsConstants.PushMessages.VALUE_DISABLE_MCS.equals(str)) {
                    WorkflowMcs.this.onDeRegistrationCompleted();
                }
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putString(McsConstants.BundleData.PUSH_TYPE, McsConstants.PushMessages.TYPE_SYNC_STATUS);
                bundle.putString(McsConstants.BundleData.KEY, "status");
                bundle.putString("value", str);
                WorkflowMcs.this.notifyMcsProvisionListener(8, 0, 0, bundle);
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncConfigPushNotification(String str) {
                str.hashCode();
                if (str.equals("A")) {
                    WorkflowMcs.this.updateMcsAlias(true);
                    return;
                }
                WorkflowMcs workflowMcs = WorkflowMcs.this;
                IMSLog.i(workflowMcs.LOG_TAG, workflowMcs.mPhoneId, "unknown configtype occur:" + str);
            }
        });
    }

    private void initStates() {
        addState(this.mDefaultState);
        addState(this.mRegisteringState, this.mDefaultState);
        addState(this.mRegisteredState, this.mRegisteringState);
        addState(this.mProvisioningState, this.mRegisteringState);
        addState(this.mProvisionedState, this.mRegisteringState);
        setInitialState(this.mDefaultState);
        start();
    }

    private class DefaultState extends State {
        private DefaultState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            WorkflowMcs.this.log("DefaultState, enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            WorkflowMcs workflowMcs = WorkflowMcs.this;
            IMSLog.i(workflowMcs.LOG_TAG, workflowMcs.mPhoneId, "DefaultState, processMessage: " + message.what);
            int i = message.what;
            if (i == 1) {
                WorkflowMcs.this.handleSucceededEvent(message.arg1, message.obj);
                return true;
            }
            if (i == 2) {
                WorkflowMcs.this.handleFailedEvent(message.arg1, message.arg2);
                return true;
            }
            if (i == 3) {
                if (WorkflowMcs.this.mPreferenceManager.getMcsUser() == 1 && WorkflowMcs.this.mStoreClient.getSimManager().getSimState() != 1) {
                    WorkflowMcs workflowMcs2 = WorkflowMcs.this;
                    workflowMcs2.transitionTo(workflowMcs2.mRegisteredState);
                    return true;
                }
                WorkflowMcs workflowMcs3 = WorkflowMcs.this;
                workflowMcs3.transitionTo(workflowMcs3.mDefaultState);
                return true;
            }
            if (i != 10) {
                if (i != 11) {
                    return false;
                }
                if (!TextUtils.isEmpty(WorkflowMcs.this.getE164Msisdn())) {
                    WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestGetUser(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, WorkflowMcs.this.getE164Msisdn()));
                    return true;
                }
                WorkflowMcs workflowMcs4 = WorkflowMcs.this;
                IMSLog.i(workflowMcs4.LOG_TAG, workflowMcs4.mPhoneId, "msisdn is null");
                WorkflowMcs workflowMcs5 = WorkflowMcs.this;
                workflowMcs5.mClientHandler.sendMessageDelayed(workflowMcs5.obtainMessage(0), 1000L);
                return true;
            }
            int mcsUser = WorkflowMcs.this.mPreferenceManager.getMcsUser();
            WorkflowMcs workflowMcs6 = WorkflowMcs.this;
            IMSLog.i(workflowMcs6.LOG_TAG, workflowMcs6.mPhoneId, "McsUser : " + mcsUser);
            if (mcsUser == -1) {
                WorkflowMcs.this.sendMessage(11);
                return true;
            }
            if ((mcsUser == 0 || WorkflowMcs.this.mNeedInternalRegistration) && message.obj != null) {
                WorkflowMcs.this.mRequestType = McsConstants.Auth.TYPE_MOBILE_IP;
                WorkflowMcs workflowMcs7 = WorkflowMcs.this;
                workflowMcs7.transitionTo(workflowMcs7.mRegisteringState);
                if (Util.isRegistrationCodeInvalid(WorkflowMcs.this.mPreferenceManager.getRegCode())) {
                    WorkflowMcs.this.sendMessage(12, message.obj);
                    return true;
                }
                WorkflowMcs.this.sendMessage(13, message.obj);
                return true;
            }
            if (mcsUser != 1) {
                return true;
            }
            if (WorkflowMcs.this.isValidAccessToken()) {
                WorkflowMcs workflowMcs8 = WorkflowMcs.this;
                IMSLog.i(workflowMcs8.LOG_TAG, workflowMcs8.mPhoneId, "It's already MCS user");
                WorkflowMcs.this.mStoreClient.setProvisionStatus(true);
                WorkflowMcs workflowMcs9 = WorkflowMcs.this;
                workflowMcs9.transitionTo(workflowMcs9.mProvisionedState);
                WorkflowMcs.this.notifyMcsProvisionListener(1, 100, 3, null);
                return true;
            }
            WorkflowMcs workflowMcs10 = WorkflowMcs.this;
            workflowMcs10.transitionTo(workflowMcs10.mRegisteredState);
            WorkflowMcs.this.sendMessage(10);
            return true;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            WorkflowMcs.this.log("DefaultState, exit");
        }
    }

    private class RegisteringState extends State {
        private RegisteringState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            WorkflowMcs.this.log("RegisteringState, enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            WorkflowMcs workflowMcs = WorkflowMcs.this;
            IMSLog.i(workflowMcs.LOG_TAG, workflowMcs.mPhoneId, "RegisteringState, processMessage: " + message.what);
            int i = message.what;
            if (i == 10) {
                return true;
            }
            if (i == 19) {
                WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestOtpSms(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, WorkflowMcs.this.getE164Msisdn(), WorkflowMcs.this.buildDeviceInfo()));
                WorkflowMcs.this.mWaitOtp = true;
                WorkflowMcs.this.startOtpTimer(60L);
                return true;
            }
            if (i != 20) {
                switch (i) {
                    case 12:
                        WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestUserAuthentication(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, WorkflowMcs.this.getE164Msisdn(), WorkflowMcs.this.buildDeviceInfo(), WorkflowMcs.this.mOtp, WorkflowMcs.this.mRequestType, WorkflowMcs.this.mNetAPIWorkingController.getMobileIp(), Boolean.valueOf(WorkflowMcs.this.mNeedInternalRegistration), (String) message.obj));
                        break;
                    case 13:
                        WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestUserRegistration(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, WorkflowMcs.this.getE164Msisdn(), (String) message.obj));
                        break;
                    case 14:
                        WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestMCSToken(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, WorkflowMcs.this.isValidRefreshToken(), WorkflowMcs.this.buildDeviceInfo()));
                        break;
                }
                return true;
            }
            WorkflowMcs.this.handleFailedEvent(20, 0);
            return true;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            WorkflowMcs.this.log("RegisteringState, exit");
        }
    }

    private class RegisteredState extends State {
        private RegisteredState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            WorkflowMcs.this.log("RegisteredState, enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            WorkflowMcs workflowMcs = WorkflowMcs.this;
            IMSLog.i(workflowMcs.LOG_TAG, workflowMcs.mPhoneId, "RegisteredState, processMessage: " + message.what);
            switch (message.what) {
                case 10:
                    int mcsUser = WorkflowMcs.this.mPreferenceManager.getMcsUser();
                    WorkflowMcs workflowMcs2 = WorkflowMcs.this;
                    IMSLog.i(workflowMcs2.LOG_TAG, workflowMcs2.mPhoneId, "McsUser : " + mcsUser);
                    if (mcsUser == 1) {
                        if (!WorkflowMcs.this.isValidAccessToken()) {
                            WorkflowMcs workflowMcs3 = WorkflowMcs.this;
                            workflowMcs3.transitionTo(workflowMcs3.mProvisioningState);
                            if (WorkflowMcs.this.isValidRefreshToken()) {
                                WorkflowMcs.this.sendMessage(14);
                                break;
                            } else {
                                WorkflowMcs.this.sendMessage(12);
                                break;
                            }
                        } else {
                            WorkflowMcs.this.mStoreClient.setProvisionStatus(true);
                            WorkflowMcs workflowMcs4 = WorkflowMcs.this;
                            workflowMcs4.transitionTo(workflowMcs4.mProvisionedState);
                            WorkflowMcs.this.notifyMcsProvisionListener(1, 100, 3, null);
                            break;
                        }
                    } else {
                        WorkflowMcs workflowMcs5 = WorkflowMcs.this;
                        workflowMcs5.transitionTo(workflowMcs5.mRegisteringState);
                        if (!Util.isAuthCodeInvalid(WorkflowMcs.this.mPreferenceManager.getAuthCode())) {
                            WorkflowMcs.this.sendMessage(14);
                            break;
                        } else if (!Util.isRegistrationCodeInvalid(WorkflowMcs.this.mPreferenceManager.getRegCode())) {
                            WorkflowMcs workflowMcs6 = WorkflowMcs.this;
                            workflowMcs6.sendMessage(13, workflowMcs6.mConsentContext);
                            break;
                        } else {
                            WorkflowMcs workflowMcs7 = WorkflowMcs.this;
                            workflowMcs7.sendMessage(12, workflowMcs7.mConsentContext);
                            break;
                        }
                    }
                case 12:
                case 14:
                    WorkflowMcs workflowMcs8 = WorkflowMcs.this;
                    workflowMcs8.transitionTo(workflowMcs8.mProvisioningState);
                    WorkflowMcs.this.sendMessage(message.what);
                    break;
                case 15:
                case 16:
                case 17:
                case 18:
                case 21:
                case 22:
                case 23:
                    if (CmsUtil.isDefaultMessageAppInUse(WorkflowMcs.this.mContext)) {
                        WorkflowMcs.this.mPendingRequests.add(Integer.valueOf(message.what));
                        WorkflowMcs.this.sendMessage(10);
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            WorkflowMcs.this.log("RegisteredState, exit");
        }
    }

    private class ProvisioningState extends State {
        private ProvisioningState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            WorkflowMcs.this.log("ProvisioningState, enter");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            IMSLog.i(WorkflowMcs.this.LOG_TAG, "ProvisioningState, processMessage: " + message.what);
            switch (message.what) {
                case 10:
                    return true;
                case 11:
                case 13:
                case 14:
                case 19:
                case 20:
                default:
                    return false;
                case 12:
                    WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestUserAuthentication(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, WorkflowMcs.this.getE164Msisdn(), WorkflowMcs.this.buildDeviceInfo(), WorkflowMcs.this.mOtp, WorkflowMcs.this.mRequestType, WorkflowMcs.this.mNetAPIWorkingController.getMobileIp(), Boolean.FALSE, null));
                    return true;
                case 15:
                case 16:
                case 17:
                case 18:
                case 21:
                case 22:
                case 23:
                    if (CmsUtil.isDefaultMessageAppInUse(WorkflowMcs.this.mContext)) {
                        WorkflowMcs.this.mPendingRequests.add(Integer.valueOf(message.what));
                    }
                    return true;
            }
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            WorkflowMcs.this.log("ProvisioningState, exit");
        }
    }

    private class ProvisionedState extends State {
        private ProvisionedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            WorkflowMcs.this.log("ProvisionedState, enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            WorkflowMcs workflowMcs = WorkflowMcs.this;
            IMSLog.i(workflowMcs.LOG_TAG, workflowMcs.mPhoneId, "ProvisionedState, processMessage: " + message.what);
            switch (message.what) {
                case 12:
                case 14:
                    WorkflowMcs workflowMcs2 = WorkflowMcs.this;
                    workflowMcs2.transitionTo(workflowMcs2.mProvisioningState);
                    WorkflowMcs.this.sendMessage(message.what);
                    return true;
                case 13:
                case 19:
                case 20:
                default:
                    return false;
                case 15:
                    String str = (String) message.obj;
                    if (!TextUtils.isEmpty(str)) {
                        String stringPayloadFromToken = Util.getStringPayloadFromToken(str, "iss");
                        if (!TextUtils.isEmpty(stringPayloadFromToken) && stringPayloadFromToken.contains(McsConstants.Protocol.SENDER_SD)) {
                            WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestApproveSd(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, str));
                            return true;
                        }
                    }
                    WorkflowMcs.this.notifyMcsProvisionListener(3, 200, 10, null);
                    return true;
                case 16:
                    WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestRemoveSd(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, (String) message.obj));
                    return true;
                case 17:
                    WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestGetListOfSD(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient));
                    return true;
                case 18:
                    WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestGetSD(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, (String) message.obj));
                    return true;
                case 21:
                    WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestGetAccount(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, Util.encodeRFC3986(WorkflowMcs.this.getE164Msisdn())));
                    return true;
                case 22:
                    WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestUpdateAccount(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, Util.encodeRFC3986(WorkflowMcs.this.getE164Msisdn()), message));
                    return true;
                case 23:
                    WorkflowMcs.this.mStoreClient.getHttpController().execute(new RequestDeleteAccount(WorkflowMcs.this.mListener, WorkflowMcs.this.mStoreClient, Util.encodeRFC3986(WorkflowMcs.this.getE164Msisdn())));
                    return true;
            }
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            WorkflowMcs.this.log("ProvisionedState, exit");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getE164Msisdn() {
        String formatNumberToE164 = PhoneNumberUtils.formatNumberToE164(this.mPreferenceManager.getUserCtn(), Util.getSimCountryCode(this.mContext, this.mPhoneId));
        return formatNumberToE164 != null ? formatNumberToE164 : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject buildDeviceInfo() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("client_id", CmsUtil.getMcsClientId(this.mContext));
            jSONObject.put("device_id", this.mPreferenceManager.getDeviceId());
            jSONObject.put("device_name", McsConstants.DeviceInfoValue.DEVICE_NAME);
            jSONObject.put(McsConstants.DeviceInfo.CLIENT_IP, this.mNetAPIWorkingController.getMobileIp());
            jSONObject.put("client_vendor", McsConstants.DeviceInfoValue.CLIENT_VENDOR);
            jSONObject.put("mno", getMnoName());
            jSONObject.put(McsConstants.DeviceInfo.OS_TYPE, McsConstants.DeviceInfoValue.OS_TYPE);
            jSONObject.put(McsConstants.DeviceInfo.OS_VERSION, McsConstants.DeviceInfoValue.OS_VERSION);
            jSONObject.put(McsConstants.DeviceInfo.DEVICE_KIND, McsConstants.DeviceInfoValue.DEVICE_KIND);
            jSONObject.put(McsConstants.DeviceInfo.FIRMWARE_VERSION, McsConstants.DeviceInfoValue.FIRMWARE_VERSION);
            jSONObject.put(McsConstants.DeviceInfo.SERVICE_VERSION, "1.0");
            jSONObject.put("client_version", CmsUtil.getSmAppVersion(this.mContext));
            jSONObject.put("native_info", buildNativeInfo());
            return jSONObject;
        } catch (JSONException e) {
            IMSLog.e(this.LOG_TAG, e.getMessage());
            return null;
        }
    }

    private JSONObject buildNativeInfo() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("imsi", this.mSimManager.getImsi());
            jSONObject.put(McsConstants.NativeInfo.IMEI, this.mPreferenceManager.getDeviceId());
            jSONObject.put(McsConstants.NativeInfo.SMS_PORT, McsConstants.DeviceInfoValue.SMS_PORT);
            jSONObject.put("default_sms_app", ConfigUtil.isSecDmaPackageInuse(this.mContext, this.mPhoneId) ? 1 : 2);
            return jSONObject;
        } catch (JSONException e) {
            IMSLog.e(this.LOG_TAG, e.getMessage());
            return null;
        }
    }

    private String getMnoName() {
        Mno simMno = this.mSimManager.getSimMno();
        return simMno == Mno.SKT ? "SKT" : simMno == Mno.LGU ? "LGU" : simMno == Mno.KT ? "KT" : "";
    }

    public void clearWorkflow() {
        sendMessage(3);
    }

    public void startProvisioning(String str) {
        EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "startProvisioning");
        registerSmsReceiver();
        this.mConsentContext = str;
        sendMessage(obtainMessage(10, str));
    }

    public void manageSd(int i, String str) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "manageSd type : " + i);
        if (i == 1) {
            sendMessage(15, str);
        } else if (i == 2) {
            sendMessage(16, str);
        }
    }

    public void getSd(Boolean bool, String str) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "getSd type " + bool);
        if (bool.booleanValue()) {
            sendMessage(17);
        } else {
            sendMessage(18, str);
        }
    }

    public void updateAccountInfo(String str) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "updateAccountInfo consent");
        this.mConsentContext = str;
        Bundle bundle = new Bundle();
        bundle.putBoolean(McsConstants.Auth.IS_CHANGED_CONSENT, true);
        bundle.putString(McsConstants.Auth.CONSENT_CONTEXT, str);
        sendMessage(22, bundle);
    }

    private void updatePendingAccountInfo() {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "updatePendingAccountInfo");
        Bundle bundle = new Bundle();
        if (this.mConsentContext != null) {
            bundle.putBoolean(McsConstants.Auth.IS_CHANGED_CONSENT, true);
            bundle.putString(McsConstants.Auth.CONSENT_CONTEXT, this.mConsentContext);
        }
        bundle.putBoolean(McsConstants.Auth.IS_CHANGED_ALIAS, true);
        bundle.putString("alias", this.mPreferenceManager.getMcsAlias());
        sendMessage(22, bundle);
    }

    public void getAccount() {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "getAccount");
        sendMessage(21);
    }

    public void disableMCS() {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "disableMCS");
        sendMessage(23);
    }

    public void onDefaultSmsPackageChanged() {
        if (!CmsUtil.isDefaultMessageAppInUse(this.mContext)) {
            sendMessage(3);
            this.mChangedToSamsungMessage = false;
        } else {
            this.mChangedToSamsungMessage = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void updateMcsAlias(boolean r9) {
        /*
            r8 = this;
            com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager r0 = r8.mPreferenceManager
            java.lang.String r0 = r0.getMcsAlias()
            android.content.Context r1 = r8.mContext
            android.content.ContentResolver r2 = r1.getContentResolver()
            android.net.Uri r3 = r8.mAliasUri
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)
            if (r1 == 0) goto L47
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L3d
            if (r2 == 0) goto L47
            r2 = 0
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L3d
            java.lang.String r3 = r8.LOG_TAG     // Catch: java.lang.Throwable -> L3d
            int r4 = r8.mPhoneId     // Catch: java.lang.Throwable -> L3d
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3d
            r5.<init>()     // Catch: java.lang.Throwable -> L3d
            java.lang.String r6 = "updateMcsAlias: mUserAlias "
            r5.append(r6)     // Catch: java.lang.Throwable -> L3d
            r5.append(r2)     // Catch: java.lang.Throwable -> L3d
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L3d
            com.sec.internal.log.IMSLog.i(r3, r4, r5)     // Catch: java.lang.Throwable -> L3d
            goto L48
        L3d:
            r8 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L42
            goto L46
        L42:
            r9 = move-exception
            r8.addSuppressed(r9)
        L46:
            throw r8
        L47:
            r2 = r0
        L48:
            if (r1 == 0) goto L4d
            r1.close()
        L4d:
            if (r9 != 0) goto L55
            boolean r9 = r2.equals(r0)
            if (r9 != 0) goto L67
        L55:
            java.lang.String r9 = r8.LOG_TAG
            int r0 = r8.mPhoneId
            java.lang.String r1 = "updateMcsAlias: RCS user alias is changed, update Mcs Alias"
            com.sec.internal.ims.cmstore.helper.EventLogHelper.infoLogAndAdd(r9, r0, r1)
            com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager r9 = r8.mPreferenceManager
            r9.saveMcsAlias(r2)
            r8.notifyMcsAlias(r2)
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.mcs.provision.workflow.WorkflowMcs.updateMcsAlias(boolean):void");
    }

    protected void notifyMcsAlias(String str) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "updateAccountInfo alias");
        Bundle bundle = new Bundle();
        bundle.putBoolean(McsConstants.Auth.IS_CHANGED_ALIAS, true);
        bundle.putString("alias", str);
        sendMessage(22, bundle);
    }

    public boolean isValidAccessToken() {
        long mcsAccessTokenExpireTime = this.mPreferenceManager.getMcsAccessTokenExpireTime();
        String mcsAccessToken = this.mPreferenceManager.getMcsAccessToken();
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "tokenExpireime = " + mcsAccessTokenExpireTime);
        if (!TextUtils.isEmpty(mcsAccessToken)) {
            long currentTimeMillis = mcsAccessTokenExpireTime - (System.currentTimeMillis() / 1000);
            if (currentTimeMillis - A_DAY > 0) {
                IMSLog.i(this.LOG_TAG, this.mPhoneId, "AccessToken is valid");
                setAccessTokenValidityTimer(currentTimeMillis);
                return true;
            }
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "AccessToken is invalid");
        return false;
    }

    protected boolean isValidRefreshToken() {
        long mcsRefreshTokenExpireTime = this.mPreferenceManager.getMcsRefreshTokenExpireTime();
        String mcsRefreshToken = this.mPreferenceManager.getMcsRefreshToken();
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "tokenExpireime = " + mcsRefreshTokenExpireTime);
        if (!TextUtils.isEmpty(mcsRefreshToken)) {
            long currentTimeMillis = mcsRefreshTokenExpireTime - (System.currentTimeMillis() / 1000);
            if (currentTimeMillis - A_DAY > 0) {
                IMSLog.i(this.LOG_TAG, this.mPhoneId, "RefreshToken is valid");
                setRefreshTokenValidityTimer(currentTimeMillis);
                return true;
            }
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "RefreshToken is invalid");
        return false;
    }

    public void setAccessTokenValidityTimer(long j) {
        if (this.mAccessTokenValidityIntent != null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "setAccessTokenValidityTimer: AccessTokenValidityTimer is already running. Stopping it.");
            cancelAccessTokenValidityTimer();
        }
        if (j == 0) {
            if (getCurrentState() != this.mProvisioningState) {
                sendMessage(14);
                return;
            }
            return;
        }
        long j2 = j - A_DAY;
        if (j2 > 0) {
            Intent intent = new Intent(McsConstants.McsActions.INTENT_ACCESS_TOKEN_VALIDITY_TIMEOUT);
            intent.setPackage(this.mContext.getPackageName());
            intent.putExtra(PhoneConstants.PHONE_KEY, this.mPhoneId);
            this.mAccessTokenValidityIntent = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "setAccessTokenValidityTimer: start validity period timer (" + j2 + " sec)");
            AlarmTimer.start(this.mContext, this.mAccessTokenValidityIntent, j2 * 1000);
        }
    }

    public void setRefreshTokenValidityTimer(long j) {
        if (this.mRefreshTokenValidityIntent != null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "setRefreshTokenValidityTimer: RefreshTokenValidityTimer is already running. Stopping it.");
            cancelRefreshTokenValidityTimer();
        }
        if (j == 0) {
            if (getCurrentState() != this.mProvisioningState) {
                sendMessage(12);
                return;
            }
            return;
        }
        long j2 = j - A_DAY;
        if (j2 > 0) {
            Intent intent = new Intent(McsConstants.McsActions.INTENT_REFRESH_TOKEN_VALIDITY_TIMEOUT);
            intent.setPackage(this.mContext.getPackageName());
            intent.putExtra(PhoneConstants.PHONE_KEY, this.mPhoneId);
            this.mRefreshTokenValidityIntent = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "setRefreshTokenValidityTimer: start validity period timer (" + j2 + " sec)");
            AlarmTimer.start(this.mContext, this.mRefreshTokenValidityIntent, j2 * 1000);
        }
    }

    public void setRegistrationCodeValidityTimer(long j) {
        if (this.mRegistrationCodeValidityIntent != null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "setRegistrationCodeValidityTimer: RegistrationCodeValidityTimer is already running. Stopping it.");
            cancelRegistrationCodeValidityTimer();
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "setRegistrationCodeValidityTimer: start validity period timer (" + j + " sec)");
        Intent intent = new Intent(McsConstants.McsActions.INTENT_REGISTRATION_CODE_VALIDITY_TIMEOUT);
        intent.setPackage(this.mContext.getPackageName());
        intent.putExtra(PhoneConstants.PHONE_KEY, this.mPhoneId);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
        this.mRegistrationCodeValidityIntent = broadcast;
        AlarmTimer.start(this.mContext, broadcast, j * 1000);
    }

    public void setAuthCodeValidityTimer(long j) {
        if (this.mAuthCodeValidityIntent != null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "setAuthCodeValidityTimer: AuthCodeValidityTimer is already running. Stopping it.");
            cancelAuthCodeValidityTimer();
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "setAuthCodeValidityTimer: start validity period timer (" + j + " sec)");
        Intent intent = new Intent(McsConstants.McsActions.INTENT_AUTH_CODE_VALIDITY_TIMEOUT);
        intent.setPackage(this.mContext.getPackageName());
        intent.putExtra(PhoneConstants.PHONE_KEY, this.mPhoneId);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
        this.mAuthCodeValidityIntent = broadcast;
        AlarmTimer.start(this.mContext, broadcast, j * 1000);
    }

    protected void cancelAccessTokenValidityTimer() {
        if (this.mAccessTokenValidityIntent == null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "cancelValidityTimer: AccessToken validityTimer is not running.");
            return;
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "cancel AccessToken ValidityTimer");
        AlarmTimer.stop(this.mContext, this.mAccessTokenValidityIntent);
        this.mAccessTokenValidityIntent = null;
    }

    protected void cancelRefreshTokenValidityTimer() {
        if (this.mRefreshTokenValidityIntent == null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "cancelValidityTimer: RefreshToken validityTimer is not running.");
            return;
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "cancel RefreshToken ValidityTimer");
        AlarmTimer.stop(this.mContext, this.mRefreshTokenValidityIntent);
        this.mRefreshTokenValidityIntent = null;
    }

    public void cancelAuthCodeValidityTimer() {
        if (this.mAuthCodeValidityIntent == null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "cancelValidityTimer: AuthCode validityTimer is not running.");
            return;
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "cancel AuthCode ValidityTimer");
        AlarmTimer.stop(this.mContext, this.mAuthCodeValidityIntent);
        this.mAuthCodeValidityIntent = null;
    }

    public void cancelRegistrationCodeValidityTimer() {
        if (this.mRegistrationCodeValidityIntent == null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "cancelValidityTimer: RegistrationCode validityTimer is not running.");
            return;
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "cancel RegistrationCode ValidityTimer");
        AlarmTimer.stop(this.mContext, this.mRegistrationCodeValidityIntent);
        this.mRegistrationCodeValidityIntent = null;
    }

    public void clearToken() {
        this.mPreferenceManager.saveMcsAccessToken("");
        this.mPreferenceManager.saveMcsRefreshToken("");
        cancelAccessTokenValidityTimer();
        cancelRefreshTokenValidityTimer();
        this.mStoreClient.setProvisionStatus(false);
    }

    public void onDeRegistrationCompleted() {
        if (this.mPreferenceManager.getMcsUser() == 1) {
            EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "De-Registration is completed");
            resetMcsData();
            this.mPreferenceManager.saveMcsUser(0);
            unregisterSmsReceiver();
            notifyMcsProvisionListener(2, 100, 0, null);
        }
    }

    public void resetMcsData() {
        EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "reset MCS data");
        String userCtn = this.mPreferenceManager.getUserCtn();
        String simImsi = this.mPreferenceManager.getSimImsi();
        this.mNetAPIWorkingController.clearData();
        this.mNetAPIWorkingController.stopCMNWorking();
        clearData();
        this.mPreferenceManager.saveSimImsi(simImsi);
        this.mPreferenceManager.saveUserCtn(userCtn, false);
    }

    public void clearData() {
        this.mConsentContext = null;
        this.mPendingRequests.clear();
        this.mStoreClient.setProvisionStatus(false);
        clearWorkflow();
    }

    public void notifyMcsRegistrationStatus() {
        if (this.mPreferenceManager.getMcsUser() == 1) {
            notifyMcsProvisionListener(1, 100, 1, null);
        } else {
            notifyMcsProvisionListener(1, 200, 1, null);
        }
    }

    public void notifyMcsProvisionListener(int i, int i2, int i3, Object obj) {
        synchronized (this.mLock) {
            RemoteCallbackList<ICentralMsgStoreServiceListener> mcsProvisioningListener = this.mStoreClient.getMcsProvisioningListener();
            this.mMcsProvisioningListener = mcsProvisioningListener;
            if (mcsProvisioningListener == null) {
                IMSLog.i(this.LOG_TAG, this.mPhoneId, "notifyMcsProvisionListener: empty");
                return;
            }
            EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "notifyMcsProvisionListener: notify " + i + ", result " + i2 + ", details " + i3);
            try {
                int beginBroadcast = this.mMcsProvisioningListener.beginBroadcast();
                IMSLog.i(this.LOG_TAG, this.mPhoneId, "notifyMcsProvisionListener: length: " + beginBroadcast);
                for (int i4 = 0; i4 < beginBroadcast; i4++) {
                    ICentralMsgStoreServiceListener broadcastItem = this.mMcsProvisioningListener.getBroadcastItem(i4);
                    switch (i) {
                        case 1:
                            broadcastItem.onCmsRegistrationCompleted(i2, i3);
                        case 2:
                            broadcastItem.onCmsDeRegistrationCompleted(i2);
                        case 3:
                            broadcastItem.onCmsSdManagementCompleted(1, (String) obj, i2, i3);
                        case 4:
                            broadcastItem.onCmsSdManagementCompleted(2, (String) obj, i2, i3);
                        case 5:
                            broadcastItem.onCmsSdChanged(false, (String) obj, i2);
                        case 6:
                            broadcastItem.onCmsSdChanged(true, (String) obj, i2);
                        case 7:
                            Bundle bundle = (Bundle) obj;
                            broadcastItem.onCmsAccountInfoDelivered(bundle.getString("alias"), bundle.getString(McsConstants.Auth.CONSENT_CONTEXT), i2);
                        case 8:
                            Bundle bundle2 = (Bundle) obj;
                            broadcastItem.onCmsPushMessageReceived(bundle2.getString(McsConstants.BundleData.PUSH_TYPE), bundle2.getString(McsConstants.BundleData.KEY), bundle2.getString("value"));
                        default:
                    }
                }
            } catch (RemoteException | AbstractMethodError | IllegalStateException | NullPointerException e) {
                IMSLog.i(this.LOG_TAG, this.mPhoneId, "notifyMcsProvisionListener: Exception: " + e.getMessage());
            }
            try {
                this.mMcsProvisioningListener.finishBroadcast();
            } catch (IllegalStateException e2) {
                IMSLog.i(this.LOG_TAG, this.mPhoneId, "notifyMcsProvisionListener: Exception: " + e2.getMessage());
            }
        }
    }

    protected void registerSmsReceiver() {
        if (this.mSmsReceiver == null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "register mSmsReceiver");
            SmsReceiver smsReceiver = new SmsReceiver();
            this.mSmsReceiver = smsReceiver;
            this.mContext.registerReceiver(smsReceiver, smsReceiver.getIntentFilter());
        }
    }

    protected void unregisterSmsReceiver() {
        if (this.mSmsReceiver != null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "unregister mSmsReceiver");
            this.mContext.unregisterReceiver(this.mSmsReceiver);
            this.mSmsReceiver = null;
        }
    }

    protected class SmsReceiver extends BroadcastReceiver {
        protected IntentFilter mIntentFilter;

        public SmsReceiver() {
            this.mIntentFilter = null;
            IntentFilter intentFilter = new IntentFilter();
            this.mIntentFilter = intentFilter;
            intentFilter.addAction(AECNamespace.Action.RECEIVED_SMS_NOTIFICATION);
            this.mIntentFilter.addDataScheme("sms");
            this.mIntentFilter.addDataAuthority("localhost", "16793");
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SmsMessage smsMessage;
            if (AECNamespace.Action.RECEIVED_SMS_NOTIFICATION.equals(intent.getAction())) {
                try {
                    SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
                    WorkflowMcs workflowMcs = WorkflowMcs.this;
                    IMSLog.i(workflowMcs.LOG_TAG, workflowMcs.mPhoneId, "onReceive");
                    if (messagesFromIntent == null || (smsMessage = messagesFromIntent[0]) == null) {
                        return;
                    }
                    int slotId = SimManagerFactory.getSlotId(intent.getIntExtra(PhoneConstants.SUBSCRIPTION_KEY, -1));
                    String displayMessageBody = smsMessage.getDisplayMessageBody();
                    if (displayMessageBody == null) {
                        displayMessageBody = new String(smsMessage.getUserData(), StandardCharsets.UTF_16);
                    }
                    WorkflowMcs workflowMcs2 = WorkflowMcs.this;
                    int i = workflowMcs2.mPhoneId;
                    if (i == slotId) {
                        IMSLog.i(workflowMcs2.LOG_TAG, i, "response otp : " + IMSLog.numberChecker(displayMessageBody));
                        if (!TextUtils.isEmpty(displayMessageBody)) {
                            if (displayMessageBody.contains(WorkflowMcs.OASIS_RECOVERY_PREFIX)) {
                                WorkflowMcs.this.mRequestType = McsConstants.Auth.TYPE_MOBILE_IP;
                                WorkflowMcs.this.sendMessage(12);
                                return;
                            }
                            if (displayMessageBody.contains(WorkflowMcs.OASIS_OTP_PREFIX)) {
                                WorkflowMcs workflowMcs3 = WorkflowMcs.this;
                                if (workflowMcs3.mOtpTimeoutIntent != null) {
                                    AlarmTimer.stop(workflowMcs3.mContext, WorkflowMcs.this.mOtpTimeoutIntent);
                                    WorkflowMcs.this.mOtpTimeoutIntent.cancel();
                                    WorkflowMcs workflowMcs4 = WorkflowMcs.this;
                                    workflowMcs4.mOtpTimeoutIntent = null;
                                    workflowMcs4.mOtp = displayMessageBody.substring(displayMessageBody.indexOf(AuthenticationHeaders.HEADER_PRARAM_SPERATOR) + 1);
                                }
                                if (!TextUtils.isEmpty(WorkflowMcs.this.mOtp) && WorkflowMcs.this.mWaitOtp) {
                                    WorkflowMcs.this.mWaitOtp = false;
                                    WorkflowMcs workflowMcs5 = WorkflowMcs.this;
                                    workflowMcs5.sendMessage(12, workflowMcs5.mConsentContext);
                                    return;
                                } else {
                                    WorkflowMcs.this.mRequestType = McsConstants.Auth.TYPE_MOBILE_IP;
                                    WorkflowMcs.this.sendMessage(20);
                                    return;
                                }
                            }
                            return;
                        }
                        WorkflowMcs workflowMcs6 = WorkflowMcs.this;
                        IMSLog.i(workflowMcs6.LOG_TAG, workflowMcs6.mPhoneId, "no SMS data!");
                    }
                } catch (NullPointerException e) {
                    e.printStackTrace();
                }
            }
        }

        public IntentFilter getIntentFilter() {
            return this.mIntentFilter;
        }
    }

    public void startOtpTimer(long j) {
        PendingIntent pendingIntent = this.mOtpTimeoutIntent;
        if (pendingIntent != null) {
            AlarmTimer.stop(this.mContext, pendingIntent);
            this.mOtpTimeoutIntent.cancel();
            this.mOtpTimeoutIntent = null;
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "startOtpTimer");
        Intent intent = new Intent(McsConstants.McsActions.INTENT_OTP_RESPONSE_TIMEOUT);
        intent.setPackage(this.mContext.getPackageName());
        intent.putExtra(PhoneConstants.PHONE_KEY, this.mPhoneId);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
        this.mOtpTimeoutIntent = broadcast;
        AlarmTimer.start(this.mContext, broadcast, j * 1000);
    }

    void registerContentObservers() {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "registerContentObservers");
        try {
            this.mContext.getContentResolver().registerContentObserver(this.mAliasUri, false, this.mRCSContentObserver);
        } catch (SQLiteFullException | SecurityException e) {
            e.printStackTrace();
        }
    }

    class RCSContentObserver extends ContentObserver {
        public RCSContentObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (uri.equals(WorkflowMcs.this.mAliasUri)) {
                WorkflowMcs workflowMcs = WorkflowMcs.this;
                IMSLog.i(workflowMcs.LOG_TAG, workflowMcs.mPhoneId, "onChange: RCS user alias is changed");
                WorkflowMcs.this.updateMcsAlias(false);
            }
        }
    }

    public void requestMcsAccessToken() {
        EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "requestMcsAccessToken: need to refresh");
        setAccessTokenValidityTimer(0L);
    }

    public void requestMcsReAuthentication() {
        EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "requestMcsReAuthentication: token is no longer valid, need to ReAuthentication");
        IMSLog.c(LogClass.MCS_PV_REAUTH, this.mPhoneId + ",PV:REAUTH");
        clearToken();
        setRefreshTokenValidityTimer(0L);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "onSuccessfulCall request " + iHttpAPICommonInterface.getClass().getSimpleName());
        sendMessage(1, translateRequestCommand(iHttpAPICommonInterface.getClass().getSimpleName()), 0, obj);
    }

    public void handleSucceededEvent(int i, Object obj) {
        switch (i) {
            case 11:
                Bundle bundle = (Bundle) obj;
                String string = bundle.getString(McsConstants.Auth.ROOT_CLIENT_ID);
                String mcsClientId = CmsUtil.getMcsClientId(this.mContext);
                this.mConsentContext = bundle.getString(McsConstants.Auth.CONSENT_CONTEXT);
                IMSLog.i(this.LOG_TAG, this.mPhoneId, "mConsentContext " + this.mConsentContext);
                this.mPreferenceManager.saveMcsUser(1);
                if (!TextUtils.equals(string, mcsClientId)) {
                    this.mNeedInternalRegistration = true;
                    transitionTo(this.mDefaultState);
                } else {
                    transitionTo(this.mRegisteredState);
                }
                sendMessage(10, this.mConsentContext);
                notifyMcsRegistrationStatus();
                notifyMcsProvisionListener(7, 100, 0, bundle);
                break;
            case 12:
                this.mRequestType = McsConstants.Auth.TYPE_MOBILE_IP;
                if (obj == null) {
                    sendMessage(14);
                    break;
                } else {
                    String string2 = ((Bundle) obj).getString(McsConstants.Auth.CONSENT_CONTEXT);
                    if (!TextUtils.isEmpty(string2)) {
                        if (Util.isRegistrationCodeInvalid(this.mPreferenceManager.getRegCode())) {
                            IMSLog.i(this.LOG_TAG, this.mPhoneId, "registration code is expired, remove and retry to get it");
                            this.mPreferenceManager.saveRegCode("");
                            sendMessage(12);
                            break;
                        } else {
                            sendMessage(13, string2);
                            break;
                        }
                    }
                }
                break;
            case 13:
                sendMessage(14);
                break;
            case 14:
                transitionTo(this.mProvisionedState);
                updateMcsAlias(false);
                this.mNeedInternalRegistration = false;
                if (this.mPreferenceManager.getMcsUser() != 1) {
                    this.mPreferenceManager.saveMcsUser(1);
                    this.mStoreClient.setProvisionStatus(true);
                    notifyMcsProvisionListener(1, 100, 2, null);
                    break;
                } else {
                    if (!this.mStoreClient.getProvisionStatus()) {
                        this.mStoreClient.setProvisionStatus(true);
                        if (this.mChangedToSamsungMessage) {
                            this.mChangedToSamsungMessage = false;
                            notifyMcsProvisionListener(1, 100, 5, null);
                        } else {
                            notifyMcsProvisionListener(1, 100, 4, null);
                        }
                    } else {
                        notifyMcsProvisionListener(1, 100, 5, null);
                    }
                    if (!this.mPendingRequests.isEmpty()) {
                        IMSLog.i(this.LOG_TAG, this.mPhoneId, "pending requests" + this.mPendingRequests);
                        Iterator<Integer> it = this.mPendingRequests.iterator();
                        while (it.hasNext()) {
                            int intValue = it.next().intValue();
                            if (intValue == 22) {
                                updatePendingAccountInfo();
                            } else {
                                sendMessage(intValue);
                            }
                        }
                        this.mPendingRequests.clear();
                        break;
                    }
                }
                break;
            case 15:
                notifyMcsProvisionListener(3, 100, 1, null);
                break;
            case 16:
                notifyMcsProvisionListener(4, 100, 1, null);
                break;
            case 17:
                notifyMcsProvisionListener(6, 100, 0, obj);
                break;
            case 18:
                notifyMcsProvisionListener(5, 100, 0, obj);
                break;
            case 19:
                if (this.mWaitOtp) {
                    Bundle bundle2 = (Bundle) obj;
                    String oasisAuthRoot = this.mStoreClient.getPrerenceManager().getOasisAuthRoot();
                    if (oasisAuthRoot.contains("dev") || oasisAuthRoot.contains("stg")) {
                        this.mWaitOtp = false;
                        this.mOtp = "123456";
                        sendMessage(12, this.mConsentContext);
                        break;
                    } else if (oasisAuthRoot.equals(McsConstants.Auth.ROOT_URL)) {
                        startOtpTimer(bundle2.getLong("otpCodeValidity"));
                        break;
                    }
                }
                break;
            case 21:
                notifyMcsProvisionListener(7, 100, 0, obj);
                break;
            case 22:
                notifyMcsProvisionListener(7, 100, 0, obj);
                if (((Bundle) obj).getInt(McsConstants.Auth.MCS_ACCOUNT_STATUS) == 9999) {
                    onDeRegistrationCompleted();
                    break;
                }
                break;
            case 23:
                onDeRegistrationCompleted();
                break;
        }
    }

    public int translateRequestCommand(String str) {
        str.hashCode();
        switch (str) {
            case "RequestDeleteAccount":
                return 23;
            case "RequestUserRegistration":
                return 13;
            case "RequestUserAuthentication":
                return 12;
            case "RequestMCSToken":
                return 14;
            case "RequestApproveSd":
                return 15;
            case "RequestGetAccount":
                return 21;
            case "RequestUpdateAccount":
                return 22;
            case "RequestRemoveSd":
                return 16;
            case "RequestGetUser":
                return 11;
            case "RequestGetSD":
                return 18;
            case "RequestGetListOfSD":
                return 17;
            case "RequestOtpSms":
                return 19;
            default:
                return 0;
        }
    }

    public void processFailResponseForGetUser(int i) {
        if (i == 404) {
            this.mPreferenceManager.saveMcsUser(0);
            notifyMcsRegistrationStatus();
        }
    }

    public void processFailResponseForAuthentication(int i) {
        if (i == 401) {
            this.mRequestType = McsConstants.Auth.TYPE_OTP;
            sendMessage(19);
            return;
        }
        if (i == 900) {
            onDeRegistrationCompleted();
            return;
        }
        if (i == 901) {
            transitionTo(this.mDefaultState);
            notifyMcsProvisionListener(1, 200, 20, null);
            return;
        }
        if (i == 902) {
            transitionTo(this.mDefaultState);
            notifyMcsProvisionListener(1, 200, 21, null);
        } else if (i == 903) {
            transitionTo(this.mDefaultState);
            notifyMcsProvisionListener(1, 200, 22, null);
        } else if (this.mPreferenceManager.getMcsUser() != 1) {
            transitionTo(this.mDefaultState);
            notifyMcsProvisionListener(1, 200, 2, null);
        } else {
            transitionTo(this.mRegisteredState);
        }
    }

    public void processFailResponseForRegistration(int i) {
        this.mWaitOtp = false;
        if (i == 901) {
            transitionTo(this.mDefaultState);
            notifyMcsProvisionListener(1, 200, 20, null);
        } else if (i == 902) {
            transitionTo(this.mDefaultState);
            notifyMcsProvisionListener(1, 200, 21, null);
        } else if (i == 903) {
            transitionTo(this.mDefaultState);
            notifyMcsProvisionListener(1, 200, 22, null);
        }
        if (this.mPreferenceManager.getMcsUser() != 1) {
            transitionTo(this.mDefaultState);
            notifyMcsProvisionListener(1, 200, 2, null);
        } else {
            transitionTo(this.mRegisteredState);
        }
    }

    public void processFailResponseForToken(int i) {
        if (i == 404) {
            sendMessage(12);
            return;
        }
        if (i == 901) {
            transitionTo(this.mRegisteredState);
            notifyMcsProvisionListener(1, 200, 20, null);
            return;
        }
        if (i == 902) {
            transitionTo(this.mRegisteredState);
            notifyMcsProvisionListener(1, 200, 21, null);
            return;
        }
        if (i == 903) {
            transitionTo(this.mRegisteredState);
            notifyMcsProvisionListener(1, 200, 22, null);
            return;
        }
        EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "onFailedCall: MCS provisioning is failed");
        int i2 = this.mPreferenceManager.getMcsUser() != 1 ? 2 : 4;
        if (this.mStoreClient.getProvisionStatus()) {
            i2 = 5;
        }
        this.mPendingRequests.clear();
        this.mStoreClient.setProvisionStatus(false);
        transitionTo(this.mRegisteredState);
        notifyMcsProvisionListener(1, 200, i2, null);
    }

    public void processFailResponseForBearerApi(int i, int i2) {
        if (i2 == 401) {
            int imsUserSetting = DmConfigHelper.getImsUserSetting(this.mContext, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName(), this.mPhoneId);
            if (!this.mStoreClient.isRcsRegistered() && imsUserSetting == 0) {
                onDeRegistrationCompleted();
                return;
            }
            clearToken();
            if (this.mPreferenceManager.getMcsUser() == 1) {
                if (getCurrentState() != this.mProvisioningState) {
                    sendMessage(12);
                }
                this.mPendingRequests.add(Integer.valueOf(i));
                IMSLog.i(this.LOG_TAG, this.mPhoneId, "mPendingRequests" + this.mPendingRequests);
                return;
            }
        }
        notifyMcsProvisionListener(translateRequestToNotify(i), 200, 1, null);
    }

    public void handleFailedEvent(int i, int i2) {
        this.mRequestType = McsConstants.Auth.TYPE_MOBILE_IP;
        if (i == 11) {
            processFailResponseForGetUser(i2);
            return;
        }
        if (i == 12) {
            processFailResponseForAuthentication(i2);
            return;
        }
        if (i == 13 || i == 19 || i == 20) {
            processFailResponseForRegistration(i2);
        } else if (i == 14) {
            processFailResponseForToken(i2);
        } else if (isBearerAuthRequest(i)) {
            processFailResponseForBearerApi(i, i2);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "onFailedCall request " + iHttpAPICommonInterface.getClass().getSimpleName());
        if (i == 802) {
            EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, " curr state: " + getCurrentState().getName() + " request failure due to connection " + iHttpAPICommonInterface.getClass().getSimpleName());
        }
        sendMessage(2, translateRequestCommand(iHttpAPICommonInterface.getClass().getSimpleName()), i);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
        String simpleName = iHttpAPICommonInterface.getClass().getSimpleName();
        int parseInt = Integer.parseInt(str);
        IMSLog.i(this.LOG_TAG, this.mPhoneId, " OnOverRequest : request " + simpleName + ", error code " + parseInt + ", retryAfter " + i + "ms");
        boolean checkAndIncreaseRetry = this.mStoreClient.getMcsRetryMapAdapter().checkAndIncreaseRetry(iHttpAPICommonInterface, parseInt);
        int translateRequestCommand = translateRequestCommand(simpleName);
        if (checkAndIncreaseRetry) {
            sendMessageDelayed(translateRequestCommand, i);
        } else {
            sendMessage(2, translateRequestCommand, parseInt);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i, Object obj) {
        String simpleName = iHttpAPICommonInterface.getClass().getSimpleName();
        int parseInt = Integer.parseInt(str);
        IMSLog.i(this.LOG_TAG, this.mPhoneId, " OnOverRequest2 : request " + simpleName + ", error code " + parseInt + ", retryAfter " + i + "ms");
        boolean checkAndIncreaseRetry = this.mStoreClient.getMcsRetryMapAdapter().checkAndIncreaseRetry(iHttpAPICommonInterface, parseInt);
        int translateRequestCommand = translateRequestCommand(simpleName);
        if (checkAndIncreaseRetry) {
            Bundle bundle = (Bundle) obj;
            if (translateRequestCommand == 12) {
                sendMessageDelayed(translateRequestCommand, bundle.getString(McsConstants.Auth.CONSENT_CONTEXT), i);
                return;
            } else if (translateRequestCommand == 21 || translateRequestCommand == 22) {
                sendMessageDelayed(translateRequestCommand, bundle, i);
                return;
            } else {
                sendMessageDelayed(translateRequestCommand, i);
                return;
            }
        }
        sendMessage(2, translateRequestCommand, parseInt);
    }
}
