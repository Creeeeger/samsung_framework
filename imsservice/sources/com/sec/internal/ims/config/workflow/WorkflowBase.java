package com.sec.internal.ims.config.workflow;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.utils.OMAGlobalVariables;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.HashManager;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.config.ConfigContract;
import com.sec.internal.ims.config.ConfigProvider;
import com.sec.internal.ims.config.PowerController;
import com.sec.internal.ims.config.SharedInfo;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.DialogAdapterConsentDecorator;
import com.sec.internal.ims.config.adapters.HttpAdapter;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDevice;
import com.sec.internal.ims.config.adapters.XmlParserAdapter;
import com.sec.internal.ims.config.exception.InvalidHeaderException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IDialogAdapter;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.interfaces.ims.config.IStorageAdapter;
import com.sec.internal.interfaces.ims.config.ITelephonyAdapter;
import com.sec.internal.interfaces.ims.config.IWorkflow;
import com.sec.internal.interfaces.ims.config.IXmlParserAdapter;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.log.IMSLog;
import java.net.ConnectException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class WorkflowBase extends Handler implements IWorkflow {
    protected static final long AUTO_CONFIG_MAX_TIMEOUT = 60000;
    protected static final int AUTO_CONFIG_RETRY_INTERVAL = 300;
    protected static final String CHARSET = "utf-8";
    protected static final String CLIENT_VENDOR_INFO = "clientVendor";
    protected static final String CLIENT_VERSION_INFO = "clientVersion";
    protected static final int HANDLE_AUTO_CONFIG_ADS_CHANGED = 15;
    protected static final int HANDLE_AUTO_CONFIG_CLEAN_UP = 14;
    protected static final int HANDLE_AUTO_CONFIG_CLEAR_DB = 2;
    protected static final int HANDLE_AUTO_CONFIG_CLIENT_INFO_CHANGED = 16;
    protected static final int HANDLE_AUTO_CONFIG_DUALSIM = 6;
    protected static final int HANDLE_AUTO_CONFIG_FORCE = 0;
    protected static final int HANDLE_AUTO_CONFIG_GENERAL_ERROR_RETRY_TIMER_EXPIRED = 13;
    protected static final int HANDLE_AUTO_CONFIG_IMS_REGI_STATUS_CHANGED = 12;
    protected static final int HANDLE_AUTO_CONFIG_MOBILE_CONNECTION_FAILURE = 4;
    protected static final int HANDLE_AUTO_CONFIG_MOBILE_CONNECTION_SUCCESSFUL = 3;
    protected static final int HANDLE_AUTO_CONFIG_RESET = 8;
    protected static final int HANDLE_AUTO_CONFIG_SHARED_PREFERENCE_CHANGED = 10;
    protected static final int HANDLE_AUTO_CONFIG_SMS_DEFAULT_APPLICATION_CHANGED = 5;
    protected static final int HANDLE_AUTO_CONFIG_START = 1;
    protected static final int HANDLE_CUR_CONFIG_START = 11;
    protected static final int HANDLE_SHOW_MSISDN_DIALOG = 7;
    protected static final String INTENT_VALIDITY_TIMEOUT = "com.sec.internal.ims.config.workflow.validity_timeout";
    private static final String LAST_RCS_PROFILE = "lastRcsProfile";
    protected static final String LAST_SW_VERSION = "lastSwVersion";
    protected static final int NOTIFY_AUTO_CONFIGURATION_COMPLETED = 52;
    protected static final String PREFERENCE_NAME = "workflowbase";
    protected static final String RCS_ENABLED_BY_USER = "rcsEnabledByUser";
    private static final String RCS_PROFILE = "rcsprofile";
    protected static final String RCS_PROFILE_INFO = "rcsProfile";
    protected static final String RCS_VERSION_INFO = "rcsVersion";
    protected static final String TIMESTAMP_FORMAT = "EEE, dd MMM yyyy HH:mm:ss ZZZZ";
    private boolean isGlobalsettingsObserverRegisted;
    protected String mClientPlatform;
    protected String mClientVersion;
    protected Context mContext;
    protected WorkflowCookieHandler mCookieHandler;
    protected IDialogAdapter mDialog;
    private SimpleEventLog mEventLog;
    protected IHttpAdapter mHttp;
    protected boolean mHttpRedirect;
    protected String mIdentity;
    BroadcastReceiver mIntentReceiver;
    protected boolean mIsConfigOngoing;
    protected boolean mIsUsingcheckSetToGS;
    protected int mLastErrorCode;
    protected int mLastErrorCodeNonRemote;
    protected String mLastErrorMessage;
    protected Mno mMno;
    protected boolean mMobileNetwork;
    protected final IConfigModule mModule;
    protected WorkflowMsisdnHandler mMsisdnHandler;
    protected boolean mNeedToStopWork;
    protected Network mNetwork;
    protected NetworkRequest mNetworkRequest;
    protected WorkflowParamHandler mParamHandler;
    protected int mPhoneId;
    protected PowerController mPowerController;
    protected List<String> mRcsAppList;
    private int mRcsAutoconfigSource;
    protected String mRcsCustomServerUrl;
    private final ContentObserver mRcsCustomServerUrlObserver;
    protected String mRcsEnabledByUser;
    protected String mRcsProfile;
    protected String mRcsProvisioningVersion;
    protected String mRcsUPProfile;
    protected String mRcsVersion;
    protected IRegistrationManager mRm;
    protected SharedInfo mSharedInfo;
    protected SharedPreferences mSharedPreferences;
    protected ISimManager mSm;
    protected boolean mStartForce;
    State mState;
    protected IStorageAdapter mStorage;
    protected ITelephonyAdapter mTelephonyAdapter;
    protected PendingIntent mValidityIntent;
    protected IXmlParserAdapter mXmlParser;
    private static String LOG_TAG = WorkflowBase.class.getSimpleName();
    protected static int AUTO_CONFIG_MAX_FLOWCOUNT = 20;

    public interface Workflow {
        public static final int AUTHORIZE = 4;
        public static final int FETCH_HTTP = 2;
        public static final int FETCH_HTTPS = 3;
        public static final int FETCH_OTP = 5;
        public static final int FINISH = 8;
        public static final int INITIALIZE = 1;
        public static final int PARSE = 6;
        public static final int STORE = 7;

        Workflow run() throws Exception;
    }

    public boolean checkNetworkConnectivity() {
        return true;
    }

    protected abstract Workflow getNextWorkflow(int i);

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public IStorageAdapter getStorage() {
        return null;
    }

    abstract void work();

    protected abstract class Initialize implements Workflow {
        protected Initialize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public Workflow run() throws Exception {
            init();
            WorkflowBase workflowBase = WorkflowBase.this;
            if (workflowBase.mStartForce) {
                return workflowBase.getNextWorkflow(2);
            }
            int i = AnonymousClass3.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[workflowBase.getOpMode().ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                return WorkflowBase.this.getNextWorkflow(2);
            }
            return WorkflowBase.this.getNextWorkflow(8);
        }

        protected void init() throws NoInitialDataException {
            WorkflowBase workflowBase = WorkflowBase.this;
            workflowBase.mSharedInfo.setUrl(workflowBase.mParamHandler.initUrl());
            WorkflowBase.this.mCookieHandler.clearCookie();
        }
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowBase$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode;

        static {
            int[] iArr = new int[OpMode.values().length];
            $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode = iArr;
            try {
                iArr[OpMode.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[OpMode.DISABLE_TEMPORARY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[OpMode.DORMANT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[OpMode.DISABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[OpMode.DISABLE_PERMANENTLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected abstract class FetchHttp implements Workflow {
        protected FetchHttp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public Workflow run() throws Exception {
            setHttpHeader();
            WorkflowBase workflowBase = WorkflowBase.this;
            workflowBase.mSharedInfo.setHttpResponse(workflowBase.getHttpResponse());
            WorkflowBase workflowBase2 = WorkflowBase.this;
            return workflowBase2.handleResponse(this, workflowBase2.mSharedInfo.getHttpResponse().getStatusCode());
        }

        protected void setHttpHeader() {
            WorkflowBase.this.mSharedInfo.setHttpDefault();
        }
    }

    protected abstract class FetchHttps implements Workflow {
        protected abstract void setHttps();

        protected FetchHttps() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public Workflow run() throws Exception {
            setHttps();
            WorkflowBase workflowBase = WorkflowBase.this;
            workflowBase.mSharedInfo.setHttpResponse(workflowBase.getHttpResponse());
            WorkflowBase workflowBase2 = WorkflowBase.this;
            return workflowBase2.handleResponse(this, workflowBase2.mSharedInfo.getHttpResponse().getStatusCode());
        }
    }

    protected abstract class Parse implements Workflow {
        protected Parse() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public Workflow run() throws Exception {
            Map<String, String> parsedXmlFromBody = WorkflowBase.this.mParamHandler.getParsedXmlFromBody();
            if (WorkflowBase.this.mParamHandler.isRequiredAuthentication(parsedXmlFromBody)) {
                return WorkflowBase.this.getNextWorkflow(4);
            }
            parseParam(parsedXmlFromBody);
            WorkflowBase.this.mSharedInfo.setParsedXml(parsedXmlFromBody);
            return WorkflowBase.this.getNextWorkflow(7);
        }

        protected void parseParam(Map<String, String> map) {
            WorkflowBase.this.mParamHandler.parseParam(map);
        }
    }

    protected abstract class Authorize implements Workflow {
        protected Authorize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public Workflow run() throws Exception {
            WorkflowBase.this.mPowerController.release();
            String otp = getOtp();
            IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "otp: " + IMSLog.checker(otp));
            if (otp != null) {
                WorkflowBase.this.mSharedInfo.setOtp(otp);
                WorkflowBase.this.mPowerController.lock();
                return WorkflowBase.this.getNextWorkflow(5);
            }
            return WorkflowBase.this.getNextWorkflow(8);
        }

        protected String getOtp() {
            return WorkflowBase.this.mTelephonyAdapter.getOtp();
        }
    }

    protected abstract class FetchOtp implements Workflow {
        protected FetchOtp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public Workflow run() throws Exception {
            WorkflowBase.this.mSharedInfo.setHttpClean();
            setHttp();
            WorkflowBase workflowBase = WorkflowBase.this;
            workflowBase.mSharedInfo.setHttpResponse(workflowBase.getHttpResponse());
            WorkflowBase workflowBase2 = WorkflowBase.this;
            return workflowBase2.handleResponse(this, workflowBase2.mSharedInfo.getHttpResponse().getStatusCode());
        }

        protected void setHttp() {
            SharedInfo sharedInfo = WorkflowBase.this.mSharedInfo;
            sharedInfo.addHttpParam(ConfigConstants.PNAME.OTP, sharedInfo.getOtp());
        }
    }

    protected abstract class Store implements Workflow {
        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public abstract Workflow run() throws Exception;

        protected Store() {
        }
    }

    protected abstract class Finish implements Workflow {
        protected Finish() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public Workflow run() throws Exception {
            if (WorkflowBase.this.mSharedInfo.getHttpResponse() != null) {
                WorkflowBase workflowBase = WorkflowBase.this;
                workflowBase.setLastErrorCode(workflowBase.mSharedInfo.getHttpResponse().getStatusCode());
            }
            IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "workflow is finished");
            return null;
        }
    }

    public enum OpMode {
        ACTIVE(1),
        DISABLE_TEMPORARY(0),
        DISABLE_PERMANENTLY(-1),
        DISABLE(-2),
        DORMANT(-3),
        DISABLE_RCS_BY_USER(-4),
        ENABLE_RCS_BY_USER(-5),
        DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE(-6),
        DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE(-7),
        DISABLE_BY_RCS_DISABLED_STATE(-8),
        DORMANT_BY_RCS_DISABLED_STATE(-9),
        TURNEDOFF_BY_RCS_DISABLED_STATE(-10),
        DISABLED_TERMS_AND_CONDIDIONTS_REJECTED(-11),
        NONE(-12);

        int mValue;

        OpMode(int i) {
            this.mValue = i;
        }

        int value() {
            return this.mValue;
        }
    }

    public WorkflowBase(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, ITelephonyAdapter iTelephonyAdapter, IStorageAdapter iStorageAdapter, IHttpAdapter iHttpAdapter, IXmlParserAdapter iXmlParserAdapter, IDialogAdapter iDialogAdapter, int i) {
        super(looper);
        this.mLastErrorCode = IWorkflow.DEFAULT_ERROR_CODE;
        this.mLastErrorCodeNonRemote = 200;
        this.mLastErrorMessage = "";
        this.mStartForce = false;
        this.mMobileNetwork = false;
        this.mHttpRedirect = false;
        this.mIsConfigOngoing = false;
        this.mIsUsingcheckSetToGS = false;
        this.mRcsCustomServerUrl = null;
        this.mRcsUPProfile = null;
        this.mNeedToStopWork = false;
        this.mRcsAutoconfigSource = -1;
        this.mIdentity = null;
        this.isGlobalsettingsObserverRegisted = false;
        this.mNetwork = null;
        this.mNetworkRequest = null;
        this.mValidityIntent = null;
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.config.workflow.WorkflowBase.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (!WorkflowBase.this.checkRcsSwitchEur()) {
                    Log.i(WorkflowBase.LOG_TAG, "onReceive: validity period expired. but RCS is switch off. it should perform when switch on.");
                    return;
                }
                if (WorkflowBase.INTENT_VALIDITY_TIMEOUT.equals(intent.getAction())) {
                    WorkflowBase workflowBase = WorkflowBase.this;
                    workflowBase.mValidityIntent = null;
                    workflowBase.mModule.setAcsTryReason(workflowBase.mPhoneId, DiagnosisConstants.RCSA_ATRE.EXPIRE_VALIDITY);
                    if (WorkflowBase.this.isNetworkAvailable()) {
                        int intExtra = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                        WorkflowBase workflowBase2 = WorkflowBase.this;
                        if (workflowBase2.mPhoneId == intExtra) {
                            workflowBase2.mEventLog.logAndAdd(WorkflowBase.this.mPhoneId, "onReceive: Same phoneId with this intent");
                            IMSLog.c(LogClass.WFB_INTENT_VALIDITY_TIMEOUT, "onReceive: Same phoneId");
                            WorkflowBase workflowBase3 = WorkflowBase.this;
                            workflowBase3.mModule.startAutoConfig(false, null, workflowBase3.mPhoneId);
                        }
                    } else {
                        Handler handler = WorkflowBase.this.mModule.getHandler();
                        WorkflowBase workflowBase4 = WorkflowBase.this;
                        handler.sendMessage(workflowBase4.obtainMessage(17, Integer.valueOf(workflowBase4.mPhoneId)));
                    }
                    Log.i(WorkflowBase.LOG_TAG, "onReceive: validity period expired. start config, mMobileNetwork = " + WorkflowBase.this.mMobileNetwork);
                }
            }
        };
        this.mRcsCustomServerUrlObserver = new ContentObserver(this) { // from class: com.sec.internal.ims.config.workflow.WorkflowBase.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                WorkflowBase workflowBase = WorkflowBase.this;
                if (TextUtils.equals(workflowBase.mIdentity, workflowBase.mTelephonyAdapter.getIdentityByPhoneId(workflowBase.mPhoneId)) && uri != null && uri.getPath().startsWith(GlobalSettingsConstants.CONTENT_URI.getPath())) {
                    String string = ImsRegistry.getString(WorkflowBase.this.mPhoneId, GlobalSettingsConstants.RCS.CUSTOM_CONFIG_SERVER_URL, "");
                    int autoconfigSourceWithFeature = ConfigUtil.getAutoconfigSourceWithFeature(WorkflowBase.this.mPhoneId, 0);
                    String string2 = ImsRegistry.getString(WorkflowBase.this.mPhoneId, GlobalSettingsConstants.RCS.UP_PROFILE, "");
                    if (!TextUtils.equals(WorkflowBase.this.mRcsCustomServerUrl, string) || WorkflowBase.this.mRcsAutoconfigSource != autoconfigSourceWithFeature || !TextUtils.equals(WorkflowBase.this.mRcsUPProfile, string2)) {
                        IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "new rcs_custom_config_server_url=" + string + ", new rcs_autoconfig_source=" + autoconfigSourceWithFeature + ", new rcs_up_profile=" + string2);
                        WorkflowBase workflowBase2 = WorkflowBase.this;
                        workflowBase2.mRcsCustomServerUrl = string;
                        workflowBase2.mRcsAutoconfigSource = autoconfigSourceWithFeature;
                        WorkflowBase.this.removeMessages(2);
                        WorkflowBase.this.sendEmptyMessage(2);
                    }
                }
                WorkflowBase workflowBase3 = WorkflowBase.this;
                if (workflowBase3.mIsUsingcheckSetToGS) {
                    workflowBase3.mParamHandler.checkSetToGS(null);
                }
                WorkflowBase workflowBase4 = WorkflowBase.this;
                workflowBase4.mIdentity = workflowBase4.mTelephonyAdapter.getIdentityByPhoneId(workflowBase4.mPhoneId);
            }
        };
        this.mPhoneId = i;
        IMSLog.i(LOG_TAG, i, "created");
        this.mEventLog = new SimpleEventLog(context, "Workflow", 500);
        this.mContext = context;
        this.mModule = iConfigModule;
        this.mTelephonyAdapter = iTelephonyAdapter;
        this.mStorage = iStorageAdapter;
        this.mHttp = iHttpAdapter;
        this.mXmlParser = iXmlParserAdapter;
        this.mRcsProfile = ConfigUtil.getRcsProfileLoaderInternalWithFeature(context, mno.getName(), this.mPhoneId);
        this.mRcsVersion = ImsRegistry.getString(this.mPhoneId, "rcs_version", "6.0");
        this.mClientPlatform = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_CLIENT_PLATFORM, ConfigConstants.PVALUE.CLIENT_VERSION_NAME);
        this.mClientVersion = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_CLIENT_VERSION, "6.0");
        this.mRcsProvisioningVersion = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_PROVISIONING_VERSION, "2.0");
        this.mRcsAppList = Arrays.asList(ImsRegistry.getStringArray(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_APP_LIST, new String[0]));
        if (iDialogAdapter != null) {
            this.mDialog = new DialogAdapterConsentDecorator(iDialogAdapter, i);
        }
        this.mSharedPreferences = this.mContext.getSharedPreferences(PREFERENCE_NAME, 0);
        this.mPowerController = new PowerController(context, 60000L);
        this.mState = new IdleState();
        this.mSm = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        this.mRm = ImsRegistry.getRegistrationManager();
        this.mMno = mno;
        this.mCookieHandler = new WorkflowCookieHandler(this, this.mPhoneId);
        this.mParamHandler = new WorkflowParamHandler(this, this.mPhoneId, this.mTelephonyAdapter);
        this.mMsisdnHandler = new WorkflowMsisdnHandler(this);
        createSharedInfo();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_VALIDITY_TIMEOUT);
        this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
        registerGlobalSettingsObserver();
    }

    public WorkflowBase(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        this(looper, context, iConfigModule, mno, new TelephonyAdapterPrimaryDevice(context, iConfigModule, i), new StorageAdapter(), new HttpAdapter(i), new XmlParserAdapter(), new DialogAdapter(context, iConfigModule), i);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "message: " + message.what);
        addEventLog(LOG_TAG + ": message: " + message.what);
        int i = message.what;
        if (i == 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "forced startAutoConfig");
            removeMessages(0);
            Mno simMno = SimUtil.getSimMno(this.mPhoneId);
            if (ConfigUtil.isRcsChn(simMno) || ConfigUtil.isRcsEur(simMno)) {
                resetStorage();
            }
            this.mStartForce = true;
        } else if (i != 1) {
            if (i == 2) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "clearStorage");
                clearStorage();
                return;
            } else if (i != 6) {
                if (i != 7) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "unknown message!!!");
                    return;
                }
                return;
            } else {
                IMSLog.i(LOG_TAG, this.mPhoneId, "autoconfig dualsim");
                resetStorage();
                sendEmptyMessage(1);
                return;
            }
        }
        removeMessages(1);
        if (this.mIsConfigOngoing) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "AutoConfig:Already started");
            return;
        }
        this.mIsConfigOngoing = true;
        IMSLog.i(LOG_TAG, this.mPhoneId, "AutoConfig:START");
        this.mPowerController.lock();
        int version = getVersion();
        if (needScheduleAutoconfig(this.mPhoneId)) {
            scheduleAutoconfig(version);
        }
        int version2 = getVersion();
        IMSLog.i(LOG_TAG, this.mPhoneId, "oldVersion : " + version + " newVersion : " + version2);
        IMSLog.i(LOG_TAG, this.mPhoneId, "AutoConfig:FINISH");
        setCompleted(true);
        this.mModule.getHandler().removeMessages(3, Integer.valueOf(this.mPhoneId));
        this.mModule.getHandler().sendMessage(obtainMessage(3, version, version2, Integer.valueOf(this.mPhoneId)));
        this.mStartForce = false;
        this.mPowerController.release();
        this.mIsConfigOngoing = false;
    }

    protected boolean isNetworkAvailable() {
        String networkType = ConfigUtil.getNetworkType(this.mPhoneId);
        if (networkType.contains("internet") && this.mModule.getAvailableNetworkForNetworkType(this.mPhoneId, 1) != null) {
            return true;
        }
        if (!networkType.contains(DeviceConfigManager.IMS) || this.mModule.getAvailableNetworkForNetworkType(this.mPhoneId, 2) == null) {
            return networkType.contains("wifi") && this.mModule.getAvailableNetworkForNetworkType(this.mPhoneId, 3) != null;
        }
        return true;
    }

    protected boolean checkRcsSwitchEur() {
        if (ConfigUtil.isRcsEur(SimUtil.getSimMno(this.mPhoneId))) {
            r1 = ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, 0, this.mPhoneId) == 1;
            IMSLog.i(LOG_TAG, this.mPhoneId, "RCS switch : " + r1);
        }
        return r1;
    }

    protected void scheduleAutoconfig(int i) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "scheduleAutoconfig enter");
        int versionFromServer = getVersionFromServer();
        IMSLog.i(LOG_TAG, this.mPhoneId, "scheduleAutoconfig: getOpMode(): " + getOpMode() + " currentVersion: " + i + " getVersionBackup(): " + getVersionBackup() + " versionFromServer: " + versionFromServer);
        addEventLog(LOG_TAG + ": scheduleAutoconfig: getOpMode(): " + getOpMode() + " currentVersion: " + i + " getVersionBackup(): " + getVersionBackup() + " versionFromServer: " + versionFromServer);
        IMSLog.c(LogClass.WFB_VERS, this.mPhoneId + ",OP:" + getOpMode() + ",CV:" + i + ",BV:" + getVersionBackup() + ",SV:" + versionFromServer);
        if (this.mStartForce) {
            cancelValidityTimer();
            IMSLog.i(LOG_TAG, this.mPhoneId, "Query autoconfig server now: force");
            work();
            return;
        }
        if (i == -1 || versionFromServer == -1) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "Skip querying autoconfig server since current version is -1");
            return;
        }
        boolean z = true;
        if (i == -2 || versionFromServer == -2) {
            this.mStartForce = true;
            IMSLog.i(LOG_TAG, this.mPhoneId, "Autoconfig version is -2. If scheduleAutoconfig was called, it means that user enabled RCS in settings. Force autoconfig.");
            scheduleAutoconfig(i);
            return;
        }
        long nextAutoconfigTime = getNextAutoconfigTime();
        IMSLog.i(LOG_TAG, this.mPhoneId, "nextAutoconfigTime=" + nextAutoconfigTime);
        Date date = new Date();
        int time = (int) ((nextAutoconfigTime - date.getTime()) / 1000);
        int validity = getValidity();
        if (validity > 0 && time > validity) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "remainValidity > getValidity()");
            setNextAutoconfigTime(date.getTime() + (validity * 1000));
            time = validity;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "remainValidity=" + time);
        if (time <= 0) {
            if (SimUtil.getSimMno(this.mPhoneId) == Mno.TCE) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "waiting for query autoconfig");
                z = this.mDialog.getNextCancel();
            }
            if (z) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "Query autoconfig server now");
                work();
                return;
            } else {
                IMSLog.i(LOG_TAG, this.mPhoneId, "Query autoconfig server - cancel by user");
                if (getVersion() > 0) {
                    setVersion(OpMode.DISABLE_TEMPORARY.value());
                    return;
                }
                return;
            }
        }
        if (nextAutoconfigTime > 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "Query autoconfig server after " + time + " seconds");
            IMSLog.c(LogClass.WFB_REMAIN_VALIDITY, this.mPhoneId + ",RVAL:" + time);
            addEventLog(LOG_TAG + ": Query autoconfig server after " + time + " seconds");
            setValidityTimer(time);
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void init() {
        this.mState.init();
    }

    public void cleanup() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "cleanup");
        this.mTelephonyAdapter.cleanup();
        this.mState.cleanup();
        this.mDialog.cleanup();
        this.mPowerController.cleanup();
        this.mHttp.close();
        unregisterGlobalSettingsObserver();
        this.mContext.unregisterReceiver(this.mIntentReceiver);
        cancelValidityTimer();
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void reInitIfNeeded() {
        if (this.mTelephonyAdapter.isReady() && SimUtil.isSoftphoneEnabled() && !(this.mState instanceof ReadyState)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "reInitIfNeeded: identity changed, re-init storage");
            addEventLog(LOG_TAG + ": reInitIfNeeded: identity changed, re-init storage");
            this.mStorage.close();
            init();
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void clearAutoConfigStorage(DiagnosisConstants.RCSA_TDRE rcsa_tdre) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "clearAutoConfigStorage");
        removeMessages(2);
        sendEmptyMessage(2);
        this.mModule.setTokenDeletedReason(this.mPhoneId, rcsa_tdre);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void clearToken(DiagnosisConstants.RCSA_TDRE rcsa_tdre) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "clearToken");
        setToken("", rcsa_tdre);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void removeValidToken() {
        String str = "IMSI_" + SimManagerFactory.getImsiFromPhoneId(this.mPhoneId);
        IMSLog.i(LOG_TAG, this.mPhoneId, "remove valid token");
        ImsSharedPrefHelper.remove(this.mPhoneId, this.mContext, ImsSharedPrefHelper.VALID_RCS_CONFIG, str);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void startAutoConfig(boolean z) {
        this.mState.startAutoConfig(z);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void startAutoConfigDualsim(boolean z) {
        this.mState.startAutoConfigDualsim(z);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void forceAutoConfig(boolean z) {
        this.mState.forceAutoConfig(z);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public Map<String, String> read(String str) {
        return this.mState.read(str);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void forceAutoConfigNeedResetConfig(boolean z) {
        setOpMode(OpMode.DISABLE_TEMPORARY, null);
        this.mState.forceAutoConfig(z);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public boolean isConfigOngoing() {
        return this.mIsConfigOngoing;
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void stopWorkFlow() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "Stop work flow in workflow state");
        this.mNeedToStopWork = true;
        this.mIsConfigOngoing = false;
        this.mHttp.close();
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void handleMSISDNDialog() {
        this.mState.handleMSISDNDialog();
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void onDefaultSmsPackageChanged() {
        this.mState.onDefaultSmsPackageChanged();
    }

    static abstract class State implements IWorkflow {
        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void cleanup() {
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void closeStorage() {
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void forceAutoConfig(boolean z) {
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void forceAutoConfigNeedResetConfig(boolean z) {
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public IStorageAdapter getStorage() {
            return null;
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void handleMSISDNDialog() {
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void onDefaultSmsPackageChanged() {
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public Map<String, String> read(String str) {
            return null;
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void startAutoConfig(boolean z) {
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void startAutoConfigDualsim(boolean z) {
        }

        State() {
        }
    }

    protected class IdleState extends State {
        protected IdleState() {
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void init() {
            if (WorkflowBase.this.initStorage()) {
                WorkflowBase workflowBase = WorkflowBase.this;
                workflowBase.handleSwVersionChange(workflowBase.getLastSwVersion());
                WorkflowBase workflowBase2 = WorkflowBase.this;
                workflowBase2.handleRcsProfileChange(workflowBase2.getLastRcsProfile());
                WorkflowBase workflowBase3 = WorkflowBase.this;
                workflowBase3.mState = workflowBase3.new ReadyState();
            } else if (WorkflowBase.this.mMno.isRjil()) {
                WorkflowBase.this.setCompleted(true);
                WorkflowBase.this.mModule.getHandler().removeMessages(3);
                Handler handler = WorkflowBase.this.mModule.getHandler();
                WorkflowBase workflowBase4 = WorkflowBase.this;
                handler.sendMessage(workflowBase4.obtainMessage(3, 0, 0, Integer.valueOf(workflowBase4.mPhoneId)));
            }
            WorkflowBase.this.mEventLog.logAndAdd(WorkflowBase.this.mPhoneId, "init: " + WorkflowBase.this.mState.getClass().getSimpleName());
        }
    }

    protected class ReadyState extends State {
        protected ReadyState() {
        }

        @Override // com.sec.internal.interfaces.ims.config.IWorkflow
        public void init() {
            IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "already initialized");
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.State, com.sec.internal.interfaces.ims.config.IWorkflow
        public void cleanup() {
            WorkflowBase.this.mIsConfigOngoing = false;
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.State, com.sec.internal.interfaces.ims.config.IWorkflow
        public void startAutoConfig(boolean z) {
            IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "startAutoConfig mobile:" + z + " Config status =" + WorkflowBase.this.mIsConfigOngoing);
            WorkflowBase workflowBase = WorkflowBase.this;
            workflowBase.mMobileNetwork = z;
            if (workflowBase.mIsConfigOngoing || workflowBase.hasMessages(1)) {
                return;
            }
            WorkflowBase.this.sendEmptyMessage(1);
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.State, com.sec.internal.interfaces.ims.config.IWorkflow
        public void startAutoConfigDualsim(boolean z) {
            IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "startAutoConfigDualsim mobile:" + z);
            WorkflowBase workflowBase = WorkflowBase.this;
            workflowBase.mMobileNetwork = z;
            workflowBase.sendEmptyMessage(6);
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.State, com.sec.internal.interfaces.ims.config.IWorkflow
        public void forceAutoConfig(boolean z) {
            IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "forceAutoConfig mobile:" + z);
            WorkflowBase workflowBase = WorkflowBase.this;
            workflowBase.mMobileNetwork = z;
            workflowBase.sendEmptyMessage(0);
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.State, com.sec.internal.interfaces.ims.config.IWorkflow
        public Map<String, String> read(String str) {
            return WorkflowBase.this.mStorage.readAll(str);
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.State, com.sec.internal.interfaces.ims.config.IWorkflow
        public void forceAutoConfigNeedResetConfig(boolean z) {
            IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "forceAutoConfigNeedResetConfig mobile:" + z);
            WorkflowBase workflowBase = WorkflowBase.this;
            workflowBase.mMobileNetwork = z;
            workflowBase.setOpMode(OpMode.DISABLE_TEMPORARY, null);
            WorkflowBase.this.sendEmptyMessage(0);
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.State, com.sec.internal.interfaces.ims.config.IWorkflow
        public void handleMSISDNDialog() {
            IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "handleMSISDNDialog()");
            WorkflowBase.this.sendEmptyMessage(7);
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.State, com.sec.internal.interfaces.ims.config.IWorkflow
        public void closeStorage() {
            WorkflowBase.this.mStorage.close();
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.State, com.sec.internal.interfaces.ims.config.IWorkflow
        public void onDefaultSmsPackageChanged() {
            IMSLog.i(WorkflowBase.LOG_TAG, WorkflowBase.this.mPhoneId, "onDefaultSmsPackageChanged");
            WorkflowBase.this.sendEmptyMessage(5);
        }
    }

    protected IHttpAdapter.Response getHttpResponse() {
        TrafficStats.setThreadStatsTag(Process.myTid());
        this.mHttp.close();
        this.mHttp.setHeaders(this.mSharedInfo.getHttpHeaders());
        this.mHttp.setParams(this.mSharedInfo.getHttpParams());
        this.mHttp.setMethod(this.mSharedInfo.getUserMethod());
        this.mSharedInfo.setUserMethod("GET");
        this.mHttp.setContext(this.mContext);
        this.mHttp.open(this.mSharedInfo.getUrl());
        IMSLog.s(LOG_TAG, this.mPhoneId, "request starts " + this.mSharedInfo.getUrl());
        IHttpAdapter.Response request = this.mHttp.request();
        this.mHttp.close();
        return request;
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public int getLastErrorCode() {
        return this.mLastErrorCode;
    }

    protected void setLastErrorCode(int i) {
        IMSLog.c(LogClass.WFB_LAST_ERROR_CODE, this.mPhoneId + ",LEC:" + i);
        this.mLastErrorCode = i;
    }

    protected String getLastErrorMessage() {
        return this.mLastErrorMessage;
    }

    protected void setLastErrorMessage(String str) {
        this.mLastErrorMessage = str;
    }

    protected Workflow handleResponse(Workflow workflow, int i) throws InvalidHeaderException, UnknownStatusException {
        IMSLog.i(LOG_TAG, this.mPhoneId, "handleResponse: " + i);
        addEventLog(LOG_TAG + ": handleResponse: " + i);
        this.mLastErrorCode = i;
        if (i == 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "RCS configuration server is unreachable");
            return getNextWorkflow(8);
        }
        if (i == 200) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "200 ok received and it's normal case");
            if (workflow instanceof FetchHttp) {
                return getNextWorkflow(3);
            }
            if ((workflow instanceof FetchHttps) || (workflow instanceof FetchOtp)) {
                return getNextWorkflow(6);
            }
            return null;
        }
        if (i == 403) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "set version to zero");
            setOpMode(OpMode.DISABLE_TEMPORARY, null);
            return getNextWorkflow(8);
        }
        if (i == 500) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "internal server error");
            return getNextWorkflow(8);
        }
        if (i == 503) {
            long j = getretryAfterTime();
            IMSLog.i(LOG_TAG, this.mPhoneId, "retry after " + j + " sec");
            sleep(j * 1000);
            return getNextWorkflow(3);
        }
        if (i == 511) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "The token isn't valid");
            setToken("", DiagnosisConstants.RCSA_TDRE.INVALID_TOKEN);
            removeValidToken();
            return getNextWorkflow(1);
        }
        switch (i) {
            case 800:
            case 801:
                IMSLog.i(LOG_TAG, this.mPhoneId, "SSL error happened");
                return getNextWorkflow(8);
            case 802:
            case 803:
            case 804:
                IMSLog.i(LOG_TAG, this.mPhoneId, "Socket error happened");
                return getNextWorkflow(8);
            case 805:
                IMSLog.i(LOG_TAG, this.mPhoneId, "Unknown Host error happened");
                return getNextWorkflow(8);
            default:
                throw new UnknownStatusException("unknown http status code");
        }
    }

    protected Workflow handleResponse2(Workflow workflow, Workflow workflow2, Workflow workflow3) throws InvalidHeaderException, UnknownStatusException, ConnectException {
        String str;
        setLastErrorCode(this.mSharedInfo.getHttpResponse().getStatusCode());
        IMSLog.i(LOG_TAG, this.mPhoneId, "handleResponse2: mLastErrorCode: " + getLastErrorCode());
        int lastErrorCode = getLastErrorCode();
        if (lastErrorCode != 0) {
            if (lastErrorCode == 200) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "normal case");
            } else if (lastErrorCode == 401) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "401");
                this.mSharedInfo.setUserMethod("POST");
            } else if (lastErrorCode == 403) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "set version to 0. retry next boot");
                setOpMode(OpMode.DISABLE_TEMPORARY, null);
            } else if (lastErrorCode == 500) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "fail. retry next boot");
            } else if (lastErrorCode != 503) {
                if (lastErrorCode == 511) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "RCC07_RCS 5.1 Specification 2.3.3.4.2.1 - The token is no longer valid");
                    setToken("", DiagnosisConstants.RCSA_TDRE.INVALID_TOKEN);
                    removeValidToken();
                    sendConfigCompleteForPSOnlyNw();
                    return workflow;
                }
                if (lastErrorCode == 301) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "http redirects");
                    this.mSharedInfo.setUrl(this.mSharedInfo.getHttpResponse().getHeader().get("Location") != null ? this.mSharedInfo.getHttpResponse().getHeader().get("Location").get(0) : "");
                    this.mHttpRedirect = true;
                    return workflow;
                }
                if (lastErrorCode == 302) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "oidc redirects");
                    if (this.mSharedInfo.getHttpResponse().getHeader().get("Authentication-Info") != null) {
                        this.mSharedInfo.setUserMethod("POST");
                    }
                    if (this.mSharedInfo.getHttpResponse().getHeader().get("Location") == null || (str = this.mSharedInfo.getHttpResponse().getHeader().get("Location").get(0)) == null) {
                        return null;
                    }
                    if (!str.startsWith(OMAGlobalVariables.HTTPS)) {
                        IMSLog.i(LOG_TAG, this.mPhoneId, "https redirect not found");
                        throw new InvalidHeaderException("redirect location should be https instead of http");
                    }
                    this.mSharedInfo.setUrl(str.split("\\?")[0]);
                    this.mCookieHandler.clearCookie();
                } else {
                    switch (lastErrorCode) {
                        case 800:
                            IMSLog.i(LOG_TAG, this.mPhoneId, "SSL handshake failed");
                            break;
                        case 801:
                            IMSLog.i(LOG_TAG, this.mPhoneId, "Connect exception, please retry");
                            throw new ConnectException("Connection failed");
                        case 802:
                        case 803:
                            sendConfigCompleteForPSOnlyNw();
                        default:
                            throw new UnknownStatusException("unknown http status code");
                    }
                }
            } else {
                long j = getretryAfterTime();
                sendConfigCompleteForPSOnlyNw();
                sleep(j * 1000);
                if (ConfigUtil.isRcsChn(SimUtil.getMno())) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "chn - next init");
                    return workflow;
                }
            }
            return workflow2;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "RCS configuration server is unreachable. retry next boot");
        return workflow3;
    }

    protected void sendConfigCompleteForPSOnlyNw() {
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(this.mPhoneId);
        if (rcsStrategy == null || !rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.PS_ONLY_NETWORK)) {
            return;
        }
        this.mModule.getHandler().removeMessages(3);
        this.mModule.getHandler().sendMessage(obtainMessage(3, 0, 0, Integer.valueOf(this.mPhoneId)));
    }

    protected OpMode getOpMode(Map<String, String> map) {
        OpMode opMode = OpMode.ACTIVE;
        int version = getVersion(map);
        if (opMode.value() <= version) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "version :" + version);
            return opMode;
        }
        OpMode[] values = OpMode.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            OpMode opMode2 = values[i];
            if (opMode2.value() == version) {
                opMode = opMode2;
                break;
            }
            i++;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "operation mode :" + opMode.name());
        return opMode;
    }

    protected OpMode getOpMode() {
        OpMode opMode = OpMode.ACTIVE;
        int version = getVersion();
        IMSLog.i(LOG_TAG, this.mPhoneId, "getOpMode :" + version);
        if (opMode.value() <= version) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "OpMode.ACTIVE.value(): " + opMode.value());
            return opMode;
        }
        OpMode[] values = OpMode.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            OpMode opMode2 = values[i];
            if (opMode2.value() == version) {
                opMode = opMode2;
                break;
            }
            i++;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "operation mode :" + opMode.name());
        return opMode;
    }

    protected void writeDataToStorage(Map<String, String> map) {
        synchronized (IRcsPolicyManager.class) {
            clearStorage(DiagnosisConstants.RCSA_TDRE.UPDATE_REMOTE_CONFIG);
            this.mStorage.writeAll(map);
        }
    }

    protected void setOpMode(OpMode opMode, Map<String, String> map) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "new operation mode :" + opMode.name());
        IMSLog.c(LogClass.WFB_OP_MODE_NAME, this.mPhoneId + ",NOP:" + opMode.name());
        addEventLog(LOG_TAG + ": new operation mode :" + opMode.name());
        int i = AnonymousClass3.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[opMode.ordinal()];
        if (i == 1) {
            if (map != null) {
                IMSLog.s(LOG_TAG, this.mPhoneId, "data :" + map);
                Mno simMno = SimUtil.getSimMno(this.mPhoneId);
                if (this.mStartForce || simMno.isKor() || simMno == Mno.USCC || ConfigUtil.isRcsChn(simMno) || getVersion() < getVersion(map) || (getVersion() != getVersion(map) && simMno == Mno.RJIL)) {
                    writeDataToStorage(map);
                } else {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "the same or lower version and not RJIL. remain to previous data");
                    String token = getToken();
                    String token2 = getToken(map);
                    setValidity(getValidity(map));
                    if (token2 != null && (token == null || !token2.equals(token))) {
                        IMSLog.i(LOG_TAG, this.mPhoneId, "token is changed. setToken : " + token + " -> " + token2);
                        setToken(token2, DiagnosisConstants.RCSA_TDRE.UPDATE_TOKEN);
                    }
                }
            } else {
                IMSLog.i(LOG_TAG, this.mPhoneId, "null data. remain previous mode & data");
            }
            setNextAutoconfigTimeAfter(getValidity());
            return;
        }
        if (i != 2) {
            if (i == 3) {
                if (getVersion() != OpMode.DORMANT.value()) {
                    setVersionBackup(getVersion());
                }
                setVersion(opMode.value());
                return;
            } else if (i != 4 && i != 5) {
                return;
            }
        }
        clearStorage(DiagnosisConstants.RCSA_TDRE.DISABLE_RCS);
        setVersion(opMode.value());
        setValidity(opMode.value());
    }

    protected boolean initStorage() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "initStorage()");
        if (this.mStorage.getState() != 1) {
            if (!this.mTelephonyAdapter.isReady()) {
                this.mEventLog.logAndAdd(this.mPhoneId, "initStorage: Telephony readiness check start.");
            }
            int i = 60;
            while (!this.mTelephonyAdapter.isReady() && i > 0) {
                sleep(1000L);
                i--;
            }
            this.mEventLog.logAndAdd(this.mPhoneId, "initStorage: Telephony readiness check done. Now check identity.");
            this.mIdentity = "";
            while (true) {
                if (i <= 0) {
                    break;
                }
                String identityByPhoneId = this.mTelephonyAdapter.getIdentityByPhoneId(this.mPhoneId);
                this.mIdentity = identityByPhoneId;
                if (identityByPhoneId != null && !identityByPhoneId.isEmpty()) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "initStorage. getIdentityByPhoneId is valid");
                    break;
                }
                sleep(1000L);
                i--;
            }
            if (i <= 0) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "initStorage: failed");
                IMSLog.c(LogClass.WFB_STORAGE_INIT_FAIL, this.mPhoneId + ",STOR_IF");
                addEventLog(LOG_TAG + ": initStorage: failed");
                return false;
            }
            String generateMD5 = HashManager.generateMD5(this.mIdentity);
            this.mEventLog.logAndAdd(this.mPhoneId, "Open storage: " + IMSLog.checker(this.mIdentity));
            this.mStorage.open(this.mContext, ConfigProvider.CONFIG_DB_NAME_PREFIX + generateMD5, this.mPhoneId);
        }
        checkStorage();
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        String string = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.APPLICATION_SERVER, "");
        if (simMno == Mno.TCE || simMno == Mno.VZW || simMno == Mno.SPRINT || ImsConstants.RCS_AS.JIBE.equals(string) || ImsConstants.RCS_AS.SEC.equals(string)) {
            this.mParamHandler.checkSetToGS(null);
            this.mIsUsingcheckSetToGS = true;
        }
        return true;
    }

    protected void resetStorage() {
        IMSLog.c(LogClass.WFB_RESET_CONFIG, this.mPhoneId + ",reset ACS Config");
        this.mStorage.close();
        initStorage();
    }

    protected void clearStorage() {
        IMSLog.c(LogClass.WFB_RESET_CONFIG, this.mPhoneId + ",clearStorage");
        addEventLog(LOG_TAG + ": clearStorage");
        this.mStorage.deleteAll();
        removeValidToken();
        checkStorage();
    }

    protected void clearStorage(DiagnosisConstants.RCSA_TDRE rcsa_tdre) {
        IMSLog.c(LogClass.WFB_RESET_CONFIG, this.mPhoneId + ",clearStorage. reason: " + rcsa_tdre.name());
        addEventLog(LOG_TAG + ": clearStorage. reason: " + rcsa_tdre.name());
        this.mModule.setTokenDeletedReason(this.mPhoneId, rcsa_tdre);
        this.mStorage.deleteAll();
        removeValidToken();
        checkStorage();
    }

    protected void checkStorage() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : ConfigContract.STORAGE_DEFAULT.entrySet()) {
            if (this.mStorage.read(entry.getKey()) == null) {
                arrayList.add(entry.getKey());
                this.mStorage.write(entry.getKey(), entry.getValue());
            }
        }
        int size = arrayList.size();
        if (size > 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "checkStorage: Default set(" + size + "): " + arrayList);
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void closeStorage() {
        this.mState.closeStorage();
    }

    protected void setCompleted(boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ConfigConstants.PATH.INFO_COMPLETED, String.valueOf(z));
        this.mContext.getContentResolver().insert(ConfigConstants.CONTENT_URI.buildUpon().fragment("simslot" + this.mPhoneId).build(), contentValues);
    }

    protected int getVersion(Map<String, String> map) {
        try {
            return Integer.parseInt(map.get("root/vers/version"));
        } catch (NullPointerException | NumberFormatException e) {
            e.printStackTrace();
            return this.getVersion();
        }
    }

    protected int getVersion() {
        try {
            return Integer.parseInt(this.mStorage.read("root/vers/version"));
        } catch (NullPointerException | NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    protected void setVersion(int i) {
        IMSLog.c(LogClass.WFB_SET_VERSION, this.mPhoneId + ",VER:" + i);
        this.mStorage.write("root/vers/version", String.valueOf(i));
    }

    protected int getVersionFromServer() {
        try {
            return Integer.parseInt(this.mStorage.read(ConfigConstants.PATH.VERS_VERSION_FROM_SERVER));
        } catch (NullPointerException | NumberFormatException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "getVersionFromServer: " + e.getMessage());
            return 0;
        }
    }

    protected void setVersionFromServer(int i) {
        IMSLog.c(LogClass.WFB_VER_FROM_SERVER, this.mPhoneId + ",VERFS:" + i);
        this.mStorage.write(ConfigConstants.PATH.VERS_VERSION_FROM_SERVER, String.valueOf(i));
    }

    protected String getVersionBackup() {
        String read = this.mStorage.read(ConfigConstants.PATH.VERS_VERSION_BACKUP);
        return TextUtils.isEmpty(read) ? "0" : read;
    }

    protected int getParsedIntVersionBackup() {
        try {
            return Integer.parseInt(getVersionBackup());
        } catch (NullPointerException | NumberFormatException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "getParsedIntVersionBackup: cannot get backupVersion: " + e.getMessage());
            return 0;
        }
    }

    protected void setVersionBackup(int i) {
        this.mStorage.write(ConfigConstants.PATH.VERS_VERSION_BACKUP, String.valueOf(i));
    }

    protected int getValidity(Map<String, String> map) {
        int i;
        try {
            i = Integer.parseInt(map.get("root/vers/validity"));
        } catch (NullPointerException | NumberFormatException e) {
            e.printStackTrace();
            i = 0;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getValidity from config.xml :" + i);
        return i;
    }

    protected int getValidity() {
        int i;
        try {
            i = Integer.parseInt(this.mStorage.read("root/vers/validity"));
        } catch (NullPointerException | NumberFormatException e) {
            e.printStackTrace();
            i = 0;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getValidity from config DB :" + i);
        return i;
    }

    protected void setValidity(int i) {
        IMSLog.c(LogClass.WFB_VALIDITY, this.mPhoneId + ",VAL:" + i);
        this.mStorage.write("root/vers/validity", String.valueOf(i));
    }

    protected int removeToken(DiagnosisConstants.RCSA_TDRE rcsa_tdre) {
        this.mModule.setTokenDeletedReason(this.mPhoneId, rcsa_tdre);
        return this.mStorage.delete("root/token/token");
    }

    protected String getToken(Map<String, String> map) {
        return map.get("root/token/token");
    }

    protected String getToken() {
        return this.mStorage.read("root/token/token");
    }

    protected void setToken(String str, DiagnosisConstants.RCSA_TDRE rcsa_tdre) {
        if ("".equals(str)) {
            IMSLog.c(LogClass.WFB_RESET_TOKEN, this.mPhoneId + ",reset ACS token. reason: " + rcsa_tdre.name());
            addEventLog(LOG_TAG + ": reset ACS token. reason: " + rcsa_tdre.name());
        }
        this.mStorage.write("root/token/token", str);
        this.mModule.setTokenDeletedReason(this.mPhoneId, rcsa_tdre);
    }

    protected void sleep(long j) {
        this.mPowerController.sleep(j);
    }

    protected void setValidityTimer(int i) {
        if (this.mValidityIntent != null) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "setValidityTimer: validityTimer is already running. Stopping it.");
            cancelValidityTimer();
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "setValidityTimer: start validity period timer (" + i + " sec)");
        if (i == 0) {
            sendEmptyMessage(1);
            return;
        }
        if (i > 0) {
            Intent intent = new Intent(INTENT_VALIDITY_TIMEOUT);
            intent.putExtra(PhoneConstants.PHONE_KEY, this.mPhoneId);
            intent.setPackage(this.mContext.getPackageName());
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
            this.mValidityIntent = broadcast;
            AlarmTimer.start(this.mContext, broadcast, i * 1000);
        }
    }

    protected void cancelValidityTimer() {
        if (this.mValidityIntent == null) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "cancelValidityTimer: validityTimer is not running.");
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "cancelValidityTimer:");
        AlarmTimer.stop(this.mContext, this.mValidityIntent);
        this.mValidityIntent = null;
    }

    protected long getNextAutoconfigTime() {
        long parseLong;
        String read = this.mStorage.read(ConfigConstants.PATH.NEXT_AUTOCONFIG_TIME);
        if (!TextUtils.isEmpty(read)) {
            try {
                parseLong = Long.parseLong(read);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "getNextAutoconfigTime = " + parseLong);
            return parseLong;
        }
        parseLong = 0;
        IMSLog.i(LOG_TAG, this.mPhoneId, "getNextAutoconfigTime = " + parseLong);
        return parseLong;
    }

    protected void setNextAutoconfigTime(long j) {
        this.mStorage.write(ConfigConstants.PATH.NEXT_AUTOCONFIG_TIME, String.valueOf(j));
    }

    protected void setNextAutoconfigTimeAfter(int i) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "setNextAutoconfigTimeAfter:" + i);
        if (i > 0) {
            setNextAutoconfigTime(new Date().getTime() + (i * 1000));
        }
    }

    protected void setTcUserAccept(int i) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "setTcUserAccept:" + i);
        this.mStorage.write(ConfigConstants.PATH.TC_POPUP_USER_ACCEPT, String.valueOf(i));
    }

    protected String getLastSwVersion() {
        String string = this.mContext.getSharedPreferences(PREFERENCE_NAME, 0).getString(LAST_SW_VERSION, "");
        IMSLog.i(LOG_TAG, this.mPhoneId, "getLastSwVersion:" + string);
        return string;
    }

    protected void setLastSwVersion(String str) {
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(PREFERENCE_NAME, 0);
        IMSLog.i(LOG_TAG, this.mPhoneId, "setLastSwVersion:" + str);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(LAST_SW_VERSION, str);
        edit.apply();
    }

    protected String getLastRcsProfile() {
        String string = this.mContext.getSharedPreferences("rcsprofile_" + this.mPhoneId, 0).getString(LAST_RCS_PROFILE, "");
        IMSLog.i(LOG_TAG, this.mPhoneId, "getLastRcsProfile:" + string);
        return string;
    }

    protected void setLastRcsProfile(String str) {
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("rcsprofile_" + this.mPhoneId, 0);
        IMSLog.i(LOG_TAG, this.mPhoneId, "setLastRcsProfile:" + str);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(LAST_RCS_PROFILE, str);
        edit.apply();
    }

    private void registerGlobalSettingsObserver() {
        this.mContext.getContentResolver().registerContentObserver(GlobalSettingsConstants.CONTENT_URI, false, this.mRcsCustomServerUrlObserver);
        this.isGlobalsettingsObserverRegisted = true;
        this.mRcsCustomServerUrl = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.CUSTOM_CONFIG_SERVER_URL, "");
        this.mRcsAutoconfigSource = ConfigUtil.getAutoconfigSourceWithFeature(this.mPhoneId, 0);
        this.mRcsUPProfile = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.UP_PROFILE, "");
        String str = "mRcsCustomConfigServerUrl= " + this.mRcsCustomServerUrl + ", mRcsAutoconfigSource=" + this.mRcsAutoconfigSource + ", mRcsUPProfile=" + this.mRcsUPProfile;
        IMSLog.i(LOG_TAG, this.mPhoneId, "registerGlobalSettingsObserver: " + str);
        addEventLog(LOG_TAG + ": registerGlobalSettingsObserver : " + str);
    }

    private void unregisterGlobalSettingsObserver() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "unregisterGlobalSettingsObserver");
        if (this.isGlobalsettingsObserverRegisted) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mRcsCustomServerUrlObserver);
            this.isGlobalsettingsObserverRegisted = false;
        }
    }

    protected boolean needScheduleAutoconfig(int i) {
        if (OmcCode.isTmpSimSwap(i) && !ImsUtil.isSimMobilityActivatedForRcs(i) && !ImsUtil.isSimMobilityActivatedForAmRcs(this.mContext, i)) {
            Mno simMno = SimUtil.getSimMno(this.mPhoneId);
            if (this.mParamHandler.isSupportCarrierVersion() && !simMno.isVodafone() && !simMno.isOrange() && !simMno.isTmobile()) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "needScheduleAutoconfig: Temporal SIM swapped, skip autoconfiguration");
                setVersion(OpMode.DISABLE_TEMPORARY.value());
                return false;
            }
        }
        return true;
    }

    protected void handleSwVersionChange(String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "handleSwVersionChange");
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        String str2 = ConfigConstants.BUILD.TERMINAL_SW_VERSION;
        if (str.equals(str2)) {
            return;
        }
        if (simMno == Mno.BELL || simMno.isKor()) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "there is fota upgrade found");
            setNextAutoconfigTime(new Date().getTime());
            setLastSwVersion(str2);
            this.mModule.setAcsTryReason(this.mPhoneId, DiagnosisConstants.RCSA_ATRE.CHANGE_SWVERSION);
        }
    }

    protected void handleRcsProfileChange(String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "handleRcsProfileChange");
        String rcsProfileType = ImsRegistry.getRcsProfileType(this.mPhoneId);
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        String string = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.APPLICATION_SERVER, "");
        IMSLog.i(LOG_TAG, this.mPhoneId, "handleRcsProfileChange: now: " + rcsProfileType + " last: " + str);
        if (str.equals(rcsProfileType)) {
            return;
        }
        if ((simMno.isVodafone() && ("UP_1.0".equals(rcsProfileType) || "UP_2.0".equals(rcsProfileType))) || ImsConstants.RCS_AS.JIBE.equals(string) || ImsConstants.RCS_AS.SEC.equals(string) || ConfigUtil.isRcsChn(simMno)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "There is RCS profile update found");
            setVersion(OpMode.DISABLE_TEMPORARY.value());
            setNextAutoconfigTime(new Date().getTime());
            setLastRcsProfile(rcsProfileType);
        }
    }

    protected long getretryAfterTime() throws InvalidHeaderException {
        long timeInMillis;
        try {
            String str = this.mSharedInfo.getHttpResponse().getHeader().get(HttpRequest.HEADER_RETRY_AFTER).get(0);
            if (str.matches("[0-9]+")) {
                timeInMillis = Integer.parseInt(str);
            } else {
                String str2 = this.mSharedInfo.getHttpResponse().getHeader().get("Date").get(0);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(TIMESTAMP_FORMAT, Locale.ENGLISH);
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(simpleDateFormat.parse(str));
                long timeInMillis2 = calendar.getTimeInMillis();
                calendar.setTime(simpleDateFormat.parse(str2));
                timeInMillis = timeInMillis2 - calendar.getTimeInMillis();
            }
            if (timeInMillis <= 0) {
                timeInMillis = 10;
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "retry after " + timeInMillis + " sec");
            addEventLog(LOG_TAG + ": retry after " + timeInMillis + " sec");
            return timeInMillis;
        } catch (IndexOutOfBoundsException | ParseException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "Exception: retry after related header " + e.getMessage());
            StringBuilder sb = new StringBuilder();
            sb.append("retry after related header ");
            sb.append(e instanceof IndexOutOfBoundsException ? " do not exist" : " is invalid");
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public void addEventLog(String str) {
        this.mEventLog.add(this.mPhoneId, str);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void dump() {
        IMSLog.dump(LOG_TAG, "Dump of Workflow:");
        IMSLog.increaseIndent(LOG_TAG);
        this.mEventLog.dump();
        IMSLog.decreaseIndent(LOG_TAG);
    }

    protected void createSharedInfo() {
        this.mSharedInfo = new SharedInfo(this.mContext, this.mSm, this.mRcsProfile, this.mRcsVersion, this.mClientPlatform, this.mClientVersion, this.mRcsEnabledByUser);
    }
}
