package com.sec.internal.ims.servicemodules.presence;

import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.SemSystemProperties;
import android.telephony.ims.stub.RcsCapabilityExchangeImplBase;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.presence.PresenceInfo;
import com.sec.ims.presence.ServiceTuple;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceNotifyInfo;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription;
import com.sec.internal.constants.ims.servicemodules.presence.PublishResponse;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.PhoneIdKeyMap;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.StringGenerator;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.presence.PresenceSubscriptionController;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.StringIdGenerator;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityEventListener;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityExchangeControl;
import com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class PresenceModule extends ServiceModuleBase implements IPresenceModule, ICapabilityExchangeControl {
    private static final int DEFAULT_WAKE_LOCK_TIMEOUT = 5000;
    private static final String LOG_TAG = "PresenceModule";
    static final String NAME = PresenceModule.class.getSimpleName();
    ICapabilityDiscoveryModule mCapabilityDiscovery;
    Context mContext;
    private SimpleEventLog mEventLog;
    ICapabilityEventListener mListener;
    protected Handler mModuleHandler;
    private int mPhoneCount;
    private PresenceCacheController mPresenceCacheController;
    private PhoneIdKeyMap<PresenceConfig> mPresenceConfig;
    private PhoneIdKeyMap<PresenceModuleInfo> mPresenceModuleInfo;
    private Map<Integer, Boolean> mPresenceRegiInfoUpdater;
    private PresenceSharedPrefHelper mPresenceSp;
    protected PresenceUpdate mPresenceUpdate;
    private final RegistrantList mPublishRegistrants;
    IPresenceStackInterface mService;
    private List<ServiceTuple> mServiceTupleList;
    private Map<String, PendingIntent> mSubscribeRetryList;
    private PhoneIdKeyMap<UriGenerator> mUriGenerator;
    private Map<Integer, Set<ImsUri>> mUrisToSubscribe;
    PowerManager.WakeLock mWakeLock;

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityExchangeControl
    public boolean sendOptionsRequest(ImsUri imsUri, boolean z, Set<String> set, int i) {
        return false;
    }

    static class PresenceModuleInfo {
        PendingIntent mBadEventIntent;
        boolean mLimitImmediateRetry;
        boolean mLimitReRegistration;
        PresenceResponse.PresenceFailureReason mOldPublishError;
        boolean mOwnInfoPublished;
        PresenceInfo mOwnPresenceInfo;
        boolean mParalysed;
        PendingIntent mPollingIntent;
        PresenceCache mPresenceCache;
        int mPublishExpBackOffRetryCount;
        int mPublishNoResponseCount;
        int mPublishNotProvisionedCount;
        int mPublishRequestTimeout;
        ImsRegistration mRegInfo;
        PendingIntent mRetryPublishIntent;
        ISimManager mSimCardManager;
        boolean ongoingPublishErrRetry;
        boolean mRequestPublishToAosp = false;
        long mLastBadEventTimestamp = -1;
        boolean mBadEventProgress = false;
        boolean mPublishNotFoundProgress = false;
        boolean mFirstPublish = true;
        long mLastPublishTimestamp = -1;
        long mBackupPublishTimestamp = -1;
        Mno mMno = Mno.DEFAULT;
        PresenceResponse.PresenceStatusCode mLastSubscribeStatusCode = PresenceResponse.PresenceStatusCode.NONE;

        PresenceModuleInfo() {
        }
    }

    public PresenceModule(Looper looper, Context context) {
        super(looper);
        this.mPresenceRegiInfoUpdater = new HashMap();
        this.mContext = null;
        this.mCapabilityDiscovery = null;
        this.mListener = null;
        this.mPhoneCount = 0;
        this.mPublishRegistrants = new RegistrantList();
        this.mUrisToSubscribe = new HashMap();
        this.mSubscribeRetryList = new HashMap();
        this.mServiceTupleList = new ArrayList();
        this.mModuleHandler = null;
        this.mContext = context;
        this.mEventLog = new SimpleEventLog(context, NAME, 20);
        this.mPhoneCount = SimManagerFactory.getAllSimManagers().size();
        this.mPresenceSp = new PresenceSharedPrefHelper(this.mContext, this);
        this.mPresenceCacheController = new PresenceCacheController(this);
        this.mPresenceUpdate = new PresenceUpdate(this);
        this.mPresenceModuleInfo = new PhoneIdKeyMap<>(this.mPhoneCount, new PresenceModuleInfo());
        this.mPresenceConfig = new PhoneIdKeyMap<>(this.mPhoneCount, null);
        this.mUriGenerator = new PhoneIdKeyMap<>(this.mPhoneCount, null);
        PresenceIntentReceiver presenceIntentReceiver = new PresenceIntentReceiver(this);
        this.mContext.registerReceiver(PresenceIntentReceiver.mIntentReceiver, presenceIntentReceiver.getIntentFilter());
        this.mContext.registerReceiver(PresenceIntentReceiver.mSubscribeRetryIntentReceiver, presenceIntentReceiver.getSubscribeRetryIntentFilter());
        for (int i = 0; i < this.mPhoneCount; i++) {
            PresenceModuleInfo presenceModuleInfo = new PresenceModuleInfo();
            presenceModuleInfo.mSimCardManager = SimManagerFactory.getSimManagerFromSimSlot(i);
            presenceModuleInfo.mOwnPresenceInfo = new PresenceInfo(i);
            presenceModuleInfo.mPresenceCache = new PresenceCache(this.mContext, i);
            this.mPresenceModuleInfo.put(i, presenceModuleInfo);
            this.mPresenceConfig.put(i, new PresenceConfig(this.mContext, i));
            this.mUrisToSubscribe.put(Integer.valueOf(i), new HashSet());
            this.mUriGenerator.put(i, UriGeneratorFactory.getInstance().get(i, UriGenerator.URIServiceType.RCS_URI));
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager != null) {
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, LOG_TAG);
            this.mWakeLock = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        }
        Log.i(LOG_TAG, "created");
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{SipMsg.EVENT_PRESENCE};
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onServiceSwitched(int i, ContentValues contentValues) {
        IMSLog.i(LOG_TAG, i, "onServiceSwitched:");
        updateFeatures(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        super.init();
        Log.i(LOG_TAG, McsConstants.PushMessages.VALUE_INIT);
        IPresenceStackInterface presenceHandler = ImsRegistry.getHandlerFactory().getPresenceHandler();
        this.mService = presenceHandler;
        presenceHandler.registerForPresenceInfo(this, 10, null);
        this.mService.registerForWatcherInfo(this, 12, null);
        this.mService.registerForPublishFailure(this, 2, null);
        this.mService.registerForPresenceNotifyInfo(this, 16, null);
        this.mService.registerForPresenceNotifyStatus(this, 17, null);
        this.mCapabilityDiscovery = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
        for (int i = 0; i < this.mPhoneCount; i++) {
            this.mPresenceModuleInfo.get(i).mLastPublishTimestamp = this.mPresenceSp.loadPublishTimestamp(i);
            this.mPresenceModuleInfo.get(i).mLastBadEventTimestamp = this.mPresenceSp.loadBadEventTimestamp(i);
        }
        HandlerThread handlerThread = new HandlerThread(LOG_TAG);
        handlerThread.start();
        this.mModuleHandler = new Handler(handlerThread.getLooper());
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void start() {
        super.start();
        Log.i(LOG_TAG, "start:");
        for (int i = 0; i < this.mPhoneCount; i++) {
            this.mPresenceModuleInfo.get(i).mPublishNotProvisionedCount = 0;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void stop() {
        super.stop();
        Log.i(LOG_TAG, "stop:");
        for (int i = 0; i < this.mPhoneCount; i++) {
            this.mPresenceModuleInfo.get(i).mOwnInfoPublished = false;
            this.mPresenceModuleInfo.get(i).mBackupPublishTimestamp = 0L;
            this.mPresenceSp.savePublishTimestamp(0L, i);
            stopPublishTimer(i);
            stopSubscribeRetryTimer(i);
            resetPublishErrorHandling(i);
            setParalysed(false, i);
            if (this.mPresenceModuleInfo.get(i).mRegInfo != null) {
                sendMessage(obtainMessage(3, Integer.valueOf(i)));
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        IMSLog.i(LOG_TAG, i, "onConfigured:");
        processConfigured(i);
    }

    private void processConfigured(final int i) {
        this.mModuleHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceModule$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PresenceModule.this.lambda$processConfigured$0(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processConfigured$0(int i) {
        ImsProfile imsProfile = ImsRegistry.getRegistrationManager().getImsProfile(i, ImsProfile.PROFILE_TYPE.RCS);
        if (imsProfile == null || !imsProfile.hasService(SipMsg.EVENT_PRESENCE)) {
            IMSLog.i(LOG_TAG, i, "processConfigured: no Presence support.");
            return;
        }
        PresenceModuleInfo presenceModuleInfo = this.mPresenceModuleInfo.get(i);
        presenceModuleInfo.mMno = presenceModuleInfo.mSimCardManager.getSimMno();
        IMSLog.i(LOG_TAG, i, "onConfigured: mno = " + presenceModuleInfo.mMno);
        readConfig(i);
        updateFeatures(i);
        this.mPresenceSp.checkAndClearPresencePreferences(presenceModuleInfo.mSimCardManager.getImsi(), i);
    }

    private void updateFeatures(int i) {
        this.mEnabledFeatures[i] = 0;
        if (DmConfigHelper.getImsSwitchValue(this.mContext, SipMsg.EVENT_PRESENCE, i) != 1 || this.mPresenceConfig.get(i).getDefaultDisc() == 2) {
            return;
        }
        this.mEnabledFeatures[i] = Capabilities.FEATURE_PRESENCE_DISCOVERY;
        if (this.mPresenceConfig.get(i).isSocialPresenceSupport()) {
            long[] jArr = this.mEnabledFeatures;
            jArr[i] = jArr[i] | Capabilities.FEATURE_SOCIAL_PRESENCE;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        super.onRegistered(imsRegistration);
        Log.i(LOG_TAG, "onRegistered:");
        processRegistered(imsRegistration);
    }

    private void processRegistered(final ImsRegistration imsRegistration) {
        this.mModuleHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceModule$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PresenceModule.this.lambda$processRegistered$1(imsRegistration);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processRegistered$1(ImsRegistration imsRegistration) {
        int phoneId = imsRegistration.getPhoneId();
        PresenceModuleInfo presenceModuleInfo = this.mPresenceModuleInfo.get(phoneId);
        presenceModuleInfo.mMno = presenceModuleInfo.mSimCardManager.getSimMno();
        IMSLog.i(LOG_TAG, phoneId, "processRegistered: mno = " + presenceModuleInfo.mMno);
        readConfig(phoneId);
        ImsProfile imsProfile = imsRegistration.getImsProfile();
        if (presenceModuleInfo.mRegInfo == null) {
            presenceModuleInfo.mOwnPresenceInfo.setPublishGzipEnabled(imsProfile.isPublishGzipEnabled());
        }
        presenceModuleInfo.mRegInfo = imsRegistration;
        this.mPresenceRegiInfoUpdater.put(Integer.valueOf(imsRegistration.getPhoneId()), Boolean.TRUE);
        IMSLog.i(LOG_TAG, phoneId, "processRegistered: profile " + imsProfile.getName());
        List impuList = imsRegistration.getImpuList();
        if (impuList != null && !impuList.isEmpty()) {
            this.mUriGenerator.put(phoneId, UriGeneratorFactory.getInstance().get(((NameAddr) impuList.get(0)).getUri(), UriGenerator.URIServiceType.RCS_URI));
            if (RcsPolicyManager.getRcsStrategy(phoneId).boolSetting(RcsPolicySettings.RcsPolicy.USE_SIPURI_FOR_URIGENERATOR)) {
                for (NameAddr nameAddr : imsRegistration.getImpuList()) {
                    if (nameAddr.getUri().getUriType() == ImsUri.UriType.SIP_URI) {
                        this.mUriGenerator.put(phoneId, UriGeneratorFactory.getInstance().get(nameAddr.getUri(), UriGenerator.URIServiceType.RCS_URI));
                        return;
                    }
                }
                return;
            }
            return;
        }
        IMSLog.e(LOG_TAG, phoneId, "processRegistered: impus is empty !!!");
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onDeregistering(ImsRegistration imsRegistration) {
        Log.i(LOG_TAG, "onDeregistering:");
        processDeregistering(imsRegistration);
    }

    private void processDeregistering(final ImsRegistration imsRegistration) {
        this.mModuleHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceModule$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                PresenceModule.this.lambda$processDeregistering$2(imsRegistration);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDeregistering$2(ImsRegistration imsRegistration) {
        if (imsRegistration != null) {
            Log.i(LOG_TAG, "processDeregistering:");
            if (imsRegistration.getImsProfile().hasEmergencySupport()) {
                return;
            }
            removeMessages(1, Integer.valueOf(imsRegistration.getPhoneId()));
            removeMessages(15, Integer.valueOf(imsRegistration.getPhoneId()));
            if (isRunning()) {
                unpublish(imsRegistration.getPhoneId());
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        super.onDeregistered(imsRegistration, i);
        Log.i(LOG_TAG, "onDeregistered:");
        processDeregistered(imsRegistration);
    }

    private void processDeregistered(final ImsRegistration imsRegistration) {
        this.mModuleHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceModule$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PresenceModule.this.lambda$processDeregistered$3(imsRegistration);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDeregistered$3(ImsRegistration imsRegistration) {
        ImsProfile imsProfile = imsRegistration.getImsProfile();
        int phoneId = imsRegistration.getPhoneId();
        IMSLog.i(LOG_TAG, phoneId, "processDeregistered: profile " + imsProfile.getName());
        removeMessages(1, Integer.valueOf(phoneId));
        removeMessages(10, Integer.valueOf(phoneId));
        removeMessages(12, Integer.valueOf(phoneId));
        removeMessages(11, Integer.valueOf(phoneId));
        removeMessages(9, Integer.valueOf(phoneId));
        removeMessages(16, Integer.valueOf(phoneId));
        removeMessages(17, Integer.valueOf(phoneId));
        removeMessages(15, Integer.valueOf(phoneId));
        setParalysed(false, phoneId);
        PresenceModuleInfo presenceModuleInfo = this.mPresenceModuleInfo.get(phoneId);
        presenceModuleInfo.mRegInfo = null;
        if (presenceModuleInfo.mMno == Mno.TMOUS) {
            presenceModuleInfo.mOwnPresenceInfo.setPublishGzipEnabled(imsProfile.isPublishGzipEnabled());
        }
        this.mPresenceRegiInfoUpdater.put(Integer.valueOf(imsRegistration.getPhoneId()), Boolean.FALSE);
        this.mUriGenerator.put(phoneId, null);
        this.mPresenceModuleInfo.get(phoneId).mOwnInfoPublished = false;
        resetPublishErrorHandling(phoneId);
        PresenceUtil.notifyPublishCommandError(phoneId, this.mContext, 9);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onSimChanged(int i) {
        IMSLog.i(LOG_TAG, i, "onSimChanged:");
        this.mPresenceCacheController.clearPresenceInfo(i);
        setBadEventProgress(false, i);
        this.mPresenceSp.saveBadEventTimestamp(0L, i);
        setPublishNotFoundProgress(false, i);
    }

    void onDefaultSmsPackageChanged() {
        Log.i(LOG_TAG, "onDefaultSmsPackageChanged");
        for (int i = 0; i < this.mPhoneCount; i++) {
            if (!getBadEventProgress(i)) {
                setPublishNotFoundProgress(false, i);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityExchangeControl
    public boolean isReadyToRequest(int i) {
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        if (rcsStrategy == null) {
            IMSLog.i(LOG_TAG, i, "isReadyToRequest: mnoStrategy null");
            return false;
        }
        return rcsStrategy.isPresenceReadyToRequest(this.mPresenceModuleInfo.get(i).mOwnInfoPublished, getParalysed(i));
    }

    public void setOwnCapabilities(long j, int i) {
        String msisdn;
        if (isRunning()) {
            IMSLog.i(LOG_TAG, i, "setOwnCapabilities: features " + Capabilities.dumpFeature(j));
            this.mEventLog.add(i, "OwnCapabilities - set, features = " + j);
            IMSLog.c(LogClass.PM_SET_OWNCAPA, i + ",SET:" + j);
            PresenceInfo presenceInfo = new PresenceInfo(i);
            IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
            if (rcsStrategy != null) {
                rcsStrategy.changeServiceDescription();
            }
            PresenceModuleInfo presenceModuleInfo = this.mPresenceModuleInfo.get(i);
            List<ServiceTuple> serviceTupleList = ServiceTuple.getServiceTupleList(j);
            if (presenceModuleInfo.mMno == Mno.TMOUS && ImsUtil.getComposerAuthValue(i, this.mContext) == 0) {
                IMSLog.d(LOG_TAG, i, "remove MmtelCallComposer tuple");
                serviceTupleList.removeIf(new Predicate() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceModule$$ExternalSyntheticLambda3
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$setOwnCapabilities$4;
                        lambda$setOwnCapabilities$4 = PresenceModule.lambda$setOwnCapabilities$4((ServiceTuple) obj);
                        return lambda$setOwnCapabilities$4;
                    }
                });
            }
            for (ServiceTuple serviceTuple : serviceTupleList) {
                IMSLog.i(LOG_TAG, i, "setOwnCapabilities: " + serviceTuple);
                ServiceTuple serviceTuple2 = presenceModuleInfo.mOwnPresenceInfo.getServiceTuple(serviceTuple.serviceId);
                if (serviceTuple2 != null) {
                    serviceTuple.tupleId = serviceTuple2.tupleId;
                } else if (presenceModuleInfo.mMno.isKor()) {
                    String loadRandomTupleId = this.mPresenceSp.loadRandomTupleId(serviceTuple.feature, i);
                    if (loadRandomTupleId != null) {
                        serviceTuple.tupleId = loadRandomTupleId;
                    } else {
                        String generateString = StringGenerator.generateString(5, 10);
                        serviceTuple.tupleId = generateString;
                        this.mPresenceSp.saveRandomTupleId(serviceTuple.feature, generateString, i);
                    }
                } else {
                    serviceTuple.tupleId = StringGenerator.generateString(5, 10);
                }
            }
            presenceInfo.setPhoneId(i);
            presenceInfo.addService(serviceTupleList);
            presenceInfo.setPublishGzipEnabled(presenceModuleInfo.mOwnPresenceInfo.getPublishGzipEnabled());
            presenceModuleInfo.mOwnPresenceInfo = presenceInfo;
            buildPresenceInfoForThirdParty(i);
            ImsRegistration imsRegistration = presenceModuleInfo.mRegInfo;
            if (imsRegistration == null) {
                return;
            }
            List impuList = imsRegistration.getImpuList();
            if (impuList != null && !impuList.isEmpty()) {
                ImsUri uri = ((NameAddr) impuList.get(0)).getUri();
                if (presenceModuleInfo.mMno == Mno.ATT) {
                    Iterator it = impuList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        NameAddr nameAddr = (NameAddr) it.next();
                        if (nameAddr.getUri().getUriType() == ImsUri.UriType.TEL_URI && (msisdn = nameAddr.getUri().getMsisdn()) != null && !msisdn.equals(SimManagerFactory.getImsiFromPhoneId(i))) {
                            Log.i(LOG_TAG, "getPreferredImpu: Found MDN TEL URI");
                            uri = nameAddr.getUri();
                            break;
                        }
                    }
                }
                presenceModuleInfo.mOwnPresenceInfo.setUri(uri.toString());
                IMSLog.s(LOG_TAG, i, "setOwnCapabilities: uri" + presenceModuleInfo.mOwnPresenceInfo.getUri());
                if (getParalysed(i)) {
                    IMSLog.i(LOG_TAG, i, "setOwnCapabilities: paralysed");
                    return;
                }
                if (presenceModuleInfo.mRetryPublishIntent != null) {
                    if (!presenceModuleInfo.ongoingPublishErrRetry) {
                        IMSLog.i(LOG_TAG, i, "setOwnCapabilities: retry timer is running");
                        return;
                    }
                    this.mPresenceConfig.get(i).setPublishErrRetry(presenceModuleInfo.mRegInfo.getImsProfile().getPublishErrRetryTimer());
                    IMSLog.i(LOG_TAG, i, "initialize PublishErrRetry: " + this.mPresenceConfig.get(i).getPublishErrRetry());
                }
                if (presenceModuleInfo.mMno == Mno.VZW) {
                    sendMessageDelayed(obtainMessage(1, Integer.valueOf(i)), 500L);
                    return;
                } else {
                    sendMessage(obtainMessage(1, Integer.valueOf(i)));
                    return;
                }
            }
            IMSLog.e(LOG_TAG, i, "setOwnCapabilities: impus is empty !!!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$setOwnCapabilities$4(ServiceTuple serviceTuple) {
        return serviceTuple.description == "MmtelCallComposer";
    }

    public void registerCapabilityEventListener(ICapabilityEventListener iCapabilityEventListener) {
        this.mListener = iCapabilityEventListener;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityExchangeControl
    public int requestCapabilityExchange(Set<ImsUri> set, CapabilityConstants.RequestType requestType, int i, int i2) {
        int size;
        IMSLog.i(LOG_TAG, i, "requestCapabilityExchange: list requestType " + requestType);
        if (!isReadyToRequest(i)) {
            IMSLog.e(LOG_TAG, i, "requestCapabilityExchange: PUBLISH is not completed. bail.");
            return 0;
        }
        if (!checkModuleReady(i)) {
            return 0;
        }
        Set<ImsUri> set2 = this.mUrisToSubscribe.get(Integer.valueOf(i));
        synchronized (set2) {
            if (this.mPresenceConfig.get(i).getMaxUri() - set2.size() < set.size()) {
                size = this.mPresenceConfig.get(i).getMaxUri() - set2.size();
                Iterator<ImsUri> it = set.iterator();
                for (int i3 = 0; i3 < size && it.hasNext(); i3++) {
                    set2.add(it.next());
                }
                set.removeAll(set2);
            } else {
                set2.addAll(set);
                size = set.size();
                set.clear();
            }
            this.mPresenceCacheController.loadPresenceStorage(set2, i);
        }
        acquireWakeLock();
        sendMessage(obtainMessage(7, i, i2, requestType));
        return size;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityExchangeControl
    public boolean requestCapabilityExchange(ImsUri imsUri, ICapabilityExchangeControl.ICapabilityExchangeCallback iCapabilityExchangeCallback, CapabilityConstants.RequestType requestType, boolean z, long j, int i, String str, int i2) {
        IMSLog.s(LOG_TAG, i, "requestCapabilityExchange: uri " + imsUri);
        IMSLog.i(LOG_TAG, i, "requestCapabilityExchange: requestType " + requestType + ", isAlwaysForce: " + z);
        if (!isReadyToRequest(i)) {
            IMSLog.e(LOG_TAG, i, "requestCapabilityExchange: PUBLISH is not completed. bail.");
            return false;
        }
        boolean isKor = this.mPresenceModuleInfo.get(i).mMno.isKor();
        if (this.mPresenceConfig.get(i).getRlsUri() != null && this.mPresenceConfig.get(i).getRlsUri().getScheme() != null && !isKor) {
            IMSLog.i(LOG_TAG, i, "requestCapabilityExchange: adding uri to RCS list");
        } else {
            sendMessage(obtainMessage(5, new PresenceSubscriptionController.SubscriptionRequest(imsUri, requestType, z, i, i2)));
        }
        if (iCapabilityExchangeCallback == null) {
            return true;
        }
        iCapabilityExchangeCallback.onComplete(null);
        return true;
    }

    private void startPublishTimer(int i) {
        if (this.mPresenceModuleInfo.get(i).mPollingIntent != null) {
            IMSLog.e(LOG_TAG, i, "startPublishTimer: PublishTimer is already running. Stopping it.");
            stopPublishTimer(i);
        }
        long publishTimer = this.mPresenceConfig.get(i).getPublishTimer();
        if (PresenceUtil.getExtendedPublishTimerCond(i, this.mPresenceModuleInfo.get(i).mOwnPresenceInfo.getServiceList())) {
            publishTimer = this.mPresenceConfig.get(i).getPublishTimerExtended();
        }
        IMSLog.i(LOG_TAG, i, "startPublishTimer: PublishTimer " + publishTimer + " sec");
        Intent intent = new Intent("com.sec.internal.ims.servicemodules.presence.publish_timeout");
        intent.putExtra("sim_slot_id", i);
        intent.setPackage(this.mContext.getPackageName());
        this.mPresenceModuleInfo.get(i).mPollingIntent = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
        AlarmTimer.start(this.mContext, this.mPresenceModuleInfo.get(i).mPollingIntent, publishTimer * 1000);
    }

    private void stopPublishTimer(int i) {
        PendingIntent pendingIntent = this.mPresenceModuleInfo.get(i).mPollingIntent;
        if (pendingIntent == null) {
            IMSLog.e(LOG_TAG, i, "stopPublishTimer: PublishTimer is not running.");
            return;
        }
        IMSLog.i(LOG_TAG, i, "stopPublishTimer:");
        AlarmTimer.stop(this.mContext, pendingIntent);
        this.mPresenceModuleInfo.get(i).mPollingIntent = null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public PresenceInfo getOwnPresenceInfo(int i) {
        IMSLog.i(LOG_TAG, i, "getOwnPresenceInfo");
        return this.mPresenceModuleInfo.get(i).mOwnPresenceInfo;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public PresenceInfo getPresenceInfo(ImsUri imsUri, int i) {
        return this.mPresenceCacheController.getPresenceInfo(imsUri, i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public PresenceInfo getPresenceInfoByContactId(String str, int i) {
        return this.mPresenceCacheController.getPresenceInfoByContactId(str, this.mCapabilityDiscovery.getPhonebook().getNumberlistByContactId(str), i);
    }

    public void subscribe(PresenceSubscriptionController.SubscriptionRequest subscriptionRequest, boolean z) {
        int i = subscriptionRequest.phoneId;
        IMSLog.s(LOG_TAG, i, "subscribe: uri " + subscriptionRequest.uri);
        IMSLog.i(LOG_TAG, i, "subscribe: request type " + subscriptionRequest.type);
        if (checkModuleReady(i)) {
            PresenceSubscription subscription = PresenceSubscriptionController.getSubscription(subscriptionRequest.uri, true, i);
            if (subscription == null) {
                subscription = new PresenceSubscription(StringIdGenerator.generateSubscriptionId());
                subscription.addUri(subscriptionRequest.uri);
                subscription.setRequestType(subscriptionRequest.type);
                subscription.setPhoneId(i);
                PresenceSubscriptionController.addSubscription(subscription);
            } else {
                CapabilityConstants.RequestType requestType = subscriptionRequest.type;
                if (RcsPolicyManager.getRcsStrategy(i).isSubscribeThrottled(subscription, this.mPresenceConfig.get(i).getSourceThrottleSubscribe() * 1000, requestType == CapabilityConstants.RequestType.REQUEST_TYPE_NONE || requestType == CapabilityConstants.RequestType.REQUEST_TYPE_LAZY, subscriptionRequest.isAlwaysForce) && subscriptionRequest.type != CapabilityConstants.RequestType.REQUEST_TYPE_SR_API) {
                    IMSLog.i(LOG_TAG, i, "subscribe: single fetch has been already sent");
                    IMSLog.s(LOG_TAG, i, "subscribe: throttled uri " + subscriptionRequest.uri);
                    return;
                }
                subscription.updateState(0);
                subscription.updateTimestamp();
                subscription.setRequestType(subscriptionRequest.type);
            }
            PresenceSubscription presenceSubscription = subscription;
            long calSubscribeDelayTime = RcsPolicyManager.getRcsStrategy(i).calSubscribeDelayTime(presenceSubscription);
            if (calSubscribeDelayTime > 0 && subscriptionRequest.type != CapabilityConstants.RequestType.REQUEST_TYPE_SR_API) {
                IMSLog.i(LOG_TAG, i, "subscribe: delayed for " + calSubscribeDelayTime);
                presenceSubscription.updateState(5);
                sendMessageDelayed(obtainMessage(5, subscriptionRequest), calSubscribeDelayTime);
                return;
            }
            if (subscriptionRequest.type == CapabilityConstants.RequestType.REQUEST_TYPE_LAZY) {
                PresenceSubscriptionController.addLazySubscription(this.mUriGenerator.get(i).normalize(subscriptionRequest.uri));
            }
            IMSLog.i(LOG_TAG, i, "subscribe internalRequestId : " + subscriptionRequest.internalRequestId);
            int i2 = subscriptionRequest.internalRequestId;
            if (i2 != 0) {
                PresenceUtil.replaceSubscribeResponseCbSubsId(i2, presenceSubscription.getSubscriptionId());
            }
            this.mService.subscribe(PresenceUtil.convertUriType(subscriptionRequest.uri, this.mPresenceConfig.get(i).useSipUri(), getPresenceInfo(subscriptionRequest.uri, i), this.mPresenceModuleInfo.get(i).mMno, this.mUriGenerator.get(i), i), z, obtainMessage(6, presenceSubscription), presenceSubscription.getSubscriptionId(), i);
        }
    }

    private void subscribe(Set<ImsUri> set, boolean z, CapabilityConstants.RequestType requestType, int i, int i2) {
        IMSLog.s(LOG_TAG, i, "subscribe: uri list " + set);
        IMSLog.i(LOG_TAG, i, "subscribe: request type " + requestType);
        if (requestType == CapabilityConstants.RequestType.REQUEST_TYPE_PERIODIC) {
            removeMessages(8);
            stopSubscribeRetryTimer(i);
        }
        if (checkModuleReady(i)) {
            PresenceModuleInfo presenceModuleInfo = this.mPresenceModuleInfo.get(i);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (ImsUri imsUri : set) {
                if (PresenceSubscriptionController.hasSubscription(imsUri)) {
                    IMSLog.i(LOG_TAG, i, "subscribe: subscription has been already sent");
                    IMSLog.s(LOG_TAG, i, "subscribe: subscribed uri " + imsUri);
                    arrayList2.add(imsUri);
                } else {
                    if (RcsPolicyManager.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.LIST_SUB_URI_TRANSLATION)) {
                        imsUri = PresenceUtil.convertUriType(imsUri, this.mPresenceConfig.get(i).useSipUri(), getPresenceInfo(imsUri, i), presenceModuleInfo.mMno, this.mUriGenerator.get(i), i);
                    }
                    arrayList.add(imsUri);
                }
            }
            if (arrayList2.size() > 0) {
                set.removeAll(arrayList2);
            }
            if (arrayList.size() == 0) {
                IMSLog.i(LOG_TAG, i, "subscribe: no URI to subscribe.");
                return;
            }
            PresenceSubscription presenceSubscription = new PresenceSubscription(StringIdGenerator.generateSubscriptionId());
            presenceSubscription.addUriAll(set);
            presenceSubscription.setExpiry(PresenceUtil.getPollListSubExp(this.mContext, i));
            presenceSubscription.setRequestType(requestType);
            presenceSubscription.setSingleFetch(false);
            presenceSubscription.setPhoneId(i);
            if (presenceModuleInfo.mMno == Mno.TMOUS) {
                presenceSubscription.addDropUriAll(set);
            }
            set.clear();
            PresenceSubscriptionController.addSubscription(presenceSubscription);
            IMSLog.i(LOG_TAG, i, "subscribe internalRequestId : " + i2);
            if (i2 != 0) {
                PresenceUtil.replaceSubscribeResponseCbSubsId(i2, presenceSubscription.getSubscriptionId());
            }
            ImsRegistration imsRegistration = presenceModuleInfo.mRegInfo;
            if (imsRegistration != null) {
                this.mService.subscribeList(arrayList, z, obtainMessage(6, presenceSubscription), presenceSubscription.getSubscriptionId(), imsRegistration.getImsProfile().isGzipEnabled(), presenceSubscription.getExpiry(), i);
            }
        }
    }

    public void addPublishResponseCallback(int i, RcsCapabilityExchangeImplBase.PublishResponseCallback publishResponseCallback) {
        PresenceUtil.addPublishResponseCallback(i, publishResponseCallback);
    }

    public void publish(PresenceInfo presenceInfo, int i) {
        publish(presenceInfo, i, null);
    }

    void publish(PresenceInfo presenceInfo, int i, String str) {
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        if (!isRunning() || rcsStrategy == null || this.mPresenceModuleInfo.get(i).mRegInfo == null) {
            IMSLog.i(LOG_TAG, i, "publish: not ready to publish");
            if (this.mPresenceModuleInfo.get(i).mRetryPublishIntent != null) {
                stopRetryPublishTimer(i);
            }
            PresenceUtil.notifyPublishCommandError(i, this.mContext, 9);
            return;
        }
        IMSLog.s(LOG_TAG, i, "publish: " + presenceInfo);
        removeMessages(1, Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            removeMessages(15, Integer.valueOf(i));
        }
        stopPublishTimer(i);
        stopRetryPublishTimer(i);
        long calThrottledPublishRetryDelayTime = rcsStrategy.calThrottledPublishRetryDelayTime(this.mPresenceModuleInfo.get(i).mLastPublishTimestamp, this.mPresenceConfig.get(i).getSourceThrottlePublish());
        if (calThrottledPublishRetryDelayTime > 0) {
            if (!TextUtils.isEmpty(str)) {
                sendMessageDelayed(obtainMessage(15, i, 0, str), calThrottledPublishRetryDelayTime);
                return;
            } else {
                sendMessageDelayed(obtainMessage(1, Integer.valueOf(i)), calThrottledPublishRetryDelayTime);
                return;
            }
        }
        Date date = new Date();
        if (this.mPresenceModuleInfo.get(i).mFirstPublish && this.mPresenceConfig.get(i).getBadEventExpiry() != 0) {
            long badEventExpiry = (this.mPresenceModuleInfo.get(i).mLastBadEventTimestamp + (this.mPresenceConfig.get(i).getBadEventExpiry() * 1000)) - date.getTime();
            if (badEventExpiry > 0) {
                IMSLog.i(LOG_TAG, i, "publish: restart BadEventTimer");
                startBadEventTimer(badEventExpiry, false, i);
            }
        }
        long isTdelay = rcsStrategy.isTdelay(this.mPresenceConfig.get(i).getTdelayPublish());
        if (isTdelay != 0) {
            IMSLog.i(LOG_TAG, i, "publish: retry after " + isTdelay + "ms");
            if (!TextUtils.isEmpty(str)) {
                sendMessageDelayed(obtainMessage(15, i, 0, str), isTdelay);
                return;
            } else {
                sendMessageDelayed(obtainMessage(1, Integer.valueOf(i)), isTdelay);
                return;
            }
        }
        if (RcsUtils.isImsSingleRegiRequired(this.mContext, i) && ConfigUtil.isGoogDmaPackageInuse(this.mContext, i) && RcsUtils.isSrRcsPresenceEnabled(this.mContext, i) && TextUtils.isEmpty(str)) {
            if (!this.mPresenceModuleInfo.get(i).mOwnInfoPublished || !this.mPresenceModuleInfo.get(i).mRequestPublishToAosp) {
                IMSLog.i(LOG_TAG, i, "publish: call onRequestPublishCapabilities, return");
                this.mEventLog.add(i, "Publish - call onRequestPublishCapabilities");
                this.mCapabilityDiscovery.removePublishedServiceList(i);
                SecImsNotifier.getInstance().onRequestPublishCapabilities(i, 1);
                this.mPresenceModuleInfo.get(i).mRequestPublishToAosp = true;
                return;
            }
            IMSLog.i(LOG_TAG, i, "publish: already published, return");
            return;
        }
        if (this.mPresenceSp.checkIfValidEtag(i)) {
            IMSLog.i(LOG_TAG, i, "valid etag, setting to " + this.mPresenceSp.getPublishETag(i));
            presenceInfo.setEtag(this.mPresenceSp.getPublishETag(i));
        } else {
            IMSLog.i(LOG_TAG, i, "not valid etag");
            presenceInfo.setEtag((String) null);
        }
        if (PresenceUtil.getExtendedPublishTimerCond(i, this.mPresenceModuleInfo.get(i).mOwnPresenceInfo.getServiceList())) {
            this.mPresenceModuleInfo.get(i).mOwnPresenceInfo.setExtendedTimerFlag(true);
            presenceInfo.setExpireTime(Math.max(presenceInfo.getMinExpires(), this.mPresenceConfig.get(i).getPublishTimerExtended()));
            presenceInfo.setExtendedTimerFlag(true);
        } else {
            this.mPresenceModuleInfo.get(i).mOwnPresenceInfo.setExtendedTimerFlag(false);
            presenceInfo.setExpireTime(Math.max(presenceInfo.getMinExpires(), this.mPresenceConfig.get(i).getPublishTimer()));
            presenceInfo.setExtendedTimerFlag(false);
        }
        if (!TextUtils.isEmpty(str)) {
            IMSLog.i(LOG_TAG, i, "publish: set pidfXml");
            IMSLog.s(LOG_TAG, i, "publish: pidfXml from AOSP = " + str);
            presenceInfo.setPidf(str);
        }
        PresenceModuleInfo presenceModuleInfo = this.mPresenceModuleInfo.get(i);
        ServiceTuple.getServiceTuple(Capabilities.FEATURE_CHAT_CPM);
        if (presenceModuleInfo.mMno.isKor() && this.mPresenceSp.loadDisplayText(i) != null) {
            IMSLog.i(LOG_TAG, i, "displaytext exist");
            ServiceTuple.setDisplayText(Capabilities.FEATURE_CHAT_CPM, this.mPresenceSp.loadDisplayText(i));
        } else {
            IMSLog.i(LOG_TAG, i, "not valid displaytext");
        }
        acquireWakeLock();
        setServiceVersion(i);
        this.mService.publish(presenceInfo, obtainMessage(2, presenceInfo), i);
        if (this.mPresenceModuleInfo.get(i).mFirstPublish) {
            this.mPresenceModuleInfo.get(i).mFirstPublish = false;
        }
        this.mEventLog.add(i, "Publish - sent");
        IMSLog.c(LogClass.PM_PUB, i + ",PUB-SENT");
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public void unpublish(int i) {
        IMSLog.i(LOG_TAG, i, "unpublish: ");
        stopPublishTimer(i);
        stopRetryPublishTimer(i);
        removeMessages(3, Integer.valueOf(i));
        ImsRegistration imsRegistration = this.mPresenceModuleInfo.get(i).mRegInfo;
        PresenceModuleInfo presenceModuleInfo = this.mPresenceModuleInfo.get(i);
        if (imsRegistration != null && !PresenceUtil.isRegProhibited(imsRegistration, i)) {
            this.mService.unpublish(i);
        }
        if (presenceModuleInfo.mMno.isKor()) {
            IMSLog.i(LOG_TAG, i, "unpublish: remain etag for Kor");
            long j = presenceModuleInfo.mLastPublishTimestamp;
            if (j > 0) {
                presenceModuleInfo.mBackupPublishTimestamp = j;
            }
        } else if (presenceModuleInfo.mMno != Mno.ATT) {
            this.mPresenceSp.resetPublishEtag(i);
        } else if (imsRegistration != null) {
            if (!ImsRegistry.getRegistrationManager().isPdnConnected(imsRegistration.getImsProfile(), i)) {
                IMSLog.i(LOG_TAG, i, "unpublish: PDN already disconnected");
                long j2 = presenceModuleInfo.mLastPublishTimestamp;
                if (j2 > 0) {
                    presenceModuleInfo.mBackupPublishTimestamp = j2;
                }
            } else {
                this.mPresenceSp.resetPublishEtag(i);
            }
        }
        if (presenceModuleInfo.mOwnInfoPublished) {
            this.mEventLog.add(i, "UnPublish");
            IMSLog.c(LogClass.PM_UNPUB, i + ",UNPUB");
        }
        presenceModuleInfo.mOwnInfoPublished = false;
        if (!presenceModuleInfo.mMno.isKor()) {
            this.mPresenceSp.savePublishTimestamp(0L, i);
        }
        SecImsNotifier.getInstance().onUnPublish(i);
    }

    PresenceModuleInfo getPresenceModuleInfo(int i) {
        return this.mPresenceModuleInfo.get(i);
    }

    public PresenceConfig getPresenceConfig(int i) {
        return this.mPresenceConfig.get(i);
    }

    UriGenerator getUriGenerator(int i) {
        return this.mUriGenerator.get(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public void setParalysed(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "mParalysed: " + z);
        this.mPresenceModuleInfo.get(i).mParalysed = z;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public boolean getParalysed(int i) {
        return this.mPresenceModuleInfo.get(i).mParalysed;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public int getPublishTimer(int i) {
        int publishTimerValue = isProvisionedValueAvailable(i) ? (int) getPublishTimerValue(i) : 0;
        IMSLog.i(LOG_TAG, i, "getPublishTimer: " + publishTimerValue);
        return publishTimerValue;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public int getPublishExpiry(int i) {
        int max = isProvisionedValueAvailable(i) ? (int) Math.max(getOwnPresenceInfo(i).getMinExpires(), getPublishTimerValue(i)) : 0;
        IMSLog.i(LOG_TAG, i, "getPublishExpiry: " + max);
        return max;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public int getPublishSourceThrottle(int i) {
        int sourceThrottlePublish = isProvisionedValueAvailable(i) ? ((int) getPresenceConfig(i).getSourceThrottlePublish()) * 1000 : 0;
        IMSLog.i(LOG_TAG, i, "getPublishSourceThrottle: " + sourceThrottlePublish);
        return sourceThrottlePublish;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public int getListSubMaxUri(int i) {
        int maxUri = isProvisionedValueAvailable(i) ? getPresenceConfig(i).getMaxUri() : 0;
        IMSLog.i(LOG_TAG, i, "getListSubMaxUri: " + maxUri);
        return maxUri;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public int getListSubExpiry(int i) {
        int pollListSubExp = isProvisionedValueAvailable(i) ? PresenceUtil.getPollListSubExp(this.mContext, i) : 0;
        IMSLog.i(LOG_TAG, i, "getListSubExpiry: " + pollListSubExp);
        return pollListSubExp;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public void setDisplayText(int i, String str) {
        IMSLog.i(LOG_TAG, i, "setDisplayText: " + IMSLog.checker(str));
        if (!str.equals(this.mPresenceSp.loadDisplayText(i))) {
            this.mPresenceSp.saveDisplayText(str, i);
            sendMessageDelayed(obtainMessage(1, Integer.valueOf(i)), 100L);
        } else {
            IMSLog.i(LOG_TAG, i, "skip setDisplayText");
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public int isListSubGzipEnabled(int i) {
        int i2 = 0;
        if (isProvisionedValueAvailable(i) && getPresenceConfig(i).isGzipEnabled()) {
            i2 = 1;
        }
        IMSLog.i(LOG_TAG, i, "isListSubGzipEnabled: " + i2);
        return i2;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public boolean isOwnPresenceInfoHasTuple(int i, long j) {
        return getOwnPresenceInfo(i).getServiceTuple(ServiceTuple.getServiceTuple(j).serviceId) != null;
    }

    private long getPublishTimerValue(int i) {
        return PresenceUtil.getExtendedPublishTimerCond(i, getOwnPresenceInfo(i).getServiceList()) ? getPresenceConfig(i).getPublishTimerExtended() : getPresenceConfig(i).getPublishTimer();
    }

    private boolean isProvisionedValueAvailable(int i) {
        boolean z = RcsUtils.isImsSingleRegiRequired(this.mContext, i) && RcsUtils.isSrRcsPresenceEnabled(this.mContext, i) && isRunning() && RcsPolicyManager.getRcsStrategy(i) != null && getOwnPresenceInfo(i) != null && getPresenceConfig(i) != null;
        IMSLog.i(LOG_TAG, i, "isProvisionedValueAvailable: " + z);
        return z;
    }

    private void notifyProvisionedValue(int i) {
        if (isProvisionedValueAvailable(i)) {
            IMSLog.i(LOG_TAG, i, "notifyProvisionedValue");
            SecImsNotifier.getInstance().notifyProvisionedIntValueChanged(i, 15, (int) getPublishTimerValue(i));
            SecImsNotifier.getInstance().notifyProvisionedIntValueChanged(i, 16, (int) Math.max(getOwnPresenceInfo(i).getMinExpires(), getPublishTimerValue(i)));
            SecImsNotifier.getInstance().notifyProvisionedIntValueChanged(i, 21, ((int) getPresenceConfig(i).getSourceThrottlePublish()) * 1000);
            SecImsNotifier.getInstance().notifyProvisionedIntValueChanged(i, 22, getPresenceConfig(i).getMaxUri());
            SecImsNotifier.getInstance().notifyProvisionedIntValueChanged(i, 23, PresenceUtil.getPollListSubExp(this.mContext, i));
            SecImsNotifier.getInstance().notifyProvisionedIntValueChanged(i, 24, getPresenceConfig(i).isGzipEnabled() ? 1 : 0);
        }
    }

    void onNewNotifyInfo(PresenceNotifyInfo presenceNotifyInfo, int i) {
        IMSLog.i(LOG_TAG, i, "onNewNotifyInfo:");
        if (checkModuleReady(i) && presenceNotifyInfo != null && RcsUtils.isImsSingleRegiRequired(this.mContext, i)) {
            PresenceSubscription subscription = PresenceSubscriptionController.getSubscription(presenceNotifyInfo.getSubscriptionId(), i);
            if (subscription == null) {
                IMSLog.e(LOG_TAG, i, "onNewNotifyInfo: no subscription");
                return;
            }
            PresenceUtil.onSubscribeNotifyCapabilitiesUpdate(presenceNotifyInfo.getSubscriptionId(), this.mContext, i, presenceNotifyInfo.getPidfXmls());
            if (!subscription.isSingleFetch() && presenceNotifyInfo.getUriTerminatedReason() != null && presenceNotifyInfo.getUriTerminatedReason().size() > 0) {
                PresenceUtil.onSubscribeResourceTerminated(presenceNotifyInfo.getSubscriptionId(), this.mContext, i, presenceNotifyInfo.getUriTerminatedReason());
            }
            if ("terminated".equals(presenceNotifyInfo.getSubscriptionState())) {
                PresenceUtil.onSubscribeTerminated(presenceNotifyInfo.getSubscriptionId(), this.mContext, i, presenceNotifyInfo.getSubscriptionStateReason(), 0L);
            }
            if (subscription.isSingleFetch()) {
                PresenceUtil.removeSubscribeResponseCallback(presenceNotifyInfo.getSubscriptionId());
            }
        }
    }

    void onNewNotifyStatus(PresenceResponse presenceResponse, int i) {
        IMSLog.i(LOG_TAG, "onNewNotifyStatus:");
        if (checkModuleReady(i) && presenceResponse != null && RcsUtils.isImsSingleRegiRequired(this.mContext, i)) {
            PresenceSubscription subscription = PresenceSubscriptionController.getSubscription(presenceResponse.getSubscribeId(), i);
            if (subscription == null) {
                IMSLog.e(LOG_TAG, i, "onNewNotifyStatus: no subscription");
                return;
            }
            PresenceUtil.onSubscribeTerminated(presenceResponse.getSubscribeId(), this.mContext, i, presenceResponse.getSubscribeTerminatedReason(), 0L);
            if (subscription.isSingleFetch()) {
                PresenceUtil.removeSubscribeResponseCallback(presenceResponse.getSubscribeId());
            }
        }
    }

    void updatePresenceDatabase(List<ImsUri> list, PresenceInfo presenceInfo, int i) {
        this.mPresenceCacheController.updatePresenceDatabase(list, presenceInfo, this.mCapabilityDiscovery, this.mUriGenerator.get(i), i);
    }

    void onPublishComplete(PresenceResponse presenceResponse, int i) {
        boolean z;
        ICapabilityEventListener iCapabilityEventListener;
        if (presenceResponse == null) {
            IMSLog.i(LOG_TAG, i, "onPublishComplete: response is null");
            return;
        }
        IMSLog.i(LOG_TAG, i, "onPublishComplete: success " + presenceResponse.isSuccess());
        this.mEventLog.add(i, "Publish - completed, response = " + presenceResponse.getSipError());
        IMSLog.c(LogClass.PM_ONPUB_COMP, i + "," + presenceResponse.getSipError());
        PresenceModuleInfo presenceModuleInfo = this.mPresenceModuleInfo.get(i);
        clearWakeLock();
        if (presenceResponse.isSuccess()) {
            presenceModuleInfo.mOwnInfoPublished = true;
            stopBadEventTimer(i);
            setParalysed(false, i);
            resetPublishErrorHandling(i);
            if (presenceResponse instanceof PublishResponse) {
                PublishResponse publishResponse = (PublishResponse) presenceResponse;
                IMSLog.i(LOG_TAG, i, "getEtag:" + publishResponse.getEtag() + " getExpiresTimer:" + publishResponse.getExpiresTimer());
                this.mPresenceSp.savePublishETag(publishResponse.getEtag(), publishResponse.getExpiresTimer(), i);
                z = publishResponse.isRefresh();
                this.mPresenceSp.savePublishTimestamp(System.currentTimeMillis(), i);
                IMSLog.i(LOG_TAG, i, "onPublishComplete(), isRefresh : " + z);
            } else {
                z = false;
            }
            presenceModuleInfo.mPublishNotProvisionedCount = 0;
            presenceModuleInfo.mPublishExpBackOffRetryCount = 0;
            presenceModuleInfo.mPublishRequestTimeout = 0;
            presenceModuleInfo.mPublishNoResponseCount = 0;
            if (presenceModuleInfo.mMno == Mno.VZW) {
                this.mPublishRegistrants.notifyResult(Boolean.FALSE);
                ImsConstants.SystemSettings.VOLTE_PROVISIONING.set(this.mContext, 1);
            }
            if (RcsPolicyManager.getRcsStrategy(i).needUnpublish(i)) {
                sendMessage(obtainMessage(3, Integer.valueOf(i)));
            } else {
                if (!z && (iCapabilityEventListener = this.mListener) != null) {
                    iCapabilityEventListener.onMediaReady(presenceResponse.isSuccess(), true, i);
                }
                if (!PresenceSubscriptionController.getPendingSubscription().isEmpty()) {
                    Iterator<PresenceSubscription> it = PresenceSubscriptionController.getPendingSubscription().iterator();
                    IMSLog.i(LOG_TAG, i, "onPublishComplete, pending subscription");
                    while (it.hasNext()) {
                        sendMessage(obtainMessage(8, it.next()));
                    }
                    PresenceSubscriptionController.clearPendingSubscription();
                }
            }
            if (!ImsProfile.isRcsUpProfile(this.mPresenceConfig.get(i).getRcsProfile()) || presenceModuleInfo.mMno == Mno.VZW) {
                IMSLog.i(LOG_TAG, i, "onPublishComplete,start PublishTimer: " + this.mPresenceConfig.get(i).getPublishTimer());
                startPublishTimer(i);
            }
        } else if (presenceResponse instanceof PublishResponse) {
            onPublishFailed((PublishResponse) presenceResponse, i);
        }
        if (this.mListener != null) {
            onEABPublishComplete(presenceResponse);
        }
        if (presenceResponse.getSipError() == 708) {
            PresenceUtil.notifyPublishCommandError(i, this.mContext, 4);
        } else {
            PresenceUtil.notifyPublishNetworkResponse(i, this.mContext, presenceResponse.getSipError(), presenceResponse.getErrorDescription());
        }
        if ((presenceResponse instanceof PublishResponse) && ((PublishResponse) presenceResponse).isRefresh()) {
            SecImsNotifier.getInstance().onPublishUpdated(i, presenceResponse.getSipError(), presenceResponse.getErrorDescription(), 0, null);
        }
        ContentValues contentValues = new ContentValues();
        if (presenceResponse.isSuccess()) {
            contentValues.put(DiagnosisConstants.DRCS_KEY_RCPC, (Integer) 1);
        } else {
            contentValues.put(DiagnosisConstants.DRCS_KEY_RCPF, (Integer) 1);
        }
        contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 1);
        ImsLogAgentUtil.storeLogToAgent(i, this.mContext, DiagnosisConstants.FEATURE_DRCS, contentValues);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0103, code lost:
    
        if (onPublishRequireFull(r1, r4, r11) == false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onPublishFailed(com.sec.internal.constants.ims.servicemodules.presence.PublishResponse r10, int r11) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.presence.PresenceModule.onPublishFailed(com.sec.internal.constants.ims.servicemodules.presence.PublishResponse, int):void");
    }

    /* renamed from: com.sec.internal.ims.servicemodules.presence.PresenceModule$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode;

        static {
            int[] iArr = new int[PresenceResponse.PresenceStatusCode.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode = iArr;
            try {
                iArr[PresenceResponse.PresenceStatusCode.PRESENCE_AT_NOT_PROVISIONED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_AT_NOT_REGISTERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_REQUEST_TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_FULL_PUBLISH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_INTERVAL_TOO_SHORT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_AT_BAD_EVENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_RETRY_EXP_BACKOFF.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_NO_RESPONSE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_DISABLE_MODE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_NO_SUBSCRIBE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_RETRY_PUBLISH.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_RE_REGISTRATION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode[PresenceResponse.PresenceStatusCode.PRESENCE_FORBIDDEN.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    private PresenceModuleInfo initPublishFailedInfos(PresenceModuleInfo presenceModuleInfo, PresenceResponse.PresenceStatusCode presenceStatusCode) {
        if (presenceStatusCode != PresenceResponse.PresenceStatusCode.PRESENCE_RETRY_EXP_BACKOFF) {
            presenceModuleInfo.mPublishExpBackOffRetryCount = 0;
        }
        if (presenceStatusCode != PresenceResponse.PresenceStatusCode.PRESENCE_REQUEST_TIMEOUT) {
            presenceModuleInfo.mPublishRequestTimeout = 0;
        }
        if (presenceStatusCode != PresenceResponse.PresenceStatusCode.PRESENCE_NO_RESPONSE) {
            presenceModuleInfo.mPublishNoResponseCount = 0;
        }
        return presenceModuleInfo;
    }

    private void onPublishRequestTimeout(PresenceModuleInfo presenceModuleInfo, int i) {
        presenceModuleInfo.mPublishRequestTimeout++;
        IMSLog.e(LOG_TAG, i, "onPublishRequestTimeout: PRESENCE_REQUEST_TIMEOUT count = " + presenceModuleInfo.mPublishRequestTimeout);
        long publishExpBackOffRetryTime = PresenceUtil.getPublishExpBackOffRetryTime(i, presenceModuleInfo.mPublishRequestTimeout);
        if (RcsPolicyManager.getRcsStrategy(i).needUnpublish(i)) {
            sendMessage(obtainMessage(3, Integer.valueOf(i)));
            return;
        }
        if (publishExpBackOffRetryTime != 0) {
            startRetryPublishTimer(publishExpBackOffRetryTime * 1000, i);
            return;
        }
        IMSLog.e(LOG_TAG, i, "onPublishRequestTimeout: starting error retry ... ");
        if (this.mPresenceConfig.get(i).getPublishErrRetry() != 0) {
            startRetryPublishTimer(this.mPresenceConfig.get(i).getPublishErrRetry() * 1000, i);
            this.mPresenceConfig.get(i).setPublishErrRetry(0L);
        }
    }

    private void onPublishNoResponse(PresenceModuleInfo presenceModuleInfo, boolean z, int i) {
        if (z) {
            return;
        }
        presenceModuleInfo.mPublishNoResponseCount++;
        IMSLog.e(LOG_TAG, i, "onPublishNoResponse: count = " + presenceModuleInfo.mPublishNoResponseCount + ", isSVLTE: " + SemSystemProperties.getBoolean("ro.ril.svlte1x", false));
        long publishExpBackOffRetryTime = PresenceUtil.getPublishExpBackOffRetryTime(i, presenceModuleInfo.mPublishNoResponseCount);
        if (publishExpBackOffRetryTime != 0) {
            startRetryPublishTimer(publishExpBackOffRetryTime * 1000, i);
        } else {
            IMSLog.e(LOG_TAG, i, "onPublishNoResponse: retry time end for NoResponse... ");
        }
    }

    private boolean onPublishRequireFull(PresenceModuleInfo presenceModuleInfo, PresenceResponse.PresenceFailureReason presenceFailureReason, int i) {
        Mno mno = presenceModuleInfo.mMno;
        if (mno == Mno.TMOUS || mno.isKor()) {
            IMSLog.i(LOG_TAG, i, "onPublishRequireFull: oldError = " + presenceModuleInfo.mOldPublishError + ", newError = " + presenceFailureReason);
            if (presenceModuleInfo.mLimitImmediateRetry && presenceFailureReason != null && presenceFailureReason.equals(presenceModuleInfo.mOldPublishError)) {
                IMSLog.i(LOG_TAG, i, "onPublishRequireFull: retry after publish timer expires");
                startRetryPublishTimer(this.mPresenceConfig.get(i).getPublishTimer() * 1000, i);
                return false;
            }
            presenceModuleInfo.mLimitImmediateRetry = true;
            presenceModuleInfo.mOldPublishError = presenceFailureReason;
        }
        return true;
    }

    private void onPublishRetryAfter(PresenceModuleInfo presenceModuleInfo, long j, int i) {
        if (j > 0) {
            IMSLog.e(LOG_TAG, i, "onPublishRetryAfter: retry publish after " + j);
            startRetryPublishTimer(j * 1000, i);
            return;
        }
        if (presenceModuleInfo.mMno == Mno.TMOUS) {
            startRetryPublishTimer((long) (this.mPresenceConfig.get(i).getPublishTimer() * 1000 * 0.85d), i);
        } else {
            startRetryPublishTimer(this.mPresenceConfig.get(i).getPublishTimer() * 1000, i);
        }
    }

    private void onPublishRetryExpBackoff(PresenceModuleInfo presenceModuleInfo, long j, int i) {
        if (presenceModuleInfo.mMno.isKor() && j > 0) {
            IMSLog.e(LOG_TAG, i, "onPublishRetryExpBackoff: Use retryAfter, Retry publish after " + j);
            startRetryPublishTimer(j * 1000, i);
            presenceModuleInfo.mPublishExpBackOffRetryCount = 0;
            return;
        }
        presenceModuleInfo.mPublishExpBackOffRetryCount++;
        IMSLog.i(LOG_TAG, i, "onPublishRetryExpBackoff: count = " + presenceModuleInfo.mPublishExpBackOffRetryCount);
        long publishExpBackOffRetryTime = PresenceUtil.getPublishExpBackOffRetryTime(i, presenceModuleInfo.mPublishExpBackOffRetryCount);
        if (RcsPolicyManager.getRcsStrategy(i).needUnpublish(i)) {
            sendMessage(obtainMessage(3, Integer.valueOf(i)));
            return;
        }
        if (publishExpBackOffRetryTime != 0) {
            startRetryPublishTimer(publishExpBackOffRetryTime * 1000, i);
            setPublishNotFoundProgress(true, i);
        } else {
            if (presenceModuleInfo.mMno == Mno.ATT) {
                this.mEventLog.logAndAdd(i, "onPublishRetryExpBackoff: no more retry");
                setPublishNotFoundProgress(true, i);
                return;
            }
            IMSLog.e(LOG_TAG, i, "onPublishRetryExpBackoff: starting error retry ... ");
            if (this.mPresenceConfig.get(i).getPublishErrRetry() != 0) {
                startRetryPublishTimer(this.mPresenceConfig.get(i).getPublishErrRetry() * 1000, i);
                this.mPresenceConfig.get(i).setPublishErrRetry(0L);
            }
        }
    }

    private void onPublishNotProvisioned(PresenceModuleInfo presenceModuleInfo, int i) {
        presenceModuleInfo.mPublishNotProvisionedCount++;
        IMSLog.e(LOG_TAG, i, "onPublishNotProvisioned: NOT_PROVISIONED count = " + presenceModuleInfo.mPublishNotProvisionedCount);
        if (presenceModuleInfo.mMno == Mno.VZW) {
            this.mCapabilityDiscovery.clearCapabilitiesCache(i);
            PresenceUtil.triggerOmadmTreeSync(this.mContext, i);
            setParalysed(true, i);
            presenceModuleInfo.mPublishNotProvisionedCount = 0;
        }
    }

    private void onPublishDisableMode(int i) {
        if (RcsPolicyManager.getRcsStrategy(i).needUnpublish(i)) {
            sendMessage(obtainMessage(3, Integer.valueOf(i)));
        }
    }

    private void notifyPublishError(PresenceModuleInfo presenceModuleInfo, PresenceResponse.PresenceStatusCode presenceStatusCode, PublishResponse publishResponse, int i) {
        IRegistrationGovernor registrationGovernor;
        if (presenceModuleInfo.mRegInfo == null || (registrationGovernor = ImsRegistry.getRegistrationManager().getRegistrationGovernor(presenceModuleInfo.mRegInfo.getHandle())) == null) {
            return;
        }
        if (presenceModuleInfo.mMno == Mno.TMOUS && presenceStatusCode == PresenceResponse.PresenceStatusCode.PRESENCE_RE_REGISTRATION) {
            if (!presenceModuleInfo.mLimitReRegistration) {
                registrationGovernor.onPublishError(SipErrorBase.FORBIDDEN);
                presenceModuleInfo.mLimitReRegistration = true;
                return;
            } else {
                IMSLog.i(LOG_TAG, i, "notifyPublishError: maintain last IMS registration");
                presenceModuleInfo.mLimitReRegistration = false;
                return;
            }
        }
        registrationGovernor.onPublishError(new SipError(publishResponse.getSipError(), publishResponse.getErrorDescription()));
    }

    private void startBadEventTimer(long j, boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "startBadEventTimer: millis " + j);
        if (getBadEventProgress(i)) {
            IMSLog.i(LOG_TAG, i, "startBadEventTimer: BadEvent in progress");
            return;
        }
        if (this.mPresenceModuleInfo.get(i).mBadEventIntent != null) {
            stopBadEventTimer(i);
        }
        if (j > 0) {
            Intent intent = new Intent("com.sec.internal.ims.servicemodules.presence.bad_event_timeout");
            intent.putExtra("sim_slot_id", i);
            intent.addFlags(LogClass.SIM_EVENT);
            intent.setPackage(this.mContext.getPackageName());
            this.mPresenceModuleInfo.get(i).mBadEventIntent = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
            AlarmTimer.start(this.mContext, this.mPresenceModuleInfo.get(i).mBadEventIntent, j);
            setBadEventProgress(true, i);
            if (z) {
                this.mPresenceSp.saveBadEventTimestamp(new Date().getTime(), i);
            }
        }
    }

    private void stopBadEventTimer(int i) {
        removeMessages(14, Integer.valueOf(i));
        if (this.mPresenceModuleInfo.get(i).mBadEventIntent == null) {
            IMSLog.e(LOG_TAG, i, "stopBadEventTimer: BadEventExitTimer is not running.");
            return;
        }
        IMSLog.i(LOG_TAG, i, "stopBadEventTimer");
        AlarmTimer.stop(this.mContext, this.mPresenceModuleInfo.get(i).mBadEventIntent);
        this.mPresenceModuleInfo.get(i).mBadEventIntent = null;
        setBadEventProgress(false, i);
        this.mPresenceSp.saveBadEventTimestamp(0L, i);
    }

    void onBadEventTimeout(int i) {
        IMSLog.i(LOG_TAG, i, "onBadEventTimeout: ");
        if (this.mPresenceModuleInfo.get(i).mBadEventIntent != null) {
            stopBadEventTimer(i);
            setParalysed(false, i);
            sendMessage(obtainMessage(1, Integer.valueOf(i)));
        }
    }

    void onRetryPublishTimeout(int i) {
        IMSLog.i(LOG_TAG, i, "onRetryPublishTimeout");
        if (this.mPresenceModuleInfo.get(i).mRetryPublishIntent != null) {
            stopRetryPublishTimer(i);
            if (this.mPresenceModuleInfo.get(i).mMno == Mno.ATT) {
                setParalysed(false, i);
            }
            sendMessage(obtainMessage(1, Integer.valueOf(i)));
        }
    }

    private void startRetryPublishTimer(long j, int i) {
        IMSLog.i(LOG_TAG, i, "startRetryPublishTimer: millis " + j);
        stopPublishTimer(i);
        if (this.mPresenceModuleInfo.get(i).mRetryPublishIntent != null) {
            stopRetryPublishTimer(i);
        }
        if (j > 0) {
            this.mPresenceModuleInfo.get(i).ongoingPublishErrRetry = j == this.mPresenceConfig.get(i).getPublishErrRetry() * 1000;
            Intent intent = new Intent("com.sec.internal.ims.servicemodules.presence.retry_publish");
            intent.putExtra("sim_slot_id", i);
            intent.setPackage(this.mContext.getPackageName());
            this.mPresenceModuleInfo.get(i).mRetryPublishIntent = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
            AlarmTimer.start(this.mContext, this.mPresenceModuleInfo.get(i).mRetryPublishIntent, j);
            if (this.mPresenceModuleInfo.get(i).mMno.isKor()) {
                return;
            }
            this.mPresenceSp.savePublishTimestamp(0L, i);
        }
    }

    private void stopRetryPublishTimer(int i) {
        if (this.mPresenceModuleInfo.get(i).mRetryPublishIntent == null) {
            IMSLog.e(LOG_TAG, i, "stopRetryPublishTimer: mRetryPublishIntent is null.");
            return;
        }
        IMSLog.i(LOG_TAG, i, "stopRetryPublishTimer");
        AlarmTimer.stop(this.mContext, this.mPresenceModuleInfo.get(i).mRetryPublishIntent);
        this.mPresenceModuleInfo.get(i).mRetryPublishIntent = null;
    }

    private void startSubscribeRetryTimer(long j, String str, int i) {
        Log.i(LOG_TAG, "startSubscribeRetryTimer: millis " + j + ", subscriptionId " + str);
        PendingIntent pendingIntent = this.mSubscribeRetryList.get(str);
        if (pendingIntent != null) {
            AlarmTimer.stop(this.mContext, pendingIntent);
            this.mSubscribeRetryList.remove(str);
        }
        Intent intent = new Intent("com.sec.internal.ims.servicemodules.presence.retry_subscribe");
        Uri parse = Uri.parse("urn:subscriptionid:" + str);
        intent.setPackage(this.mContext.getPackageName());
        intent.setData(parse);
        intent.putExtra("KEY_SUBSCRIPTION_ID", str);
        intent.putExtra("KEY_PHONE_ID", i);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
        AlarmTimer.start(this.mContext, broadcast, j);
        this.mSubscribeRetryList.put(str, broadcast);
    }

    private void stopSubscribeRetryTimer(int i) {
        Iterator<String> it = this.mSubscribeRetryList.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            PresenceSubscription subscription = PresenceSubscriptionController.getSubscription(next, i);
            if (subscription != null && subscription.getPhoneId() == i) {
                AlarmTimer.stop(this.mContext, this.mSubscribeRetryList.get(next));
                subscription.updateState(4);
                it.remove();
            }
        }
        IMSLog.i(LOG_TAG, i, "stopSubscribeRetryTimer");
    }

    void onPeriodicPublish(int i) {
        IMSLog.e(LOG_TAG, i, "onPeriodicPublish:");
        publish(this.mPresenceModuleInfo.get(i).mOwnPresenceInfo, i);
        startPublishTimer(i);
    }

    private void acquireWakeLock() {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock == null) {
            return;
        }
        synchronized (wakeLock) {
            this.mWakeLock.acquire(5000L);
            removeMessages(13);
            sendEmptyMessageDelayed(13, 5000L);
        }
    }

    boolean clearWakeLock() {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock == null) {
            return false;
        }
        synchronized (wakeLock) {
            if (!this.mWakeLock.isHeld()) {
                return false;
            }
            this.mWakeLock.release();
            removeMessages(13);
            return true;
        }
    }

    void onSubscribeRequested(PresenceSubscriptionController.SubscriptionRequest subscriptionRequest) {
        subscribe(subscriptionRequest, this.mPresenceConfig.get(subscriptionRequest.phoneId).useAnonymousFetch());
    }

    void onSubscribeComplete(PresenceSubscription presenceSubscription, PresenceResponse presenceResponse) {
        int phoneId = presenceSubscription.getPhoneId();
        IMSLog.s(LOG_TAG, phoneId, "onSubscribeComplete: Uri " + presenceSubscription.getUriList() + " success " + presenceResponse.isSuccess());
        clearWakeLock();
        if (RcsPolicyManager.getRcsStrategy(phoneId) == null) {
            IMSLog.e(LOG_TAG, phoneId, "onSubscribeComplete: mnoStrategy is null.");
            return;
        }
        PresenceUtil.onSubscribeNetworkResponse(presenceSubscription.getSubscriptionId(), this.mContext, phoneId, presenceResponse.getSipError(), presenceResponse.getErrorDescription());
        if (!presenceResponse.isSuccess()) {
            presenceSubscription.updateState(6);
            onSubscribeFailed(presenceSubscription, presenceResponse);
        } else {
            int expiry = presenceSubscription.getExpiry();
            if (expiry > 0) {
                presenceSubscription.updateState(1);
                if (presenceSubscription.getRequestType() == CapabilityConstants.RequestType.REQUEST_TYPE_PERIODIC && this.mListener != null) {
                    IMSLog.i(LOG_TAG, phoneId, "onSubscribeComplete: recover polling");
                    this.mListener.onPollingRequested(true, phoneId);
                }
                if (!presenceSubscription.isSingleFetch() && this.mPresenceModuleInfo.get(phoneId).mMno == Mno.TMOUS) {
                    IMSLog.i(LOG_TAG, phoneId, "onSubscribeComplete: subscription will be terminated after " + expiry);
                    sendMessageDelayed(obtainMessage(9, presenceSubscription), ((long) (expiry + 1)) * 1000);
                }
            } else {
                presenceSubscription.updateState(4);
                if (this.mPresenceModuleInfo.get(phoneId).mMno == Mno.ATT) {
                    resetSubscribeRetryCount(presenceSubscription, phoneId);
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        if (presenceResponse.isSuccess() || (!presenceResponse.isSuccess() && (presenceResponse.getSipError() == 403 || presenceResponse.getSipError() == 404))) {
            contentValues.put("RCSC", (Integer) 1);
        } else {
            contentValues.put(DiagnosisConstants.DRCS_KEY_RCSF, (Integer) 1);
        }
        contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 1);
        ImsLogAgentUtil.storeLogToAgent(phoneId, this.mContext, DiagnosisConstants.FEATURE_DRCS, contentValues);
        PresenceSubscriptionController.cleanExpiredSubscription();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onSubscribeFailed(com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription r10, com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse r11) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.presence.PresenceModule.onSubscribeFailed(com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription, com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse):void");
    }

    private void handleExpBackOffRetry(PresenceSubscription presenceSubscription) {
        long subscribeExpBackOffRetryTime;
        int phoneId = presenceSubscription.getPhoneId();
        IMSLog.i(LOG_TAG, phoneId, "handleExpBackOffRetry: EXP_BACKOFF_RETRY count = " + presenceSubscription.getRetryCount());
        if (presenceSubscription.getRequestType() == CapabilityConstants.RequestType.REQUEST_TYPE_PERIODIC) {
            if (this.mListener != null && presenceSubscription.getRetryCount() == 1) {
                IMSLog.i(LOG_TAG, phoneId, "handleExpBackOffRetry: notifying polling failure");
                this.mListener.onPollingRequested(false, phoneId);
            }
            subscribeExpBackOffRetryTime = PresenceUtil.getListSubscribeExpBackOffRetryTime(phoneId, presenceSubscription.getRetryCount());
        } else {
            subscribeExpBackOffRetryTime = presenceSubscription.getRequestType() == CapabilityConstants.RequestType.REQUEST_TYPE_CONTACT_CHANGE ? PresenceUtil.getSubscribeExpBackOffRetryTime(phoneId, presenceSubscription.getRetryCount()) : 0L;
        }
        if (subscribeExpBackOffRetryTime != 0) {
            presenceSubscription.updateState(5);
            startSubscribeRetryTimer(subscribeExpBackOffRetryTime * 1000, presenceSubscription.getSubscriptionId(), phoneId);
        } else {
            presenceSubscription.updateState(4);
        }
    }

    void onSubscribeListRequested(CapabilityConstants.RequestType requestType, int i, int i2) {
        Set<ImsUri> set = this.mUrisToSubscribe.get(Integer.valueOf(i));
        synchronized (set) {
            subscribe(set, true, requestType, i, i2);
        }
    }

    void onSubscribeRetry(PresenceSubscription presenceSubscription) {
        int phoneId = presenceSubscription.getPhoneId();
        IMSLog.i(LOG_TAG, phoneId, "onSubscribeRetry");
        presenceSubscription.updateTimestamp();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(presenceSubscription.getUriList());
        if (arrayList.size() > 1) {
            this.mService.subscribeList(arrayList, true, obtainMessage(6, presenceSubscription), presenceSubscription.getSubscriptionId(), this.mPresenceModuleInfo.get(phoneId).mRegInfo.getImsProfile().isGzipEnabled(), presenceSubscription.getExpiry(), phoneId);
        } else {
            this.mService.subscribe((ImsUri) arrayList.get(0), true, obtainMessage(6, presenceSubscription), presenceSubscription.getSubscriptionId(), phoneId);
        }
    }

    private void onSubscribeNoResponse(PresenceSubscription presenceSubscription) {
        int phoneId = presenceSubscription.getPhoneId();
        if (this.mPresenceModuleInfo.get(phoneId).mMno == Mno.ATT && presenceSubscription.isSingleFetch()) {
            if (presenceSubscription.getRetryCount() == 0) {
                presenceSubscription.updateState(5);
                presenceSubscription.retrySubscription();
                IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(phoneId);
                long calThrottledPublishRetryDelayTime = rcsStrategy != null ? rcsStrategy.calThrottledPublishRetryDelayTime(presenceSubscription.getTimestamp().getTime(), this.mPresenceConfig.get(phoneId).getSourceThrottlePublish()) : 0L;
                IMSLog.i(LOG_TAG, phoneId, "onSubscribeNoResponse: retry in " + calThrottledPublishRetryDelayTime);
                if (calThrottledPublishRetryDelayTime > 0) {
                    sendMessageDelayed(obtainMessage(8, presenceSubscription), calThrottledPublishRetryDelayTime);
                    return;
                } else {
                    sendMessage(obtainMessage(8, presenceSubscription));
                    return;
                }
            }
            IMSLog.i(LOG_TAG, phoneId, "onSubscribeNoResponse: no more retry");
            presenceSubscription.updateState(4);
            presenceSubscription.setRetryCount(0);
        }
    }

    private void resetSubscribeRetryCount(PresenceSubscription presenceSubscription, int i) {
        if (!presenceSubscription.isSingleFetch() || presenceSubscription.getRetryCount() <= 0) {
            return;
        }
        IMSLog.i(LOG_TAG, i, "resetSubscribeRetryCount");
        presenceSubscription.setRetryCount(0);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityExchangeControl
    public void readConfig(int i) {
        if (this.mPresenceConfig.get(i) == null) {
            IMSLog.e(LOG_TAG, i, "readConfig: not ready");
            return;
        }
        IMSLog.i(LOG_TAG, i, "readConfig");
        this.mPresenceConfig.get(i).load();
        this.mPresenceModuleInfo.get(i).mOwnPresenceInfo.setExpireTime(this.mPresenceConfig.get(i).getRetryPublishTimer());
        notifyProvisionedValue(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        Log.i(LOG_TAG, "handleMessage: msg " + message.what);
        if (PresenceEvent.handleEvent(message, this, this.mPresenceUpdate, activeDataPhoneId)) {
            return;
        }
        Log.e(LOG_TAG, "handleMessage: unknown event " + message.what);
    }

    private void setServiceVersion(int i) {
        HashMap<String, String> hashMap = new HashMap<>();
        ServiceTuple serviceTuple = ServiceTuple.getServiceTuple(Capabilities.FEATURE_CHATBOT_EXTENDED_MSG);
        hashMap.put("xbotmessage", serviceTuple.version);
        this.mService.updateServiceVersion(i, hashMap);
        IMSLog.i(LOG_TAG, i, "setServiceVersion: xbotmessage " + serviceTuple.version);
    }

    boolean checkModuleReady(int i) {
        if (!isRunning()) {
            IMSLog.e(LOG_TAG, i, "checkModuleReady: module not running");
            return false;
        }
        if (!isReadyToRequest(i)) {
            IMSLog.e(LOG_TAG, i, "checkModuleReady: not ready to request");
            return false;
        }
        if (RcsPolicyManager.getRcsStrategy(i) == null) {
            IMSLog.e(LOG_TAG, i, "checkModuleReady: mnoStrategy is null.");
            return false;
        }
        if (this.mUriGenerator.get(i) != null) {
            return true;
        }
        IMSLog.e(LOG_TAG, i, "checkModuleReady: mUriGenerator is null");
        return false;
    }

    private void onEABPublishComplete(PresenceResponse presenceResponse) {
        this.mListener.onCapabilityAndAvailabilityPublished(presenceResponse.getSipError(), presenceResponse.getPhoneId());
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityExchangeControl
    public void registerService(String str, String str2, int i) {
        IMSLog.i(LOG_TAG, i, "registerService: [" + str + ":" + str2 + "]");
        ServiceTuple serviceTuple = ServiceTuple.getServiceTuple(str, str2, (String[]) null);
        if (serviceTuple != null) {
            IMSLog.i(LOG_TAG, i, "registerService: valid service tuple");
            if (!this.mPresenceModuleInfo.get(i).mOwnInfoPublished) {
                this.mServiceTupleList.add(serviceTuple);
                return;
            }
            synchronized (this.mPresenceModuleInfo.get(i).mOwnPresenceInfo) {
                this.mPresenceModuleInfo.get(i).mOwnPresenceInfo.addService(serviceTuple);
            }
            removeMessages(1, Integer.valueOf(i));
            sendMessage(obtainMessage(1, Integer.valueOf(i)));
            return;
        }
        IMSLog.i(LOG_TAG, i, "advertise: not a valid service tuple, do nothing..");
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityExchangeControl
    public void deRegisterService(List<String> list, int i) {
        IMSLog.i(LOG_TAG, i, "deRegisterService: serviceIdList = " + list);
        Iterator<String> it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            String[] split = it.next().split("#");
            ServiceTuple serviceTuple = ServiceTuple.getServiceTuple(split[0], split[1], (String[]) null);
            if (serviceTuple != null) {
                synchronized (this.mPresenceModuleInfo.get(i).mOwnPresenceInfo) {
                    this.mPresenceModuleInfo.get(i).mOwnPresenceInfo.removeService(serviceTuple);
                }
                z = true;
            } else {
                IMSLog.e(LOG_TAG, i, "deRegisterService: not a valid service tuple");
            }
        }
        if (z) {
            removeMessages(1, Integer.valueOf(i));
            sendMessage(obtainMessage(1, Integer.valueOf(i)));
        }
    }

    public void loadThirdPartyServiceTuples(List<ServiceTuple> list) {
        Log.i(LOG_TAG, "loadThirdPartyServiceTuples");
        for (ServiceTuple serviceTuple : list) {
            synchronized (this.mServiceTupleList) {
                this.mServiceTupleList.add(serviceTuple);
            }
        }
    }

    private void buildPresenceInfoForThirdParty(int i) {
        IMSLog.i(LOG_TAG, i, "buildPresenceInfoForThirdParty");
        synchronized (this.mServiceTupleList) {
            if (this.mServiceTupleList.isEmpty()) {
                return;
            }
            Iterator<ServiceTuple> it = this.mServiceTupleList.iterator();
            while (it.hasNext()) {
                this.mPresenceModuleInfo.get(i).mOwnPresenceInfo.addService(it.next());
            }
        }
    }

    private void setBadEventProgress(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "setBadEventProgress: " + z);
        this.mPresenceModuleInfo.get(i).mBadEventProgress = z;
    }

    public boolean getBadEventProgress(int i) {
        return this.mPresenceModuleInfo.get(i).mBadEventProgress;
    }

    public boolean isPublishNotFoundProgress(int i) {
        return this.mPresenceModuleInfo.get(i).mPublishNotFoundProgress;
    }

    private void setPublishNotFoundProgress(boolean z, int i) {
        if (this.mPresenceModuleInfo.get(i).mMno == Mno.ATT) {
            IMSLog.i(LOG_TAG, i, "setPublishNotFoundProgress: " + z);
            if (!z) {
                this.mPresenceModuleInfo.get(i).mPublishExpBackOffRetryCount = 0;
            }
            this.mPresenceModuleInfo.get(i).mPublishNotFoundProgress = z;
            setParalysed(z, i);
        }
    }

    public boolean isOwnCapPublished() {
        return this.mPresenceModuleInfo.get(SimUtil.getActiveDataPhoneId()).mOwnInfoPublished;
    }

    void onSubscriptionTerminated(PresenceSubscription presenceSubscription) {
        if (presenceSubscription == null) {
            Log.e(LOG_TAG, "onSubscriptionTerminated: subscription is null");
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(presenceSubscription.getDropUris());
        if (arrayList.size() > 0) {
            Log.i(LOG_TAG, "onSubscriptionTerminated: update capabilities for dropped " + arrayList.size() + " uris");
            ICapabilityEventListener iCapabilityEventListener = this.mListener;
            if (iCapabilityEventListener != null) {
                iCapabilityEventListener.onCapabilityUpdate(arrayList, Capabilities.FEATURE_NOT_UPDATED, CapabilityConstants.CapExResult.SUCCESS, null, presenceSubscription.getPhoneId());
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public long getSupportFeature(int i) {
        return this.mEnabledFeatures[i];
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityExchangeControl
    public void reset(int i) {
        this.mPresenceSp.savePublishTimestamp(0L, i);
        stopPublishTimer(i);
        stopBadEventTimer(i);
        stopSubscribeRetryTimer(i);
        this.mPresenceSp.resetPublishEtag(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule
    public void removePresenceCache(List<ImsUri> list, int i) {
        this.mPresenceCacheController.removePresenceCache(list, i);
    }

    private void resetPublishErrorHandling(int i) {
        PresenceModuleInfo presenceModuleInfo = this.mPresenceModuleInfo.get(i);
        presenceModuleInfo.mLimitReRegistration = false;
        presenceModuleInfo.mLimitImmediateRetry = false;
        presenceModuleInfo.mOldPublishError = null;
        setPublishNotFoundProgress(false, i);
    }

    public boolean getRegiInfoUpdater(int i) {
        return this.mPresenceRegiInfoUpdater.getOrDefault(Integer.valueOf(i), Boolean.FALSE).booleanValue();
    }

    public void setRegiInfoUpdater(int i, boolean z) {
        this.mPresenceRegiInfoUpdater.put(Integer.valueOf(i), Boolean.valueOf(z));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void dump() {
        IMSLog.dump(LOG_TAG, "Dump of " + getClass().getSimpleName() + ":");
        IMSLog.increaseIndent(LOG_TAG);
        IMSLog.dump(LOG_TAG, "Publish History: ");
        this.mEventLog.dump();
        for (PresenceConfig presenceConfig : this.mPresenceConfig.values()) {
            if (presenceConfig != null) {
                IMSLog.dump(LOG_TAG, presenceConfig.toString());
            }
        }
        IMSLog.decreaseIndent(LOG_TAG);
    }
}
