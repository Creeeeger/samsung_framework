package com.sec.internal.ims.cmstore;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.ServiceState;
import android.telephony.TelephonyCallback;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.enumprovision.EnumProvision;
import com.sec.internal.constants.ims.cmstore.utils.OMAGlobalVariables;
import com.sec.internal.constants.ims.entitilement.NSDSContractExt;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.ims.cmstore.adapters.DeviceConfigAdapter;
import com.sec.internal.ims.cmstore.ambs.CmsServiceModuleManager;
import com.sec.internal.ims.cmstore.ambs.globalsetting.AmbsUtils;
import com.sec.internal.ims.cmstore.ambs.provision.ProvisionController;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.helper.SyncParam;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.VvmHandler;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageCreateLargeDataPolling;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.ParamNetAPIStatusControl;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.CheckCaptivePortal;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.ims.gba.GbaServiceModule;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.ILineStatusChangeCallBack;
import com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class NetAPIWorkingStatusController extends Handler implements IWorkingStatusProvisionListener, IDeviceDataChangeListener, ILineStatusChangeCallBack {
    public static final String ACTION_SIM_STATE_CHANGED = "android.intent.action.SIM_STATE_CHANGED";
    public static final String AUTO_DOWNLOAD_SIM_0 = "auto_download_sim0";
    public static final String AUTO_DOWNLOAD_SIM_1 = "auto_download_sim1";
    protected static final int EVENT_AIRPLANEMODE_CHANGED = 8;
    private static final int EVENT_CHANGE_MSG_APP_WORKING_STATUS = 3;
    private static final int EVENT_CHANGE_OMANETAPI_WORKING_STATUS = 4;
    protected static final int EVENT_CMS_DEREGISTRATION_COMPLETED = 13;
    protected static final int EVENT_CMS_REGISTRATION_COMPLETED = 12;
    private static final int EVENT_DELETE_ACCOUNT = 7;
    private static final int EVENT_ENABLE_GBA_MODULE = 11;
    protected static final int EVENT_MESSAGE_APP_CHANGED = 1;
    protected static final int EVENT_NETWORK_CHANGE_DETECTED = 2;
    protected static final int EVENT_RECEIVE_FCM_PUSH_NOTIFICATION = 17;
    protected static final int EVENT_RECEIVE_FCM_REGISTRATION_TOKEN = 15;
    protected static final int EVENT_RECEIVE_TOKEN_VALIDITY_TIMEOUT = 18;
    protected static final int EVENT_REFRESH_FCM_REGISTRATION_TOKEN = 16;
    private static final int EVENT_REGISTER_PHONE_LISTENER = 9;
    protected static final int EVENT_REQUEST_FCM_REGISTRATION_TOKEN = 14;
    private static final int EVENT_SIM_STATE_CHANGED = 10;
    private static final int EVENT_STOP_ALL_TASK = 6;
    private final String LOG_TAG_CN;
    public String TAG;
    protected AutoDownloadContentObserver mAutoDownloadContentObserver;
    private IUIEventCallback mCallbackMsgApp;
    private CloudMessageManagerHelper mCloudMessageManagerHelper;
    protected Context mContext;
    private DeviceConfigAdapter mDeviceConfigAdapter;
    private GbaServiceModule mGbaServiceModule;
    protected boolean mHasNotifiedBufferDBProvisionSuccess;
    private IRetryStackAdapterHelper mIRetryStackAdapterHelper;
    private IImsFramework mImsFramework;
    protected boolean mIsAirPlaneModeOn;
    private boolean mIsAmbsServiceStop;
    protected boolean mIsCMNWorkingStarted;
    protected boolean mIsCmsProfileEnabled;
    protected boolean mIsDefaultMsgAppNative;
    private boolean mIsMsgAppForeground;
    protected boolean mIsNetworkValid;
    protected boolean mIsOMAAPIRunning;
    private boolean mIsProvisionSuccess;
    private boolean mIsServicePaused;
    private boolean mIsUserDeleteAccount;
    private boolean mIsUsingMobileHipri;
    protected boolean mIsWifiConnected;
    private LineManager mLineManager;
    private MobileNetowrkCallBack mMobileNetworkCallback;
    protected OMANetAPIHandler mNetAPIHandler;
    private final ConnectivityManager.NetworkCallback mNetworkStateListener;
    private ProvisionController mProvisionControl;
    private boolean mPushNotiPaused;
    protected MessageStoreClient mStoreClient;
    private TelephonyCallback mTelephonyCallback;
    private VvmHandler mVvmHandler;
    final ConnectivityManager.NetworkCallback mWifiStateListener;
    protected final RegistrantList mWorkingStatus;

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onChannelLifetimeUpdateComplete() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onDeviceFlagUpdateSchedulerStarted() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void onForceInitSyncStart() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onStartFcmRetry() {
    }

    public void resetMcsRestartReceiver() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void registerForUpdateFromCloud(Handler handler, int i, Object obj) {
        this.mNetAPIHandler.registerForUpdateFromCloud(handler, i, obj);
        this.mVvmHandler.registerForUpdateFromCloud(handler, i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void registerForUpdateOfWorkingStatus(Handler handler, int i, Object obj) {
        this.mWorkingStatus.add(new Registrant(handler, i, obj));
    }

    public NetAPIWorkingStatusController(Looper looper, MessageStoreClient messageStoreClient, IUIEventCallback iUIEventCallback, IRetryStackAdapterHelper iRetryStackAdapterHelper, IImsFramework iImsFramework, GbaServiceModule gbaServiceModule) {
        super(looper);
        this.TAG = NetAPIWorkingStatusController.class.getSimpleName();
        this.LOG_TAG_CN = NetAPIWorkingStatusController.class.toString();
        this.mWorkingStatus = new RegistrantList();
        this.mIsUsingMobileHipri = false;
        this.mIsOMAAPIRunning = false;
        this.mIsMsgAppForeground = false;
        this.mPushNotiPaused = false;
        this.mIsDefaultMsgAppNative = true;
        this.mIsNetworkValid = true;
        this.mIsCmsProfileEnabled = false;
        this.mIsUserDeleteAccount = false;
        this.mIsAirPlaneModeOn = false;
        this.mIsCMNWorkingStarted = false;
        this.mIsProvisionSuccess = false;
        this.mHasNotifiedBufferDBProvisionSuccess = false;
        this.mIsServicePaused = false;
        this.mIsAmbsServiceStop = false;
        this.mMobileNetworkCallback = null;
        this.mTelephonyCallback = null;
        this.mGbaServiceModule = null;
        this.mIsWifiConnected = false;
        this.mAutoDownloadContentObserver = null;
        this.mNetworkStateListener = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusController.3
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                Log.i(NetAPIWorkingStatusController.this.TAG, "onAvailable " + network);
                NetAPIWorkingStatusController netAPIWorkingStatusController = NetAPIWorkingStatusController.this;
                netAPIWorkingStatusController.sendMessage(netAPIWorkingStatusController.obtainMessage(2));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Log.i(NetAPIWorkingStatusController.this.TAG, "onLost + " + network);
                NetAPIWorkingStatusController netAPIWorkingStatusController = NetAPIWorkingStatusController.this;
                netAPIWorkingStatusController.sendMessage(netAPIWorkingStatusController.obtainMessage(2));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                Log.i(NetAPIWorkingStatusController.this.TAG, "onCapabilitiesChanged" + networkCapabilities);
                NetAPIWorkingStatusController netAPIWorkingStatusController = NetAPIWorkingStatusController.this;
                netAPIWorkingStatusController.sendMessage(netAPIWorkingStatusController.obtainMessage(2));
            }
        };
        this.mWifiStateListener = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusController.4
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                IMSLog.i(NetAPIWorkingStatusController.this.TAG, "onLost wifi");
                NetAPIWorkingStatusController.this.mIsWifiConnected = false;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                Log.d(NetAPIWorkingStatusController.this.TAG, "onCapabilitiesChanged");
                if (networkCapabilities != null && networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16) && networkCapabilities.hasTransport(1)) {
                    NetAPIWorkingStatusController netAPIWorkingStatusController = NetAPIWorkingStatusController.this;
                    netAPIWorkingStatusController.mIsWifiConnected = true;
                    Log.i(netAPIWorkingStatusController.TAG, "onCapabilitiesChanged mIsWifiConnected: " + NetAPIWorkingStatusController.this.mIsWifiConnected);
                }
            }
        };
        this.mStoreClient = messageStoreClient;
        this.mContext = messageStoreClient.getContext();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mImsFramework = iImsFramework;
        this.mCallbackMsgApp = iUIEventCallback;
        this.mIRetryStackAdapterHelper = iRetryStackAdapterHelper;
        CloudMessageManagerHelper cloudMessageManagerHelper = new CloudMessageManagerHelper();
        this.mCloudMessageManagerHelper = cloudMessageManagerHelper;
        this.mGbaServiceModule = gbaServiceModule;
        this.mProvisionControl = new ProvisionController(this, looper, messageStoreClient, this.mCallbackMsgApp, this.mIRetryStackAdapterHelper, cloudMessageManagerHelper);
        LineManager lineManager = new LineManager(this);
        this.mLineManager = lineManager;
        OMANetAPIHandler oMANetAPIHandler = new OMANetAPIHandler(looper, this.mStoreClient, this, this.mCallbackMsgApp, lineManager, this.mCloudMessageManagerHelper);
        this.mNetAPIHandler = oMANetAPIHandler;
        this.mVvmHandler = new VvmHandler(looper, this.mStoreClient, oMANetAPIHandler, this.mCloudMessageManagerHelper);
        this.mDeviceConfigAdapter = new DeviceConfigAdapter(messageStoreClient, this.mCloudMessageManagerHelper);
        this.mIsUserDeleteAccount = this.mStoreClient.getPrerenceManager().hasUserDeleteAccount();
        this.mIsAmbsServiceStop = this.mStoreClient.getPrerenceManager().getAMBSStopService();
        this.mIsServicePaused = this.mStoreClient.getPrerenceManager().getAMBSPauseService();
        registerDefaultSmsPackageChangeReceiver(this.mContext);
        registerAirplaneMode(this.mContext);
    }

    public NetAPIWorkingStatusController(Looper looper, MessageStoreClient messageStoreClient, IUIEventCallback iUIEventCallback) {
        super(looper);
        this.TAG = NetAPIWorkingStatusController.class.getSimpleName();
        this.LOG_TAG_CN = NetAPIWorkingStatusController.class.toString();
        this.mWorkingStatus = new RegistrantList();
        this.mIsUsingMobileHipri = false;
        this.mIsOMAAPIRunning = false;
        this.mIsMsgAppForeground = false;
        this.mPushNotiPaused = false;
        this.mIsDefaultMsgAppNative = true;
        this.mIsNetworkValid = true;
        this.mIsCmsProfileEnabled = false;
        this.mIsUserDeleteAccount = false;
        this.mIsAirPlaneModeOn = false;
        this.mIsCMNWorkingStarted = false;
        this.mIsProvisionSuccess = false;
        this.mHasNotifiedBufferDBProvisionSuccess = false;
        this.mIsServicePaused = false;
        this.mIsAmbsServiceStop = false;
        this.mMobileNetworkCallback = null;
        this.mTelephonyCallback = null;
        this.mGbaServiceModule = null;
        this.mIsWifiConnected = false;
        this.mAutoDownloadContentObserver = null;
        this.mNetworkStateListener = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusController.3
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                Log.i(NetAPIWorkingStatusController.this.TAG, "onAvailable " + network);
                NetAPIWorkingStatusController netAPIWorkingStatusController = NetAPIWorkingStatusController.this;
                netAPIWorkingStatusController.sendMessage(netAPIWorkingStatusController.obtainMessage(2));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Log.i(NetAPIWorkingStatusController.this.TAG, "onLost + " + network);
                NetAPIWorkingStatusController netAPIWorkingStatusController = NetAPIWorkingStatusController.this;
                netAPIWorkingStatusController.sendMessage(netAPIWorkingStatusController.obtainMessage(2));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                Log.i(NetAPIWorkingStatusController.this.TAG, "onCapabilitiesChanged" + networkCapabilities);
                NetAPIWorkingStatusController netAPIWorkingStatusController = NetAPIWorkingStatusController.this;
                netAPIWorkingStatusController.sendMessage(netAPIWorkingStatusController.obtainMessage(2));
            }
        };
        this.mWifiStateListener = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusController.4
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                IMSLog.i(NetAPIWorkingStatusController.this.TAG, "onLost wifi");
                NetAPIWorkingStatusController.this.mIsWifiConnected = false;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                Log.d(NetAPIWorkingStatusController.this.TAG, "onCapabilitiesChanged");
                if (networkCapabilities != null && networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16) && networkCapabilities.hasTransport(1)) {
                    NetAPIWorkingStatusController netAPIWorkingStatusController = NetAPIWorkingStatusController.this;
                    netAPIWorkingStatusController.mIsWifiConnected = true;
                    Log.i(netAPIWorkingStatusController.TAG, "onCapabilitiesChanged mIsWifiConnected: " + NetAPIWorkingStatusController.this.mIsWifiConnected);
                }
            }
        };
        this.mStoreClient = messageStoreClient;
        this.mContext = messageStoreClient.getContext();
        this.mCallbackMsgApp = iUIEventCallback;
        this.mLineManager = new LineManager(this);
        CloudMessageManagerHelper cloudMessageManagerHelper = new CloudMessageManagerHelper();
        this.mCloudMessageManagerHelper = cloudMessageManagerHelper;
        this.mNetAPIHandler = new OMANetAPIHandler(looper, this.mStoreClient, this, this.mCallbackMsgApp, this.mLineManager, cloudMessageManagerHelper);
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
    }

    public void resetAdapter(IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        this.mIRetryStackAdapterHelper = iRetryStackAdapterHelper;
        this.mProvisionControl.mIRetryStackAdapterHelper = iRetryStackAdapterHelper;
        this.mNetAPIHandler.resetChannelScheduler();
    }

    public void init() {
        initDeviceID();
        this.mStoreClient.getCloudMessageStrategyManager().createStrategy();
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isGbaSupported()) {
            sendMessage(obtainMessage(11));
            registerWifiStateListener();
            unregisterAutoDownloadSettingsObserver();
            registerAutoDownloadSettingsObserver();
            changeAndSaveAutoDownloadSettings();
        }
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isSupportExpiredRule()) {
            sendMessage(obtainMessage(9));
        }
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isProvisionRequired()) {
            startProvsioningApi();
        } else {
            initSimInfo();
            setVVMSyncState(false);
        }
        setConfigParam();
        registerNetworkStateListener();
        setNetworkCapabilities();
    }

    private void setNetworkCapabilities() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities != null && networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16)) {
            if (networkCapabilities.hasTransport(1)) {
                this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setProtocol(OMAGlobalVariables.HTTPS);
            } else if (networkCapabilities.hasTransport(0)) {
                this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setProtocol(OMAGlobalVariables.HTTP);
            }
        }
    }

    private void setConfigParam() {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isGbaSupported() && this.mStoreClient.getRetryMapAdapter() != null) {
            this.mStoreClient.getRetryMapAdapter().clearRetryHistory();
        }
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isDeviceConfigUsed()) {
            boolean z = this.mDeviceConfigAdapter.getDeviceConfig() != null;
            if (z) {
                this.mDeviceConfigAdapter.parseDeviceConfig();
            }
            this.mDeviceConfigAdapter.registerDeviceConfigUpdatedReceiver(this.mContext);
            Log.d(this.TAG, "device config exists: " + z);
            this.mVvmHandler.resetDateFormat();
        }
    }

    private void initSimInfo() {
        String str;
        if (CmsUtil.isSimChanged(this.mStoreClient)) {
            this.mStoreClient.getPrerenceManager().clearAll();
            resetServiceState();
        }
        String convertPhoneNumberToUserAct = AmbsUtils.convertPhoneNumberToUserAct(this.mStoreClient.getSimManager().getMsisdn());
        String imsi = this.mStoreClient.getSimManager().getImsi();
        if (TextUtils.isEmpty(convertPhoneNumberToUserAct)) {
            convertPhoneNumberToUserAct = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getNativeLine();
            str = "from DB == ";
        } else {
            str = "== ";
        }
        Log.i(this.TAG, "Phone number " + str + IMSLog.checker(convertPhoneNumberToUserAct) + ", Provision not required");
        this.mStoreClient.getPrerenceManager().saveSimImsi(imsi);
        this.mStoreClient.getPrerenceManager().saveUserCtn(convertPhoneNumberToUserAct, false);
    }

    protected void registerDefaultSmsPackageChangeReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL");
        context.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusController.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent == null) {
                    Log.w(NetAPIWorkingStatusController.this.TAG, "registerDefaultSmsPackageChangeReceiver, onReceive: intent is null.");
                    return;
                }
                String action = intent.getAction();
                Log.d(NetAPIWorkingStatusController.this.TAG, "registerDefaultSmsPackageChangeReceiver, onReceive: anction = " + action);
                if ("android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL".equals(action)) {
                    NetAPIWorkingStatusController.this.sendEmptyMessage(1);
                }
            }
        }, intentFilter);
    }

    protected void registerAirplaneMode(Context context) {
        boolean z = Settings.System.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) != 0;
        this.mIsAirPlaneModeOn = z;
        if (z) {
            this.mIsNetworkValid = false;
        } else {
            this.mIsNetworkValid = true;
        }
        logCurrentWorkingStatus();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ImsConstants.Intents.ACTION_AIRPLANE_MODE);
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        context.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusController.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                Log.d(NetAPIWorkingStatusController.this.TAG, "registerAirplaneMode, BroadcastReceiver, action: " + action);
                if (ImsConstants.Intents.ACTION_AIRPLANE_MODE.equals(action)) {
                    NetAPIWorkingStatusController netAPIWorkingStatusController = NetAPIWorkingStatusController.this;
                    netAPIWorkingStatusController.sendMessage(netAPIWorkingStatusController.obtainMessage(8));
                } else if ("android.intent.action.SIM_STATE_CHANGED".equals(action)) {
                    NetAPIWorkingStatusController netAPIWorkingStatusController2 = NetAPIWorkingStatusController.this;
                    netAPIWorkingStatusController2.sendMessage(netAPIWorkingStatusController2.obtainMessage(10));
                }
            }
        }, intentFilter);
    }

    private void registerPhoneStateListener(Context context) {
        Log.d(this.TAG, "registerPhoneStateListener");
        this.mTelephonyCallback = new TelephonyServiceCallback();
        Util.getTelephonyManager(context, this.mStoreClient.getClientID()).registerTelephonyCallback(context.getMainExecutor(), this.mTelephonyCallback);
    }

    public class TelephonyServiceCallback extends TelephonyCallback implements TelephonyCallback.ServiceStateListener {
        public TelephonyServiceCallback() {
        }

        @Override // android.telephony.TelephonyCallback.ServiceStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            Log.i(NetAPIWorkingStatusController.this.TAG, "onServiceStateChanged " + serviceState.getState());
            if (serviceState.getState() == 0 || Util.isWifiCallingEnabled(NetAPIWorkingStatusController.this.mContext)) {
                NetAPIWorkingStatusController.this.mStoreClient.getPrerenceManager().saveNetworkAvailableTime(System.currentTimeMillis());
            }
        }
    }

    protected void handleEventMessageAppChanged() {
        logCurrentWorkingStatus();
        if (!this.mIsCmsProfileEnabled) {
            Log.d(this.TAG, "handleEventMessageAppChanged: not enabled");
            return;
        }
        this.mIsDefaultMsgAppNative = CmsUtil.isDefaultMessageAppInUse(this.mContext);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isGoForwardSyncSupported()) {
            if (!this.mIsDefaultMsgAppNative) {
                Log.d(this.TAG, "handleEventMessageAppChanged: native message app not default");
                this.mStoreClient.getPrerenceManager().saveNativeMsgAppIsDefault(false);
                setOMANetAPIWorkingStatus(false);
                this.mNetAPIHandler.deleteNotificationSubscriptionResource();
                pauseProvsioningApi();
                return;
            }
            Log.d(this.TAG, "handleEventMessageAppChanged native message app default");
            this.mStoreClient.getPrerenceManager().saveNativeMsgAppIsDefault(true);
            resumeProvsioningApi();
            Log.i(this.TAG, "notify buffer DB");
            this.mWorkingStatus.notifyRegistrants(new AsyncResult(null, IWorkingStatusProvisionListener.WorkingStatus.DEFAULT_MSGAPP_CHGTO_NATIVE, null));
            if (shouldEnableOMANetAPIWorking()) {
                Log.d(this.TAG, "handleEventMessageAppChanged: default msg app, resume cms api working");
                setOMANetAPIWorkingStatus(true);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public boolean isNativeMsgAppDefault() {
        return this.mIsDefaultMsgAppNative;
    }

    private boolean isTerrestrialNetwork() {
        ServiceState serviceState;
        try {
            serviceState = Util.getTelephonyManager(this.mContext, this.mStoreClient.getClientID()).getServiceState();
        } catch (SecurityException e) {
            Log.e(this.TAG, "isTerrestrialNetwork SecurityException: " + e.getMessage());
        }
        if (serviceState == null) {
            Log.i(this.TAG, "isTerrestrialNetwork serviceState null");
            return true;
        }
        Log.i(this.TAG, "isTerrestrialNetwork value: " + serviceState.isUsingNonTerrestrialNetwork());
        return !serviceState.isUsingNonTerrestrialNetwork();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0251  */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleMessage(android.os.Message r10) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.NetAPIWorkingStatusController.handleMessage(android.os.Message):void");
    }

    private void setNotiPauseState(boolean z) {
        Log.i(this.TAG, "setNotiPauseState, currenty Paused:" + this.mPushNotiPaused + " newState:" + z);
        this.mPushNotiPaused = z;
    }

    protected boolean shouldEnableOMANetAPIWorking() {
        return this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldEnableNetAPIWorking(this.mIsNetworkValid, this.mIsDefaultMsgAppNative, this.mIsUserDeleteAccount, this.mIsProvisionSuccess, this.mIsServicePaused);
    }

    protected void pauseCMNWorking() {
        Log.d(this.TAG, "pause cloud message NetAPI");
        this.mNetAPIHandler.pausewithStatusParam(new ParamNetAPIStatusControl(this.mIsMsgAppForeground, this.mIsNetworkValid, this.mIsOMAAPIRunning, this.mIsDefaultMsgAppNative, this.mIsUserDeleteAccount, this.mIsProvisionSuccess, this.mIsServicePaused));
    }

    protected void stopCMNWorking() {
        Log.d(this.TAG, "stop cloud message NetAPI");
        this.mIsCMNWorkingStarted = false;
        this.mIsProvisionSuccess = false;
        this.mNetAPIHandler.stop();
    }

    protected void startCMNWorking() {
        Log.d(this.TAG, "start cloud message NetAPI");
        this.mNetAPIHandler.start();
    }

    protected void startCMNWorkingResetBox() {
        Log.d(this.TAG, "start cloud message NetAPI: resetBox");
        this.mIsCMNWorkingStarted = true;
        this.mNetAPIHandler.start_resetBox();
    }

    protected void resumeCMNWorking() {
        Log.d(this.TAG, "resume cloud message NetAPI");
        this.mNetAPIHandler.resumewithStatusParam(new ParamNetAPIStatusControl(this.mIsMsgAppForeground, this.mIsNetworkValid, this.mIsOMAAPIRunning, this.mIsDefaultMsgAppNative, this.mIsUserDeleteAccount, this.mIsProvisionSuccess, this.mIsServicePaused));
    }

    private void startProvsioningApi() {
        this.mProvisionControl.start();
    }

    private void pauseProvsioningApi() {
        Log.d(this.TAG, "pauseProvisioningApi");
        this.mProvisionControl.pause();
    }

    private void resumeProvsioningApi() {
        Log.d(this.TAG, "resumeProvisioningApi");
        if (isCmsProfileActive() && this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isProvisionRequired()) {
            this.mProvisionControl.resume();
        }
    }

    public void setMsgAppForegroundStatus(boolean z) {
        sendMessage(obtainMessage(3, Boolean.valueOf(z)));
    }

    public void setOMANetAPIWorkingStatus(boolean z) {
        sendMessage(obtainMessage(4, Boolean.valueOf(z)));
    }

    protected void setNetworkStatus(boolean z) {
        if (!this.mIsCmsProfileEnabled && z) {
            Log.d(this.TAG, "mIsCmsProfileEnabled: false");
            return;
        }
        this.mIsNetworkValid = z;
        if (z && this.mIsDefaultMsgAppNative) {
            resumeProvsioningApi();
        } else {
            pauseProvsioningApi();
        }
        if (this.mIsNetworkValid && !this.mIsCMNWorkingStarted && this.mIsProvisionSuccess && isCmsProfileActive()) {
            this.mIsCMNWorkingStarted = true;
            startCMNWorking();
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void sendDeviceUpdate(BufferDBChangeParamList bufferDBChangeParamList) {
        Log.d(this.TAG, "sendDeviceUpdate: " + bufferDBChangeParamList);
        if (bufferDBChangeParamList == null || bufferDBChangeParamList.mChangelst.size() <= 0 || !this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isValidOMARequestUrl()) {
            return;
        }
        BufferDBChangeParam bufferDBChangeParam = bufferDBChangeParamList.mChangelst.get(0);
        Log.i(this.TAG, "sendDeviceUpdate: mIsAdhocV2t: " + bufferDBChangeParam.mIsAdhocV2t);
        int i = bufferDBChangeParam.mDBIndex;
        if (i == 19 || i == 18 || i == 20 || i == 17) {
            if ((i == 18 && CloudMessageBufferDBConstants.ActionStatusFlag.Delete.equals(bufferDBChangeParam.mAction)) || (bufferDBChangeParam.mDBIndex == 17 && !bufferDBChangeParam.mIsAdhocV2t)) {
                this.mNetAPIHandler.sendUpdate(bufferDBChangeParamList);
                return;
            } else {
                this.mVvmHandler.sendVvmUpdate(bufferDBChangeParamList);
                return;
            }
        }
        this.mNetAPIHandler.sendUpdate(bufferDBChangeParamList);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onProvisionSuccess() {
        this.mIsProvisionSuccess = true;
        logCurrentWorkingStatus();
        if (shouldEnableOMANetAPIWorking()) {
            setOMANetAPIWorkingStatus(true);
        }
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isProvisionRequired()) {
            if (this.mIsNetworkValid && !this.mIsCMNWorkingStarted) {
                this.mIsCMNWorkingStarted = true;
                startCMNWorking();
            }
            startInitSync();
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onCleanBufferDbRequired() {
        Log.i(this.TAG, "onCleanBufferDbRequired");
        this.mWorkingStatus.notifyRegistrants(new AsyncResult(null, IWorkingStatusProvisionListener.WorkingStatus.BUFFERDB_CLEAN, null));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onCmsRegistrationCompletedEvent() {
        Log.i(this.TAG, "onCmsRegistrationCompleted");
        this.mWorkingStatus.notifyRegistrants(new AsyncResult(null, IWorkingStatusProvisionListener.WorkingStatus.UPDATE_CMS_CONFIG, null));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onInitialDBSyncCompleted() {
        this.mProvisionControl.update(EnumProvision.ProvisionEventType.REQ_CREATE_ACCOUNT.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void onInitialDBCopyDone() {
        Log.i(this.TAG, "onInitialDBCopyDone");
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isMultiLineSupported()) {
            this.mLineManager.initLineStatus();
        } else {
            this.mLineManager.addLine(this.mStoreClient.getPrerenceManager().getUserTelCtn());
        }
        logCurrentWorkingStatus();
        if (this.mIsNetworkValid && !this.mIsCMNWorkingStarted && this.mIsProvisionSuccess) {
            this.mIsCMNWorkingStarted = true;
            startCMNWorking();
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void onMailBoxResetBufferDbDone() {
        Log.i(this.TAG, "onMailBoxResetBufferDbDone");
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isMultiLineSupported()) {
            this.mLineManager.initLineStatus();
        } else {
            this.mLineManager.addLine(this.mStoreClient.getPrerenceManager().getUserTelCtn());
        }
        this.mNetAPIHandler.deleteNotificationSubscriptionResource();
        logCurrentWorkingStatus();
        if (this.mIsNetworkValid && this.mIsProvisionSuccess) {
            startCMNWorkingResetBox();
        }
        if (shouldEnableOMANetAPIWorking()) {
            setOMANetAPIWorkingStatus(true);
        }
    }

    public boolean onUIButtonProceed(int i, String str) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isUIButtonUsed()) {
            Log.d(this.TAG, "UI button is enabled");
            return this.mProvisionControl.onUIButtonProceed(i, str);
        }
        Log.d(this.TAG, "UI button call is disabled");
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void sendAppSync(SyncParam syncParam, boolean z) {
        if (z) {
            this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(true);
        }
        Log.i(this.TAG, "sendAppSync: " + syncParam + " isFullSync: " + z);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isValidOMARequestUrl()) {
            this.mNetAPIHandler.sendAppSync(syncParam, z);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void stopAppSync(SyncParam syncParam) {
        Log.i(this.TAG, "sendAppSync: " + syncParam);
        this.mNetAPIHandler.stopAppSync(syncParam);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void sendDeviceInitialSyncDownload(BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "sendDeviceInitialSyncDownload: " + bufferDBChangeParamList);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isValidOMARequestUrl()) {
            this.mNetAPIHandler.sendInitialSyncDownload(bufferDBChangeParamList);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void sendGetVVMQuotaInfo(BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "sendGetVVMQuotaInfo : " + bufferDBChangeParamList);
        this.mVvmHandler.getVvmQuota(bufferDBChangeParamList);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void onWipeOutResetSyncHandler() {
        Log.i(this.TAG, "onWipeOutResetSyncHandler");
        this.mIsCMNWorkingStarted = false;
        this.mNetAPIHandler.onWipeOutResetSyncHandler();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void sendDeviceNormalSyncDownload(BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "sendDeviceNormalDownload: " + bufferDBChangeParamList);
        BufferDBChangeParamList bufferDBChangeParamList2 = new BufferDBChangeParamList();
        BufferDBChangeParamList bufferDBChangeParamList3 = new BufferDBChangeParamList();
        if (bufferDBChangeParamList != null && this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isValidOMARequestUrl()) {
            Iterator<BufferDBChangeParam> it = bufferDBChangeParamList.mChangelst.iterator();
            while (it.hasNext()) {
                BufferDBChangeParam next = it.next();
                if (next.mDBIndex == 20) {
                    bufferDBChangeParamList2.mChangelst.add(next);
                } else {
                    bufferDBChangeParamList3.mChangelst.add(next);
                }
            }
        }
        if (bufferDBChangeParamList3.mChangelst.size() > 0) {
            this.mNetAPIHandler.sendNormalSyncDownload(bufferDBChangeParamList);
        }
        if (bufferDBChangeParamList2.mChangelst.size() > 0) {
            this.mVvmHandler.sendVvmUpdate(bufferDBChangeParamList2);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void sendDeviceUpload(BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "sendDeviceUpload: " + bufferDBChangeParamList);
        if (bufferDBChangeParamList == null || !this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isValidOMARequestUrl()) {
            return;
        }
        this.mNetAPIHandler.sendUpload(bufferDBChangeParamList);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onOmaProvisionFailed(ParamOMAresponseforBufDB paramOMAresponseforBufDB, long j) {
        Log.d(this.TAG, "onOmaProvisionFailed: " + paramOMAresponseforBufDB);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isTokenRequestedFromProvision()) {
            this.mIsProvisionSuccess = false;
            setOMANetAPIWorkingStatus(false);
            Log.d(this.TAG, "REQ_SESSION_GEN will be triggered in " + (j / 1000) + " seconds");
            this.mCallbackMsgApp.notifyAppUIScreen(ATTConstants.AttAmbsUIScreenNames.Settings_PrmptMsg10.getId(), IUIEventCallback.NON_POP_UP, 0);
            this.mProvisionControl.updateDelay(EnumProvision.ProvisionEventType.REQ_SESSION_GEN.getId(), j);
        } else {
            if (paramOMAresponseforBufDB == null) {
                return;
            }
            String msisdn = Util.getMsisdn(paramOMAresponseforBufDB.getLine(), Util.getSimCountryCode(this.mContext, this.mStoreClient.getClientID()));
            if (TextUtils.isEmpty(msisdn) || msisdn.length() <= 1) {
                return;
            }
            String substring = msisdn.substring(1);
            IMSLog.s(this.TAG, "line: " + substring);
            this.mContext.getContentResolver().update(NSDSContractExt.Lines.buildRefreshSitUri(substring), new ContentValues(), null, null);
        }
        Class<? extends IHttpAPICommonInterface> lastFailedApi = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getLastFailedApi();
        if (lastFailedApi == null || !CloudMessageCreateLargeDataPolling.class.getSimpleName().equalsIgnoreCase(lastFailedApi.getSimpleName()) || this.mIsMsgAppForeground) {
            return;
        }
        Log.i(this.TAG, "LargeDataPolling failed while app was in background. Stop all futher pushed notification");
        setNotiPauseState(true);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onCloudSyncWorkingStopped() {
        clearData();
        stopCMNWorking();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onUserDeleteAccount(boolean z) {
        Log.d(this.TAG, "onUserDeleteAccount: " + z);
        sendMessage(obtainMessage(7, Boolean.valueOf(z)));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onRestartService() {
        onRestartService(true);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onRestartService(boolean z) {
        if (this.mIsAmbsServiceStop) {
            Log.e(this.TAG, "AMBS service is suspended, do not process Restart Service");
            return;
        }
        Log.i(this.TAG, "Entry restartService: userOptin " + z);
        setOMANetAPIWorkingStatus(false);
        clearData();
        stopCMNWorking();
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isGbaSupported()) {
            initSimInfo();
            setConfigParam();
        }
        if (!z) {
            Log.i(this.TAG, "Internal Restart case");
            if (this.mIsServicePaused) {
                this.mIsServicePaused = false;
                this.mStoreClient.getPrerenceManager().saveAMBSPauseService(false);
            }
            setCmsProfileEnabled(true);
            this.mProvisionControl.update(EnumProvision.ProvisionEventType.INTERNAL_RESTART.getId());
        } else {
            Log.i(this.TAG, "Restart case optin");
            this.mProvisionControl.update(EnumProvision.ProvisionEventType.RESTART_SERVICE.getId());
        }
        this.mWorkingStatus.notifyRegistrants(new AsyncResult(null, IWorkingStatusProvisionListener.WorkingStatus.RESTART_SERVICE, null));
        initDeviceID();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onEsimHotswap() {
        int simState = Util.getTelephonyManager(this.mContext, this.mStoreClient.getClientID()).getSimState();
        Log.i(this.TAG, "onEsimHotswap sim state: " + simState);
        Util.getTelephonyManager(this.mContext, this.mStoreClient.getClientID());
        if (5 != simState) {
            Log.i(this.TAG, "SIM not yet loaded, skip esim hotswap processing ");
            return;
        }
        clearData();
        stopCMNWorking();
        initDeviceID();
        this.mStoreClient.getCloudMessageStrategyManager().createStrategy();
        sendMessage(obtainMessage(11));
        changeAndSaveAutoDownloadSettings();
        initSimInfo();
        setVVMSyncState(false);
        setConfigParam();
        setNetworkCapabilities();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void pauseService() {
        Log.i(this.TAG, "Entry pauseService");
        this.mIsServicePaused = true;
        setOMANetAPIWorkingStatus(false);
        this.mStoreClient.getPrerenceManager().saveAMBSPauseService(true);
        this.mProvisionControl.pauseService();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void stopService() {
        this.mProvisionControl.stop();
        this.mIsServicePaused = true;
        stopCMNWorking();
        this.mStoreClient.getPrerenceManager().saveAMBSStopService(true);
        this.mIsAmbsServiceStop = true;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onChannelStateReset() {
        Log.d(this.TAG, "onChannelStateReset");
        this.mNetAPIHandler.resetChannelState();
    }

    protected void clearData() {
        this.mStoreClient.getPrerenceManager().clearAll();
        resetServiceState();
        this.mStoreClient.getHttpController().getCookieJar().removeAll();
        if (this.mStoreClient.getRetryStackAdapter() != null) {
            this.mStoreClient.getRetryStackAdapter().clearRetryHistory();
        }
        if (this.mStoreClient.getRetryMapAdapter() != null) {
            this.mStoreClient.getRetryMapAdapter().clearRetryHistory();
        }
        onCleanBufferDbRequired();
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().clearOmaRetryData();
        this.mHasNotifiedBufferDBProvisionSuccess = false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onNetworkChangeDetected() {
        Log.d(this.TAG, "onNetworkChangeDetected");
        boolean isCaptivePortalCheckSupported = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isCaptivePortalCheckSupported();
        if (this.mIsCmsProfileEnabled && isCaptivePortalCheckSupported) {
            sendEmptyMessage(2);
            return;
        }
        Log.d(this.TAG, "onNetworkChangeDetected: CmsProfileEnabled: " + this.mIsCmsProfileEnabled + " or captive portal:" + isCaptivePortalCheckSupported);
    }

    public void setCmsProfileEnabled(boolean z) {
        EventLogHelper.infoLogAndAdd(this.LOG_TAG_CN, this.mStoreClient.getClientID(), "setCmsProfileEnabled: mIsCmsProfileEnabled " + this.mIsCmsProfileEnabled + " Value :" + z);
        if (this.mIsCmsProfileEnabled && z) {
            return;
        }
        this.mIsCmsProfileEnabled = z;
        if (z) {
            onNetworkChangeDetected();
            init();
            this.mIsDefaultMsgAppNative = CmsUtil.isDefaultMessageAppInUse(this.mContext);
            this.mStoreClient.getPrerenceManager().saveNativeMsgAppIsDefault(this.mIsDefaultMsgAppNative);
            if (this.mIsDefaultMsgAppNative) {
                return;
            }
            Log.d(this.TAG, "setCmsProfileEnabled: non-default app: pause provisioning");
            pauseProvsioningApi();
            return;
        }
        unregisterNetworkStateListener();
        stopCMNWorking();
        pauseProvsioningApi();
    }

    public void setImpuFromImsRegistration(String str) {
        Log.d(this.TAG, "setImpuFromImsRegistration: " + IMSLog.checker(str) + ", shouldPersistImsRegNum value: " + this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldPersistImsRegNum());
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldPersistImsRegNum() && str != null && str.length() >= 10 && str.length() <= 12) {
            if (str.length() >= 11) {
                str = str.substring(str.length() - 10, str.length());
            }
            this.mStoreClient.getPrerenceManager().saveUserCtn(str, false);
        }
    }

    public boolean getCmsProfileEnabled() {
        Log.i(this.TAG, "getCmsProfileEnabled mIsCmsProfileEnabled: " + this.mIsCmsProfileEnabled);
        return this.mIsCmsProfileEnabled;
    }

    public boolean isCmsProfileActive() {
        return (!this.mIsCmsProfileEnabled || this.mIsAmbsServiceStop || this.mIsServicePaused || this.mStoreClient.getPrerenceManager().getMcsUser() == 0) ? false : true;
    }

    public boolean getCmsIsAccountServiceStop() {
        return this.mIsAmbsServiceStop;
    }

    public boolean getCmsIsAccountServicePause() {
        return this.mIsServicePaused;
    }

    public void resetServiceState() {
        this.mIsAmbsServiceStop = this.mStoreClient.getPrerenceManager().getAMBSStopService();
        this.mIsServicePaused = this.mStoreClient.getPrerenceManager().getAMBSPauseService();
    }

    private void logCurrentWorkingStatus() {
        Log.i(this.TAG, "logCurrentWorkingStatus:  mIsUsingMobileHipri: " + this.mIsUsingMobileHipri + " mIsAmbsRunning: " + this.mIsOMAAPIRunning + " mIsMsgAppForeground: " + this.mIsMsgAppForeground + " mIsNetworkValid: " + this.mIsNetworkValid + " mIsCmsProfileEnabled: " + this.mIsCmsProfileEnabled + " mIsDefaultMsgAppNative: " + this.mIsDefaultMsgAppNative + " mIsUserDeleteAccount: " + this.mIsUserDeleteAccount + " mIsAirPlaneModeOn: " + this.mIsAirPlaneModeOn + " mIsCMNWorkingStarted: " + this.mIsCMNWorkingStarted + " mIsProvisionSuccess: " + this.mIsProvisionSuccess + " mHasNotifiedBufferDBProvisionSuccess: " + this.mHasNotifiedBufferDBProvisionSuccess + " mIsAmbsServiceStop: " + this.mIsAmbsServiceStop + " mIsServicePaused: " + this.mIsServicePaused);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.ILineStatusChangeCallBack
    public List<String> notifyLoadLineStatus() {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isMultiLineSupported()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.mStoreClient.getPrerenceManager().getUserCtn());
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.mStoreClient.getPrerenceManager().getUserCtn());
        return arrayList2;
    }

    public void onDeviceSITRefreshed(String str) {
        this.mNetAPIHandler.onLineSITRefreshed(Util.getTelUri(str, Util.getSimCountryCode(this.mContext, this.mStoreClient.getClientID())));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onOmaFailExceedMaxCount() {
        Log.d(this.TAG, "onOmaFailExceedMaxCount");
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isTokenRequestedFromProvision()) {
            this.mIsProvisionSuccess = false;
            setOMANetAPIWorkingStatus(false);
            this.mProvisionControl.onOmaFailExceedMaxCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean bindToNetwork(Network network) {
        if (network == null) {
            Log.d(this.TAG, "bind current process to default network type");
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        boolean bindProcessToNetwork = connectivityManager.bindProcessToNetwork(network);
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork != null) {
            Log.d(this.TAG, activeNetwork.toString());
        }
        return bindProcessToNetwork;
    }

    private boolean checkingWifiGoodOrNot(Network network) {
        if (network == null) {
            Log.d(this.TAG, "Wifi network instance is null");
            return false;
        }
        return CheckCaptivePortal.isGoodWifi(network);
    }

    private void stopMobileHipri() {
        String str;
        if (this.mIsUsingMobileHipri && this.mMobileNetworkCallback != null) {
            ((ConnectivityManager) this.mContext.getSystemService("connectivity")).unregisterNetworkCallback(this.mMobileNetworkCallback);
            this.mMobileNetworkCallback = null;
            Log.d(this.TAG, "Mobile network callback unregistered");
        }
        if (bindToNetwork(null)) {
            this.mIsUsingMobileHipri = false;
            str = "successfully";
        } else {
            str = "failed";
        }
        Log.d(this.TAG, "stopMobileHipri, bind to default network " + str);
    }

    private void startMobileHipri() {
        Log.v(this.TAG, "startMobileHipri");
        if (this.mIsUsingMobileHipri) {
            Log.d(this.TAG, "mobile network is in using");
        } else if (this.mMobileNetworkCallback == null) {
            Log.d(this.TAG, "register mobile network callback");
            MobileNetowrkCallBack mobileNetowrkCallBack = new MobileNetowrkCallBack();
            this.mMobileNetworkCallback = mobileNetowrkCallBack;
            registerNetworkCallBack(0, mobileNetowrkCallBack);
        }
    }

    private void registerNetworkCallBack(int i, ConnectivityManager.NetworkCallback networkCallback) {
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        builder.addCapability(12);
        builder.addTransportType(i);
        ((ConnectivityManager) this.mContext.getSystemService("connectivity")).requestNetwork(builder.build(), networkCallback);
    }

    class MobileNetowrkCallBack extends ConnectivityManager.NetworkCallback {
        public MobileNetowrkCallBack() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            Log.i(NetAPIWorkingStatusController.this.TAG, "mobile network on available");
            if (NetAPIWorkingStatusController.this.bindToNetwork(network)) {
                Log.d(NetAPIWorkingStatusController.this.TAG, "bind to MOBILE_HIPRI successfully");
                NetAPIWorkingStatusController.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setProtocol(OMAGlobalVariables.HTTP);
                NetAPIWorkingStatusController.this.mIsUsingMobileHipri = true;
                NetAPIWorkingStatusController.this.setNetworkStatus(true);
                if (NetAPIWorkingStatusController.this.shouldEnableOMANetAPIWorking()) {
                    Log.d(NetAPIWorkingStatusController.this.TAG, "shouldEnableOMANetAPIWorking: true");
                    NetAPIWorkingStatusController.this.setOMANetAPIWorkingStatus(true);
                    return;
                }
                return;
            }
            Log.d(NetAPIWorkingStatusController.this.TAG, "bind to MOBILE_HIPRI failed");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            Log.i(NetAPIWorkingStatusController.this.TAG, "mobile network on lost");
        }
    }

    protected void registerNetworkStateListener() {
        Log.i(this.TAG, "registerNetworkStateListener");
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        builder.addCapability(12);
        builder.addTransportType(0);
        NetworkRequest build = builder.build();
        try {
            ((ConnectivityManager) this.mContext.getSystemService("connectivity")).registerNetworkCallback(build, this.mNetworkStateListener);
        } catch (RuntimeException e) {
            Log.e(this.TAG, e.getMessage());
        }
    }

    protected void unregisterNetworkStateListener() {
        Log.i(this.TAG, "unregisterNetworkStateListener");
        try {
            ((ConnectivityManager) this.mContext.getSystemService("connectivity")).unregisterNetworkCallback(this.mNetworkStateListener);
        } catch (RuntimeException e) {
            Log.e(this.TAG, e.getMessage());
        }
    }

    public void hideIndicator() {
        Log.i(this.TAG, "hideIndicator()");
        this.mCallbackMsgApp.showInitsyncIndicator(false);
    }

    public void updateSubscriptionChannel() {
        Log.i(this.TAG, "updateSubscriptionChannel()");
        this.mNetAPIHandler.updateSubscriptionChannel();
    }

    public void updateDelayedSubscriptionChannel() {
        Log.i(this.TAG, "updateDelayedSubscriptionChannel()");
        this.mNetAPIHandler.updateDelayedSubscriptionChannel();
    }

    public void removeUpdateSubscriptionChannelEvent() {
        Log.i(this.TAG, "removeUpdateSubscriptionChannelEvent()");
        this.mNetAPIHandler.removeUpdateSubscriptionChannelEvent();
    }

    public void handleLargeDataPolling() {
        this.mNetAPIHandler.handleLargeDataPolling();
    }

    public boolean isPushNotiProcessPaused() {
        return this.mPushNotiPaused;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onMailBoxMigrationReset() {
        this.mWorkingStatus.notifyRegistrants(new AsyncResult(null, IWorkingStatusProvisionListener.WorkingStatus.MAILBOX_MIGRATION_RESET, null));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onVVMNormalSyncComplete(boolean z) {
        this.mVvmHandler.setSyncState(z);
    }

    protected void initDeviceID() {
        this.mStoreClient.getPrerenceManager().saveDeviceId(Util.getImei(this.mStoreClient));
    }

    public void vvmNormalSyncRequest() {
        boolean isTerrestrialNetwork = isTerrestrialNetwork();
        boolean vVMAutoDownloadSetting = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getVVMAutoDownloadSetting();
        Log.i(this.TAG, "vvmNormalSyncRequest() autoDownload: " + vVMAutoDownloadSetting + ", mIsWifiConnected: " + this.mIsWifiConnected + ", isTerrestrialNetwork: " + isTerrestrialNetwork);
        if (isTerrestrialNetwork) {
            if (this.mIsWifiConnected || vVMAutoDownloadSetting) {
                this.mVvmHandler.normalSyncRequest();
            }
        }
    }

    private void enableGbaModule() {
        CmsServiceModuleManager.getInstance(this.mImsFramework, this.mGbaServiceModule);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void setVVMSyncState(boolean z) {
        this.mVvmHandler.setSyncState(z);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public boolean isNormalVVMSyncing() {
        return this.mVvmHandler.getSyncState();
    }

    public void resetDataReceiver() {
        this.mProvisionControl.resetDataReceiver();
    }

    public void notifyWorkingStatus(AsyncResult asyncResult) {
        this.mWorkingStatus.notifyRegistrants(asyncResult);
    }

    public void startInitSync() {
        IMSLog.i(this.TAG, "startInitSync already notified:" + this.mHasNotifiedBufferDBProvisionSuccess);
        if (this.mHasNotifiedBufferDBProvisionSuccess) {
            return;
        }
        this.mHasNotifiedBufferDBProvisionSuccess = true;
        notifyWorkingStatus(new AsyncResult(null, IWorkingStatusProvisionListener.WorkingStatus.PROVISION_SUCCESS, null));
    }

    private void registerWifiStateListener() {
        ((ConnectivityManager) this.mContext.getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).addCapability(12).build(), this.mWifiStateListener);
    }

    private boolean getAutoDownloadSettings() {
        try {
            int i = Settings.System.getInt(this.mContext.getContentResolver(), this.mStoreClient.getClientID() == 1 ? AUTO_DOWNLOAD_SIM_1 : AUTO_DOWNLOAD_SIM_0);
            Log.i(this.TAG, "getAutoDownloadSettings autoDownload: " + i);
            return i == 1;
        } catch (Settings.SettingNotFoundException e) {
            Log.i(this.TAG, "getAutoDownloadSettings SettingNotFoundException: " + e.getMessage());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeAndSaveAutoDownloadSettings() {
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMAutoDownloadSetting(getAutoDownloadSettings());
    }

    private class AutoDownloadContentObserver extends ContentObserver {
        public AutoDownloadContentObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            IMSLog.i(NetAPIWorkingStatusController.this.TAG, "AutoDownloadContentObserver - onChange() with " + uri);
            NetAPIWorkingStatusController.this.changeAndSaveAutoDownloadSettings();
        }
    }

    private void registerAutoDownloadSettingsObserver() {
        if (this.mAutoDownloadContentObserver == null) {
            this.mAutoDownloadContentObserver = new AutoDownloadContentObserver(this);
        }
        if (this.mStoreClient.getClientID() == 0) {
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor(AUTO_DOWNLOAD_SIM_0), true, this.mAutoDownloadContentObserver);
        } else {
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor(AUTO_DOWNLOAD_SIM_1), true, this.mAutoDownloadContentObserver);
        }
    }

    private void unregisterAutoDownloadSettingsObserver() {
        if (this.mAutoDownloadContentObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mAutoDownloadContentObserver);
            this.mAutoDownloadContentObserver = null;
        }
    }
}
