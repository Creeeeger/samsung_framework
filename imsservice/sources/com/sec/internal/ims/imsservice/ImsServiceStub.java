package com.sec.internal.ims.imsservice;

import android.app.AppOpsManager;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.provider.Telephony;
import android.telephony.TelephonyFrameworkInitializer;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.ims.cmc.ISemCmcRecordingListener;
import com.samsung.android.ims.cmc.SemCmcRecordingInfo;
import com.sec.ims.DialogEvent;
import com.sec.ims.IAutoConfigurationListener;
import com.sec.ims.ICentralMsgStoreService;
import com.sec.ims.IDialogEventListener;
import com.sec.ims.IEpdgListener;
import com.sec.ims.IImsDmConfigListener;
import com.sec.ims.IImsRegistrationListener;
import com.sec.ims.IImsService;
import com.sec.ims.IRttEventListener;
import com.sec.ims.ISimMobilityStatusListener;
import com.sec.ims.ImsEventListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.cmc.CmcCallInfo;
import com.sec.ims.configuration.DATA;
import com.sec.ims.extensions.ReflectionUtils;
import com.sec.ims.ft.IImsOngoingFtEventListener;
import com.sec.ims.im.IImSessionListener;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.settings.NvConfiguration;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.helper.os.SystemWrapper;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.ImsFramework;
import com.sec.internal.ims.aec.AECModule;
import com.sec.internal.ims.cmstore.CloudMessageService$$ExternalSyntheticLambda0;
import com.sec.internal.ims.config.ConfigModule;
import com.sec.internal.ims.core.GeolocationController;
import com.sec.internal.ims.core.NtpTimeController;
import com.sec.internal.ims.core.PdnController;
import com.sec.internal.ims.core.RawSipManager;
import com.sec.internal.ims.core.RegistrationManagerBase;
import com.sec.internal.ims.core.SipTestManagerFactory;
import com.sec.internal.ims.core.WfcEpdgManager;
import com.sec.internal.ims.core.cmc.CmcAccountManager;
import com.sec.internal.ims.core.handler.HandlerFactory;
import com.sec.internal.ims.core.iil.IilManager;
import com.sec.internal.ims.core.imslogger.ImsDiagnosticMonitorNotificationManager;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.ims.fcm.FcmHandler;
import com.sec.internal.ims.fcm.interfaces.IFcmHandler;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.servicemodules.ServiceModuleManager;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.servicemodules.tapi.service.extension.ServiceExtensionManager;
import com.sec.internal.ims.servicemodules.tapi.service.extension.utils.ValidationHelper;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.DmConfigModule;
import com.sec.internal.ims.settings.GlobalSettingsManager;
import com.sec.internal.ims.settings.ImsAutoUpdate;
import com.sec.internal.ims.settings.ImsServiceSwitch;
import com.sec.internal.ims.settings.ImsSimMobilityUpdate;
import com.sec.internal.ims.settings.JibeRcsEnabler;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.imsphone.cmc.CmcConnectivityController;
import com.sec.internal.imsphone.cmc.ICmcConnectivityController;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.aec.IAECModule;
import com.sec.internal.interfaces.ims.cmstore.ICmsModule;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.ICmcAccountManager;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.core.INtpTimeController;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRawSipSender;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISequentialInitializable;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IWfcEpdgManager;
import com.sec.internal.interfaces.ims.core.handler.IHandlerFactory;
import com.sec.internal.interfaces.ims.core.iil.IIilManager;
import com.sec.internal.interfaces.ims.core.imslogger.IImsDiagMonitor;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.CriticalLogger;
import com.sec.internal.log.IMSLog;
import com.sec.internal.log.IMSLogTimer;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class ImsServiceStub extends IImsService.Stub implements IImsFramework {
    private static final int LISTENER_DEFAULT_INDEX = 100;
    private static final String PERMISSION = "com.sec.imsservice.PERMISSION";
    private static final String SOFT_RESET_PERMISSION = "com.sec.android.settings.permission.SOFT_RESET";
    private static final String TC_POPUP_USER_ACCEPT = "info/tc_popup_user_accept";
    private Context mContext;
    private Handler mCoreHandler;
    private ExecutorService mDumpExecutor;
    private SimpleEventLog mEventLog;
    private JibeRcsEnabler mJibeRcsEnabler;
    private RawSipManager mRawSipManager;
    private static final String LOG_TAG = ImsServiceStub.class.getSimpleName();
    private static final AtomicInteger mListenerIndex = new AtomicInteger(0);
    private static ImsServiceStub sInstance = null;
    private static boolean mIsExplicitGcCalled = false;
    private static boolean mUserUnlocked = false;
    private static boolean mIsImsAvailable = false;
    private final Map<String, CallBack<? extends IInterface>> mListenerTokenMap = new ConcurrentHashMap();
    private WfcEpdgManager mWfcEpdgManager = null;
    private List<ISequentialInitializable> mSequentialInitializer = new ArrayList();
    private ServiceModuleManager mServiceModuleManager = null;
    private RegistrationManagerBase mRegistrationManager = null;
    private ISimManager mSimManager = null;
    private List<ISimManager> mSimManagers = new ArrayList();
    private List<IIilManager> mIilManagers = new ArrayList();
    private PdnController mPdnController = null;
    private GeolocationController mGeolocationController = null;
    private NtpTimeController mNtpTimeController = null;
    private HandlerFactory mHandlerFactory = null;
    private ServiceExtensionManager mServiceExtensionManager = null;
    private ConfigModule mConfigModule = null;
    private DmConfigModule mDmConfigModule = null;
    private CallStateTracker mCallStateTracker = null;
    private IAECModule mAECModule = null;
    private FcmHandler mFcmHandler = null;
    private ImsDiagnosticMonitorNotificationManager mImsDiagMonitor = null;
    private CmcAccountManager mCmcAccountManager = null;
    private RcsPolicyManager mRcsPolicyManager = null;
    private CmcConnectivityController mCmcConnectivityController = null;
    private BroadcastReceiver mDefaultSmsPackageChangeReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String str;
            if (intent == null || !"android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL".equals(intent.getAction())) {
                return;
            }
            try {
                str = Telephony.Sms.getDefaultSmsPackage(ImsServiceStub.this.mContext);
            } catch (Exception e) {
                IMSLog.e(ImsServiceStub.LOG_TAG, "Failed to get currentPackage: " + e);
                str = null;
            }
            IMSLog.d(ImsServiceStub.LOG_TAG, "onChange: MessageApplication is changed : " + str);
            if (str != null) {
                IImModule imModule = ImsServiceStub.this.mServiceModuleManager.getImModule();
                if (imModule != null) {
                    imModule.handleEventDefaultAppChanged();
                }
                if (ImsServiceStub.this.mConfigModule != null) {
                    ImsServiceStub.this.mConfigModule.onDefaultSmsPackageChanged();
                }
                ISmsServiceModule smsServiceModule = ImsServiceStub.this.mServiceModuleManager.getSmsServiceModule();
                if (smsServiceModule != null) {
                    smsServiceModule.handleEventDefaultAppChanged();
                }
                ICmsModule cmsModule = ImsServiceStub.this.mServiceModuleManager.getCmsModule();
                if (cmsModule != null) {
                    cmsModule.handleEventDefaultAppChanged();
                }
                ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsServiceStub.this.mServiceModuleManager.getCapabilityDiscoveryModule();
                if (capabilityDiscoveryModule != null) {
                    capabilityDiscoveryModule.onDefaultSmsPackageChanged();
                }
            }
        }
    };
    private BroadcastReceiver mUserUnlockReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_UNLOCKED".equals(intent.getAction())) {
                IMSLog.i(ImsServiceStub.LOG_TAG, "ACTION_USER_UNLOCKED received");
                ImsServiceStub.mUserUnlocked = true;
                if (ImsServiceStub.this.mRegistrationManager != null && ImsServiceStub.mIsImsAvailable) {
                    ImsServiceStub.explicitGC();
                    ImsServiceStub.this.mRegistrationManager.bootCompleted();
                }
                if (SemSystemProperties.getInt(ImsConstants.SystemProperties.FIRST_API_VERSION, 0) >= 28) {
                    ImsSharedPrefHelper.migrateToCeStorage(context);
                }
                IntentUtil.sendBroadcast(context, new Intent(NSDSNamespaces.NSDSActions.DEVICE_READY_AFTER_BOOTUP));
            }
        }
    };
    private final HandlerThread mCoreThread = new HandlerThread(getClass().getSimpleName());

    public void registerCallback(ImsEventListener imsEventListener, String str) {
    }

    public String registerCmsRegistrationListenerByPhoneId(ICentralMsgStoreService iCentralMsgStoreService, int i) throws RemoteException {
        return null;
    }

    public void unregisterCallback(ImsEventListener imsEventListener) {
    }

    public void unregisterCmsRegistrationListenerByPhoneId(String str, int i) throws RemoteException {
    }

    protected ImsServiceStub(Context context) {
        this.mContext = context;
        this.mEventLog = new SimpleEventLog(context, LOG_TAG, 300);
        new ImsFramework(this);
        checkUt(context);
    }

    public static ImsServiceStub getInstance() {
        while (getInstanceInternal() == null) {
            IMSLog.e(LOG_TAG, "instance is null...");
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return getInstanceInternal();
    }

    protected static <T extends IInterface> String getTokenOfListener(T t) {
        AtomicInteger atomicInteger = mListenerIndex;
        atomicInteger.compareAndSet(Integer.MAX_VALUE, 100);
        StringBuilder sb = new StringBuilder();
        sb.append(t == null ? "null" : Integer.valueOf(t.hashCode()));
        sb.append("$");
        sb.append(atomicInteger.incrementAndGet());
        return sb.toString();
    }

    private static synchronized ImsServiceStub getInstanceInternal() {
        ImsServiceStub imsServiceStub;
        synchronized (ImsServiceStub.class) {
            imsServiceStub = sInstance;
        }
        return imsServiceStub;
    }

    public static synchronized ImsServiceStub makeImsService(Context context) {
        synchronized (ImsServiceStub.class) {
            if (sInstance != null) {
                IMSLog.d(LOG_TAG, "Already created.");
                return sInstance;
            }
            String str = LOG_TAG;
            IMSLog.i(str, "Creating IMSService");
            IMSLogTimer.setLatchStartTime(-1);
            ImsServiceStub imsServiceStub = new ImsServiceStub(context);
            sInstance = imsServiceStub;
            imsServiceStub.createModules();
            sInstance.init();
            IMSLog.i(str, "Done.");
            IMSLog.c(LogClass.GEN_IMS_SERVICE_CREATED, "PID:" + Process.myPid());
            return sInstance;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void explicitGC() {
        if (mIsExplicitGcCalled) {
            return;
        }
        if (!Debug.isProductShip() || mUserUnlocked) {
            new Thread(new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ImsServiceStub.lambda$explicitGC$0();
                }
            }).start();
            mIsExplicitGcCalled = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$explicitGC$0() {
        IMSLog.i(LOG_TAG, "Call explicit GC");
        SystemWrapper.explicitGc();
    }

    public static boolean isImsAvailable() {
        return mIsImsAvailable;
    }

    private static void checkUt(Context context) {
        try {
            if (context.getPackageManager().getPackageUid("com.salab.issuetracker", 0) == 1000) {
                IMSLog.i(LOG_TAG, "issueTracker found should be UT device");
                IMSLog.setIsUt(true);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            IMSLog.i(LOG_TAG, "issueTracker not found");
        }
    }

    public void registerDefaultSmsPackageChangeReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL");
        this.mContext.registerReceiver(this.mDefaultSmsPackageChangeReceiver, intentFilter);
    }

    public void registerUserUnlockReceiver() {
        this.mContext.registerReceiver(this.mUserUnlockReceiver, new IntentFilter("android.intent.action.USER_UNLOCKED"));
    }

    private void registerFactoryResetReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ImsConstants.Intents.ACTION_SOFT_RESET);
        intentFilter.addAction(ImsConstants.Intents.ACTION_RESET_NETWORK_SETTINGS);
        this.mContext.registerReceiverAsUser(new BroadcastReceiver() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                IMSLog.d(ImsServiceStub.LOG_TAG, "received intent : " + intent.getAction());
                String action = intent.getAction();
                action.hashCode();
                if (action.equals(ImsConstants.Intents.ACTION_SOFT_RESET)) {
                    for (int i = 0; i < ImsServiceStub.this.getPhoneCount(); i++) {
                        ImsServiceStub.this.factoryReset(i);
                    }
                } else if (action.equals(ImsConstants.Intents.ACTION_RESET_NETWORK_SETTINGS) && intent.hasExtra(ImsConstants.Intents.EXTRA_RESET_NETWORK_SUBID)) {
                    ImsServiceStub.this.factoryReset(SimManagerFactory.getSlotId(intent.getIntExtra(ImsConstants.Intents.EXTRA_RESET_NETWORK_SUBID, -1)));
                }
                if (ImsServiceStub.this.mWfcEpdgManager != null) {
                    ImsServiceStub.this.mWfcEpdgManager.onResetSetting(intent);
                }
            }
        }, UserHandle.ALL, intentFilter, SOFT_RESET_PERMISSION, null);
    }

    private void registerPackageManagerReceiver() {
        IMSLog.d(LOG_TAG, "registerPackageMgrListener");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataSchemeSpecificPart(ImsConstants.Packages.PACKAGE_SIMMOBILITY_KIT, 0);
        intentFilter.addDataSchemeSpecificPart(ImsConstants.Packages.PACKAGE_SEC_MSG, 0);
        intentFilter.addDataScheme("package");
        String smkVersion = getSmkVersion();
        if (smkVersion != null) {
            writeSmkVerData(smkVersion);
        }
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String replace = intent.getData() != null ? intent.getData().toString().replace("package:", "") : "";
                String action = intent.getAction();
                IMSLog.d(ImsServiceStub.LOG_TAG, "packageStatus : " + action + ", packageName : " + replace);
                if (TextUtils.equals(ImsConstants.Packages.PACKAGE_SIMMOBILITY_KIT, replace)) {
                    action.hashCode();
                    if (action.equals("android.intent.action.PACKAGE_REPLACED")) {
                        String smkVersion2 = ImsServiceStub.this.getSmkVersion();
                        if (!ImsServiceStub.this.isPreloadedSmk(smkVersion2)) {
                            ImsServiceStub.this.startDeviceConfigService();
                        }
                        ImsServiceStub.this.writeSmkVerData(smkVersion2);
                        return;
                    }
                    return;
                }
                if (TextUtils.equals(ImsConstants.Packages.PACKAGE_SEC_MSG, replace)) {
                    action.hashCode();
                    if (action.equals("android.intent.action.PACKAGE_REPLACED")) {
                        ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsServiceStub.this.mServiceModuleManager.getCapabilityDiscoveryModule();
                        if (capabilityDiscoveryModule != null && capabilityDiscoveryModule.isRunning()) {
                            IMSLog.d(ImsServiceStub.LOG_TAG, "registerPackageManagerReceiver: notify to CapaModule");
                            capabilityDiscoveryModule.onPackageUpdated(replace);
                        } else {
                            IMSLog.d(ImsServiceStub.LOG_TAG, "registerPackageManagerReceiver:CapaModule not available");
                        }
                    }
                }
            }
        }, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeSmkVerData(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.KEY_SEND_MODE, (Integer) 1);
        contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 0);
        contentValues.put(DiagnosisConstants.DRPT_KEY_SMK_VERSION, str);
        ImsLogAgentUtil.storeLogToAgent(SimUtil.getActiveDataPhoneId(), this.mContext, "DRPT", contentValues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSmkVersion() {
        String str = null;
        try {
            str = this.mContext.getPackageManager().getPackageInfo(ImsConstants.Packages.PACKAGE_SIMMOBILITY_KIT, 0).versionName;
            IMSLog.d(LOG_TAG, "Get SMK version Success : " + str);
            return str;
        } catch (Exception unused) {
            IMSLog.e(LOG_TAG, "fail to get versionName");
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPreloadedSmk(String str) {
        return str == null || str.equals(ImsConstants.Packages.SMK_PRELOADED_VERSION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDeviceConfigService() {
        this.mEventLog.logAndAdd("call SMK start");
        Intent intent = new Intent();
        intent.setClassName(ImsConstants.Packages.PACKAGE_SIMMOBILITY_KIT, ImsConstants.Packages.CLASS_SIMMOBILITY_KIT_UPDATE);
        this.mContext.startForegroundService(intent);
    }

    public void handleIntent(Intent intent) {
        if (intent == null || intent.getAction() == null) {
            return;
        }
        this.mServiceModuleManager.handleIntent(intent);
    }

    private void createModules() {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.i(str, "createModules started");
        this.mCoreThread.start();
        Looper looper = this.mCoreThread.getLooper();
        this.mCoreHandler = new Handler(looper);
        IMSLog.i(str, "Creating SimManagers.");
        SimManagerFactory.createInstance(looper, this.mContext);
        this.mSimManager = SimManagerFactory.getSimManager();
        this.mSimManagers.clear();
        this.mSimManagers.addAll(SimManagerFactory.getAllSimManagers());
        this.mSequentialInitializer.addAll(this.mSimManagers);
        int phoneCount = (DeviceUtil.isTablet() && DeviceUtil.isWifiOnlyModel()) ? 0 : TelephonyManagerWrapper.getInstance(this.mContext).getPhoneCount();
        IMSLog.i(str, "Creating IIilManager: count: " + phoneCount);
        for (int i = 0; i < phoneCount; i++) {
            this.mIilManagers.add(i, new IilManager(this.mContext, i, this));
        }
        String str2 = LOG_TAG;
        IMSLog.i(str2, "Creating SipTestManager.");
        SipTestManagerFactory.createSipTestManager(this.mContext);
        IMSLog.i(str2, "Creating WfcEpdgManager.");
        WfcEpdgManager wfcEpdgManager = new WfcEpdgManager(this.mContext, looper, this);
        this.mWfcEpdgManager = wfcEpdgManager;
        this.mSequentialInitializer.add(wfcEpdgManager);
        IMSLog.i(str2, "Creating PdnController.");
        PdnController pdnController = new PdnController(this.mContext, looper, this);
        this.mPdnController = pdnController;
        this.mSequentialInitializer.add(pdnController);
        IMSLog.i(str2, "Creating DmConfigModule.");
        DmConfigModule dmConfigModule = new DmConfigModule(this.mContext, looper, this);
        this.mDmConfigModule = dmConfigModule;
        this.mSequentialInitializer.add(dmConfigModule);
        IMSLog.i(str2, "Creating CmcAccountManager.");
        CmcAccountManager cmcAccountManager = new CmcAccountManager(this.mContext, looper);
        this.mCmcAccountManager = cmcAccountManager;
        this.mSequentialInitializer.add(cmcAccountManager);
        IMSLog.i(str2, "Creating RcsPolicyManager.");
        RcsPolicyManager rcsPolicyManager = new RcsPolicyManager(looper, this.mContext, this.mSimManagers);
        this.mRcsPolicyManager = rcsPolicyManager;
        this.mSequentialInitializer.add(rcsPolicyManager);
        IMSLog.i(str2, "Creating JibeRcsEnabler");
        JibeRcsEnabler jibeRcsEnabler = new JibeRcsEnabler(this.mContext);
        this.mJibeRcsEnabler = jibeRcsEnabler;
        this.mSequentialInitializer.add(jibeRcsEnabler);
        IMSLog.i(str2, "Creating RegistrationManager.");
        Context context2 = this.mContext;
        RegistrationManagerBase registrationManagerBase = new RegistrationManagerBase(looper, this, context2, this.mPdnController, this.mSimManagers, TelephonyManagerWrapper.getInstance(context2), this.mCmcAccountManager, this.mRcsPolicyManager);
        this.mRegistrationManager = registrationManagerBase;
        this.mSequentialInitializer.add(registrationManagerBase);
        IMSLog.i(str2, "Creating ConfigModule.");
        ConfigModule configModule = new ConfigModule(looper, this.mContext, this.mRegistrationManager);
        this.mConfigModule = configModule;
        this.mSequentialInitializer.add(configModule);
        IMSLog.i(str2, "Creating HandlerFactory.");
        HandlerFactory createStackHandler = HandlerFactory.createStackHandler(looper, this.mContext, this);
        this.mHandlerFactory = createStackHandler;
        this.mSequentialInitializer.add(createStackHandler);
        IMSLog.i(str2, "Creating ServiceModuleManager.");
        ServiceModuleManager serviceModuleManager = new ServiceModuleManager(looper, this.mContext, this, this.mSimManagers, this.mRegistrationManager, this.mHandlerFactory);
        this.mServiceModuleManager = serviceModuleManager;
        this.mSequentialInitializer.add(serviceModuleManager);
        IMSLog.i(str2, "Creating AECModule.");
        AECModule aECModule = new AECModule(looper, this.mContext);
        this.mAECModule = aECModule;
        this.mSequentialInitializer.add(aECModule);
        IMSLog.i(str2, "Creating GeolocationController.");
        GeolocationController geolocationController = new GeolocationController(this.mContext, looper, this.mRegistrationManager);
        this.mGeolocationController = geolocationController;
        this.mSequentialInitializer.add(geolocationController);
        CallStateTracker callStateTracker = new CallStateTracker(this.mContext, this.mCoreHandler, this.mServiceModuleManager);
        this.mCallStateTracker = callStateTracker;
        this.mSequentialInitializer.add(callStateTracker);
        IMSLog.i(str2, "Creating ImsDiagnosticMonitorNotificationManager.");
        ImsDiagnosticMonitorNotificationManager imsDiagnosticMonitorNotificationManager = new ImsDiagnosticMonitorNotificationManager(this.mContext, looper);
        this.mImsDiagMonitor = imsDiagnosticMonitorNotificationManager;
        this.mSequentialInitializer.add(imsDiagnosticMonitorNotificationManager);
        IMSLog.i(str2, "Creating NtpTimeController.");
        NtpTimeController ntpTimeController = new NtpTimeController(this.mContext, looper);
        this.mNtpTimeController = ntpTimeController;
        this.mSequentialInitializer.add(ntpTimeController);
        this.mRawSipManager = new RawSipManager(this.mContext);
        this.mRegistrationManager.setConfigModule(this.mConfigModule);
        this.mRegistrationManager.setGeolocationController(this.mGeolocationController);
        this.mRegistrationManager.setStackInterface(this.mHandlerFactory.getRegistrationStackAdaptor());
        this.mRcsPolicyManager.setRegistrationManager(this.mRegistrationManager);
        this.mDmConfigModule.setRegistrationManager(this.mRegistrationManager);
        this.mCmcConnectivityController = new CmcConnectivityController(looper, getRegistrationManager());
    }

    private void init() {
        IMSLog.i(LOG_TAG, "init started");
        this.mSequentialInitializer.forEach(new CloudMessageService$$ExternalSyntheticLambda0());
        this.mSequentialInitializer.clear();
        this.mRegistrationManager.setVolteServiceModule(this.mServiceModuleManager.getVolteServiceModule());
        SimManagerFactory.initInstances();
        this.mRawSipManager.init(this.mHandlerFactory.getRawSipHandler());
        registerFactoryResetReceiver();
        if (ValidationHelper.isTapiAuthorisationSupports()) {
            ServiceExtensionManager serviceExtensionManager = ServiceExtensionManager.getInstance(this.mContext);
            this.mServiceExtensionManager = serviceExtensionManager;
            serviceExtensionManager.start();
        }
        try {
            if (Build.VERSION.SEM_INT >= 2716) {
                SemImsServiceStub.makeSemImsService(this.mContext);
            }
        } catch (NoSuchFieldError e) {
            IMSLog.e(LOG_TAG, e.toString());
        }
        registerDefaultSmsPackageChangeReceiver();
        registerPackageManagerReceiver();
        registerUserUnlockReceiver();
        linkToPhoneDeath();
        checkGrantAppOpsPermission();
    }

    public String registerSimMobilityStatusListener(final ISimMobilityStatusListener iSimMobilityStatusListener, boolean z, int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        String str = LOG_TAG;
        IMSLog.d(str, i, "registerSimMobilityStatusListener: broadcast = " + z);
        if (i == -1) {
            IMSLog.d(str, "Requested registerSimMobilityStatusListener without phoneId. register it by all phoneId.");
            this.mSimManagers.forEach(new Consumer() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ImsServiceStub.this.lambda$registerSimMobilityStatusListener$1(iSimMobilityStatusListener, (ISimManager) obj);
                }
            });
        } else {
            this.mRegistrationManager.registerSimMobilityStatusListener(iSimMobilityStatusListener, z, i);
        }
        String tokenOfListener = getTokenOfListener(iSimMobilityStatusListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iSimMobilityStatusListener, tokenOfListener));
        return tokenOfListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$registerSimMobilityStatusListener$1(ISimMobilityStatusListener iSimMobilityStatusListener, ISimManager iSimManager) {
        this.mRegistrationManager.registerSimMobilityStatusListener(iSimMobilityStatusListener, iSimManager.getSimSlotIndex());
    }

    public boolean isSimMobilityActivated(int i) {
        return ImsUtil.isSimMobilityActivated(i);
    }

    public boolean isSimMobilityActivatedForRcs(int i) {
        return ImsUtil.isSimMobilityActivatedForRcs(i) || ImsUtil.isSimMobilityActivatedForAmRcs(this.mContext, i);
    }

    private boolean hasVoImsFeature(String str, int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i2);
        if (simManagerFromSimSlot == null) {
            IMSLog.d(LOG_TAG, i2, "hasVolteFeature - no simMgr");
            return true;
        }
        if ("mmtel".equalsIgnoreCase(str)) {
            z2 = true;
            z3 = false;
            z = false;
        } else if ("smsip".equalsIgnoreCase(str)) {
            z3 = true;
            z2 = false;
            z = false;
        } else {
            if (!"mmtel-video".equalsIgnoreCase(str)) {
                IMSLog.d(LOG_TAG, i2, "no VoLTE feature, no need to check mnoInfo");
                return true;
            }
            z = true;
            z2 = false;
            z3 = false;
        }
        if (i == 18) {
            z4 = true;
            z2 = false;
        } else {
            z4 = false;
        }
        ContentValues mnoInfo = simManagerFromSimSlot.getMnoInfo();
        if (mnoInfo.size() == 0) {
            IMSLog.d(LOG_TAG, i2, "hasVoImsFeature - mnoInfo's size is 0");
            return false;
        }
        int intValue = CollectionUtils.getIntValue(mnoInfo, ISimManager.KEY_IMSSWITCH_TYPE, -1);
        if (intValue == -1) {
            IMSLog.d(LOG_TAG, i2, "hasVoImsFeature - imsswitchType not exist");
            return false;
        }
        if (intValue == 0 || intValue == 2) {
            IMSLog.d(LOG_TAG, i2, "hasVoImsFeature - No SIM or GCF or LABSIM or Softphone or Default ImsSwitch");
            return true;
        }
        if (!CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, false)) {
            IMSLog.d(LOG_TAG, i2, "hasVoImsFeature - " + ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS + " false");
            return false;
        }
        if (z4 && !CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, false)) {
            IMSLog.d(LOG_TAG, i2, "hasVoImsFeature - " + ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI + " false");
            return false;
        }
        if (z2 && !CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE, false)) {
            IMSLog.d(LOG_TAG, i2, "hasVoImsFeature - " + ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE + " false");
        } else if (z3 && !CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP, false)) {
            IMSLog.d(LOG_TAG, i2, "hasVoImsFeature - " + ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP + " false");
        } else {
            if (!z || CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL, false)) {
                return true;
            }
            IMSLog.d(LOG_TAG, i2, "hasVoImsFeature - " + ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL + " false");
        }
        return false;
    }

    private void changeOpModeByRcsSwtich(boolean z, boolean z2, int i) {
        int parseInt;
        if (z != z2) {
            String readStringParamWithPath = RcsConfigurationHelper.readStringParamWithPath(this.mContext, ImsUtil.getPathWithPhoneId("info/tc_popup_user_accept", i));
            if (readStringParamWithPath != null) {
                try {
                    parseInt = Integer.parseInt(readStringParamWithPath);
                } catch (NumberFormatException unused) {
                    IMSLog.e(LOG_TAG, i, "Error while parsing integer in getIntValue() - NumberFormatException");
                }
                this.mConfigModule.changeOpMode(z2, i, parseInt);
            }
            parseInt = -1;
            this.mConfigModule.changeOpMode(z2, i, parseInt);
        }
    }

    private void enableRcsMainSwitchByPhoneId(boolean z, int i) {
        boolean z2 = DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.RCS, i) == 1;
        String str = LOG_TAG;
        IMSLog.d(str, i, "enableRcsMainSwitchByPhoneId: oldValue: " + z2 + ", newValue: " + z);
        changeOpModeByRcsSwtich(z2, z, i);
        if (SimUtil.getSimMno(i) == Mno.SKT && !z) {
            IMSLog.d(str, i, "enableRcs: Ignore RCS disable for SKT until server responds");
            return;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            DmConfigHelper.setImsSwitch(this.mContext, DeviceConfigManager.RCS, z, i);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    private void dump(PrintWriter printWriter) {
        CriticalLogger.getInstance().flush();
        this.mContext.enforceCallingOrSelfPermission("android.permission.DUMP", "Permission Denial: can't dump ims from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
        IMSLog.prepareDump(this.mContext, printWriter);
        if (this.mDumpExecutor == null) {
            this.mDumpExecutor = Executors.newSingleThreadExecutor();
        }
        SimpleEventLog simpleEventLog = this.mEventLog;
        StringBuilder sb = new StringBuilder();
        sb.append("SimMobility Feature ");
        sb.append(SimUtil.isSimMobilityFeatureEnabled() ? "Enabled" : "Disabled");
        simpleEventLog.add(sb.toString());
        final SimpleEventLog simpleEventLog2 = this.mEventLog;
        Objects.requireNonNull(simpleEventLog2);
        Runnable runnable = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                SimpleEventLog.this.dump();
            }
        };
        Runnable runnable2 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                SimManagerFactory.dump();
            }
        };
        final RegistrationManagerBase registrationManagerBase = this.mRegistrationManager;
        Objects.requireNonNull(registrationManagerBase);
        Runnable runnable3 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                RegistrationManagerBase.this.dump();
            }
        };
        final PdnController pdnController = this.mPdnController;
        Objects.requireNonNull(pdnController);
        Runnable runnable4 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                PdnController.this.dump();
            }
        };
        final ConfigModule configModule = this.mConfigModule;
        Objects.requireNonNull(configModule);
        Runnable runnable5 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                ConfigModule.this.dump();
            }
        };
        final DmConfigModule dmConfigModule = this.mDmConfigModule;
        Objects.requireNonNull(dmConfigModule);
        Runnable runnable6 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                DmConfigModule.this.dump();
            }
        };
        final IAECModule iAECModule = this.mAECModule;
        Objects.requireNonNull(iAECModule);
        Runnable runnable7 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                IAECModule.this.dump();
            }
        };
        final CmcAccountManager cmcAccountManager = this.mCmcAccountManager;
        Objects.requireNonNull(cmcAccountManager);
        Runnable runnable8 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                CmcAccountManager.this.dump();
            }
        };
        final WfcEpdgManager wfcEpdgManager = this.mWfcEpdgManager;
        Objects.requireNonNull(wfcEpdgManager);
        Runnable runnable9 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                WfcEpdgManager.this.dump();
            }
        };
        final GeolocationController geolocationController = this.mGeolocationController;
        Objects.requireNonNull(geolocationController);
        Runnable runnable10 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                GeolocationController.this.dump();
            }
        };
        final PreciseAlarmManager preciseAlarmManager = PreciseAlarmManager.getInstance(this.mContext);
        Objects.requireNonNull(preciseAlarmManager);
        Runnable runnable11 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                PreciseAlarmManager.this.dump();
            }
        };
        final ImsAutoUpdate imsAutoUpdate = ImsAutoUpdate.getInstance(this.mContext, 0);
        Objects.requireNonNull(imsAutoUpdate);
        Runnable runnable12 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                ImsAutoUpdate.this.dump();
            }
        };
        final ImsAutoUpdate imsAutoUpdate2 = ImsAutoUpdate.getInstance(this.mContext, 1);
        Objects.requireNonNull(imsAutoUpdate2);
        Runnable runnable13 = new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                ImsAutoUpdate.this.dump();
            }
        };
        final ImsSimMobilityUpdate imsSimMobilityUpdate = ImsSimMobilityUpdate.getInstance(this.mContext);
        Objects.requireNonNull(imsSimMobilityUpdate);
        Stream.of((Object[]) new Runnable[]{runnable, runnable2, runnable3, runnable4, runnable5, runnable6, runnable7, runnable8, runnable9, runnable10, runnable11, runnable12, runnable13, new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                ImsSimMobilityUpdate.this.dump();
            }
        }}).forEach(new Consumer() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda14
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsServiceStub.this.lambda$dump$2((Runnable) obj);
            }
        });
        final ServiceModuleManager serviceModuleManager = this.mServiceModuleManager;
        Objects.requireNonNull(serviceModuleManager);
        dump(new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ServiceModuleManager.this.dump();
            }
        }, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
        dump(new Runnable() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                ImsServiceStub.this.lambda$dump$3();
            }
        }, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
        IMSLog.postDump(printWriter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dump$2(Runnable runnable) {
        dump(runnable, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dump$3() {
        this.mContext.getContentResolver().call(Uri.parse(ImsConstants.Uris.CONFIG_URI), "dump", (String) null, (Bundle) null);
    }

    private void dump(Runnable runnable, long j) {
        Future<?> future = null;
        try {
            future = this.mDumpExecutor.submit(runnable);
            future.get(j, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | RuntimeException | ExecutionException | TimeoutException e) {
            Optional.ofNullable(future).ifPresent(new Consumer() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda27
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((Future) obj).cancel(true);
                }
            });
            String str = "dump: Exception occurs! " + e;
            String str2 = LOG_TAG;
            IMSLog.e(str2, str);
            IMSLog.dump(str2, str);
            e.printStackTrace();
        }
    }

    private boolean isPermissionGranted() {
        return this.mContext.checkCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE") == 0 || this.mContext.checkCallingOrSelfPermission(PERMISSION) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void factoryReset(int i) {
        if (i < 0 || i >= getPhoneCount()) {
            IMSLog.e(LOG_TAG, i, "factoryReset : invalid phoneId");
            return;
        }
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null || simManagerFromSimSlot.hasNoSim()) {
            IMSLog.e(LOG_TAG, i, "factoryReset : skip reset due to no SIM");
            return;
        }
        String str = LOG_TAG;
        IMSLog.i(str, i, "factoryReset");
        boolean z = getBoolean(i, GlobalSettingsConstants.Registration.VOLTE_DOMESTIC_DEFAULT_ENABLED, true);
        boolean z2 = getBoolean(i, GlobalSettingsConstants.Registration.VIDEO_DEFAULT_ENABLED, true);
        IMSLog.d(str, i, "reset to default] Volte : " + z + ", Video : " + z2);
        ImsConstants.SystemSettings.setVoiceCallType(this.mContext, !z ? 1 : 0, i);
        ImsConstants.SystemSettings.setVideoCallType(this.mContext, !z2 ? 1 : 0, i);
    }

    public int getPhoneCount() {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return SimUtil.getPhoneCount();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void setIsimLoaded() {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mSimManager.setIsimLoaded();
    }

    public void setSimRefreshed() {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mSimManager.setSimRefreshed();
    }

    public int setActiveImpu(int i, String str, String str2) throws RemoteException {
        Context context = this.mContext;
        String str3 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str3);
        IMSLog.d(str3, i, "setActiveImpu: impu " + str + " service " + str2 + " to phoneId" + i);
        this.mServiceModuleManager.getVolteServiceModule().setActiveImpu(i, str);
        return 0;
    }

    public int setActiveMsisdn(int i, String str, String str2) throws RemoteException {
        Context context = this.mContext;
        String str3 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str3);
        IMSLog.d(str3, i, "setActiveMsisdn: msisdn " + IMSLog.checker(str) + " service " + str2);
        if (TextUtils.isEmpty(str2)) {
            return -1;
        }
        if (TextUtils.isEmpty(str)) {
            IMSLog.d(str3, i, "setActiveMsisdn: unset activeMsisdn.");
            return setActiveImpu(i, null, str2);
        }
        ImsUri normalizedUri = this.mServiceModuleManager.getVolteServiceModule().getNormalizedUri(i, str);
        if (normalizedUri == null) {
            IMSLog.e(str3, i, "setActiveMsisdn: not found!");
            return -2;
        }
        return setActiveImpu(i, normalizedUri.toString(), str2);
    }

    public void sendVerificationCode(String str, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mConfigModule.sendVerificationCode(str, i);
    }

    public void sendMsisdnNumber(String str, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mConfigModule.sendMsisdnNumber(str, i);
    }

    public void sendIidToken(String str, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mConfigModule.sendIidToken(str, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public int getNetworkType(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        int currentNetwork = this.mRegistrationManager.getCurrentNetwork(i);
        if (currentNetwork < 1 || currentNetwork > 17) {
            return currentNetwork == 18 ? 2 : 0;
        }
        return 1;
    }

    public String getAvailableNetworkType(String str) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mRegistrationManager.getAvailableNetworkType(str);
    }

    public String registerImSessionListener(IImSessionListener iImSessionListener) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, "registerImSessionListener:");
        IImModule imModule = this.mServiceModuleManager.getImModule();
        if (imModule != null) {
            imModule.registerImSessionListener(iImSessionListener);
        }
        String tokenOfListener = getTokenOfListener(iImSessionListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iImSessionListener, tokenOfListener));
        return tokenOfListener;
    }

    public String registerImSessionListenerByPhoneId(IImSessionListener iImSessionListener, int i) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "registerImSessionListenerByPhoneId");
        IImModule imModule = this.mServiceModuleManager.getImModule();
        if (imModule != null) {
            imModule.registerImSessionListenerByPhoneId(iImSessionListener, i);
        }
        String tokenOfListener = getTokenOfListener(iImSessionListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iImSessionListener, tokenOfListener));
        return tokenOfListener;
    }

    public void unregisterImSessionListener(String str) {
        IImModule imModule;
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IMSLog.d(str2, "unregisterImSessionListener:");
        IImSessionListener removeCallback = removeCallback(str);
        if (removeCallback == null || (imModule = this.mServiceModuleManager.getImModule()) == null) {
            return;
        }
        imModule.unregisterImSessionListener(removeCallback);
    }

    public void unregisterImSessionListenerByPhoneId(String str, int i) {
        IImModule imModule;
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IMSLog.d(str2, i, "unregisterImSessionListenerByPhoneId");
        IImSessionListener removeCallback = removeCallback(str);
        if (removeCallback == null || (imModule = this.mServiceModuleManager.getImModule()) == null) {
            return;
        }
        imModule.unregisterImSessionListenerByPhoneId(removeCallback, i);
    }

    public String registerImsOngoingFtListener(IImsOngoingFtEventListener iImsOngoingFtEventListener) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, "registerImsOngoingFtListener");
        String tokenOfListener = getTokenOfListener(iImsOngoingFtEventListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iImsOngoingFtEventListener, tokenOfListener));
        IImModule imModule = this.mServiceModuleManager.getImModule();
        if (imModule != null) {
            imModule.registerImsOngoingFtListener(iImsOngoingFtEventListener);
        }
        return tokenOfListener;
    }

    public String registerImsOngoingFtListenerByPhoneId(IImsOngoingFtEventListener iImsOngoingFtEventListener, int i) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "registerImsOngoingFtListenerByPhoneId");
        IImModule imModule = this.mServiceModuleManager.getImModule();
        String tokenOfListener = getTokenOfListener(iImsOngoingFtEventListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iImsOngoingFtEventListener, tokenOfListener));
        if (imModule != null) {
            imModule.registerImsOngoingFtListenerByPhoneId(iImsOngoingFtEventListener, i);
        }
        return tokenOfListener;
    }

    public void unregisterImsOngoingFtListener(String str) {
        IImModule imModule;
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IMSLog.d(str2, "unregisterImsOngoingFtListener");
        IImsOngoingFtEventListener removeCallback = removeCallback(str);
        if (removeCallback == null || (imModule = this.mServiceModuleManager.getImModule()) == null) {
            return;
        }
        imModule.unregisterImsOngoingListener(removeCallback);
    }

    public void unregisterImsOngoingFtListenerByPhoneId(String str, int i) {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IMSLog.d(str2, i, "unregisterImsOngoingFtListenerByPhoneId");
        IImModule imModule = this.mServiceModuleManager.getImModule();
        IImsOngoingFtEventListener iImsOngoingFtEventListener = (IImsOngoingFtEventListener) removeCallback(str);
        if (iImsOngoingFtEventListener == null || imModule == null) {
            return;
        }
        imModule.unregisterImsOngoingListenerByPhoneId(iImsOngoingFtEventListener, i);
    }

    public String registerAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener, int i) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "registerAutoConfigurationListener");
        this.mConfigModule.registerAutoConfigurationListener(iAutoConfigurationListener, i);
        String tokenOfListener = getTokenOfListener(iAutoConfigurationListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iAutoConfigurationListener, tokenOfListener));
        return tokenOfListener;
    }

    public void unregisterAutoConfigurationListener(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        IMSLog.d(str2, i, "unregisterAutoConfigurationListener");
        IAutoConfigurationListener removeCallback = removeCallback(str);
        if (removeCallback != null) {
            this.mConfigModule.unregisterAutoConfigurationListener(removeCallback, i);
        }
    }

    public String registerSimMobilityStatusListenerByPhoneId(ISimMobilityStatusListener iSimMobilityStatusListener, int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        IMSLog.d(LOG_TAG, i, "registerSimMobilityStatusListenerByPhoneId");
        return registerSimMobilityStatusListener(iSimMobilityStatusListener, true, i);
    }

    public void unregisterSimMobilityStatusListenerByPhoneId(String str, int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IMSLog.d(LOG_TAG, i, "unregisterSimMobilityStatusListenerByPhoneId");
        final ISimMobilityStatusListener removeCallback = removeCallback(str);
        if (removeCallback != null) {
            if (i == -1) {
                this.mSimManagers.forEach(new Consumer() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ImsServiceStub.this.lambda$unregisterSimMobilityStatusListenerByPhoneId$5(removeCallback, (ISimManager) obj);
                    }
                });
            } else {
                this.mRegistrationManager.unregisterSimMobilityStatusListener(removeCallback, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$unregisterSimMobilityStatusListenerByPhoneId$5(ISimMobilityStatusListener iSimMobilityStatusListener, ISimManager iSimManager) {
        this.mRegistrationManager.unregisterSimMobilityStatusListener(iSimMobilityStatusListener, iSimManager.getSimSlotIndex());
    }

    public boolean isRegistered() throws RemoteException {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        RegistrationManagerBase registrationManagerBase = this.mRegistrationManager;
        return (registrationManagerBase == null || registrationManagerBase.getRegistrationInfo() == null || this.mRegistrationManager.getRegistrationInfo().length <= 0) ? false : true;
    }

    public ImsRegistration[] getRegistrationInfo() throws RemoteException {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return this.mRegistrationManager.getRegistrationInfo();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ImsRegistration[] getRegistrationInfoByPhoneId(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        return this.mRegistrationManager.getRegistrationInfoByPhoneId(i);
    }

    public ImsRegistration getRegistrationInfoByServiceType(String str, int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        return this.mRegistrationManager.getRegistrationInfoByServiceType(str, i);
    }

    public ImsProfile[] getCurrentProfile() {
        return getCurrentProfileForSlot(SimUtil.getActiveDataPhoneId());
    }

    public ImsProfile[] getCurrentProfileForSlot(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mRegistrationManager.getProfileList(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String getRcsProfileType(final int i) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        String str2 = (String) Optional.ofNullable(this.mRegistrationManager.getImsProfile(i, ImsProfile.PROFILE_TYPE.RCS)).map(new Function() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getRcsProfileType$6;
                lambda$getRcsProfileType$6 = ImsServiceStub.this.lambda$getRcsProfileType$6(i, (ImsProfile) obj);
                return lambda$getRcsProfileType$6;
            }
        }).orElse("");
        IMSLog.d(str, i, "getRcsProfileType: rcsProfile = " + str2);
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getRcsProfileType$6(int i, ImsProfile imsProfile) {
        return ConfigUtil.getRcsProfileWithFeature(this.mContext, i, imsProfile);
    }

    public int registerAdhocProfile(ImsProfile imsProfile) {
        return registerAdhocProfileByPhoneId(imsProfile, SimUtil.getActiveDataPhoneId());
    }

    public int registerAdhocProfileByPhoneId(ImsProfile imsProfile, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mRegistrationManager.registerProfile(imsProfile, i);
    }

    public void deregisterAdhocProfile(int i) throws RemoteException {
        deregisterAdhocProfileByPhoneId(i, SimUtil.getActiveDataPhoneId());
    }

    public void deregisterAdhocProfileByPhoneId(int i, int i2) throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mRegistrationManager.deregisterProfile(i, i2);
    }

    public void registerProfile(List list) {
        registerProfileByPhoneId(list, SimUtil.getActiveDataPhoneId());
    }

    public void registerProfileByPhoneId(List list, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mRegistrationManager.registerProfile((List<Integer>) list, i);
    }

    public void deregisterProfile(List list, boolean z) {
        deregisterProfileByPhoneId(list, z, SimUtil.getActiveDataPhoneId());
    }

    public void deregisterProfileByPhoneId(List list, boolean z, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mRegistrationManager.deregisterProfile((List<Integer>) list, z, i);
    }

    public void sendTryRegister() {
        sendTryRegisterByPhoneId(SimUtil.getActiveDataPhoneId());
    }

    public void sendTryRegisterByPhoneId(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mConfigModule.setRegisterFromApp(true, i);
    }

    public void sendTryRegisterCms(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mConfigModule.setRegisterFromApp(true, i);
    }

    public void forcedUpdateRegistration(ImsProfile imsProfile) {
        forcedUpdateRegistrationByPhoneId(imsProfile, SimUtil.getActiveDataPhoneId());
    }

    public void forcedUpdateRegistrationByPhoneId(ImsProfile imsProfile, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mRegistrationManager.forcedUpdateRegistration(imsProfile, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void sendDeregister(int i, int i2) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mRegistrationManager.sendDeregister(i, i2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void suspendRegister(boolean z, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mRegistrationManager.suspendRegister(z, i);
    }

    public int updateRegistration(ImsProfile imsProfile, int i) throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mRegistrationManager.updateRegistration(imsProfile, i);
    }

    public boolean isQSSSuccessAuthAndLogin(int i) throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mServiceModuleManager.getVolteServiceModule().isQSSSuccessAuthAndLogin(i);
    }

    public void setEmergencyPdnInfo(String str, String[] strArr, String str2, int i) {
        Context context = this.mContext;
        String str3 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str3);
        IMSLog.d(str3, i, "ePDN setup failure was changed to onPreciseDataConnectionStateChanged");
    }

    public String registerEpdgListener(IEpdgListener iEpdgListener) {
        String str = LOG_TAG;
        IMSLog.d(str, "registerEpdgListener");
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, str);
        WfcEpdgManager wfcEpdgManager = this.mWfcEpdgManager;
        if (wfcEpdgManager != null) {
            wfcEpdgManager.registerEpdgHandoverListener(iEpdgListener);
        }
        String tokenOfListener = getTokenOfListener(iEpdgListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iEpdgListener, tokenOfListener));
        return tokenOfListener;
    }

    public void unRegisterEpdgListener(String str) {
        IEpdgListener removeCallback;
        WfcEpdgManager wfcEpdgManager;
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        if (TextUtils.isEmpty(str) || (removeCallback = removeCallback(str)) == null || (wfcEpdgManager = this.mWfcEpdgManager) == null) {
            return;
        }
        wfcEpdgManager.unRegisterEpdgHandoverListener(removeCallback);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void registerImsRegistrationListener(final IImsRegistrationListener iImsRegistrationListener) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        IMSLog.d(LOG_TAG, "Requested registerListener without phoneId. register it by all phoneId.");
        this.mSimManagers.forEach(new Consumer() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsServiceStub.this.lambda$registerImsRegistrationListener$7(iImsRegistrationListener, (ISimManager) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$registerImsRegistrationListener$7(IImsRegistrationListener iImsRegistrationListener, ISimManager iSimManager) {
        this.mRegistrationManager.registerListener(iImsRegistrationListener, iSimManager.getSimSlotIndex());
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void unregisterImsRegistrationListener(final IImsRegistrationListener iImsRegistrationListener) throws RemoteException {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        IMSLog.d(LOG_TAG, "Requested unregisterListener without phoneId. unregister it by all phoneId.");
        this.mSimManagers.forEach(new Consumer() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImsServiceStub.this.lambda$unregisterImsRegistrationListener$8(iImsRegistrationListener, (ISimManager) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$unregisterImsRegistrationListener$8(IImsRegistrationListener iImsRegistrationListener, ISimManager iSimManager) {
        this.mRegistrationManager.unregisterListener(iImsRegistrationListener, iSimManager.getSimSlotIndex());
    }

    public String registerImsRegistrationListenerForSlot(IImsRegistrationListener iImsRegistrationListener, int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        IMSLog.d(LOG_TAG, i, "registerImsRegistrationListenerForSlot");
        return registerImsRegistrationListener(iImsRegistrationListener, true, i);
    }

    public void unregisterImsRegistrationListenerForSlot(String str, int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String str2 = LOG_TAG;
        IMSLog.d(str2, i, "unregisterImsRegistrationListenerForSlot");
        final IImsRegistrationListener removeCallback = removeCallback(str);
        if (removeCallback != null) {
            if (i == -1) {
                IMSLog.d(str2, "Requested unRegisterListener without phoneId. register it by all phoneId.");
                this.mSimManagers.forEach(new Consumer() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda26
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ImsServiceStub.this.lambda$unregisterImsRegistrationListenerForSlot$9(removeCallback, (ISimManager) obj);
                    }
                });
            } else {
                this.mRegistrationManager.unregisterListener(removeCallback, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$unregisterImsRegistrationListenerForSlot$9(IImsRegistrationListener iImsRegistrationListener, ISimManager iSimManager) {
        this.mRegistrationManager.unregisterListener(iImsRegistrationListener, iSimManager.getSimSlotIndex());
    }

    public String registerCmcRegistrationListenerForSlot(IImsRegistrationListener iImsRegistrationListener, int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        IMSLog.d(LOG_TAG, i, "registerCmcRegistrationListenerForSlot");
        this.mRegistrationManager.registerCmcRegiListener(iImsRegistrationListener, i);
        String tokenOfListener = getTokenOfListener(iImsRegistrationListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iImsRegistrationListener, tokenOfListener));
        return tokenOfListener;
    }

    public void unregisterCmcRegistrationListenerForSlot(String str, int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IMSLog.d(LOG_TAG, i, "unregisterCmcRegistrationListenerForSlot");
        IImsRegistrationListener removeCallback = removeCallback(str);
        if (removeCallback != null) {
            this.mRegistrationManager.unregisterCmcRegiListener(removeCallback, i);
        }
    }

    public void registerDialogEventListener(int i, IDialogEventListener iDialogEventListener) throws RemoteException {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "registerDialogEventListener");
        this.mServiceModuleManager.getVolteServiceModule().registerDialogEventListener(i, iDialogEventListener);
    }

    public void unregisterDialogEventListener(int i, IDialogEventListener iDialogEventListener) throws RemoteException {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "unregisterDialogEventListener");
        this.mServiceModuleManager.getVolteServiceModule().unregisterDialogEventListener(i, iDialogEventListener);
    }

    public String registerDialogEventListenerByToken(int i, IDialogEventListener iDialogEventListener) throws RemoteException {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "registerDialogEventListener");
        this.mServiceModuleManager.getVolteServiceModule().registerDialogEventListener(i, iDialogEventListener);
        String tokenOfListener = getTokenOfListener(iDialogEventListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iDialogEventListener, tokenOfListener));
        return tokenOfListener;
    }

    public void unregisterDialogEventListenerByToken(int i, String str) throws RemoteException {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IMSLog.d(str2, i, "unregisterDialogEventListener");
        IDialogEventListener removeCallback = removeCallback(str);
        if (removeCallback != null) {
            this.mServiceModuleManager.getVolteServiceModule().unregisterDialogEventListener(i, removeCallback);
        }
    }

    public DialogEvent getLastDialogEvent(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mServiceModuleManager.getVolteServiceModule().getLastDialogEvent(i);
    }

    public int getMasterValue(int i) throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return 0;
    }

    public String getMasterStringValue(int i) throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return "";
    }

    public void setProvisionedValue(int i, int i2) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
    }

    public void setProvisionedStringValue(int i, String str) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
    }

    public boolean isImsEnabled() {
        return isImsEnabledByPhoneId(0);
    }

    public boolean isImsEnabledByPhoneId(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.IMS, i) == 1;
    }

    public boolean isVoLteEnabled() {
        return isVoLteEnabledByPhoneId(0);
    }

    public boolean isVoLteEnabledByPhoneId(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return DmConfigHelper.getImsSwitchValue(this.mContext, "volte", i) == 1;
    }

    public boolean isVolteEnabledFromNetwork(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return this.mServiceModuleManager.getVolteServiceModule().isVolteServiceStatus(i);
    }

    public boolean isVolteSupportECT() {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return this.mServiceModuleManager.getVolteServiceModule().isVolteSupportECT();
    }

    public boolean isVolteSupportEctByPhoneId(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return this.mServiceModuleManager.getVolteServiceModule().isVolteSupportECT(i);
    }

    public boolean isRcsEnabled() {
        return isRcsEnabledByPhoneId(SimUtil.getActiveDataPhoneId());
    }

    public boolean isServiceEnabled(String str) {
        return isServiceEnabledByPhoneId(str, 0);
    }

    public boolean hasCrossSimImsService(final int i) {
        Set<String> hashSet = new HashSet<>();
        ImsProfile[] currentProfileForSlot = getCurrentProfileForSlot(i);
        int length = currentProfileForSlot.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            ImsProfile imsProfile = currentProfileForSlot[i2];
            if (imsProfile == null || imsProfile.getPdnType() != 11) {
                i2++;
            } else {
                hashSet = imsProfile.getServiceSet(18);
                IRegistrationGovernor registrationGovernorByProfileId = this.mRegistrationManager.getRegistrationGovernorByProfileId(imsProfile.getId(), i);
                if (registrationGovernorByProfileId != null) {
                    hashSet = registrationGovernorByProfileId.applyDataSimPolicyForCrossSim(hashSet, i);
                }
            }
        }
        hashSet.removeIf(new Predicate() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda5
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$hasCrossSimImsService$10;
                lambda$hasCrossSimImsService$10 = ImsServiceStub.this.lambda$hasCrossSimImsService$10(i, (String) obj);
                return lambda$hasCrossSimImsService$10;
            }
        });
        return !hashSet.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$hasCrossSimImsService$10(int i, String str) {
        return !isServiceAvailable(str, 18, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isCrossSimCallingSupportedByPhoneId(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        if (!isCrossSimCallingSupported()) {
            return false;
        }
        int i2 = i + 1;
        return (Settings.System.getInt(this.mContext.getContentResolver(), "cross_sim_menu_enable", 0) & i2) == i2;
    }

    public boolean isCrossSimCallingSupported() {
        if (isPermissionGranted()) {
            return TelephonyManagerWrapper.getInstance(this.mContext).getPhoneCount() > 1 && Settings.System.getInt(this.mContext.getContentResolver(), "cross_sim_menu_enable", -1) > 0;
        }
        throw new SecurityException(LOG_TAG + " Permission denied");
    }

    public boolean isCrossSimCallingRegistered(int i) {
        ImsRegistration[] registrationInfoByPhoneId = getRegistrationInfoByPhoneId(i);
        if (registrationInfoByPhoneId == null) {
            return false;
        }
        for (ImsRegistration imsRegistration : registrationInfoByPhoneId) {
            if (imsRegistration != null && imsRegistration.getImsProfile().getPdnType() == 11 && imsRegistration.getEpdgStatus() && imsRegistration.isEpdgOverCellularData() && imsRegistration.getRegiRat() == 18) {
                IMSLog.i(LOG_TAG, i, "isCrossSimCallingRegistered true");
                return true;
            }
        }
        IMSLog.i(LOG_TAG, i, "isCrossSimCallingRegistered false");
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isServiceAvailable(final String str, final int i, int i2) {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        if (!hasVoImsFeature(str, i, i2)) {
            IMSLog.i(str2, i2, "isServiceAvailable: VoImsFeature : (" + str + ") is not supported");
            return false;
        }
        if (ImsProfile.isRcsService(str) && (OmcCode.isSKTOmcCode() || OmcCode.isKTTOmcCode() || OmcCode.isLGTOmcCode())) {
            boolean z = false;
            for (ImsProfile imsProfile : getCurrentProfileForSlot(i2)) {
                if (imsProfile != null && ImsProfile.hasRcsService(imsProfile)) {
                    z = imsProfile.getSupportRcsAcrossSalesCode();
                }
            }
            String nWCode = OmcCode.getNWCode(i2);
            Mno simMno = SimUtil.getSimMno(i2);
            if (!nWCode.isEmpty() && !simMno.equalsWithSalesCode(simMno, nWCode) && !z) {
                IMSLog.i(LOG_TAG, i2, "isServiceAvailable: not matched with SIM :" + str);
                return false;
            }
        }
        boolean anyMatch = Arrays.stream(getCurrentProfileForSlot(i2)).anyMatch(new Predicate() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$isServiceAvailable$11;
                lambda$isServiceAvailable$11 = ImsServiceStub.lambda$isServiceAvailable$11(str, i, (ImsProfile) obj);
                return lambda$isServiceAvailable$11;
            }
        });
        boolean isServiceEnabledByPhoneId = isServiceEnabledByPhoneId(str, i2);
        IMSLog.i(LOG_TAG, i2, "isServiceAvailable: " + str + ", rat: " + i + ", profileFind:" + anyMatch + ", Enabled:" + isServiceEnabledByPhoneId);
        return anyMatch && isServiceEnabledByPhoneId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isServiceAvailable$11(String str, int i, ImsProfile imsProfile) {
        return (imsProfile == null || imsProfile.hasEmergencySupport() || !imsProfile.hasService(str, i)) ? false : true;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isServiceEnabledByPhoneId(String str, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return DmConfigHelper.getImsSwitchValue(this.mContext, str, i) == 1;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean hasVoLteSim() {
        return hasVoLteSimByPhoneId(SimUtil.getActiveDataPhoneId());
    }

    public boolean hasVoLteSimByPhoneId(int i) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        RegistrationManagerBase registrationManagerBase = this.mRegistrationManager;
        if (registrationManagerBase != null) {
            return registrationManagerBase.hasVoLteSim(i);
        }
        IMSLog.d(str, i, "hasVoLteSimByPhoneId - no mRegistrationManager");
        return true;
    }

    public void enableService(String str, boolean z) {
        enableServiceByPhoneId(str, z, 0);
    }

    public void enableServiceByPhoneId(String str, boolean z, int i) {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        String processNameById = PackageUtils.getProcessNameById(getContext(), Binder.getCallingPid());
        if (!"com.samsung.advp.imssettings".equalsIgnoreCase(processNameById) && !"com.android.phone".equals(processNameById)) {
            IMSLog.d(str2, i, "deprecated] enableService is called by " + processNameById);
            return;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (!TextUtils.equals(str, ImsConstants.SystemSettings.VOLTE_SLOT1.getName()) && !TextUtils.equals(str, ImsConstants.SystemSettings.VILTE_SLOT1.getName())) {
                if (TextUtils.equals(str, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName())) {
                    DmConfigHelper.setImsUserSetting(this.mContext, str, z ? 1 : 0, i);
                } else {
                    DmConfigHelper.setImsSwitch(this.mContext, str, z, i);
                }
            }
            Context context2 = this.mContext;
            if (!z) {
                r3 = 1;
            }
            DmConfigHelper.setImsUserSetting(context2, str, r3, i);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void enableVoLte(boolean z) {
        enableVoLteByPhoneId(z, 0);
    }

    public void enableVoLteByPhoneId(boolean z, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        DmConfigHelper.setImsSwitch(this.mContext, "volte", z, i);
    }

    public void enableRcs(boolean z) {
        enableRcsByPhoneId(z, 0);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void enableRcsByPhoneId(boolean z, int i) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        if (z && !ConfigUtil.checkMdmRcsStatus(this.mContext, i)) {
            IMSLog.e(str, i, "RCS isn't allowed by MDM. Don't enable RCS");
            return;
        }
        if ("com.samsung.advp.imssettings".equalsIgnoreCase(PackageUtils.getProcessNameById(getContext(), Binder.getCallingPid()))) {
            IMSLog.d(str, i, "Called by ImsSettings app. Change main switch value.");
            enableRcsMainSwitchByPhoneId(z, i);
            return;
        }
        boolean z2 = ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, 1, i) == 1;
        IMSLog.i(str, i, "enableRcs: oldValue: " + z2 + ", newValue: " + z);
        changeOpModeByRcsSwtich(z2, z, i);
        if (SimUtil.getSimMno(i) == Mno.SKT && !z) {
            IMSLog.d(str, i, "enableRcs: Ignore RCS disable for SKT until server responds");
        } else {
            ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, z ? 1 : 0, i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public int[] getCallCount(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return new int[]{this.mServiceModuleManager.getVolteServiceModule().getTotalCallCount(i), this.mServiceModuleManager.getVolteServiceModule().getVideoCallCount(i), this.mServiceModuleManager.getVolteServiceModule().getDowngradedCallCount(i), this.mServiceModuleManager.getVolteServiceModule().getE911CallCount(i)};
    }

    public int getEpsFbCallCount(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return this.mServiceModuleManager.getVolteServiceModule().getEpsFbCallCount(i);
    }

    public int getNrSaCallCount(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return this.mServiceModuleManager.getVolteServiceModule().getNrSaCallCount(i);
    }

    public boolean isForbidden() {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return this.mRegistrationManager.isInvite403DisabledService(SimUtil.getActiveDataPhoneId());
    }

    public boolean isForbiddenByPhoneId(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return this.mRegistrationManager.isInvite403DisabledService(i);
    }

    public void transferCall(String str, String str2) throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mServiceModuleManager.getVolteServiceModule().transferCall(str, str2);
    }

    public int startLocalRingBackTone(int i, int i2, int i3) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IVolteServiceModule volteServiceModule = this.mServiceModuleManager.getVolteServiceModule();
        if (volteServiceModule == null) {
            IMSLog.e(str, "VolteServiceModule is not ready");
            return -1;
        }
        return volteServiceModule.startLocalRingBackTone(i, i2, i3);
    }

    public int stopLocalRingBackTone() {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IVolteServiceModule volteServiceModule = this.mServiceModuleManager.getVolteServiceModule();
        if (volteServiceModule == null) {
            IMSLog.e(str, "VolteServiceModule is not ready");
            return -1;
        }
        return volteServiceModule.stopLocalRingBackTone();
    }

    public void changeAudioPath(int i) {
        changeAudioPathForSlot(0, i);
    }

    public void changeAudioPathForSlot(int i, int i2) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IVolteServiceModule volteServiceModule = this.mServiceModuleManager.getVolteServiceModule();
        if (volteServiceModule == null) {
            IMSLog.e(str, i, "VolteServiceModule is not ready");
        } else {
            volteServiceModule.updateAudioInterface(i, i2);
        }
    }

    public boolean setVideocallType(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        ImsConstants.SystemSettings.VILTE_SLOT1.set(this.mContext, i);
        return true;
    }

    public int getVideocallType() {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + " Permission denied");
        }
        return ImsConstants.SystemSettings.VILTE_SLOT1.get(this.mContext, -1);
    }

    public void registerDmValueListener(IImsDmConfigListener iImsDmConfigListener) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, "registerDmValueListener:");
        this.mRegistrationManager.registerDmListener(iImsDmConfigListener);
    }

    public void unregisterDmValueListener(IImsDmConfigListener iImsDmConfigListener) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, "unregisterDmValueListener:");
        this.mRegistrationManager.unregisterDmListener(iImsDmConfigListener);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ContentValues getConfigValues(String[] strArr, int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mDmConfigModule.getConfigValues(strArr, i);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean updateConfigValues(ContentValues contentValues, int i, int i2) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mDmConfigModule.updateConfigValues(contentValues, i, i2);
    }

    public int startDmConfig(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mRegistrationManager.sendDmState(i, true);
        return this.mDmConfigModule.startDmConfig(i);
    }

    public void finishDmConfig(int i, int i2) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mRegistrationManager.sendDmState(i2, false);
        this.mDmConfigModule.finishDmConfig(i, i2);
    }

    public boolean isRttCall(int i) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, "isRttCall");
        return this.mServiceModuleManager.getVolteServiceModule().isRttCall(i);
    }

    public void setAutomaticMode(int i, boolean z) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "setAutomaticMode, mode=" + z);
        this.mServiceModuleManager.getVolteServiceModule().setAutomaticMode(i, z);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void setRttMode(int i, int i2) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "setRttMode, mode=" + i2);
        this.mServiceModuleManager.getVolteServiceModule().setRttMode(i, i2);
    }

    public int getRttMode(int i) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "getRttMode");
        return this.mServiceModuleManager.getVolteServiceModule().getRttMode();
    }

    public void sendRttMessage(String str) {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        IMSLog.d(str2, "sendRttMessage, mode=" + str);
        this.mServiceModuleManager.getVolteServiceModule().sendRttMessage(str);
    }

    public void sendRttSessionModifyResponse(int i, boolean z) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, "sendRttSessionModifyResponse, accept=" + z);
        this.mServiceModuleManager.getVolteServiceModule().sendRttSessionModifyResponse(i, z);
    }

    public void sendRttSessionModifyRequest(int i, boolean z) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, "sendRttSessionModifyRequest");
        this.mServiceModuleManager.getVolteServiceModule().sendRttSessionModifyRequest(i, z);
    }

    public String registerRttEventListener(int i, IRttEventListener iRttEventListener) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "registerRttEventListener");
        this.mServiceModuleManager.getVolteServiceModule().registerRttEventListener(i, iRttEventListener);
        String tokenOfListener = getTokenOfListener(iRttEventListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iRttEventListener, tokenOfListener));
        return tokenOfListener;
    }

    public void unregisterRttEventListener(int i, String str) {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IMSLog.d(str2, i, "unregisterRttEventListener");
        IRttEventListener removeCallback = removeCallback(str);
        if (removeCallback != null) {
            this.mServiceModuleManager.getVolteServiceModule().unregisterRttEventListener(i, removeCallback);
        }
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void triggerAutoConfigurationForApp(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        IAECModule iAECModule = this.mAECModule;
        if (iAECModule != null) {
            iAECModule.triggerAutoConfigForApp(i);
        }
    }

    public String getGlobalSettingsValueToString(String str, int i, String str2) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return getString(i, str, str2);
    }

    public int getGlobalSettingsValueToInteger(String str, int i, int i2) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return getInt(i, str, i2);
    }

    public boolean getGlobalSettingsValueToBoolean(String str, int i, boolean z) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return getBoolean(i, str, z);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public int getInt(int i, String str, int i2) {
        return GlobalSettingsManager.getInstance(this.mContext, i).getInt(str, i2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean getBoolean(int i, String str, boolean z) {
        return GlobalSettingsManager.getInstance(this.mContext, i).getBoolean(str, z);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String getString(int i, String str, String str2) {
        return GlobalSettingsManager.getInstance(this.mContext, i).getString(str, str2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String[] getStringArray(int i, String str, String[] strArr) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return GlobalSettingsManager.getInstance(this.mContext, i).getStringArray(str, strArr);
    }

    public void dump() {
        dump(null);
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        dump(printWriter);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IPdnController getPdnController() {
        return this.mPdnController;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ICmcAccountManager getCmcAccountManager() {
        return this.mCmcAccountManager;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IRcsPolicyManager getRcsPolicyManager() {
        return this.mRcsPolicyManager;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IServiceModuleManager getServiceModuleManager() {
        return this.mServiceModuleManager;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IRegistrationManager getRegistrationManager() {
        return this.mRegistrationManager;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IConfigModule getConfigModule() {
        return this.mConfigModule;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IHandlerFactory getHandlerFactory() {
        return this.mHandlerFactory;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IAECModule getAECModule() {
        return this.mAECModule;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ICmcConnectivityController getCmcConnectivityController() {
        return this.mCmcConnectivityController;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IGeolocationController getGeolocationController() {
        return this.mGeolocationController;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public INtpTimeController getNtpTimeController() {
        return this.mNtpTimeController;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IImsDiagMonitor getImsDiagMonitor() {
        return this.mImsDiagMonitor;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IFcmHandler getFcmHandler() {
        if (this.mFcmHandler == null) {
            this.mFcmHandler = new FcmHandler(this.mContext);
        }
        return this.mFcmHandler;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IIilManager getIilManager(int i) {
        if (this.mIilManagers.size() == 0) {
            return null;
        }
        return this.mIilManagers.get(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public List<ServiceModuleBase> getAllServiceModules() {
        return this.mServiceModuleManager.getAllServiceModules();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IWfcEpdgManager getWfcEpdgManager() {
        return this.mWfcEpdgManager;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IRawSipSender getRawSipSender() {
        return this.mRawSipManager;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void startAutoConfig(boolean z, Message message) {
        this.mConfigModule.startAutoConfig(z, message, SimUtil.getActiveDataPhoneId());
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String registerImsRegistrationListener(final IImsRegistrationListener iImsRegistrationListener, boolean z, int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        String str = LOG_TAG;
        IMSLog.d(str, i, "registerImsRegistrationListener: broadcast = " + z);
        if (i == -1) {
            IMSLog.d(str, "Requested registerListener without phoneId. register it by all phoneId.");
            this.mSimManagers.forEach(new Consumer() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ImsServiceStub.this.lambda$registerImsRegistrationListener$12(iImsRegistrationListener, (ISimManager) obj);
                }
            });
        } else {
            this.mRegistrationManager.registerListener(iImsRegistrationListener, z, i);
        }
        String tokenOfListener = getTokenOfListener(iImsRegistrationListener);
        this.mListenerTokenMap.put(tokenOfListener, new CallBack<>(iImsRegistrationListener, tokenOfListener));
        return tokenOfListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$registerImsRegistrationListener$12(IImsRegistrationListener iImsRegistrationListener, ISimManager iSimManager) {
        this.mRegistrationManager.registerListener(iImsRegistrationListener, iSimManager.getSimSlotIndex());
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isRcsEnabledByPhoneId(int i) {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, i, "isRcsEnabled:");
        return this.mConfigModule.isValidAcsVersion(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public Binder getBinder(String str) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mServiceModuleManager.getBinder(str);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public Binder getBinder(String str, String str2) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mServiceModuleManager.getBinder(str, str2);
    }

    public Binder getSemBinder() {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        return this.mServiceModuleManager.getSemBinder();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isDefaultDmValue(String str, int i) {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        if (ConfigConstants.ATCMD.OMADM_VALUE.equalsIgnoreCase(str)) {
            ContentValues configValues = this.mDmConfigModule.getConfigValues(new String[]{"93", "94", "31"}, i);
            boolean equalsIgnoreCase = "1".equalsIgnoreCase(configValues.getAsString("93"));
            boolean equalsIgnoreCase2 = "1".equalsIgnoreCase(configValues.getAsString("94"));
            boolean equalsIgnoreCase3 = "1".equalsIgnoreCase(configValues.getAsString("31"));
            IMSLog.d(str2, i, "OMADM Default Value [VoLTE : " + equalsIgnoreCase + ", LVC : " + equalsIgnoreCase2 + ", EAB : " + equalsIgnoreCase3 + "]");
            return equalsIgnoreCase && equalsIgnoreCase2 && equalsIgnoreCase3;
        }
        if (ConfigConstants.ATCMD.SMS_SETTING.equalsIgnoreCase(str)) {
            String asString = this.mDmConfigModule.getConfigValues(new String[]{"9"}, i).getAsString("9");
            IMSLog.d(str2, i, "SMS Setting Default Value : " + asString);
            return "3GPP2".equalsIgnoreCase(asString);
        }
        IMSLog.e(str2, i, str + " is wrong value on isDefaultDmValue");
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean setDefaultDmValue(String str, int i) {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        if (ConfigConstants.ATCMD.OMADM_VALUE.equalsIgnoreCase(str)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(Integer.parseInt("93"))).getName(), "1");
            contentValues.put(((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(Integer.parseInt("94"))).getName(), "1");
            contentValues.put(((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(Integer.parseInt("31"))).getName(), "1");
            this.mContext.getContentResolver().insert(NvConfiguration.URI, contentValues);
            return isDefaultDmValue(str, i);
        }
        IMSLog.e(str2, i, str + " is wrong value on setDefaultDmValue");
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void notifyImsReady(boolean z, int i) {
        Intent intent = new Intent();
        intent.setAction(z ? ImsConstants.Intents.ACTION_SERVICE_UP : ImsConstants.Intents.ACTION_SERVICE_DOWN);
        intent.putExtra(ImsConstants.Intents.EXTRA_ANDORID_PHONE_ID, i);
        intent.putExtra(ImsConstants.Intents.EXTRA_SIMMOBILITY, ImsUtil.isSimMobilityActivated(i));
        intent.addFlags(LogClass.SIM_EVENT);
        IntentUtil.sendBroadcast(this.mContext, intent);
        mIsImsAvailable = true;
        if (this.mIilManagers.size() > 0) {
            this.mIilManagers.get(i).notifyImsReady(z);
        }
        explicitGC();
    }

    private void linkToPhoneDeath() {
        IBinder tryGet = TelephonyFrameworkInitializer.getTelephonyServiceManager().getPhoneSubServiceRegisterer().tryGet();
        if (tryGet != null) {
            try {
                this.mEventLog.logAndAdd("Link to Phone Binder Death");
                tryGet.linkToDeath(new IBinder.DeathRecipient() { // from class: com.sec.internal.ims.imsservice.ImsServiceStub$$ExternalSyntheticLambda2
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        ImsServiceStub.this.lambda$linkToPhoneDeath$13();
                    }
                }, 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$linkToPhoneDeath$13() {
        this.mEventLog.logAndAdd("Phone Crashed. Cleanup IMS");
        this.mRegistrationManager.sendDeregister(6);
        getServiceModuleManager().cleanUpModules();
        this.mEventLog.logAndAdd("Restart service");
        IMSLog.c(LogClass.GEN_PHONE_BINDER_DIED, null, true);
        SystemWrapper.exit(0);
    }

    public void sendCmcRecordingEvent(int i, int i2, SemCmcRecordingInfo semCmcRecordingInfo) {
        IVolteServiceModule volteServiceModule = this.mServiceModuleManager.getVolteServiceModule();
        if (volteServiceModule != null) {
            volteServiceModule.sendCmcRecordingEvent(i, i2, semCmcRecordingInfo);
        }
    }

    public CmcCallInfo getCmcCallInfo() {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        IVolteServiceModule volteServiceModule = this.mServiceModuleManager.getVolteServiceModule();
        if (volteServiceModule != null) {
            return volteServiceModule.getCmcCallInfo();
        }
        return null;
    }

    public void registerCmcRecordingListener(int i, ISemCmcRecordingListener iSemCmcRecordingListener) {
        IMSLog.d(LOG_TAG, i, "registerCmcRecordingListener");
        IVolteServiceModule volteServiceModule = this.mServiceModuleManager.getVolteServiceModule();
        if (volteServiceModule != null) {
            volteServiceModule.registerCmcRecordingListener(i, iSemCmcRecordingListener);
        }
    }

    public boolean isCmcEmergencyCallSupported(int i) throws RemoteException {
        Context context = this.mContext;
        String str = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str);
        IMSLog.d(str, "isCmcEmergencyCallSupported");
        if (getCmcAccountManager() == null) {
            return false;
        }
        return getCmcAccountManager().isEmergencyCallSupported();
    }

    public boolean isCmcEmergencyNumber(String str, int i) {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        IMSLog.d(str2, "isCmcEmergencyNumber");
        if (getCmcAccountManager() == null) {
            return false;
        }
        return getCmcAccountManager().isEmergencyNumber(str, i);
    }

    public boolean isCmcPotentialEmergencyNumber(String str, int i) {
        Context context = this.mContext;
        String str2 = LOG_TAG;
        context.enforceCallingOrSelfPermission(PERMISSION, str2);
        IMSLog.d(str2, "isCmcPotentialEmergencyNumber");
        if (getCmcAccountManager() == null) {
            return false;
        }
        return getCmcAccountManager().isPotentialEmergencyNumber(str, i);
    }

    public boolean isSupportVoWiFiDisable5GSA(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        IMSLog.d(LOG_TAG, i, "isSupportVoWiFiDisable5GSA");
        RegistrationManagerBase registrationManagerBase = this.mRegistrationManager;
        if (registrationManagerBase == null) {
            return false;
        }
        return registrationManagerBase.isSupportVoWiFiDisable5GSA(i);
    }

    public void setCrossSimPermanentBlocked(int i, boolean z) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        WfcEpdgManager wfcEpdgManager = this.mWfcEpdgManager;
        if (wfcEpdgManager != null) {
            wfcEpdgManager.setCrossSimPermanentBlocked(i, z);
        }
    }

    public boolean isCrossSimPermanentBlocked(int i) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        WfcEpdgManager wfcEpdgManager = this.mWfcEpdgManager;
        if (wfcEpdgManager != null) {
            return wfcEpdgManager.isCrossSimPermanentBlocked(i);
        }
        return false;
    }

    public void setNrInterworkingMode(int i, int i2) {
        if (!isPermissionGranted()) {
            throw new SecurityException(LOG_TAG + "[" + i + "] Permission denied");
        }
        WfcEpdgManager wfcEpdgManager = this.mWfcEpdgManager;
        if (wfcEpdgManager != null) {
            wfcEpdgManager.setNrInterworkingMode(i, i2);
        }
    }

    private <T extends IInterface> T removeCallback(String str) {
        CallBack<? extends IInterface> remove = this.mListenerTokenMap.remove(str);
        if (remove == null) {
            return null;
        }
        remove.reset();
        try {
            return (T) remove.mListener;
        } catch (ClassCastException e) {
            IMSLog.e(LOG_TAG, "Unable to removeCallback by " + e);
            return null;
        }
    }

    public static class BootCompleteReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
                IMSLog.i(ImsServiceStub.LOG_TAG, "ACTION_BOOT_COMPLETED received");
                int phoneCount = SimUtil.getPhoneCount();
                for (int i = 0; i < phoneCount; i++) {
                    DmConfigHelper.getImsSwitchValue(context, DeviceConfigManager.RCS, i);
                }
                ImsServiceStub.getInstance().getCmcConnectivityController().startNsdBind();
                ImsServiceStub.getInstance().checkGrantAppOpsPermission();
                if (ImsServiceStub.getInstance().getCmcConnectivityController().isEnabledWifiDirectFeature()) {
                    ImsServiceStub.getInstance().getCmcConnectivityController().startP2pBind();
                }
            }
        }
    }

    private final class CallBack<E extends IInterface> implements IBinder.DeathRecipient {
        final E mListener;
        final String mToken;

        CallBack(E e, String str) {
            this.mListener = e;
            this.mToken = str;
            try {
                e.asBinder().linkToDeath(this, 0);
            } catch (RemoteException unused) {
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            reset();
            ImsServiceStub.this.mListenerTokenMap.remove(this.mToken);
        }

        protected void reset() {
            try {
                this.mListener.asBinder().unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
    }

    public void checkGrantAppOpsPermission() {
        try {
            Class<?> cls = Class.forName("android.app.AppOpsManager");
            AppOpsManager appOpsManager = (AppOpsManager) this.mContext.getSystemService("appops");
            Class<?> cls2 = Integer.TYPE;
            if (((Integer) ReflectionUtils.invoke2(cls.getMethod("semCheckOpWriteSms", cls2, String.class), appOpsManager, new Object[]{Integer.valueOf(Process.myUid()), "com.sec.imsservice"})).intValue() == 0) {
                Log.d(LOG_TAG, "checkGrantAppOpsPermission already allowed");
            } else {
                ReflectionUtils.invoke(cls.getMethod("semSetModeWriteSms", cls2, String.class, cls2), appOpsManager, new Object[]{Integer.valueOf(Process.myUid()), "com.sec.imsservice", 0});
            }
        } catch (ClassNotFoundException | IllegalStateException | NoSuchMethodException | SecurityException e) {
            this.mEventLog.logAndAdd("checkGrantAppOpsPermission exception." + e);
        }
    }
}
