package com.sec.internal.ims.servicemodules.im;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.provider.Telephony;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.SemEmergencyConstantsExt;
import com.sec.ims.ft.IImsOngoingFtEventListener;
import com.sec.ims.im.IImSessionListener;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.servicemodules.Registration;
import com.sec.internal.constants.ims.servicemodules.im.ChatbotXmlUtils;
import com.sec.internal.constants.ims.servicemodules.im.FileDisposition;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.MessageRevokeResponse;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.RoutingType;
import com.sec.internal.constants.ims.servicemodules.im.event.ChatbotAnonymizeNotifyEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ChatbotAnonymizeRespEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.FtIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.FtTransferProgressEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImComposingEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingMessageEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionConferenceInfoUpdateEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionEstablishedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImdnNotificationEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ReportChatbotAsSpamRespEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SendImdnFailedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SendMessageFailedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SlmIncomingMessageEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SlmLMMIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.ChatbotAnonymizeParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ReportChatbotAsSpamParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.BlockedNumberUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.PhoneIdKeyMap;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.helper.os.SystemUtil;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ModuleChannel;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.im.data.ImParticipantUri;
import com.sec.internal.ims.servicemodules.im.interfaces.FtIntent;
import com.sec.internal.ims.servicemodules.im.interfaces.IGetter;
import com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor;
import com.sec.internal.ims.servicemodules.im.interfaces.ImIntent;
import com.sec.internal.ims.servicemodules.im.listener.IChatEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IFtEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.settings.ServiceConstants;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.IMessagingAppInfoListener;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.MessagingAppInfoReceiver;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.imsservice.ICall;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.options.IServiceAvailabilityEventListener;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ImModule extends ServiceModuleBase implements IImModule, IGetter, IMessagingAppInfoListener {
    private static final long DEFAULT_WAKE_LOCK_TIMEOUT = 3000;
    private static final long DELAY_TIME_FOR_CACHE_CLEAR = 10000;
    private int mActiveDataPhoneId;
    private long mBlockExpires;
    private Set<String> mBlockList;
    ContentObserver mBlockListUpdateObserver;
    private final ImCache mCache;
    private final List<ImsUri> mCallList;
    private final PhoneIdKeyMap<ImConfig> mConfigs;
    private final Context mContext;
    private int mCountReconfiguration;
    private final FeatureUpdater mFeatureUpdater;
    private final FtProcessor mFtProcessor;
    private final FtTranslation mFtTranslation;
    private final PhoneIdKeyMap<GroupChatRetrievingHandler> mGroupChatRetrievingHandlers;
    protected final PhoneIdKeyMap<Boolean> mHasIncomingSessionForA2P;
    private final ImDump mImDump;
    private final ImLatchingProcessor mImLatchingProcessor;
    private final ImProcessor mImProcessor;
    private final IImServiceInterface mImService;
    private final ImSessionProcessor mImSessionProcessor;
    private final ImTranslation mImTranslation;
    private boolean mInternetAvailable;
    private PhoneIdKeyMap<ConnectivityManager.NetworkCallback> mInternetListeners;
    private final PhoneIdKeyMap<Boolean> mIsDataRoamings;
    private final PhoneIdKeyMap<Boolean> mIsDataStateConnected;
    private final PhoneIdKeyMap<Boolean> mIsOutOfServices;
    private boolean mIsWifiConnected;
    protected int mKnoxBlockState;
    private MessagingAppInfoReceiver mMessagingAppInfoReceiver;
    protected final Set<Integer> mNeedToRemoveFromPendingList;
    private final PhoneIdKeyMap<String> mOwnPhoneNumbers;
    private String mRcsProfile;
    private final PhoneIdKeyMap<Integer> mRegistrationTypes;
    private IServiceAvailabilityEventListener mServiceAvailabilityEventListener;
    private final List<? extends ISimManager> mSimManagers;
    private final ISlmServiceInterface mSlmService;
    private final BroadcastReceiver mSmsPatternEventReceiver;
    private final ThirdPartyTranslation mThirdPartyTranslation;
    private final BroadcastReceiver mUpsmEventReceiver;
    private final PhoneIdKeyMap<UriGenerator> mUriGenerators;
    private final PowerManager.WakeLock mWakeLock;
    protected static final String NAME = ImModule.class.getSimpleName();
    private static final String LOG_TAG = ImModule.class.getSimpleName();
    private static final String[] sRequiredServices = {"im", "slm", "ft", "ft_http"};

    @SuppressLint({"UseSparseArrays"})
    public ImModule(Looper looper, Context context, IImServiceInterface iImServiceInterface, ImCache imCache) {
        super(looper);
        this.mCallList = new ArrayList();
        this.mRcsProfile = "";
        this.mBlockList = new HashSet();
        this.mBlockExpires = 0L;
        this.mNeedToRemoveFromPendingList = new HashSet();
        this.mUpsmEventReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.servicemodules.im.ImModule.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Log.i(ImModule.LOG_TAG, "Received UpsmEvent: " + intent.getAction() + " extra: " + intent.getExtras());
                ImModule.this.onUltraPowerSavingModeChanged();
            }
        };
        this.mSmsPatternEventReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.servicemodules.im.ImModule.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                boolean z = intent.getExtras().getBoolean("state");
                Log.i(ImModule.LOG_TAG, "Received SmsPatterEvent: " + intent.getAction() + ", state=" + z);
                ImModule.this.setKnoxBlockState(z);
            }
        };
        this.mCountReconfiguration = 0;
        this.mBlockListUpdateObserver = new ContentObserver(this) { // from class: com.sec.internal.ims.servicemodules.im.ImModule.4
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                ImModule.this.mBlockList.clear();
                ImModule imModule = ImModule.this;
                imModule.mBlockList = BlockedNumberUtil.getBlockedNumbersListFromNW(imModule.mContext);
                ImModule imModule2 = ImModule.this;
                imModule2.mBlockExpires = BlockedNumberUtil.getBlockExpires(imModule2.mContext);
            }
        };
        this.mContext = context;
        List<? extends ISimManager> allSimManagers = SimManagerFactory.getAllSimManagers();
        this.mSimManagers = allSimManagers;
        this.mCache = imCache;
        this.mImService = iImServiceInterface;
        ISlmServiceInterface slmHandler = ImsRegistry.getHandlerFactory().getSlmHandler();
        this.mSlmService = slmHandler;
        ImProcessor imProcessor = new ImProcessor(context, slmHandler, this, imCache);
        this.mImProcessor = imProcessor;
        FtProcessor ftProcessor = new FtProcessor(context, iImServiceInterface, slmHandler, this, imCache);
        this.mFtProcessor = ftProcessor;
        ImSessionProcessor imSessionProcessor = new ImSessionProcessor(context, iImServiceInterface, slmHandler, this, imCache);
        this.mImSessionProcessor = imSessionProcessor;
        this.mImLatchingProcessor = new ImLatchingProcessor(context, this);
        this.mImTranslation = new ImTranslation(context, this, imSessionProcessor, imProcessor);
        this.mFtTranslation = new FtTranslation(context, this, ftProcessor);
        this.mThirdPartyTranslation = new ThirdPartyTranslation(context, this);
        setUpsmEventReceiver();
        this.mActiveDataPhoneId = SimUtil.getSimSlotPriority();
        int size = allSimManagers.size();
        this.mConfigs = new PhoneIdKeyMap<>(size, null);
        this.mOwnPhoneNumbers = new PhoneIdKeyMap<>(size, null);
        this.mGroupChatRetrievingHandlers = new PhoneIdKeyMap<>(size, null);
        this.mRegistrationTypes = new PhoneIdKeyMap<>(size, null);
        Boolean bool = Boolean.FALSE;
        this.mIsDataRoamings = new PhoneIdKeyMap<>(size, bool);
        this.mIsDataStateConnected = new PhoneIdKeyMap<>(size, bool);
        this.mIsOutOfServices = new PhoneIdKeyMap<>(size, bool);
        this.mHasIncomingSessionForA2P = new PhoneIdKeyMap<>(size, bool);
        this.mInternetListeners = new PhoneIdKeyMap<>(size, null);
        this.mUriGenerators = new PhoneIdKeyMap<>(size, null);
        this.mFeatureUpdater = new FeatureUpdater(context, this);
        this.mImDump = new ImDump(imCache);
        for (int i = 0; i < size; i++) {
            this.mConfigs.put(i, ImConfig.getInstance(i));
            this.mUriGenerators.put(i, UriGeneratorFactory.getInstance().get(i, UriGenerator.URIServiceType.RCS_URI));
        }
        if (size > 1) {
            SimManagerFactory.registerForADSChange(this, 29, null);
        }
        for (ISimManager iSimManager : this.mSimManagers) {
            iSimManager.registerForSimRefresh(this, 34, null);
            iSimManager.registerForSimRemoved(this, 36, null);
        }
        this.mImLatchingProcessor.init(this.mSimManagers.size());
        PowerManager.WakeLock newWakeLock = ((PowerManager) this.mContext.getSystemService("power")).newWakeLock(1, NAME);
        this.mWakeLock = newWakeLock;
        newWakeLock.setReferenceCounted(true);
        this.mKnoxBlockState = 0;
        setSmsPatternEventReceiver();
    }

    public ImModule(Looper looper, Context context, IImServiceInterface iImServiceInterface) {
        this(looper, context, iImServiceInterface, ImCache.getInstance());
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String getName() {
        return NAME;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return sRequiredServices;
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        super.init();
        Log.i(LOG_TAG, "init()");
        this.mCache.load(this);
        this.mCache.addImCacheActionListener(this.mImTranslation);
        this.mImSessionProcessor.init(this.mImProcessor, this.mFtProcessor, this.mImTranslation);
        this.mImProcessor.init(this.mImSessionProcessor, this.mImTranslation);
        this.mFtProcessor.init(this.mImSessionProcessor, this.mImTranslation);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void start() {
        super.start();
        Log.i(LOG_TAG, "start()");
        this.mImService.registerForImIncomingSession(this, 1, null);
        this.mImService.registerForImSessionEstablished(this, 2, null);
        this.mImService.registerForImSessionClosed(this, 3, null);
        this.mImService.registerForImIncomingMessage(this, 4, null);
        this.mImService.registerForImIncomingFileTransfer(this, 5, null);
        this.mImService.registerForComposingNotification(this, 6, null);
        this.mImService.registerForImdnNotification(this, 7, null);
        this.mImService.registerForMessageFailed(this, 8, null);
        this.mImService.registerForConferenceInfoUpdate(this, 10, null);
        this.mImService.registerForImdnResponse(this, 21, null);
        this.mImService.registerForImdnFailed(this, 14, null);
        this.mImService.registerForTransferProgress(this, 20, null);
        this.mImService.registerForMessageRevokeResponse(this, 27, null);
        this.mImService.registerForSendMessageRevokeDone(this, 28, null);
        this.mImService.registerForChatbotAnonymizeResp(this, 31, null);
        this.mImService.registerForChatbotAnonymizeNotify(this, 32, null);
        this.mImService.registerForChatbotAsSpamNotify(this, 30, null);
        this.mSlmService.registerForSlmIncomingMessage(this, 11, null);
        this.mSlmService.registerForSlmIncomingFileTransfer(this, 12, null);
        this.mSlmService.registerForSlmImdnNotification(this, 13, null);
        this.mSlmService.registerForSlmTransferProgress(this, 20, null);
        this.mSlmService.registerForSlmLMMIncomingSession(this, 22, null);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void stop() {
        super.stop();
        Log.i(LOG_TAG, "stop()");
        this.mImService.unregisterForImIncomingSession(this);
        this.mImService.unregisterForImSessionEstablished(this);
        this.mImService.unregisterForImSessionClosed(this);
        this.mImService.unregisterForImIncomingMessage(this);
        this.mImService.unregisterForImIncomingFileTransfer(this);
        this.mImService.unregisterForComposingNotification(this);
        this.mImService.unregisterForImdnNotification(this);
        this.mImService.unregisterForMessageFailed(this);
        this.mImService.unregisterForConferenceInfoUpdate(this);
        this.mImService.unregisterForImdnResponse(this);
        this.mImService.unregisterForImdnFailed(this);
        this.mImService.unregisterForTransferProgress(this);
        this.mImService.unregisterForMessageRevokeResponse(this);
        this.mImService.unregisterForSendMessageRevokeDone(this);
        this.mImService.unregisterForChatbotAnonymizeNotify(this);
        this.mImService.unregisterForChatbotAnonymizeResp(this);
        this.mImService.unregisterForChatbotAsSpamNotify(this);
        this.mSlmService.unregisterForSlmIncomingMessage(this);
        this.mSlmService.unregisterForSlmIncomingFileTransfer(this);
        this.mSlmService.unregisterForSlmImdnNotification(this);
        this.mSlmService.unregisterForSlmTransferProgress(this);
        this.mSlmService.unregisterForSlmLMMIncomingSession(this);
        handleEventDeregistered(null);
        this.mImLatchingProcessor.unregisterXmsReceiver();
        for (int i = 0; i < this.mSimManagers.size(); i++) {
            this.mImLatchingProcessor.resetUriList(i);
            this.mImLatchingProcessor.setXmsReceiverEnabled(i, false);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        Log.i(LOG_TAG, "onConfigured: phoneId = " + i);
        sendMessage(obtainMessage(17, Integer.valueOf(i)));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        super.onRegistered(imsRegistration);
        int phoneId = imsRegistration.getPhoneId();
        Log.i(LOG_TAG, "onRegistered() phoneId = " + phoneId + ", regiInfo = " + imsRegistration);
        ImDump imDump = this.mImDump;
        StringBuilder sb = new StringBuilder();
        sb.append("onRegistered: ");
        sb.append(imsRegistration.getServices());
        imDump.addEventLogs(sb.toString());
        ImsUri uri = imsRegistration.getPreferredImpu().getUri();
        String msisdn = uri.getMsisdn();
        if (ImsRegistry.getBoolean(phoneId, GlobalSettingsConstants.RCS.USE_XMS_RECEIVER_FOR_RESOLVING_LATCHING, false)) {
            this.mImLatchingProcessor.registerXmsReceiver(phoneId);
            this.mImLatchingProcessor.checkAfterSimChanged(phoneId, msisdn);
        } else {
            this.mImLatchingProcessor.resetUriList(phoneId);
        }
        this.mUriGenerators.put(phoneId, UriGeneratorFactory.getInstance().get(uri, UriGenerator.URIServiceType.RCS_URI));
        this.mRegistrationTypes.put(phoneId, Integer.valueOf(ImsRegistry.getRegistrationManager().getCurrentNetworkByPhoneId(phoneId)));
        if (getRcsStrategy(phoneId).boolSetting(RcsPolicySettings.RcsPolicy.USE_SIPURI_FOR_URIGENERATOR)) {
            Iterator it = imsRegistration.getImpuList().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                NameAddr nameAddr = (NameAddr) it.next();
                if (nameAddr.getUri().getUriType() == ImsUri.UriType.SIP_URI) {
                    this.mUriGenerators.put(phoneId, UriGeneratorFactory.getInstance().get(nameAddr.getUri(), UriGenerator.URIServiceType.RCS_URI));
                    break;
                }
            }
        }
        sendMessage(obtainMessage(15, imsRegistration));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onDeregistering(ImsRegistration imsRegistration) {
        super.onDeregistering(imsRegistration);
        Log.i(LOG_TAG, "onDeregistering");
        int i = this.mActiveDataPhoneId;
        if (imsRegistration != null) {
            i = imsRegistration.getPhoneId();
        }
        this.mRegistrationTypes.remove(i);
        String imsiFromPhoneId = getImsiFromPhoneId(i);
        if (imsiFromPhoneId == null) {
            return;
        }
        for (ImSession imSession : this.mCache.getAllImSessions()) {
            if (imsiFromPhoneId.equals(imSession.getOwnImsi())) {
                imSession.forceCloseSession();
            }
        }
        if (getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.BLOCK_CHATBOT_NW) && imsRegistration != null && imsRegistration.hasService(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION)) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mBlockListUpdateObserver);
            this.mBlockList.clear();
            this.mBlockExpires = 0L;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        int i2 = this.mActiveDataPhoneId;
        if (imsRegistration != null) {
            i2 = imsRegistration.getPhoneId();
            this.mImDump.addEventLogs("onDeregistered: " + imsRegistration.getServices() + ", error=" + i);
        }
        String str = LOG_TAG;
        Log.i(str, "onDeregistered() phoneId : " + i2 + ", errorCode :" + i + ", regiInfo : " + imsRegistration);
        if (getImsRegistration(i2) == null) {
            Log.i(str, "onDeregistered() : already deregistered.");
            return;
        }
        this.mRegistrationTypes.remove(i2);
        this.mHasIncomingSessionForA2P.put(i2, Boolean.FALSE);
        sendMessage(obtainMessage(16, i, 0, imsRegistration));
        super.onDeregistered(imsRegistration, i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onNetworkChanged(NetworkEvent networkEvent, int i) {
        super.onNetworkChanged(networkEvent, i);
        Log.d(LOG_TAG, "onNetworkChanged phoneId:" + i + ", to " + networkEvent);
        if (networkEvent.isWifiConnected != this.mIsWifiConnected && !getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FT_WIFI_DISCONNECTED)) {
            onWifiConnectionChanged(networkEvent.isWifiConnected, i);
        }
        if (networkEvent.isDataRoaming != this.mIsDataRoamings.get(i).booleanValue()) {
            onDataRoamingChanged(networkEvent.isDataRoaming, i);
        }
        if (networkEvent.outOfService != this.mIsOutOfServices.get(i).booleanValue()) {
            onOutOfServiceChanged(networkEvent.outOfService, networkEvent.isDataStateConnected, i);
        } else if (networkEvent.isDataStateConnected && !networkEvent.outOfService) {
            boolean booleanValue = this.mIsDataStateConnected.get(i).booleanValue();
            boolean z = networkEvent.isDataStateConnected;
            if (booleanValue != z) {
                onOutOfServiceChanged(networkEvent.outOfService, z, i);
            }
        }
        updateFeatures(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWifiConnectionChanged(boolean z, int i) {
        Log.i(LOG_TAG, "onWifiConnectionChanged: " + z);
        this.mIsWifiConnected = z;
    }

    private void onDataRoamingChanged(boolean z, int i) {
        this.mIsDataRoamings.put(i, Boolean.valueOf(z));
        int ftAutAccept = ImUserPreference.getInstance().getFtAutAccept(this.mContext, i);
        Log.i(LOG_TAG, "onDataRoamingChanged: ft aut accept=" + ftAutAccept + " isRoaming=" + z);
        this.mConfigs.get(i).setFtAutAccept(this.mContext, ftAutAccept, z);
    }

    private void onOutOfServiceChanged(boolean z, boolean z2, int i) {
        IMSLog.i(LOG_TAG, i, "onOutOfServiceChanged:" + z);
        this.mIsOutOfServices.put(i, Boolean.valueOf(z));
        this.mIsDataStateConnected.put(i, Boolean.valueOf(z2));
        boolean z3 = false;
        if (!z && isRegistered(i) && !getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FOR_DEREGI_PROMPTLY)) {
            boolean z4 = this.mConfigs.get(i).isFtHttpOverDefaultPdn() && isDefaultPdnConnected();
            if (!this.mConfigs.get(i).isFtHttpOverDefaultPdn() && getRcsStrategy(i).intSetting(RcsPolicySettings.RcsPolicy.FT_NET_CAPABILITY) == 4 && isImsPdnConnected(i)) {
                z3 = true;
            }
            if (z4 || z3) {
                Iterator<ImSession> it = this.mCache.getAllImSessions().iterator();
                while (it.hasNext()) {
                    it.next().processPendingFtHttp(i);
                }
                return;
            }
            return;
        }
        if (z && isRegistered(i) && !this.mIsWifiConnected) {
            Iterator<ImSession> it2 = this.mCache.getAllImSessions().iterator();
            while (it2.hasNext()) {
                it2.next().processCancelMessages(false, ImError.OUTOFSERVICE);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void registerChatEventListener(IChatEventListener iChatEventListener) {
        this.mImSessionProcessor.registerChatEventListener(iChatEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public ImSession getImSession(String str) {
        return this.mCache.getImSession(str);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public Future<ImSession> createChat(List<ImsUri> list, String str, String str2, int i, String str3) {
        return this.mImSessionProcessor.createChat(list, str, str2, i, str3);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public Future<ImSession> createChat(int i, List<ImsUri> list, String str, boolean z, boolean z2, String str2, Uri uri, boolean z3, boolean z4) {
        return this.mImSessionProcessor.createChat(i, list, str, null, 0, null, z, z2, str2, uri, z3, z4);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void readMessages(String str, List<String> list) {
        this.mImSessionProcessor.readMessages(str, list);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void readMessages(String str, List<String> list, boolean z) {
        this.mImSessionProcessor.readMessages(str, list, z);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public FutureTask<Boolean> deleteChats(List<String> list, boolean z) {
        return this.mImSessionProcessor.deleteChats(list, z);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public FtMessage getFtMessage(int i) {
        return this.mCache.getFtMessage(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void setAutoAcceptFt(int i) {
        this.mFtProcessor.setAutoAcceptFt(this.mActiveDataPhoneId, i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void setAutoAcceptFt(int i, int i2) {
        this.mFtProcessor.setAutoAcceptFt(i, i2);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public FutureTask<Boolean> deleteChatsForUnsubscribe(int i) {
        return this.mImSessionProcessor.deleteChatsForUnsubscribe(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void resendMessage(int i) {
        this.mImProcessor.resendMessage(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void addParticipants(String str, List<ImsUri> list) {
        this.mImSessionProcessor.addParticipants(str, list);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void closeChat(String str) {
        this.mImSessionProcessor.closeChat(str);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void resumeSendingTransfer(String str, Uri uri, boolean z) {
        this.mFtProcessor.resumeSendingTransfer(str, uri, z);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void resumeReceivingTransfer(String str, String str2, Uri uri) {
        this.mFtProcessor.resumeReceivingTransfer(str, str2, uri);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public boolean hasEstablishedSession() {
        return this.mImSessionProcessor.hasEstablishedSession();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void registerMessageEventListener(ImConstants.Type type, IMessageEventListener iMessageEventListener) {
        this.mImProcessor.registerMessageEventListener(type, iMessageEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void registerFtEventListener(ImConstants.Type type, IFtEventListener iFtEventListener) {
        this.mFtProcessor.registerFtEventListener(type, iFtEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public ImConfig getImConfig() {
        return this.mConfigs.get(this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public ImConfig getImConfig(int i) {
        return this.mConfigs.get(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public Future<FtMessage> attachFileToSingleChat(int i, String str, Uri uri, ImsUri imsUri, Set<NotificationStatus> set, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, String str4, FileDisposition fileDisposition) {
        return this.mFtProcessor.attachFileToSingleChat(i, str, uri, imsUri, set, str2, str3, z, z2, z3, z4, str4, fileDisposition, false, false);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public Future<FtMessage> attachFileToGroupChat(String str, String str2, Uri uri, Set<NotificationStatus> set, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, String str5, FileDisposition fileDisposition) {
        return this.mFtProcessor.attachFileToGroupChat(str, str2, uri, set, str3, str4, z, z2, z3, z4, str5, fileDisposition);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void sendFile(String str) {
        this.mFtProcessor.sendFile(str);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void acceptFileTransfer(String str, ImDirection imDirection, String str2, Uri uri) {
        this.mFtProcessor.acceptFileTransfer(str, imDirection, str2, uri);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void cancelFileTransfer(String str, ImDirection imDirection, String str2) {
        this.mFtProcessor.cancelFileTransfer(str, imDirection, str2);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public FutureTask<Boolean> deleteMessages(List<String> list, boolean z) {
        return this.mImProcessor.deleteMessages(list, z);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public FutureTask<Boolean> deleteMessagesByImdnId(Map<String, Integer> map, String str, boolean z) {
        return this.mImProcessor.deleteMessagesByImdnId(map, str, z);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void rejectFileTransfer(String str, ImDirection imDirection, String str2) {
        this.mFtProcessor.rejectFileTransfer(str, imDirection, str2);
    }

    protected IImServiceInterface getImHandler() {
        return this.mImService;
    }

    protected Integer onRequestRegistrationType() {
        if (getImsRegistration() == null) {
            return null;
        }
        Integer registrationType = getRegistrationType(this.mActiveDataPhoneId);
        boolean z = registrationType != null && registrationType.intValue() == 18;
        Log.i(LOG_TAG, "is device registered over epdg: " + z);
        return registrationType;
    }

    protected boolean isRegistered() {
        return getImsRegistration() != null;
    }

    protected boolean isRegistered(int i) {
        return getImsRegistration(i) != null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public boolean isServiceRegistered(int i, String str) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null || str == null) {
            return false;
        }
        Log.i(LOG_TAG, "isServiceRegistered:" + str + ":" + imsRegistration.getServices());
        return imsRegistration.hasService(str);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
        if (intent.hasCategory(ImIntent.CATEGORY_ACTION)) {
            this.mImTranslation.handleIntent(intent);
        } else if (intent.hasCategory(FtIntent.CATEGORY_ACTION)) {
            this.mFtTranslation.handleIntent(intent);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public int getPhoneIdByChatId(String str) {
        ImSession imSession = this.mCache.getImSession(str);
        if (imSession != null) {
            return getPhoneIdByIMSI(imSession.getOwnImsi());
        }
        return 0;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public int getPhoneIdByImdnId(String str, ImDirection imDirection) {
        MessageBase message = this.mCache.getMessage(str, imDirection, null);
        if (message != null) {
            return message.getPhoneId();
        }
        return 0;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public int getPhoneIdByMessageId(int i) {
        MessageBase message = this.mCache.getMessage(i);
        if (message != null) {
            return message.getPhoneId();
        }
        return 0;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public int getPhoneIdByIMSI(String str) {
        if (str == null) {
            return this.mActiveDataPhoneId;
        }
        int phoneId = SimManagerFactory.getPhoneId(str);
        return phoneId != -1 ? phoneId : this.mActiveDataPhoneId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public ImLatchingProcessor getLatchingProcessor() {
        return this.mImLatchingProcessor;
    }

    protected void acquireWakeLock(Object obj) {
        Log.i(LOG_TAG, "acquireWakeLock: " + obj);
        this.mWakeLock.acquire(3000L);
    }

    protected void releaseWakeLock(Object obj) {
        if (this.mWakeLock.isHeld()) {
            Log.i(LOG_TAG, "releaseWakeLock: " + obj);
            this.mWakeLock.release();
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        switch (message.what) {
            case 1:
                this.mImSessionProcessor.onIncomingSessionReceived((ImIncomingSessionEvent) ((AsyncResult) message.obj).result);
                break;
            case 2:
                this.mImSessionProcessor.onSessionEstablished((ImSessionEstablishedEvent) ((AsyncResult) message.obj).result);
                break;
            case 3:
                this.mImSessionProcessor.onSessionClosed((ImSessionClosedEvent) ((AsyncResult) message.obj).result);
                break;
            case 4:
                this.mImProcessor.onIncomingMessageReceived((ImIncomingMessageEvent) ((AsyncResult) message.obj).result);
                break;
            case 5:
            case 12:
                this.mFtProcessor.onIncomingFileTransferReceived((FtIncomingSessionEvent) ((AsyncResult) message.obj).result);
                break;
            case 6:
                this.mImSessionProcessor.onComposingNotificationReceived((ImComposingEvent) ((AsyncResult) message.obj).result);
                break;
            case 7:
            case 13:
                this.mImSessionProcessor.onImdnNotificationReceived((ImdnNotificationEvent) ((AsyncResult) message.obj).result);
                break;
            case 8:
                this.mImProcessor.onSendMessageHandleReportFailed((SendMessageFailedEvent) ((AsyncResult) message.obj).result);
                break;
            case 9:
                this.mImProcessor.onProcessPendingMessages(((Integer) message.obj).intValue());
                break;
            case 10:
                this.mImSessionProcessor.onConferenceInfoUpdated((ImSessionConferenceInfoUpdateEvent) ((AsyncResult) message.obj).result);
                break;
            case 11:
                this.mImProcessor.onIncomingSlmMessage((SlmIncomingMessageEvent) ((AsyncResult) message.obj).result);
                break;
            case 14:
                this.mImSessionProcessor.onSendImdnFailed((SendImdnFailedEvent) ((AsyncResult) message.obj).result);
                break;
            case 15:
                handleEventRegistered((ImsRegistration) message.obj);
                break;
            case 16:
                handleEventDeregistered((ImsRegistration) message.obj);
                break;
            case 17:
                handleEventConfigured(((Integer) message.obj).intValue());
                break;
            case 18:
                handleEventMessageAppChanged();
                break;
            case 19:
                handleEventProcessRejoinGCSession(((Integer) message.obj).intValue());
                break;
            case 20:
                this.mFtProcessor.handleFileTransferProgress((FtTransferProgressEvent) ((AsyncResult) message.obj).result);
                break;
            case 21:
                AsyncResult asyncResult = (AsyncResult) message.obj;
                Log.i(LOG_TAG, "EVENT_IMDN_RESPONSE_RECEIVED : " + asyncResult.result);
                break;
            case 22:
                this.mImSessionProcessor.onIncomingSlmLMMSessionReceived((SlmLMMIncomingSessionEvent) ((AsyncResult) message.obj).result);
                break;
            case 23:
                handleEventResumePendingHttpFtOperations(((Integer) message.obj).intValue());
                break;
            case 24:
                handleEventAbortOngoingHttpFtOperation(((Integer) message.obj).intValue());
                break;
            case 25:
                this.mImSessionProcessor.handleEventBlocklistChanged();
                break;
            case 27:
                this.mImSessionProcessor.getImRevocationHandler().onMessageRevokeResponseReceived((MessageRevokeResponse) ((AsyncResult) message.obj).result);
                break;
            case 28:
                this.mImSessionProcessor.getImRevocationHandler().onSendMessageRevokeRequestDone((MessageRevokeResponse) ((AsyncResult) message.obj).result);
                break;
            case 29:
                handleADSChange();
                break;
            case 30:
                ReportChatbotAsSpamRespEvent reportChatbotAsSpamRespEvent = (ReportChatbotAsSpamRespEvent) ((AsyncResult) message.obj).result;
                this.mImTranslation.onReportChatbotAsSpamRespReceived(reportChatbotAsSpamRespEvent.mUri, reportChatbotAsSpamRespEvent.mError == ImError.SUCCESS, reportChatbotAsSpamRespEvent.mRequestId);
                break;
            case 31:
                handleEventRequestChatbotAnonymizeResponse((ChatbotAnonymizeRespEvent) ((AsyncResult) message.obj).result);
                break;
            case 32:
                ChatbotAnonymizeNotifyEvent chatbotAnonymizeNotifyEvent = (ChatbotAnonymizeNotifyEvent) ((AsyncResult) message.obj).result;
                this.mImTranslation.onRequestChatbotAnonymizeNotiReceived(chatbotAnonymizeNotifyEvent.mChatbotUri, chatbotAnonymizeNotifyEvent.mResult, chatbotAnonymizeNotifyEvent.mCommandId);
                break;
            case 33:
                if (ImsRegistry.isReady()) {
                    ImsRegistry.startAutoConfig(true, null);
                    break;
                }
                break;
            case 34:
                onSimRefresh(((Integer) ((AsyncResult) message.obj).result).intValue());
                break;
            case 35:
                int intValue = ((Integer) message.obj).intValue();
                if (this.mNeedToRemoveFromPendingList.remove(Integer.valueOf(intValue))) {
                    this.mCache.removeFromPendingList(intValue);
                    break;
                }
                break;
            case 36:
                onSimRemoved(((Integer) ((AsyncResult) message.obj).result).intValue());
                break;
        }
    }

    private void handleEventConfigured(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot != null && !TextUtils.isEmpty(simManagerFromSimSlot.getLine1Number())) {
            this.mOwnPhoneNumbers.put(i, simManagerFromSimSlot.getLine1Number());
        }
        String str = LOG_TAG;
        IMSLog.s(str, "mSimCardManager own number is: " + this.mOwnPhoneNumbers.get(i));
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
        if (telephonyManager != null && telephonyManager.isNetworkRoaming() != this.mIsDataRoamings.get(i).booleanValue()) {
            onDataRoamingChanged(telephonyManager.isNetworkRoaming(), i);
        }
        ImsProfile imsProfile = ImsRegistry.getRegistrationManager().getImsProfile(i, ImsProfile.PROFILE_TYPE.CHAT);
        if (((Boolean) Optional.ofNullable(imsProfile).map(new Function() { // from class: com.sec.internal.ims.servicemodules.im.ImModule$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$handleEventConfigured$0;
                lambda$handleEventConfigured$0 = ImModule.lambda$handleEventConfigured$0((ImsProfile) obj);
                return lambda$handleEventConfigured$0;
            }
        }).orElse(Boolean.TRUE)).booleanValue()) {
            Log.e(str, "profile is null, return !!!");
            return;
        }
        this.mRcsProfile = ConfigUtil.getRcsProfileWithFeature(this.mContext, i, imsProfile);
        this.mConfigs.get(i).load(this.mContext, this.mRcsProfile, this.mIsDataRoamings.get(i).booleanValue());
        IMSLog.i(str, "ImConfig loaded. " + this.mConfigs.get(i));
        this.mCache.initializeLruCache(this.mConfigs.get(i).getMaxConcurrentSession());
        updateFeatures(i);
        if (this.mInternetListeners.get(i) == null) {
            if ((this.mConfigs.get(i).isFtHttpOverDefaultPdn() && getRcsStrategy(i).isFTHTTPAutoResumeAndCancelPerConnectionChange()) || getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FT_WIFI_DISCONNECTED)) {
                setNetworkCallback(i);
                registerDefaultNetworkCallback(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$handleEventConfigured$0(ImsProfile imsProfile) {
        return Boolean.valueOf((imsProfile.hasService("im") || imsProfile.hasService("slm")) ? false : true);
    }

    private void handleEventRegistered(ImsRegistration imsRegistration) {
        int phoneId = imsRegistration != null ? imsRegistration.getPhoneId() : this.mActiveDataPhoneId;
        this.mActiveDataPhoneId = SimUtil.getSimSlotPriority();
        if (imsRegistration != null) {
            updateOwnPhoneNumberOnRegi(phoneId, imsRegistration);
            if (this.mConfigs.get(phoneId).isEnableGroupChatListRetrieve()) {
                if (this.mGroupChatRetrievingHandlers.get(phoneId) == null) {
                    this.mGroupChatRetrievingHandlers.put(phoneId, new GroupChatRetrievingHandler(getLooper(), getContext(), this.mCache, this.mImTranslation, getImHandler(), getOwnPhoneNum(phoneId), getImsiFromPhoneId(phoneId)));
                }
                this.mGroupChatRetrievingHandlers.get(phoneId).startToRetrieveGroupChatList();
            }
        }
        String str = LOG_TAG;
        IMSLog.s(str, "mImRegistration own number is: " + this.mOwnPhoneNumbers.get(phoneId));
        if (this.mOwnPhoneNumbers.get(phoneId) == null || this.mOwnPhoneNumbers.get(phoneId).isEmpty()) {
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(phoneId);
            if (simManagerFromSimSlot != null) {
                this.mOwnPhoneNumbers.put(phoneId, simManagerFromSimSlot.getImsi());
            }
            IMSLog.s(str, "When own number is not available through telephonyManager or RegistrationManager, we use imsi. TelephonyManager imsi: " + this.mOwnPhoneNumbers.get(phoneId));
        }
        if (isRequiredServicesRegistered(imsRegistration)) {
            if (!RcsUtils.DualRcs.isDualRcsReg() && getRcsStrategy(phoneId).boolSetting(RcsPolicySettings.RcsPolicy.UPDATE_SESSION_AFTER_REGISTRATION)) {
                for (ImSession imSession : this.mCache.getActiveSessions()) {
                    if (imSession.getOwnImsi() != null && !imSession.getOwnImsi().equals(getImsiFromPhoneId(phoneId))) {
                        imSession.closeSession();
                    }
                }
            }
            this.mRcsProfile = ConfigUtil.getRcsProfileWithFeature(this.mContext, phoneId, imsRegistration.getImsProfile());
            if (getRegistration(phoneId) != null && !getRegistration(phoneId).isReRegi()) {
                if (getRcsStrategy(phoneId).boolSetting(RcsPolicySettings.RcsPolicy.USERAGENT_HAS_MSGAPPVERSION)) {
                    setAppVersionToSipUserAgent(imsRegistration);
                }
                if (getRcsStrategy(phoneId).boolSetting(RcsPolicySettings.RcsPolicy.BLOCK_CHATBOT_NW) && imsRegistration.hasService(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION)) {
                    this.mContext.getContentResolver().registerContentObserver(ImsConstants.Uris.SPECIFIC_BOT_URI, true, this.mBlockListUpdateObserver);
                    this.mBlockList = BlockedNumberUtil.getBlockedNumbersListFromNW(this.mContext);
                    this.mBlockExpires = BlockedNumberUtil.getBlockExpires(this.mContext);
                }
                processPendingMessagesOnRegi(phoneId, imsRegistration);
                this.mImSessionProcessor.getImRevocationHandler().startReconnectGuardTiemer(phoneId);
            }
            this.mCache.updateUriGenerator(phoneId);
        }
        if (this.mKnoxBlockState == 0) {
            setKnoxBlockState(BlockedNumberUtil.isKnoxBlockRequied());
        }
    }

    private void handleEventDeregistered(ImsRegistration imsRegistration) {
        int i = this.mActiveDataPhoneId;
        if (imsRegistration != null) {
            i = imsRegistration.getPhoneId();
        }
        this.mImSessionProcessor.getImRevocationHandler().stopReconnectGuardTimer(i);
        String imsiFromPhoneId = getImsiFromPhoneId(i);
        if (imsiFromPhoneId != null) {
            for (ImSession imSession : this.mCache.getAllImSessions()) {
                if (imsiFromPhoneId.equals(imSession.getOwnImsi())) {
                    imSession.processDeregistration();
                }
            }
        }
        this.mImService.unregisterAllFileTransferProgress();
        this.mSlmService.unregisterAllSLMFileTransferProgress();
        this.mCache.clear();
        this.mActiveDataPhoneId = SimUtil.getSimSlotPriority();
        if (this.mMessagingAppInfoReceiver == null || !getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.USERAGENT_HAS_MSGAPPVERSION)) {
            return;
        }
        this.mMessagingAppInfoReceiver.unregisterReceiver();
    }

    private void handleEventMessageAppChanged() {
        Mno fromSalesCode = Mno.fromSalesCode(OmcCode.get());
        Log.i(LOG_TAG, "handleEventMessageAppChanged");
        if (fromSalesCode != null && !fromSalesCode.isEur() && !fromSalesCode.isMea()) {
            updateFeatures(this.mActiveDataPhoneId);
        }
        if (isDefaultMessageAppInUse()) {
            return;
        }
        this.mImService.unregisterAllFileTransferProgress();
        this.mSlmService.unregisterAllSLMFileTransferProgress();
        for (ImSession imSession : this.mCache.getAllImSessions()) {
            imSession.closeSession();
            imSession.cancelPendingFilesInQueue();
        }
    }

    private boolean isRequiredServicesRegistered(ImsRegistration imsRegistration) {
        if (imsRegistration != null) {
            for (String str : sRequiredServices) {
                if (imsRegistration.hasService(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void updateFeatures(int i) {
        Log.i(LOG_TAG, "updateFeatures: phoneId = " + i);
        this.mEnabledFeatures[i] = this.mFeatureUpdater.updateFeatures(i, getImConfig(i));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void updateExtendedBotMsgFeature(int i) {
        long[] jArr = this.mEnabledFeatures;
        jArr[i] = this.mFeatureUpdater.updateExtendedBotMsgFeature(i, jArr[i]);
    }

    protected void notifyDeviceOutOfMemory() {
        final ImTranslation imTranslation = this.mImTranslation;
        Objects.requireNonNull(imTranslation);
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImModule$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ImTranslation.this.onDeviceOutOfMemory();
            }
        });
    }

    protected RoutingType getMsgRoutingType(ImsUri imsUri, ImsUri imsUri2, ImsUri imsUri3, ImsUri imsUri4, boolean z, int i) {
        if (imsUri == null || !imsUri.toString().contains(this.mOwnPhoneNumbers.get(i))) {
            imsUri = ImsUri.parse("tel:" + this.mOwnPhoneNumbers.get(i));
        }
        return getRcsStrategy(i).getMsgRoutingType(imsUri, imsUri2, imsUri3, imsUri4, z);
    }

    protected String getOwnPhoneNum() {
        return this.mOwnPhoneNumbers.get(this.mActiveDataPhoneId);
    }

    protected String getOwnPhoneNum(int i) {
        return this.mOwnPhoneNumbers.get(i);
    }

    protected boolean isOwnNumberChanged(ImSession imSession) {
        if (imSession == null) {
            Log.i(LOG_TAG, "isOwnNumberChanged: Invalid session.");
            return false;
        }
        int phoneIdByIMSI = getPhoneIdByIMSI(imSession.getOwnImsi());
        String imsiFromPhoneId = getImsiFromPhoneId(phoneIdByIMSI);
        if (TextUtils.isEmpty(this.mOwnPhoneNumbers.get(phoneIdByIMSI)) || TextUtils.isEmpty(imsiFromPhoneId)) {
            Log.i(LOG_TAG, "isOwnNumberChanged: Invalid value.");
            return false;
        }
        if (TextUtils.equals(this.mOwnPhoneNumbers.get(phoneIdByIMSI), imSession.getOwnPhoneNum())) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        if (TextUtils.equals(imsiFromPhoneId, this.mOwnPhoneNumbers.get(phoneIdByIMSI))) {
            arrayList.add("IMSI");
            ImsUtil.listToDumpFormat(LogClass.IM_OWNNUMBER_CHANGED, phoneIdByIMSI, imSession.getChatId(), arrayList);
            return true;
        }
        if (TextUtils.equals(imsiFromPhoneId, imSession.getOwnPhoneNum())) {
            return false;
        }
        ImsUri normalizedUri = this.mUriGenerators.get(phoneIdByIMSI).getNormalizedUri(this.mOwnPhoneNumbers.get(phoneIdByIMSI), true);
        ImsUri normalizedUri2 = this.mUriGenerators.get(phoneIdByIMSI).getNormalizedUri(imSession.getOwnPhoneNum(), true);
        arrayList.add("MDN");
        arrayList.add((normalizedUri == null || normalizedUri.equals(normalizedUri2)) ? "0" : "1");
        ImsUtil.listToDumpFormat(LogClass.IM_OWNNUMBER_CHANGED, phoneIdByIMSI, imSession.getChatId(), arrayList);
        return (normalizedUri == null || normalizedUri.equals(normalizedUri2)) ? false : true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IModuleInterface
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IModuleInterface
    public boolean isWifiConnected() {
        return this.mIsWifiConnected;
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IModuleInterface
    public IRcsBigDataProcessor getBigDataProcessor() {
        return this.mImSessionProcessor.getBigDataProcessor();
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public ImsUri normalizeUri(ImsUri imsUri) {
        return normalizeUri(this.mActiveDataPhoneId, imsUri);
    }

    protected ImsUri normalizeUri(int i, ImsUri imsUri) {
        if (this.mUriGenerators.get(i) == null) {
            return imsUri;
        }
        ImsUri normalize = this.mUriGenerators.get(i).normalize(imsUri);
        if (normalize != null && normalize.getUriType() == ImsUri.UriType.TEL_URI) {
            normalize.removeTelParams();
        }
        return normalize;
    }

    protected Set<ImsUri> normalizeUri(int i, Collection<ImsUri> collection) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator<ImsUri> it = collection.iterator();
        while (it.hasNext()) {
            ImsUri normalizeUri = normalizeUri(i, it.next());
            if (normalizeUri != null && hashSet.add(new ImParticipantUri(normalizeUri))) {
                hashSet2.add(normalizeUri);
            } else {
                Log.e(LOG_TAG, "normalizeUri(Collection): normalized Uri is null. Ignored.");
            }
        }
        return hashSet2;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void registerServiceAvailabilityEventListener(IServiceAvailabilityEventListener iServiceAvailabilityEventListener) throws NullPointerException, IllegalStateException {
        Preconditions.checkNotNull(iServiceAvailabilityEventListener);
        Preconditions.checkState(this.mServiceAvailabilityEventListener == null, "ServiceAvailabilityEventListener is already registered");
        this.mServiceAvailabilityEventListener = iServiceAvailabilityEventListener;
        Log.i(LOG_TAG, "registered ServiceAvailabilityEventListener");
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void unregisterServiceAvailabilityEventListener(IServiceAvailabilityEventListener iServiceAvailabilityEventListener) throws IllegalStateException, IllegalArgumentException {
        Preconditions.checkState(this.mServiceAvailabilityEventListener != null, "There is no ServiceAvailabilityEventListener registered");
        Preconditions.checkArgument(this.mServiceAvailabilityEventListener.equals(iServiceAvailabilityEventListener), "It is not possible to unregister different instance of a listener than previously registered");
        this.mServiceAvailabilityEventListener = null;
        Log.i(LOG_TAG, "ServiceAvailabilityEventListener unregistered");
    }

    protected void updateServiceAvailability(String str, ImsUri imsUri, Date date) {
        IServiceAvailabilityEventListener iServiceAvailabilityEventListener;
        if (str != null && imsUri != null && date != null && (iServiceAvailabilityEventListener = this.mServiceAvailabilityEventListener) != null) {
            iServiceAvailabilityEventListener.onServiceAvailabilityUpdate(str, imsUri, date);
            return;
        }
        Log.i(LOG_TAG, "Service availability cannot be updated, ownIdentity = " + IMSLog.checker(str) + ", remoteUri = " + IMSLog.numberChecker(imsUri) + ", timestamp = " + date + ", mServiceAvailabilityEventListener = " + this.mServiceAvailabilityEventListener);
    }

    protected void setConfig(ImConfig imConfig) {
        this.mConfigs.put(this.mActiveDataPhoneId, imConfig);
    }

    protected UriGenerator getUriGenerator() {
        return getUriGenerator(this.mActiveDataPhoneId);
    }

    protected UriGenerator getUriGenerator(int i) {
        return this.mUriGenerators.get(i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IModuleInterface
    public String getUserAlias(int i, boolean z) {
        return (!z || this.mConfigs.get(i).getRealtimeUserAliasAuth()) ? this.mConfigs.get(i).getUserAlias() : "";
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void setUserAlias(int i, String str) {
        this.mConfigs.get(i).setUserAlias(this.mContext, str);
    }

    public void setKnoxBlockState(boolean z) {
        this.mKnoxBlockState = z ? 1 : 2;
        Log.i(LOG_TAG, "setKnoxBlockState() : mKnoxBlockState=" + this.mKnoxBlockState);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public String getUserAliasFromPreference(int i) {
        return this.mConfigs.get(i).getUserAliasFromPreference(this.mContext);
    }

    protected Integer getRegistrationType(int i) {
        return this.mRegistrationTypes.get(i);
    }

    protected boolean notifyRCSMessages() {
        IMnoStrategy rcsStrategy = getRcsStrategy();
        return rcsStrategy != null && rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.NOTIFY_RCS_MSG);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    protected void sendModuleResponse(Message message, int i, Object obj) {
        Message message2 = (Message) message.getData().getParcelable("callback_msg");
        if (message2 != null) {
            Object obj2 = message2.obj;
            if (obj2 instanceof ModuleChannel.Listener) {
                message2.arg1 = i;
                message2.obj = new Object[]{(ModuleChannel.Listener) obj2, obj};
                message2.sendToTarget();
            }
        }
    }

    private void setNetworkCallback(final int i) {
        this.mInternetListeners.put(i, new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.servicemodules.im.ImModule.3
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                if (i != SimUtil.getActiveDataPhoneId()) {
                    return;
                }
                Log.i(ImModule.LOG_TAG, "INET  : onAvailable, phoneId : " + i);
                ImModule.this.mInternetAvailable = true;
                if (ImModule.this.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FT_WIFI_DISCONNECTED)) {
                    handleNetworkForCancelFtWiFiDisconnection(network, true);
                } else if (((ImConfig) ImModule.this.mConfigs.get(i)).isFtHttpOverDefaultPdn()) {
                    ImModule imModule = ImModule.this;
                    imModule.sendMessage(imModule.obtainMessage(23, Integer.valueOf(i)));
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                if (i != SimUtil.getActiveDataPhoneId()) {
                    return;
                }
                Log.i(ImModule.LOG_TAG, "INET : onLost, phoneId : " + i);
                ImModule.this.mInternetAvailable = false;
                if (ImModule.this.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FT_WIFI_DISCONNECTED)) {
                    handleNetworkForCancelFtWiFiDisconnection(network, false);
                } else if (((ImConfig) ImModule.this.mConfigs.get(i)).isFtHttpOverDefaultPdn()) {
                    ImModule imModule = ImModule.this;
                    imModule.sendMessageDelayed(imModule.obtainMessage(24, Integer.valueOf(i)), 3000L);
                }
            }

            private void handleNetworkForCancelFtWiFiDisconnection(Network network, boolean z) {
                NetworkCapabilities networkCapabilities = ((ConnectivityManager) ImModule.this.mContext.getSystemService("connectivity")).getNetworkCapabilities(network);
                if (networkCapabilities == null) {
                    return;
                }
                boolean hasTransport = networkCapabilities.hasTransport(1);
                IMSLog.i(ImModule.LOG_TAG, i, "handleNetworkForCancelFtWiFiDisconnection: isWifi=" + hasTransport + ", isAvailable=" + z);
                if (!ImModule.this.mIsWifiConnected && hasTransport && z) {
                    ImModule.this.onWifiConnectionChanged(true, i);
                    return;
                }
                if (ImModule.this.mIsWifiConnected) {
                    if ((!hasTransport || z) && (hasTransport || !z)) {
                        return;
                    }
                    ImModule.this.onWifiConnectionChanged(false, i);
                    Iterator<ImSession> it = ImModule.this.mCache.getAllImSessions().iterator();
                    while (it.hasNext()) {
                        it.next().forceCancelFt(false, CancelReason.WIFI_DISCONNECTED);
                    }
                }
            }
        });
    }

    private void registerDefaultNetworkCallback(int i) {
        Log.i(LOG_TAG, "INET  : registerDefaultNetworkCallback");
        ((ConnectivityManager) this.mContext.getSystemService("connectivity")).registerDefaultNetworkCallback(this.mInternetListeners.get(i));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void handleEventDefaultAppChanged() {
        sendEmptyMessage(18);
    }

    protected boolean isDefaultMessageAppInUse() {
        String str;
        String msgAppPkgName = PackageUtils.getMsgAppPkgName(this.mContext);
        try {
            str = Telephony.Sms.getDefaultSmsPackage(this.mContext);
        } catch (Exception e) {
            Log.e(LOG_TAG, "Failed to currentPackage: " + e);
            str = null;
        }
        boolean equals = TextUtils.equals(str, msgAppPkgName);
        Log.i(LOG_TAG, "isDefaultMessageAppInUse : " + equals);
        return equals;
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onServiceSwitched(int i, ContentValues contentValues) {
        Log.i(LOG_TAG, "onServiceSwitched");
        updateFeatures(i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void registerImSessionListener(IImSessionListener iImSessionListener) {
        this.mImSessionProcessor.registerImSessionListenerByPhoneId(iImSessionListener, this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void registerImSessionListenerByPhoneId(IImSessionListener iImSessionListener, int i) {
        this.mImSessionProcessor.registerImSessionListenerByPhoneId(iImSessionListener, i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void unregisterImSessionListener(IImSessionListener iImSessionListener) {
        this.mImSessionProcessor.unregisterImSessionListenerByPhoneId(iImSessionListener, this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void unregisterImSessionListenerByPhoneId(IImSessionListener iImSessionListener, int i) {
        this.mImSessionProcessor.unregisterImSessionListenerByPhoneId(iImSessionListener, i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void registerImsOngoingFtListener(IImsOngoingFtEventListener iImsOngoingFtEventListener) {
        this.mFtProcessor.registerImsOngoingFtListenerByPhoneId(iImsOngoingFtEventListener, this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void registerImsOngoingFtListenerByPhoneId(IImsOngoingFtEventListener iImsOngoingFtEventListener, int i) {
        this.mFtProcessor.registerImsOngoingFtListenerByPhoneId(iImsOngoingFtEventListener, i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void unregisterImsOngoingListener(IImsOngoingFtEventListener iImsOngoingFtEventListener) {
        this.mFtProcessor.unregisterImsOngoingListenerByPhoneId(iImsOngoingFtEventListener, this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void unregisterImsOngoingListenerByPhoneId(IImsOngoingFtEventListener iImsOngoingFtEventListener, int i) {
        this.mFtProcessor.unregisterImsOngoingListenerByPhoneId(iImsOngoingFtEventListener, i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public Future<ImMessage> sendMessage(String str, String str2, Set<NotificationStatus> set, String str3, String str4, int i, boolean z, boolean z2, boolean z3, List<ImsUri> list, boolean z4, String str5, String str6, String str7, String str8) {
        return this.mImProcessor.sendMessage(str, str2, set, str3, str4, i, z, z2, z3, list, z4, str5, str6, str7, str8);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void dump() {
        String str = LOG_TAG;
        IMSLog.dump(str, "Dump of " + getClass().getSimpleName() + ":");
        IMSLog.increaseIndent(str);
        Iterator<ImConfig> it = this.mConfigs.values().iterator();
        while (it.hasNext()) {
            IMSLog.dump(LOG_TAG, it.next().toString());
        }
        this.mImDump.dump();
        IMSLog.decreaseIndent(LOG_TAG);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public IMnoStrategy getRcsStrategy() {
        return RcsPolicyManager.getRcsStrategy(this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public IMnoStrategy getRcsStrategy(int i) {
        return RcsPolicyManager.getRcsStrategy(i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public MessageBase getMessage(int i) {
        return this.mCache.getMessage(i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public MessageBase getMessage(String str, ImDirection imDirection, String str2) {
        return this.mCache.getMessage(str, imDirection, str2);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public List<MessageBase> getMessages(Collection<String> collection) {
        return this.mCache.getMessages(collection);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public List<MessageBase> getMessages(Collection<String> collection, ImDirection imDirection, String str) {
        return this.mCache.getMessages(collection, imDirection, str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public MessageBase getPendingMessage(int i) {
        return this.mCache.getPendingMessage(i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public List<MessageBase> getAllPendingMessages(String str) {
        return this.mCache.getAllPendingMessages(str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public String onRequestIncomingFtTransferPath() {
        return this.mFtProcessor.onRequestIncomingFtTransferPath();
    }

    @Override // com.sec.internal.ims.util.IMessagingAppInfoListener
    public void onMessagingAppPackageReplaced() {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImModule$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ImModule.this.lambda$onMessagingAppPackageReplaced$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMessagingAppPackageReplaced$1() {
        if (this.mMessagingAppInfoReceiver == null || !getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.USERAGENT_HAS_MSGAPPVERSION)) {
            return;
        }
        String str = this.mMessagingAppInfoReceiver.mMsgAppVersion;
        Log.i(LOG_TAG, "onMessagingAppPackageReplaced: " + str);
        Iterator<Registration> it = this.mRegistrationList.iterator();
        while (it.hasNext()) {
            Registration next = it.next();
            if (!TextUtils.isEmpty(str)) {
                this.mImService.setMoreInfoToSipUserAgent(str, next.getImsRegi().getHandle());
            }
        }
    }

    private boolean isImsPdnConnected(int i) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        NetworkCapabilities networkCapabilities = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getNetworkCapabilities(imsRegistration != null ? imsRegistration.getNetwork() : null);
        return networkCapabilities != null && networkCapabilities.hasCapability(4) && networkCapabilities.hasTransport(0);
    }

    private boolean isDefaultPdnConnected() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities == null || !networkCapabilities.hasCapability(12)) {
            return false;
        }
        return networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(1);
    }

    protected Network getNetwork(boolean z, int i) {
        ImsRegistration imsRegistration;
        if (z || getRcsStrategy(i).intSetting(RcsPolicySettings.RcsPolicy.FT_NET_CAPABILITY) != 4 || (imsRegistration = getImsRegistration(i)) == null || z) {
            return null;
        }
        return imsRegistration.getNetwork();
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public Network getNetwork(int i) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null || getImConfig(i).isFtHttpOverDefaultPdn()) {
            return null;
        }
        return imsRegistration.getNetwork();
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IGetter
    public Set<ImsUri> getOwnUris(int i) {
        HashSet hashSet = new HashSet();
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration != null) {
            Iterator it = imsRegistration.getImpuList().iterator();
            while (it.hasNext()) {
                hashSet.add(normalizeUri(i, ((NameAddr) it.next()).getUri()));
            }
        }
        IMSLog.s(LOG_TAG, "getOwnUris: " + hashSet);
        return hashSet;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void reconfiguration(long[] jArr) {
        if (!hasMessages(33) && jArr.length > this.mCountReconfiguration) {
            sendMessageDelayed(obtainMessage(33), jArr[this.mCountReconfiguration]);
            this.mCountReconfiguration++;
        }
    }

    private void setUpsmEventReceiver() {
        String str = LOG_TAG;
        Log.i(str, "setUpsmEventReceiver.");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.samsung.intent.action.EMERGENCY_STATE_CHANGED");
        intentFilter.addAction(SemEmergencyConstantsExt.EMERGENCY_CHECK_ABNORMAL_STATE);
        intentFilter.addAction("com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER");
        this.mContext.registerReceiver(this.mUpsmEventReceiver, intentFilter);
        SemEmergencyManager semEmergencyManager = SemEmergencyManager.getInstance(this.mContext);
        if (semEmergencyManager != null && SemEmergencyManager.isEmergencyMode(this.mContext) && SystemUtil.checkUltraPowerSavingMode(semEmergencyManager)) {
            Log.i(str, "upsm is already set, so send upsm event.");
            onUltraPowerSavingModeChanged();
        }
    }

    private void setSmsPatternEventReceiver() {
        Log.i(LOG_TAG, "setSmsPatternEventReceiver()");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ImIntent.Action.REQUEST_SMS_PATTERN_CHECK_INTERNAL);
        this.mContext.registerReceiver(this.mSmsPatternEventReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUltraPowerSavingModeChanged() {
        postDelayed(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImModule$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ImModule.this.lambda$onUltraPowerSavingModeChanged$2();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUltraPowerSavingModeChanged$2() {
        Log.i(LOG_TAG, "onUltraPowerSavingModeChanged: update features");
        updateFeatures(this.mActiveDataPhoneId);
    }

    public void requestChatbotAnonymize(final int i, final ImsUri imsUri, final String str, final String str2) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImModule$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ImModule.this.lambda$requestChatbotAnonymize$3(imsUri, i, str2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestChatbotAnonymize$3(ImsUri imsUri, int i, String str, String str2) {
        String str3 = LOG_TAG;
        Log.i(str3, "requestChatbotAnonymize : uri = " + IMSLog.checker(imsUri));
        if (ImsProfile.getRcsProfileType(this.mRcsProfile) >= ImsProfile.RCS_PROFILE.UP_2_2.ordinal()) {
            if (getImConfig(i).getBotPrivacyDisable()) {
                Log.e(str3, "requestChatbotAnonymize Privacy is disabled, Anonymization session doesnt exist");
                return;
            }
            if (i == -1) {
                i = this.mActiveDataPhoneId;
            }
            this.mImService.requestChatbotAnonymize(new ChatbotAnonymizeParams(i, imsUri, "", str));
            return;
        }
        String composeAnonymizeXml = ChatbotXmlUtils.getInstance().composeAnonymizeXml(str2, str);
        if (i == -1) {
            i = this.mActiveDataPhoneId;
        }
        ChatbotAnonymizeParams chatbotAnonymizeParams = new ChatbotAnonymizeParams(i, imsUri, composeAnonymizeXml, str);
        IMSLog.s(str3, "requestChatbotAnonymize : xml = " + composeAnonymizeXml);
        this.mImService.requestChatbotAnonymize(chatbotAnonymizeParams);
    }

    public void reportChatbotAsSpam(final int i, final String str, final ImsUri imsUri, final List<String> list, final String str2, final String str3) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.im.ImModule$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ImModule.this.lambda$reportChatbotAsSpam$4(imsUri, str, list, str2, str3, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reportChatbotAsSpam$4(ImsUri imsUri, String str, List list, String str2, String str3, int i) {
        if (imsUri == null) {
            this.mImTranslation.onReportChatbotAsSpamRespReceived(null, false, str);
            return;
        }
        String composeSpamXml = ChatbotXmlUtils.getInstance().composeSpamXml(imsUri.toString(), list, str2, str3);
        if (i == -1) {
            i = this.mActiveDataPhoneId;
        }
        ReportChatbotAsSpamParams reportChatbotAsSpamParams = new ReportChatbotAsSpamParams(i, str, imsUri, composeSpamXml);
        Log.i(LOG_TAG, "reportChatbotAsSpam : uri = " + imsUri.toStringLimit() + ", xml = " + IMSLog.checker(composeSpamXml));
        this.mImService.reportChatbotAsSpam(reportChatbotAsSpamParams);
    }

    protected boolean hasChatbotParticipant(String str) {
        ImSession imSession = this.mCache.getImSession(str);
        return (imSession == null || imSession.isGroupChat() || !ChatbotUriUtil.hasChatbotUri(imSession.getParticipantsUri(), imSession.getPhoneId())) ? false : true;
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onCallStateChanged(int i, List<ICall> list) {
        this.mCallList.clear();
        int i2 = 0;
        for (ICall iCall : list) {
            if (iCall.isConnected()) {
                IMSLog.s(LOG_TAG, "Connected Call Number = " + iCall);
                i2++;
                ImsUri normalizedUri = this.mUriGenerators.get(i).getNormalizedUri(iCall.getNumber(), true);
                if (normalizedUri != null && !this.mCallList.contains(normalizedUri)) {
                    this.mCallList.add(normalizedUri);
                }
            }
        }
        Log.i(LOG_TAG, "nConnectedCalls = " + i2);
        if (i2 > 1) {
            this.mCallList.clear();
        }
    }

    protected boolean getActiveCall(ImsUri imsUri) {
        for (ImsUri imsUri2 : this.mCallList) {
            if (imsUri2 != null && imsUri2.equals(imsUri)) {
                return true;
            }
        }
        return false;
    }

    private void handleADSChange() {
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        String str = LOG_TAG;
        Log.i(str, "handleADSChange: current ads phoneId:" + activeDataPhoneId);
        if (isRegistered(activeDataPhoneId)) {
            Log.i(str, "handleADSChange: registered, return;");
            return;
        }
        Iterator<ImSession> it = this.mCache.getActiveSessions().iterator();
        while (it.hasNext()) {
            it.next().closeSession();
        }
    }

    private void onSimRefresh(int i) {
        IMSLog.i(LOG_TAG, i, "onSimRefresh:");
        Iterator<ImSession> it = this.mCache.getAllImSessions().iterator();
        while (it.hasNext()) {
            it.next().onSimRefresh(i);
        }
    }

    private void onSimRemoved(int i) {
        IMSLog.i(LOG_TAG, i, "onSimRemoved:");
        this.mImLatchingProcessor.unregisterXmsReceiver();
        this.mImLatchingProcessor.setXmsReceiverEnabled(i, false);
    }

    protected String getImsiFromPhoneId(int i) {
        return SimManagerFactory.getImsiFromPhoneId(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void cleanUp() {
        stop();
    }

    protected String getRcsProfile() {
        return this.mRcsProfile;
    }

    protected void setCountReconfiguration(int i) {
        this.mCountReconfiguration = i;
    }

    protected boolean isDataRoaming(int i) {
        return this.mIsDataRoamings.get(i).booleanValue();
    }

    protected void removeReconfigurationEvent() {
        removeMessages(33);
    }

    public ImSessionProcessor getImSessionProcessor() {
        return this.mImSessionProcessor;
    }

    protected ImProcessor getImProcessor() {
        return this.mImProcessor;
    }

    protected FtProcessor getFtProcessor() {
        return this.mFtProcessor;
    }

    protected ImDump getImDump() {
        return this.mImDump;
    }

    private void handleEventProcessRejoinGCSession(int i) {
        Log.i(LOG_TAG, "EVENT_PROCESS_REJOIN_GC_SESSION");
        this.mCache.loadImSessionForAutoRejoin(getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.GROUPCHAT_AUTO_REJOIN));
        this.mImSessionProcessor.processRejoinGCSession(i);
    }

    private void handleEventResumePendingHttpFtOperations(int i) {
        Log.i(LOG_TAG, "EVENT_RESUME_PENDING_HTTP_FT_OPERATIONS mInternetAvailable: " + this.mInternetAvailable);
        if (this.mInternetAvailable) {
            for (ImSession imSession : this.mCache.getAllImSessions()) {
                int phoneIdByIMSI = getPhoneIdByIMSI(imSession.getChatData().getOwnIMSI());
                if (phoneIdByIMSI != -1 && isRegistered(phoneIdByIMSI)) {
                    imSession.processPendingFtHttp(i);
                }
            }
        }
    }

    private void handleEventAbortOngoingHttpFtOperation(int i) {
        Log.i(LOG_TAG, "EVENT_ABORT_ONGOING_HTTP_FT_OPERATIONS isRegistered: " + isRegistered(i) + ", mInternetAvailable: " + this.mInternetAvailable);
        if (!isRegistered(i) || this.mInternetAvailable) {
            return;
        }
        Iterator<ImSession> it = this.mCache.getAllImSessions().iterator();
        while (it.hasNext()) {
            it.next().abortAllHttpFtOperations();
        }
    }

    private void handleEventRequestChatbotAnonymizeResponse(ChatbotAnonymizeRespEvent chatbotAnonymizeRespEvent) {
        boolean z = chatbotAnonymizeRespEvent.mError == ImError.SUCCESS;
        if (ImsProfile.getRcsProfileType(this.mRcsProfile) >= ImsProfile.RCS_PROFILE.UP_2_2.ordinal() && z) {
            ImsUri parse = ImsUri.parse(chatbotAnonymizeRespEvent.mChatbotUri);
            for (ImSession imSession : this.mCache.getActiveSessions()) {
                if (imSession.getRemoteUri().equals(parse) && imSession.getIsTokenUsed() && imSession.isChatbotRole()) {
                    imSession.closeSession();
                }
            }
        }
        this.mImTranslation.onRequestChatbotAnonymizeResponse(chatbotAnonymizeRespEvent.mChatbotUri, z, chatbotAnonymizeRespEvent.mCommandId, chatbotAnonymizeRespEvent.mRetryAfter);
    }

    private void updateOwnPhoneNumberOnRegi(int i, ImsRegistration imsRegistration) {
        String str;
        String msisdn = imsRegistration.getPreferredImpu().getUri().getMsisdn();
        if (msisdn != null) {
            msisdn = msisdn.replace("+", "");
        }
        this.mOwnPhoneNumbers.put(i, msisdn);
        String str2 = LOG_TAG;
        IMSLog.s(str2, "handleEventRegistered, mOwnImsi=" + getImsiFromPhoneId(i) + ", mOwnPhoneNumber=" + this.mOwnPhoneNumbers.get(i));
        if (getImsiFromPhoneId(i) == null || !getImsiFromPhoneId(i).equals(this.mOwnPhoneNumbers.get(i))) {
            return;
        }
        IMSLog.s(str2, "handleEventRegistered, registration.getImpuList()=" + imsRegistration.getImpuList());
        Iterator it = imsRegistration.getImpuList().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            NameAddr nameAddr = (NameAddr) it.next();
            if (!getImsiFromPhoneId(i).equals(nameAddr.getUri().getMsisdn()) && nameAddr.getUri().getUriType() == ImsUri.UriType.TEL_URI) {
                str = nameAddr.getUri().getMsisdn();
                break;
            }
        }
        if (TextUtils.isEmpty(str)) {
            Iterator it2 = imsRegistration.getImpuList().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                NameAddr nameAddr2 = (NameAddr) it2.next();
                if (!getImsiFromPhoneId(i).equals(nameAddr2.getUri().getMsisdn())) {
                    str = nameAddr2.getUri().getMsisdn();
                    break;
                }
            }
        }
        this.mOwnPhoneNumbers.put(i, str);
    }

    private void setAppVersionToSipUserAgent(ImsRegistration imsRegistration) {
        if (this.mMessagingAppInfoReceiver == null) {
            this.mMessagingAppInfoReceiver = new MessagingAppInfoReceiver(this.mContext, this);
        }
        this.mMessagingAppInfoReceiver.registerReceiver();
        String str = this.mMessagingAppInfoReceiver.mMsgAppVersion;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mImService.setMoreInfoToSipUserAgent(str, imsRegistration.getHandle());
    }

    private void processPendingMessagesOnRegi(int i, ImsRegistration imsRegistration) {
        this.mCache.loadImSessionWithPendingMessages();
        if (this.mConfigs.get(i).getEnableFtAutoResumable()) {
            this.mCache.loadImSessionWithFailedFTMessages();
        }
        Collection<ImSession> allImSessions = this.mCache.getAllImSessions();
        Log.i(LOG_TAG, allImSessions.size() + " session(s) in cache");
        Iterator<ImSession> it = allImSessions.iterator();
        while (it.hasNext()) {
            it.next().updateNetworkForPendingMessage(imsRegistration.getNetwork(), getNetwork(this.mConfigs.get(i).isFtHttpOverDefaultPdn(), i));
        }
        sendMessage(obtainMessage(9, Integer.valueOf(i)));
        sendMessage(obtainMessage(19, Integer.valueOf(i)));
    }

    protected void removeFromPendingListWithDelay(int i) {
        this.mNeedToRemoveFromPendingList.add(Integer.valueOf(i));
        sendMessageDelayed(obtainMessage(35, Integer.valueOf(i)), 10000L);
    }

    public boolean hasIncomingSessionForA2P(int i) {
        Log.i(LOG_TAG, "hasIncomingSessionForA2P: phoneId = " + i);
        return this.mHasIncomingSessionForA2P.get(i).booleanValue();
    }

    protected boolean isBlockedNumber(int i, ImsUri imsUri, boolean z) {
        String imsUri2 = imsUri.getUriType() == ImsUri.UriType.SIP_URI ? imsUri.toString() : imsUri.getMsisdn();
        boolean z2 = false;
        if (ChatbotUriUtil.isChatbotUri(imsUri, i)) {
            if (getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.SKIP_BLOCK_CHATBOT_MSG)) {
                return false;
            }
            if (getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.BLOCK_CHATBOT_NW)) {
                long j = this.mBlockExpires;
                if (j > 0 && j < System.currentTimeMillis()) {
                    this.mBlockList = BlockedNumberUtil.getBlockedNumbersListFromNW(this.mContext);
                    this.mBlockExpires = BlockedNumberUtil.getBlockExpires(this.mContext);
                    IMSLog.d(LOG_TAG, "expired the cache so reload it");
                }
            }
            if (BlockedNumberUtil.isBlockedNumber(this.mContext, imsUri2) || this.mBlockList.contains(imsUri2)) {
                z2 = true;
            }
        } else if (!z && getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.BLOCK_MSG)) {
            z2 = BlockedNumberUtil.isBlockedNumber(this.mContext, imsUri2);
        }
        if (z2) {
            IMSLog.s(LOG_TAG, "isBlockedNumber : blocked number (" + IMSLog.checker(imsUri2) + ") - reject");
        }
        return z2;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void revokeMessage(String str, List<String> list, boolean z, int i) {
        this.mImSessionProcessor.getImRevocationHandler().requestMessageRevocation(str, list, z, i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void sendComposingNotification(String str, int i, boolean z) {
        this.mImSessionProcessor.sendComposingNotification(str, i, z);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void acceptChat(String str, boolean z, int i) {
        this.mImSessionProcessor.acceptChat(str, z, i);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void removeParticipants(String str, List<ImsUri> list) {
        this.mImSessionProcessor.removeParticipants(str, list);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void changeGroupChatSubject(String str, String str2) {
        this.mImSessionProcessor.changeGroupChatSubject(str, str2);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void changeGroupChatLeader(String str, List<ImsUri> list) {
        this.mImSessionProcessor.changeGroupChatLeader(str, list);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void changeGroupAlias(String str, String str2) {
        this.mImSessionProcessor.changeGroupAlias(str, str2);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImModule
    public void changeGroupChatIcon(String str, String str2, Uri uri) {
        this.mImSessionProcessor.changeGroupChatIcon(str, str2, uri);
    }
}
