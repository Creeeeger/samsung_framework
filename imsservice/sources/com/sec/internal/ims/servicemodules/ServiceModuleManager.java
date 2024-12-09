package com.sec.internal.ims.servicemodules;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SemSystemProperties;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.feature.RcsFeature;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import com.samsung.android.feature.SemCscFeature;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.SecFeature;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.cmstore.CmsModule;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.gba.GbaService;
import com.sec.internal.ims.gba.GbaServiceModule;
import com.sec.internal.ims.mdmi.MdmiService;
import com.sec.internal.ims.mdmi.MdmiServiceModule;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.csh.ImageShareModule;
import com.sec.internal.ims.servicemodules.csh.VideoShareModule;
import com.sec.internal.ims.servicemodules.csh.VshBinderFuntions;
import com.sec.internal.ims.servicemodules.euc.EucModule;
import com.sec.internal.ims.servicemodules.gls.GlsModule;
import com.sec.internal.ims.servicemodules.im.ImModule;
import com.sec.internal.ims.servicemodules.openapi.ImsStatusService;
import com.sec.internal.ims.servicemodules.openapi.ImsStatusServiceModule;
import com.sec.internal.ims.servicemodules.openapi.OpenApiService;
import com.sec.internal.ims.servicemodules.openapi.OpenApiServiceModule;
import com.sec.internal.ims.servicemodules.options.CapabilityDiscoveryModule;
import com.sec.internal.ims.servicemodules.options.CapabilityDiscoveryService;
import com.sec.internal.ims.servicemodules.options.OptionsModule;
import com.sec.internal.ims.servicemodules.options.SemCapabilityDiscoveryService;
import com.sec.internal.ims.servicemodules.presence.PresenceModule;
import com.sec.internal.ims.servicemodules.presence.PresenceService;
import com.sec.internal.ims.servicemodules.quantumencryption.QuantumEncryptionService;
import com.sec.internal.ims.servicemodules.quantumencryption.QuantumEncryptionServiceModule;
import com.sec.internal.ims.servicemodules.session.SessionModule;
import com.sec.internal.ims.servicemodules.sms.SmsService;
import com.sec.internal.ims.servicemodules.sms.SmsServiceModule;
import com.sec.internal.ims.servicemodules.ss.UtService;
import com.sec.internal.ims.servicemodules.ss.UtServiceModule;
import com.sec.internal.ims.servicemodules.tapi.service.api.TapiServiceManager;
import com.sec.internal.ims.servicemodules.tapi.service.api.interfaces.ITapiServiceManager;
import com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal;
import com.sec.internal.ims.servicemodules.volte2.VolteService;
import com.sec.internal.ims.servicemodules.volte2.VolteServiceModule;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.cmstore.ICmsModule;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimEventListener;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.handler.IHandlerFactory;
import com.sec.internal.interfaces.ims.gba.IGbaServiceModule;
import com.sec.internal.interfaces.ims.imsservice.ICall;
import com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager;
import com.sec.internal.interfaces.ims.servicemodules.csh.IImageShareModule;
import com.sec.internal.interfaces.ims.servicemodules.csh.IVideoShareModule;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucModule;
import com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.openapi.IImsStatusServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.openapi.IOpenApiServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.interfaces.ims.servicemodules.options.IOptionsModule;
import com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule;
import com.sec.internal.interfaces.ims.servicemodules.quantumencryption.IQuantumEncryptionServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule;
import com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ServiceModuleManager extends Handler implements IServiceModuleManager {
    private static final int EVT_CONFIG_CHANGED = 2;
    private static final int EVT_IMS_SWITCH_UPDATED = 1;
    private static final int EVT_SIM_READY = 3;
    private static final String IMS_SETTINGS_UPDATED = "android.intent.action.IMS_SETTINGS_UPDATED";
    private static final String LOG_TAG = "ServiceModuleManager";
    private static Set<String> OBSERVE_DM_SET = new HashSet();
    private static Set<String> OBSERVE_PREFIX_DM_SET = new HashSet();
    private Map<Integer, Boolean> mAutoConfigCompletedList;
    private Map<String, Binder> mBinders;
    CapabilityDiscoveryModule mCapabilityDiscoveryModule;
    private final ReentrantLock mChangingServiceModulesStateLock;
    CmsModule mCmsModule;
    private ContentObserver mConfigObserver;
    private final Context mContext;
    EucModule mEucModule;
    GbaServiceModule mGbaServiceModule;
    GlsModule mGlsModule;
    private final IHandlerFactory mHandlerFactory;
    ImModule mImModule;
    ImageShareModule mImageShareModule;
    private IImsFramework mImsFramework;
    ImsStatusServiceModule mImsStatusServiceModule;
    private Map<Integer, ContentValues> mLastImsServiceSwitches;
    private Looper mLooper;
    OpenApiServiceModule mOpenApiServiceModule;
    OptionsModule mOptionsModule;
    PresenceModule mPresenceModule;
    QuantumEncryptionServiceModule mQuantumEncryptionServiceModule;
    private final IRegistrationManager mRegMan;
    private Binder mSemBinder;
    private List<ServiceModuleBase> mServiceModules;
    SessionModule mSessionModule;
    private SimEventListener mSimEventListener;
    private List<ISimManager> mSimManagers;
    SmsServiceModule mSmsServiceModule;
    private boolean mStarted;
    TapiServiceManager mTapiServiceManager;
    UtServiceModule mUtServiceModule;
    VideoShareModule mVideoShareModule;
    VolteServiceModule mVolteServiceModule;

    static {
        OBSERVE_DM_SET.add("EAB_SETTING");
        OBSERVE_DM_SET.add("LVC_ENABLED");
        OBSERVE_DM_SET.add("VOLTE_ENABLED");
        OBSERVE_DM_SET.add("CAP_CACHE_EXP");
        OBSERVE_DM_SET.add("CAP_POLL_INTERVAL");
        OBSERVE_DM_SET.add("SRC_THROTTLE_PUBLISH");
        OBSERVE_DM_SET.add("SUBSCRIBE_MAX_ENTRY");
        OBSERVE_DM_SET.add("AVAIL_CACHE_EXP");
        OBSERVE_DM_SET.add("POLL_LIST_SUB_EXP");
        OBSERVE_DM_SET.add("PUBLISH_TIMER");
        OBSERVE_DM_SET.add("PUBLISH_TIMER_EXTEND");
        OBSERVE_DM_SET.add("PUBLISH_ERR_RETRY_TIMER");
        OBSERVE_DM_SET.add("CAP_DISCOVERY");
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_EAB_SETTING);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_LVC_ENABLED);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_VOLTE_ENABLED);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_CAP_CACHE_EXP);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_CAP_POLL_INTERVAL);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_SRC_THROTTLE_PUBLISH);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_SUBSCRIBE_MAX_ENTRY);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_AVAIL_CACHE_EXP);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_POLL_LIST_SUB_EXP);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_PUBLISH_TIMER);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_PUBLISH_TIMER_EXTEND);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_PUBLISH_ERR_RETRY_TIMER);
        OBSERVE_PREFIX_DM_SET.add(ConfigConstants.ConfigPath.OMADM_CAP_DISCOVERY);
    }

    public ServiceModuleManager(Looper looper, Context context, IImsFramework iImsFramework, List<ISimManager> list, IRegistrationManager iRegistrationManager, IHandlerFactory iHandlerFactory) {
        super(looper);
        this.mChangingServiceModulesStateLock = new ReentrantLock();
        this.mServiceModules = new CopyOnWriteArrayList();
        this.mBinders = new HashMap();
        this.mSemBinder = null;
        this.mStarted = false;
        this.mAutoConfigCompletedList = new ConcurrentHashMap();
        this.mLastImsServiceSwitches = new ConcurrentHashMap();
        this.mSimEventListener = new SimEventListener();
        this.mConfigObserver = new ContentObserver(this) { // from class: com.sec.internal.ims.servicemodules.ServiceModuleManager.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
                Log.d(ServiceModuleManager.LOG_TAG, "onChange[" + simSlotFromUri + "]: config changed : " + uri.getLastPathSegment());
                if (!TextUtils.isEmpty(uri.getLastPathSegment())) {
                    ServiceModuleManager.this.notifyConfigChanged(uri.getLastPathSegment(), simSlotFromUri);
                }
                ServiceModuleManager serviceModuleManager = ServiceModuleManager.this;
                serviceModuleManager.sendMessage(serviceModuleManager.obtainMessage(1, uri));
            }
        };
        Log.d(LOG_TAG, "created");
        this.mContext = context;
        this.mSimManagers = list;
        this.mImsFramework = iImsFramework;
        this.mRegMan = iRegistrationManager;
        this.mHandlerFactory = iHandlerFactory;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        for (ISimManager iSimManager : this.mSimManagers) {
            if (iSimManager.isSimLoaded()) {
                int simSlotIndex = iSimManager.getSimSlotIndex();
                sendMessage(obtainMessage(3, simSlotIndex, 0, null));
                IMSLog.d(LOG_TAG, simSlotIndex, "SIM is ready subId:");
            }
            iSimManager.registerSimCardEventListener(this.mSimEventListener);
            this.mLastImsServiceSwitches.put(Integer.valueOf(iSimManager.getSimSlotIndex()), new ContentValues());
        }
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Iterator<String> it = OBSERVE_DM_SET.iterator();
        while (it.hasNext()) {
            contentResolver.registerContentObserver(Uri.parse("content://com.samsung.rcs.dmconfigurationprovider/" + it.next()), false, this.mConfigObserver);
        }
        Iterator<String> it2 = OBSERVE_PREFIX_DM_SET.iterator();
        while (it2.hasNext()) {
            contentResolver.registerContentObserver(Uri.parse("content://com.samsung.rcs.dmconfigurationprovider/" + it2.next()), false, this.mConfigObserver);
        }
        if (SimUtil.getPhoneCount() > 0) {
            Log.d(LOG_TAG, "Initializting ServiceModules.");
            createIMSServiceModules();
            startIMSServiceModules();
            return;
        }
        Log.d(LOG_TAG, "no phone skip Initializting ServiceModules.");
    }

    public void createIMSServiceModules() {
        this.mChangingServiceModulesStateLock.lock();
        try {
            Log.d(LOG_TAG, "createIMSServiceModules");
            HandlerThread handlerThread = new HandlerThread("ServiceModule");
            handlerThread.start();
            this.mLooper = handlerThread.getLooper();
            SmsServiceModule smsServiceModule = new SmsServiceModule(this.mLooper, this.mContext, this.mHandlerFactory.getSmsHandler());
            this.mSmsServiceModule = smsServiceModule;
            this.mServiceModules.add(smsServiceModule);
            this.mBinders.put("smsip", new SmsService(this.mSmsServiceModule));
            VolteServiceModule volteServiceModule = new VolteServiceModule(this.mLooper, this.mContext, this.mRegMan, this.mImsFramework.getPdnController(), this.mHandlerFactory.getVolteStackAdaptor(), this.mHandlerFactory.getMediaHandler(), this.mHandlerFactory.getOptionsHandler());
            this.mVolteServiceModule = volteServiceModule;
            this.mServiceModules.add(volteServiceModule);
            VolteService volteService = new VolteService(this.mVolteServiceModule);
            this.mBinders.put("mmtel", volteService);
            ImsStatusServiceModule imsStatusServiceModule = new ImsStatusServiceModule(this.mLooper, volteService);
            this.mImsStatusServiceModule = imsStatusServiceModule;
            this.mServiceModules.add(imsStatusServiceModule);
            this.mBinders.put("ImsStatus", new ImsStatusService(this.mImsStatusServiceModule));
            OpenApiServiceModule openApiServiceModule = new OpenApiServiceModule(this.mLooper, this.mContext, this.mHandlerFactory.getRawSipHandler());
            this.mOpenApiServiceModule = openApiServiceModule;
            this.mServiceModules.add(openApiServiceModule);
            this.mBinders.put("OpenApi", new OpenApiService(this.mOpenApiServiceModule));
            QuantumEncryptionServiceModule quantumEncryptionServiceModule = new QuantumEncryptionServiceModule(this.mLooper, this.mContext);
            this.mQuantumEncryptionServiceModule = quantumEncryptionServiceModule;
            this.mServiceModules.add(quantumEncryptionServiceModule);
            this.mBinders.put("quantum", new QuantumEncryptionService(this.mQuantumEncryptionServiceModule));
            UtServiceModule utServiceModule = new UtServiceModule(this.mLooper, this.mContext, this.mImsFramework);
            this.mUtServiceModule = utServiceModule;
            this.mServiceModules.add(utServiceModule);
            this.mBinders.put("ss", new UtService(this.mUtServiceModule));
            GbaServiceModule gbaServiceModule = new GbaServiceModule(this.mLooper, this.mContext, this.mImsFramework);
            this.mGbaServiceModule = gbaServiceModule;
            this.mServiceModules.add(gbaServiceModule);
            this.mBinders.put("GbaService", new GbaService(this.mGbaServiceModule));
            this.mBinders.put("options", new CapabilityDiscoveryService());
            this.mSemBinder = new SemCapabilityDiscoveryService();
            MdmiServiceModule mdmiServiceModule = new MdmiServiceModule(handlerThread.getLooper(), this.mContext);
            this.mServiceModules.add(mdmiServiceModule);
            this.mBinders.put("mdmi", new MdmiService(mdmiServiceModule));
            Iterator<ServiceModuleBase> it = this.mServiceModules.iterator();
            while (it.hasNext()) {
                it.next().init();
            }
        } finally {
            this.mChangingServiceModulesStateLock.unlock();
        }
    }

    private void createRcsServiceModulesAndStart(ImsProfile imsProfile, int i) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.mChangingServiceModulesStateLock.lock();
        try {
            boolean z = true;
            if (DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.RCS_SWITCH, i) != 1) {
                z = false;
            }
            Mno simMno = SimUtil.getSimMno(i);
            if ((z || (imsProfile.getSimMobility() && !DeviceUtil.isTablet() && !DeviceUtil.isUSOpenDevice() && simMno.isUSA())) && (imsProfile.hasService("options") || imsProfile.hasService(SipMsg.EVENT_PRESENCE))) {
                if (this.mImModule == null) {
                    ImModule imModule = new ImModule(this.mLooper, this.mContext, this.mHandlerFactory.getImHandler());
                    this.mImModule = imModule;
                    this.mServiceModules.add(imModule);
                    copyOnWriteArrayList.add(this.mImModule);
                }
                if (this.mSessionModule == null) {
                    SessionModule sessionModule = new SessionModule(this.mLooper, this.mContext, this.mHandlerFactory.getImHandler());
                    this.mSessionModule = sessionModule;
                    this.mServiceModules.add(sessionModule);
                    copyOnWriteArrayList.add(this.mSessionModule);
                }
                if (imsProfile.hasService("gls") && this.mGlsModule == null) {
                    GlsModule glsModule = new GlsModule(this.mLooper, this.mContext);
                    this.mGlsModule = glsModule;
                    this.mServiceModules.add(glsModule);
                    copyOnWriteArrayList.add(this.mGlsModule);
                }
                if (imsProfile.hasService("euc") && this.mEucModule == null) {
                    EucModule eucModule = new EucModule(this.mLooper, this.mContext, this.mHandlerFactory.getEucHandler());
                    this.mEucModule = eucModule;
                    this.mServiceModules.add(eucModule);
                    copyOnWriteArrayList.add(this.mEucModule);
                }
                if (imsProfile.hasService("is") && this.mImageShareModule == null) {
                    ImageShareModule imageShareModule = new ImageShareModule(this.mLooper, this.mContext, this.mHandlerFactory.getIshHandler());
                    this.mImageShareModule = imageShareModule;
                    this.mServiceModules.add(imageShareModule);
                    copyOnWriteArrayList.add(this.mImageShareModule);
                }
                if (imsProfile.hasService("vs") && this.mVideoShareModule == null) {
                    VideoShareModule videoShareModule = new VideoShareModule(this.mLooper, this.mContext, this.mHandlerFactory.getVshHandler());
                    this.mVideoShareModule = videoShareModule;
                    this.mServiceModules.add(videoShareModule);
                    copyOnWriteArrayList.add(this.mVideoShareModule);
                    this.mBinders.put("vs", new VshBinderFuntions(this.mVideoShareModule));
                }
                if (this.mOptionsModule == null) {
                    OptionsModule optionsModule = new OptionsModule(this.mLooper, this.mContext);
                    this.mOptionsModule = optionsModule;
                    this.mServiceModules.add(optionsModule);
                    copyOnWriteArrayList.add(this.mOptionsModule);
                }
                if (this.mPresenceModule == null) {
                    PresenceModule presenceModule = new PresenceModule(this.mLooper, this.mContext);
                    this.mPresenceModule = presenceModule;
                    this.mServiceModules.add(presenceModule);
                    copyOnWriteArrayList.add(this.mPresenceModule);
                }
                if (this.mCapabilityDiscoveryModule == null && this.mOptionsModule != null && this.mPresenceModule != null) {
                    CapabilityDiscoveryModule capabilityDiscoveryModule = new CapabilityDiscoveryModule(this.mLooper, this.mContext, this.mOptionsModule, this.mPresenceModule, this.mRegMan, this.mImModule);
                    this.mCapabilityDiscoveryModule = capabilityDiscoveryModule;
                    this.mServiceModules.add(capabilityDiscoveryModule);
                    copyOnWriteArrayList.add(this.mCapabilityDiscoveryModule);
                    ((CapabilityDiscoveryService) this.mBinders.get("options")).setServiceModule(this.mCapabilityDiscoveryModule);
                    ((SemCapabilityDiscoveryService) this.mSemBinder).setServiceModule((CapabilityDiscoveryService) this.mBinders.get("options"));
                }
                if (this.mCapabilityDiscoveryModule != null) {
                    this.mBinders.put(SipMsg.EVENT_PRESENCE, new PresenceService(this.mCapabilityDiscoveryModule));
                }
                if (this.mTapiServiceManager == null) {
                    TapiServiceManager tapiServiceManager = new TapiServiceManager(this.mLooper, this.mContext);
                    this.mTapiServiceManager = tapiServiceManager;
                    this.mServiceModules.add(tapiServiceManager);
                    copyOnWriteArrayList.add(this.mTapiServiceManager);
                }
                for (ServiceModuleBase serviceModuleBase : copyOnWriteArrayList) {
                    if (!serviceModuleBase.isReady() && !serviceModuleBase.isRunning()) {
                        serviceModuleBase.init();
                    }
                }
            }
            this.mChangingServiceModulesStateLock.unlock();
            startRcsServiceModules(copyOnWriteArrayList, i);
        } catch (Throwable th) {
            this.mChangingServiceModulesStateLock.unlock();
            throw th;
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void serviceStartDeterminer(List<ImsProfile> list, int i) {
        for (ImsProfile imsProfile : list) {
            if (ImsProfile.hasRcsService(imsProfile)) {
                createRcsServiceModulesAndStart(imsProfile, i);
            }
        }
        List<String> extendedServices = getExtendedServices(i);
        if (extendedServices.isEmpty() || !extendedServices.contains("cms") || "AIO".equals(OmcCode.getNWCode(i))) {
            return;
        }
        boolean z = false;
        if (Mno.ATT.equals(SimUtil.getSimMno(i)) && (TextUtils.isEmpty(SemCscFeature.getInstance().getString(SecFeature.CSC.TAG_CSCFEATURE_MESSAGE_CONFIGOPBACKUPSYNC)) || SemSystemProperties.getInt(ImsConstants.SystemProperties.FIRST_API_VERSION, 0) > 33)) {
            IMSLog.e(LOG_TAG, i, "AMBS has been disabled for this model");
            return;
        }
        if (ImsRegistry.getBoolean(i, GlobalSettingsConstants.Registration.CMS_OPEN_DEVICE_VVM_ENABLED, false) && SemSystemProperties.getInt(ImsConstants.SystemProperties.FIRST_API_VERSION, 0) >= 34) {
            String str = Build.MODEL;
            if (!str.contains("A156U1") && !str.contains("A256U1")) {
                z = true;
            }
        }
        IMSLog.i(LOG_TAG, i, "serviceStartDeterminer isOpenDeviceVVMEnabled: " + z);
        if (this.mCmsModule == null) {
            CmsModule cmsModule = new CmsModule(this.mLooper, this.mContext);
            this.mCmsModule = cmsModule;
            this.mServiceModules.add(cmsModule);
            if (isStartRequired(this.mCmsModule, i, null) || z) {
                this.mCmsModule.init();
                this.mCmsModule.start();
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public boolean isLooperExist() {
        return this.mLooper != null;
    }

    private synchronized void startRcsServiceModules(List<ServiceModuleBase> list, int i) {
        for (ServiceModuleBase serviceModuleBase : list) {
            if (isStartRequired(serviceModuleBase, i, null)) {
                serviceModuleBase.start();
            }
        }
        this.mLastImsServiceSwitches.put(Integer.valueOf(i), DmConfigHelper.getImsSwitchValue(this.mContext, (String[]) null, i));
    }

    public void startIMSServiceModules() {
        this.mChangingServiceModulesStateLock.lock();
        try {
            Log.d(LOG_TAG, "startServiceModules");
            if (this.mStarted) {
                Log.d(LOG_TAG, "startServiceModules() - already started");
                return;
            }
            for (ISimManager iSimManager : this.mSimManagers) {
                int simSlotIndex = iSimManager.getSimSlotIndex();
                for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                    if (isStartRequired(serviceModuleBase, simSlotIndex, iSimManager)) {
                        serviceModuleBase.start();
                    }
                }
                this.mLastImsServiceSwitches.put(Integer.valueOf(simSlotIndex), DmConfigHelper.getImsSwitchValue(this.mContext, (String[]) null, simSlotIndex));
            }
            this.mStarted = true;
        } finally {
            this.mChangingServiceModulesStateLock.unlock();
        }
    }

    public Binder getBinder(String str) {
        return getBinder(str, null);
    }

    public synchronized Binder getBinder(String str, String str2) {
        if (str2 != null) {
            str = str + CmcConstants.E_NUM_SLOT_SPLIT + str2;
        }
        Log.d(LOG_TAG, "getBinder for " + str);
        return this.mBinders.get(str);
    }

    public Binder getSemBinder() {
        return this.mSemBinder;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyReRegistering(int i, Set<String> set) {
        this.mChangingServiceModulesStateLock.lock();
        try {
            IMSLog.d(LOG_TAG, i, "notify Ims Re-registration : " + set);
            for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                if (serviceModuleBase.isRunning()) {
                    serviceModuleBase.onReRegistering(i, set);
                }
            }
            updateCapabilities(i);
        } finally {
            this.mChangingServiceModulesStateLock.unlock();
        }
    }

    private boolean needRegistrationNotification(ServiceModuleBase serviceModuleBase, Set<String> set) {
        Log.d(LOG_TAG, "Service not matched. Not notified to " + serviceModuleBase.getName() + " " + new HashSet(Arrays.asList(serviceModuleBase.getServicesRequiring())));
        return !Collections.disjoint(set, r2);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyImsRegistration(ImsRegistration imsRegistration, boolean z, int i) {
        int phoneId = imsRegistration.getPhoneId();
        ImsProfile imsProfile = imsRegistration.getImsProfile();
        IMSLog.d(LOG_TAG, phoneId, "notifyImsRegistration: [" + imsProfile.getName() + "] registered: " + z + ", errorCode: " + i);
        ImsRegistration imsRegistration2 = new ImsRegistration(imsRegistration);
        IConfigModule configModule = this.mImsFramework.getConfigModule();
        if (configModule != null) {
            configModule.onRegistrationStatusChanged(z, i, imsRegistration);
        }
        if (!z) {
            this.mChangingServiceModulesStateLock.lock();
            try {
                for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                    if (serviceModuleBase.isRunning() && needRegistrationNotification(serviceModuleBase, imsRegistration2.getServices())) {
                        serviceModuleBase.onDeregistered(imsRegistration2, i);
                    }
                }
                this.mChangingServiceModulesStateLock.unlock();
            } finally {
            }
        } else {
            Set<String> allServiceSetFromAllNetwork = imsRegistration2.getImsProfile().getAllServiceSetFromAllNetwork();
            Iterator it = imsRegistration2.getServices().iterator();
            while (it.hasNext()) {
                allServiceSetFromAllNetwork.remove((String) it.next());
            }
            if (configModule != null && !configModule.isValidAcsVersion(phoneId)) {
                Log.d(LOG_TAG, "RCS disabled : remove rcs services from deregi list");
                for (String str : ImsProfile.getRcsServiceList()) {
                    allServiceSetFromAllNetwork.remove(str);
                }
            }
            this.mChangingServiceModulesStateLock.lock();
            try {
                for (ServiceModuleBase serviceModuleBase2 : this.mServiceModules) {
                    if (serviceModuleBase2.isRunning()) {
                        if (needRegistrationNotification(serviceModuleBase2, imsRegistration.getServices())) {
                            serviceModuleBase2.onRegistered(imsRegistration2);
                        } else if (needRegistrationNotification(serviceModuleBase2, allServiceSetFromAllNetwork)) {
                            serviceModuleBase2.onDeregistered(imsRegistration2, i);
                        }
                    }
                }
            } finally {
            }
        }
        if (((Boolean) Optional.ofNullable(this.mSimManagers.get(phoneId)).map(new Function() { // from class: com.sec.internal.ims.servicemodules.ServiceModuleManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ISimManager) obj).getDevMno();
            }
        }).map(new Function() { // from class: com.sec.internal.ims.servicemodules.ServiceModuleManager$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Mno) obj).isAus());
            }
        }).orElse(Boolean.FALSE)).booleanValue() && imsProfile.hasEmergencySupport()) {
            IVolteServiceModule volteServiceModule = this.mImsFramework.getServiceModuleManager().getVolteServiceModule();
            if (!volteServiceModule.isRunning()) {
                if (z) {
                    volteServiceModule.onRegistered(imsRegistration2);
                } else {
                    volteServiceModule.onDeregistered(imsRegistration2, i);
                }
            }
        }
        updateCapabilities(phoneId);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyDeregistering(ImsRegistration imsRegistration) {
        this.mChangingServiceModulesStateLock.lock();
        try {
            boolean z = false;
            for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                if (serviceModuleBase.isRunning() && needRegistrationNotification(serviceModuleBase, imsRegistration.getServices())) {
                    serviceModuleBase.onDeregistering(imsRegistration);
                    z = true;
                }
            }
            if (z) {
                updateCapabilities(imsRegistration.getPhoneId());
            }
        } finally {
            this.mChangingServiceModulesStateLock.unlock();
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyRcsDeregistering(Set<String> set, ImsRegistration imsRegistration) {
        HashSet hashSet = new HashSet();
        boolean z = false;
        for (String str : ImsProfile.getRcsServiceList()) {
            if (set.contains(str)) {
                hashSet.add(str);
            }
        }
        this.mChangingServiceModulesStateLock.lock();
        try {
            for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                if (serviceModuleBase.isRunning() && needRegistrationNotification(serviceModuleBase, hashSet)) {
                    serviceModuleBase.onDeregistering(imsRegistration);
                    z = true;
                }
            }
            if (z) {
                updateCapabilities(imsRegistration.getPhoneId());
            }
        } finally {
            this.mChangingServiceModulesStateLock.unlock();
        }
    }

    public void notifyConfigChanged(String str, int i) {
        Log.d(LOG_TAG, "notifyConfigChanged: dmUri " + str);
        this.mChangingServiceModulesStateLock.lock();
        try {
            for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                if (serviceModuleBase.isRunning()) {
                    serviceModuleBase.onImsConifgChanged(i, str);
                }
            }
        } finally {
            this.mChangingServiceModulesStateLock.unlock();
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyConfigured(boolean z, int i) {
        Log.d(LOG_TAG, "notifyConfigured: phoneId " + i);
        if (!z || (this.mAutoConfigCompletedList.containsKey(Integer.valueOf(i)) && this.mAutoConfigCompletedList.get(Integer.valueOf(i)).booleanValue())) {
            this.mChangingServiceModulesStateLock.lock();
            try {
                for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                    if (serviceModuleBase.isRunning() && serviceModuleBase != this.mCapabilityDiscoveryModule) {
                        serviceModuleBase.onConfigured(i);
                    }
                }
                this.mChangingServiceModulesStateLock.unlock();
                CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscoveryModule;
                if (capabilityDiscoveryModule != null) {
                    if (capabilityDiscoveryModule.isRunning()) {
                        Log.d(LOG_TAG, "notifyConfigured: CDM is running");
                        this.mCapabilityDiscoveryModule.onConfigured(i);
                    } else {
                        Log.d(LOG_TAG, "notifyConfigured: CDM is not running, trigger tryRegister");
                        this.mImsFramework.getRegistrationManager().setOwnCapabilities(i, new Capabilities());
                    }
                }
                this.mImsFramework.getRegistrationManager().setRegiConfig(i);
            } catch (Throwable th) {
                this.mChangingServiceModulesStateLock.unlock();
                throw th;
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifySimChange(int i) {
        Log.d(LOG_TAG, "notifySimChange");
        Mno simMno = SimUtil.getSimMno(i);
        for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
            if (serviceModuleBase.isRunning() || (serviceModuleBase == this.mCapabilityDiscoveryModule && ConfigUtil.isRcsEur(simMno))) {
                serviceModuleBase.onSimChanged(i);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyNetworkChanged(NetworkEvent networkEvent, int i) {
        for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
            if (serviceModuleBase.isRunning()) {
                serviceModuleBase.onNetworkChanged(new NetworkEvent(networkEvent), i);
            }
        }
        updateCapabilities(i);
    }

    public void handleIntent(Intent intent) {
        Log.d(LOG_TAG, "handleIntent:");
        for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
            if (serviceModuleBase.isRunning()) {
                serviceModuleBase.handleIntent(intent);
            }
        }
    }

    public List<ServiceModuleBase> getAllServiceModules() {
        return Collections.unmodifiableList(this.mServiceModules);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public Handler getServiceModuleHandler(String str) {
        for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
            if (serviceModuleBase.getClass().getSimpleName().equals(str)) {
                return serviceModuleBase;
            }
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IImModule getImModule() {
        return this.mImModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IGlsModule getGlsModule() {
        return this.mGlsModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IOptionsModule getOptionsModule() {
        return this.mOptionsModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IPresenceModule getPresenceModule() {
        return this.mPresenceModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ICapabilityDiscoveryModule getCapabilityDiscoveryModule() {
        return this.mCapabilityDiscoveryModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IEucModule getEucModule() {
        return this.mEucModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ISmsServiceModule getSmsServiceModule() {
        return this.mSmsServiceModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ISessionModule getSessionModule() {
        return this.mSessionModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ICmsModule getCmsModule() {
        return this.mCmsModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IVolteServiceModule getVolteServiceModule() {
        return this.mVolteServiceModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IImsStatusServiceModule getImsStatusServiceModule() {
        return this.mImsStatusServiceModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IImageShareModule getImageShareModule() {
        return this.mImageShareModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IVideoShareModule getVideoShareModule() {
        return this.mVideoShareModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ITapiServiceManager getTapiServiceManager() {
        return this.mTapiServiceManager;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IOpenApiServiceModule getOpenApiServiceModule() {
        return this.mOpenApiServiceModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IUtServiceModule getUtServiceModule() {
        return this.mUtServiceModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IGbaServiceModule getGbaServiceModule() {
        return this.mGbaServiceModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IQuantumEncryptionServiceModule getQuantumEncryptionServiceModule() {
        return this.mQuantumEncryptionServiceModule;
    }

    public void dump() {
        for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
            if (serviceModuleBase.isRunning()) {
                serviceModuleBase.dump();
            }
        }
    }

    public void notifyCallStateChanged(List<ICall> list, int i) {
        Iterator<ServiceModuleBase> it = this.mServiceModules.iterator();
        while (it.hasNext()) {
            it.next().onCallStateChanged(i, list);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyAutoConfigDone(int i) {
        IMSLog.d(LOG_TAG, i, "notifyAutoConfigDone");
        this.mAutoConfigCompletedList.put(Integer.valueOf(i), Boolean.TRUE);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyOmadmVolteConfigDone(int i) {
        Log.d(LOG_TAG, "notifyOmadmVolteConfigDone()");
        sendMessage(obtainMessage(1, Uri.parse("content://com.samsung.rcs.dmconfigurationprovider/").buildUpon().fragment("simslot" + i).build()));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyImsSwitchUpdateToApp() {
        IntentUtil.sendBroadcast(this.mContext, new Intent(IMS_SETTINGS_UPDATED));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void onImsSwitchUpdated(int i) {
        ContentValues contentValues;
        ContentValues contentValues2;
        Integer asInteger;
        ContentValues imsSwitchValue = DmConfigHelper.getImsSwitchValue(this.mContext, (String[]) null, i);
        this.mChangingServiceModulesStateLock.lock();
        try {
            IMSLog.d(LOG_TAG, i, "onImsSwitchUpdated " + imsSwitchValue + ", old " + this.mLastImsServiceSwitches.get(Integer.valueOf(i)));
            boolean isCmcEnabled = this.mImsFramework.getCmcAccountManager().isCmcEnabled();
            Iterator<ServiceModuleBase> it = this.mServiceModules.iterator();
            while (true) {
                boolean z = true;
                if (!it.hasNext()) {
                    break;
                }
                ServiceModuleBase next = it.next();
                if (next.isRunning()) {
                    String[] servicesRequiring = next.getServicesRequiring();
                    int length = servicesRequiring.length;
                    boolean z2 = true;
                    boolean z3 = true;
                    int i2 = 0;
                    while (i2 < length) {
                        String str = servicesRequiring[i2];
                        Integer asInteger2 = imsSwitchValue.getAsInteger(str);
                        if (asInteger2 != null && asInteger2.intValue() == z && DmConfigHelper.readSwitch(this.mContext, str, z, i)) {
                            z2 = false;
                            z3 = false;
                        }
                        if (next.getName().equals(IVolteServiceModuleInternal.NAME) && isCmcEnabled) {
                            Log.d(LOG_TAG, "onImsSwitchUpdated: CMC device: " + next.getName() + " module.");
                            z2 = false;
                            z3 = false;
                        }
                        for (ISimManager iSimManager : this.mSimManagers) {
                            boolean z4 = isCmcEnabled;
                            if (iSimManager.getSimSlotIndex() != i && (contentValues2 = this.mLastImsServiceSwitches.get(Integer.valueOf(iSimManager.getSimSlotIndex()))) != null && contentValues2.size() > 0 && (asInteger = contentValues2.getAsInteger(str)) != null && asInteger.intValue() == 1) {
                                Log.d(LOG_TAG, "onImsSwitchUpdated: opposite sim slot enabled " + next.getName() + " module.");
                                z3 = false;
                            }
                            isCmcEnabled = z4;
                        }
                        i2++;
                        z = true;
                    }
                    boolean z5 = isCmcEnabled;
                    if (z2) {
                        Log.d(LOG_TAG, "onImsSwitchUpdated: Configuring " + next.getName() + " module.");
                        next.onConfigured(i);
                    }
                    if (z3) {
                        Log.d(LOG_TAG, "onImsSwitchUpdated: Stopping " + next.getName() + " module.");
                        next.stop();
                    }
                    isCmcEnabled = z5;
                }
            }
            IRegistrationManager registrationManager = this.mImsFramework.getRegistrationManager();
            ArrayList<ServiceModuleBase> arrayList = new ArrayList();
            for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                for (String str2 : serviceModuleBase.getServicesRequiring()) {
                    Integer asInteger3 = imsSwitchValue.getAsInteger(str2);
                    if ((serviceModuleBase.isStopped() || serviceModuleBase.isReady()) && asInteger3 != null && asInteger3.intValue() == 1 && DmConfigHelper.readBool(this.mContext, str2, Boolean.TRUE, i).booleanValue()) {
                        Log.d(LOG_TAG, "Starting " + serviceModuleBase.getName() + " module");
                        serviceModuleBase.start();
                        arrayList.add(serviceModuleBase);
                    }
                }
            }
            Integer asInteger4 = imsSwitchValue.getAsInteger(DeviceConfigManager.RCS);
            if ((this.mAutoConfigCompletedList.containsKey(Integer.valueOf(i)) && this.mAutoConfigCompletedList.get(Integer.valueOf(i)).booleanValue()) || ((asInteger4 != null && asInteger4.intValue() != 1) || i != SimUtil.getSimSlotPriority())) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((ServiceModuleBase) it2.next()).onConfigured(i);
                }
            }
            ContentValues contentValues3 = this.mLastImsServiceSwitches.get(Integer.valueOf(i));
            if (contentValues3 != null) {
                for (ServiceModuleBase serviceModuleBase2 : this.mServiceModules) {
                    ArraySet arraySet = new ArraySet();
                    String[] servicesRequiring2 = serviceModuleBase2.getServicesRequiring();
                    int length2 = servicesRequiring2.length;
                    int i3 = 0;
                    while (i3 < length2) {
                        String str3 = servicesRequiring2[i3];
                        Integer asInteger5 = imsSwitchValue.getAsInteger(str3);
                        Integer asInteger6 = contentValues3.getAsInteger(str3);
                        if (asInteger5 != null && asInteger6 != null) {
                            contentValues = contentValues3;
                            if ((asInteger5.intValue() == 1) != (asInteger6.intValue() == 1)) {
                                arraySet.add(str3);
                            }
                            i3++;
                            contentValues3 = contentValues;
                        }
                        contentValues = contentValues3;
                        Log.d(LOG_TAG, "Unknown switch value : " + str3);
                        i3++;
                        contentValues3 = contentValues;
                    }
                    ContentValues contentValues4 = contentValues3;
                    if (!arraySet.isEmpty()) {
                        Log.d(LOG_TAG, "onImsSwitchUpdated: switchedServices " + arraySet);
                        serviceModuleBase2.onServiceSwitched(i, imsSwitchValue);
                    }
                    contentValues3 = contentValues4;
                }
            }
            this.mLastImsServiceSwitches.put(Integer.valueOf(i), imsSwitchValue);
            for (ServiceModuleBase serviceModuleBase3 : arrayList) {
                serviceModuleBase3.onNetworkChanged(registrationManager.getNetworkEvent(i), i);
                for (ImsRegistration imsRegistration : registrationManager.getRegistrationInfo()) {
                    if (needRegistrationNotification(serviceModuleBase3, imsRegistration.getServices())) {
                        serviceModuleBase3.onRegistered(imsRegistration);
                    }
                }
            }
        } finally {
            this.mChangingServiceModulesStateLock.unlock();
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void forceCallOnServiceSwitched(int i) {
        ContentValues imsSwitchValue = DmConfigHelper.getImsSwitchValue(this.mContext, (String[]) null, i);
        if (this.mLastImsServiceSwitches.get(Integer.valueOf(i)) != null) {
            for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                for (String str : serviceModuleBase.getServicesRequiring()) {
                    if (imsSwitchValue.getAsInteger(str) == null) {
                        Log.d(LOG_TAG, "Unknown switch value : " + str);
                    } else {
                        serviceModuleBase.onServiceSwitched(i, imsSwitchValue);
                    }
                }
            }
        }
    }

    private void onSimReady(int i) {
        IMSLog.d(LOG_TAG, i, "ServiceModuleManager : onSimReady");
        for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
            if (serviceModuleBase.isRunning()) {
                serviceModuleBase.onSimReady(i);
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Log.d(LOG_TAG, "handleMessage: evt=" + message.what);
        int i = message.what;
        if (i == 1) {
            onImsSwitchUpdated(UriUtil.getSimSlotFromUri((Uri) message.obj));
            return;
        }
        if (i == 2) {
            notifyConfigured(true, message.arg1);
        } else {
            if (i != 3) {
                return;
            }
            Log.d(LOG_TAG, "ON SIM READY");
            onSimReady(message.arg1);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void cleanUpModules() {
        this.mChangingServiceModulesStateLock.lock();
        try {
            for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
                if (serviceModuleBase.isRunning()) {
                    serviceModuleBase.cleanUp();
                }
            }
        } finally {
            this.mChangingServiceModulesStateLock.unlock();
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void updateCapabilities(int i) {
        MmTelFeature.MmTelCapabilities mmTelCapabilities = new MmTelFeature.MmTelCapabilities(0);
        RcsFeature.RcsImsCapabilities rcsImsCapabilities = new RcsFeature.RcsImsCapabilities(0);
        for (ServiceModuleBase serviceModuleBase : this.mServiceModules) {
            if (serviceModuleBase == this.mCapabilityDiscoveryModule) {
                rcsImsCapabilities.addCapabilities(serviceModuleBase.queryCapabilityStatus(i).getMask());
            } else {
                mmTelCapabilities.addCapabilities(serviceModuleBase.queryCapabilityStatus(i).getMask());
            }
        }
        Log.d(LOG_TAG, "updateCapabilities to mmTelcapabilities = " + mmTelCapabilities + ", rcsCapabilities = " + rcsImsCapabilities);
        SecImsNotifier.getInstance().updateMmTelCapabilities(i, mmTelCapabilities);
        SecImsNotifier.getInstance().updateRcsCapabilities(i, rcsImsCapabilities);
    }

    private class SimEventListener implements ISimEventListener {
        private SimEventListener() {
        }

        @Override // com.sec.internal.interfaces.ims.core.ISimEventListener
        public void onReady(int i, boolean z) {
            int simState = TelephonyManagerWrapper.getInstance(ServiceModuleManager.this.mContext).getSimState(i);
            Log.d(ServiceModuleManager.LOG_TAG, "onReady: phoneId=" + i + " absent=" + z + "SIM state=" + simState);
            if (simState == 5) {
                ServiceModuleManager serviceModuleManager = ServiceModuleManager.this;
                serviceModuleManager.sendMessage(serviceModuleManager.obtainMessage(3, i, 0, null));
            }
        }
    }

    private List<String> getExtendedServices(int i) {
        String string = ImsRegistry.getString(i, GlobalSettingsConstants.Registration.EXTENDED_SERVICES, "");
        ArrayList arrayList = new ArrayList();
        if (string != null) {
            arrayList.addAll(Arrays.asList(string.split(",")));
        }
        return arrayList;
    }

    private boolean isStartRequired(ServiceModuleBase serviceModuleBase, int i, ISimManager iSimManager) {
        for (String str : serviceModuleBase.getServicesRequiring()) {
            boolean readSwitch = DmConfigHelper.readSwitch(this.mContext, str, true, i);
            if (str.equalsIgnoreCase("mmtel") && iSimManager != null && iSimManager.getSimMno() == Mno.SPRINT) {
                readSwitch |= DmConfigHelper.readBool(this.mContext, ConfigConstants.ConfigPath.OMADM_VWF_ENABLED, Boolean.FALSE, i).booleanValue();
            }
            if (DmConfigHelper.getImsSwitchValue(this.mContext, Arrays.asList(ImsProfile.getRcsServiceList()).contains(str) ? DeviceConfigManager.RCS_SWITCH : str, i) == 1 && readSwitch && !serviceModuleBase.isRunning()) {
                Log.d(LOG_TAG, "isStartRequired: start " + serviceModuleBase.getName() + " module");
                return true;
            }
            IMSLog.i(LOG_TAG, i, "isStartRequired: ImsSwitch not enabled for service: " + str + ", isDmOn: " + readSwitch);
            if (str.contains("mdmi")) {
                return true;
            }
        }
        return false;
    }

    private List<ServiceModuleBase> getRcsServiceModules(ImsProfile imsProfile, int i) {
        VideoShareModule videoShareModule;
        ImageShareModule imageShareModule;
        EucModule eucModule;
        GlsModule glsModule;
        IMSLog.i(LOG_TAG, i, "getRcsServiceModules is called");
        CopyOnWriteArrayList<ServiceModuleBase> copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.mChangingServiceModulesStateLock.lock();
        try {
            boolean z = true;
            if (DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.RCS_SWITCH, i) != 1) {
                z = false;
            }
            if (z && (imsProfile.hasService("options") || imsProfile.hasService(SipMsg.EVENT_PRESENCE))) {
                ImModule imModule = this.mImModule;
                if (imModule != null && this.mServiceModules.contains(imModule)) {
                    copyOnWriteArrayList.add(this.mImModule);
                }
                SessionModule sessionModule = this.mSessionModule;
                if (sessionModule != null && this.mServiceModules.contains(sessionModule)) {
                    copyOnWriteArrayList.add(this.mSessionModule);
                }
                if (imsProfile.hasService("gls") && (glsModule = this.mGlsModule) != null && this.mServiceModules.contains(glsModule)) {
                    copyOnWriteArrayList.add(this.mGlsModule);
                }
                if (imsProfile.hasService("euc") && (eucModule = this.mEucModule) != null && this.mServiceModules.contains(eucModule)) {
                    copyOnWriteArrayList.add(this.mEucModule);
                }
                if (imsProfile.hasService("is") && (imageShareModule = this.mImageShareModule) != null && this.mServiceModules.contains(imageShareModule)) {
                    copyOnWriteArrayList.add(this.mImageShareModule);
                }
                if (imsProfile.hasService("vs") && (videoShareModule = this.mVideoShareModule) != null && this.mServiceModules.contains(videoShareModule)) {
                    copyOnWriteArrayList.add(this.mVideoShareModule);
                }
                OptionsModule optionsModule = this.mOptionsModule;
                if (optionsModule != null && this.mServiceModules.contains(optionsModule)) {
                    copyOnWriteArrayList.add(this.mOptionsModule);
                }
                PresenceModule presenceModule = this.mPresenceModule;
                if (presenceModule != null && this.mServiceModules.contains(presenceModule)) {
                    copyOnWriteArrayList.add(this.mPresenceModule);
                }
                CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscoveryModule;
                if (capabilityDiscoveryModule != null && this.mServiceModules.contains(capabilityDiscoveryModule)) {
                    copyOnWriteArrayList.add(this.mCapabilityDiscoveryModule);
                }
                TapiServiceManager tapiServiceManager = this.mTapiServiceManager;
                if (tapiServiceManager != null && this.mServiceModules.contains(tapiServiceManager)) {
                    copyOnWriteArrayList.add(this.mTapiServiceManager);
                }
                for (ServiceModuleBase serviceModuleBase : copyOnWriteArrayList) {
                    if (!serviceModuleBase.isReady() && !serviceModuleBase.isRunning()) {
                        serviceModuleBase.init();
                    }
                }
            }
            return copyOnWriteArrayList;
        } finally {
            this.mChangingServiceModulesStateLock.unlock();
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void checkRcsServiceModules(List<IRegisterTask> list, int i) {
        IMSLog.i(LOG_TAG, i, "checkRcsServiceModules is called");
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscoveryModule;
        if (capabilityDiscoveryModule != null && !capabilityDiscoveryModule.isRunning()) {
            for (IRegisterTask iRegisterTask : list) {
                if (ImsProfile.hasRcsService(iRegisterTask.getProfile())) {
                    startRcsServiceModules(getRcsServiceModules(iRegisterTask.getProfile(), i), i);
                }
            }
        }
        PresenceModule presenceModule = this.mPresenceModule;
        if (presenceModule == null || presenceModule.isRunning()) {
            return;
        }
        IMSLog.i(LOG_TAG, i, "PresenceModule is not running");
        if (isStartRequired(this.mPresenceModule, i, null)) {
            Log.d(LOG_TAG, "isStartRequired: true ");
            this.mPresenceModule.start();
            this.mPresenceModule.onConfigured(i);
        }
    }
}
