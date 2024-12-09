package com.sec.internal.ims.servicemodules.volte2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.provider.Settings;
import android.telephony.BarringInfo;
import android.telephony.CellIdentityNr;
import android.telephony.PhoneStateListener;
import android.telephony.PreciseDataConnectionState;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.telephony.ims.feature.ImsFeature;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.StringBuilderPrinter;
import com.android.internal.telephony.Call;
import com.sec.epdg.EpdgManager;
import com.sec.ims.DialogEvent;
import com.sec.ims.ImsManager;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.extensions.WiFiManagerExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.VowifiConfig;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.CallStateEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.IMSMediaEvent;
import com.sec.internal.constants.ims.servicemodules.volte2.RtpLossRateNoti;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.ServiceStateWrapper;
import com.sec.internal.helper.os.SystemWrapper;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.WfcEpdgManager;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.options.IOptionsServiceInterface;
import com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal;
import com.sec.internal.ims.servicemodules.volte2.data.EcholocateEvent;
import com.sec.internal.ims.servicemodules.volte2.data.IncomingCallEvent;
import com.sec.internal.ims.servicemodules.volte2.data.TextInfo;
import com.sec.internal.ims.servicemodules.volte2.idc.IdcServiceHelper;
import com.sec.internal.ims.servicemodules.volte2.vcid.VcidHelper;
import com.sec.internal.ims.util.ImsPhoneStateManager;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.xq.att.ImsXqReporter;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.interfaces.ims.core.IWfcEpdgManager;
import com.sec.internal.interfaces.ims.core.handler.IMediaServiceInterface;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IIdcServiceHelper;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* loaded from: classes.dex */
public class VolteServiceModuleInternal extends ServiceModuleBase implements IVolteServiceModuleInternal {
    private static final String ACTION_SMS_RECEIVED = "android.provider.Telephony.SMS_RECEIVED";
    protected static final int RELAY_CHANNEL_ESTABLISHED = 0;
    protected static final int RELAY_CHANNEL_TERMINATED = 1;
    protected ImsUri[] mActiveImpu;
    protected long[] mAllowedNetworkType;
    protected AllowedNetworkTypesListener[] mAllowedNetworkTypesListener;
    protected boolean[] mAutomaticMode;
    protected boolean mCheckRunningState;
    protected ICmcMediaController mCmcMediaController;
    protected CmcServiceHelper mCmcServiceModule;
    protected final Context mContext;
    protected int[] mDataAccessNetwork;
    private boolean mDelayRinging;
    protected boolean[] mEcbmMode;
    protected TmoEcholocateController mEcholocateController;
    protected boolean mEnableCallWaitingRule;
    protected ImsManager.EpdgListener mEpdgListener;
    protected final Map<Integer, Message> mEpdnDisconnectTimeOut;
    protected SimpleEventLog mEventLog;
    protected IdcServiceHelper mIdcServiceModule;
    protected ImsCallSessionManager mImsCallSessionManager;
    protected ImsCallSipErrorFactory mImsCallSipErrorFactory;
    protected ImsExternalCallController mImsExternalCallController;
    protected ImsXqReporter mImsXqReporter;
    private boolean[] mIsDeregisterTimerRunning;
    protected boolean[] mIsLteEpsOnlyAttached;
    private boolean[] mIsLteRetrying;
    private boolean[] mIsMissedCallSmsChecking;
    protected DialogEvent[] mLastDialogEvent;
    protected int[] mLastRegiErrorCode;
    private int mMaxPhoneCount;
    protected IImsMediaController mMediaController;
    protected IMediaServiceInterface mMediaSvcIntf;
    private BroadcastReceiver mMissedSmsIntentReceiver;
    protected boolean mMmtelAcquiredEver;
    protected MobileCareController mMobileCareController;
    protected Map<Integer, NetworkEvent> mNetworks;
    protected IOptionsServiceInterface mOptionsSvcIntf;
    protected final IPdnController mPdnController;
    protected final List<PhoneStateListenerInternal> mPhoneStateListener;
    protected final ImsPhoneStateManager mPhoneStateManager;
    protected boolean[] mProhibited;
    protected boolean[] mRatChanged;
    protected final IRegistrationManager mRegMan;
    protected boolean[] mReleaseWfcBeforeHO;
    protected int[] mRttMode;
    private RttSettingObserver mRttSettingObserver;
    protected final List<? extends ISimManager> mSimManagers;
    protected SsacManager mSsacManager;
    protected final ITelephonyManager mTelephonyManager;
    protected int[] mTtyMode;
    protected VolteNotifier mVolteNotifier;
    protected IVolteServiceInterface mVolteSvcIntf;
    private WfcEpdgManager.WfcEpdgConnectionListener mWfcEpdgConnectionListener;
    protected IWfcEpdgManager mWfcEpdgMgr;

    public ICmcMediaController getCmcMediaController() {
        return null;
    }

    public IImsMediaController getImsMediaController() {
        return null;
    }

    public String[] getServicesRequiring() {
        return new String[0];
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
    }

    public void onConferenceParticipantAdded(int i, String str) {
    }

    public void onConferenceParticipantRemoved(int i, String str) {
    }

    public void onSendRttSessionModifyRequest(int i, boolean z) {
    }

    public void onSendRttSessionModifyResponse(int i, boolean z, boolean z2) {
    }

    public void updateCmcP2pList(ImsRegistration imsRegistration, CallProfile callProfile) {
    }

    public VolteServiceModuleInternal(Looper looper, Context context, IRegistrationManager iRegistrationManager, IPdnController iPdnController, IVolteServiceInterface iVolteServiceInterface, IMediaServiceInterface iMediaServiceInterface, IOptionsServiceInterface iOptionsServiceInterface) {
        super(looper);
        this.mEpdnDisconnectTimeOut = new ArrayMap();
        this.mPhoneStateListener = new ArrayList();
        this.mEcholocateController = null;
        this.mImsXqReporter = null;
        this.mEnableCallWaitingRule = true;
        this.mNetworks = new ConcurrentHashMap();
        this.mMmtelAcquiredEver = false;
        this.mWfcEpdgMgr = null;
        this.mWfcEpdgConnectionListener = null;
        this.mEpdgListener = null;
        this.mRttSettingObserver = null;
        this.mDelayRinging = false;
        this.mMissedSmsIntentReceiver = null;
        this.mMaxPhoneCount = 1;
        this.mCheckRunningState = false;
        this.mContext = context;
        this.mEventLog = new SimpleEventLog(context, IVolteServiceModuleInternal.NAME, 100);
        this.mTelephonyManager = TelephonyManagerWrapper.getInstance(context);
        this.mVolteSvcIntf = iVolteServiceInterface;
        this.mMediaSvcIntf = iMediaServiceInterface;
        this.mOptionsSvcIntf = iOptionsServiceInterface;
        List<? extends ISimManager> allSimManagers = SimManagerFactory.getAllSimManagers();
        this.mSimManagers = allSimManagers;
        int size = allSimManagers.size();
        int phoneCount = SimUtil.getPhoneCount();
        this.mMaxPhoneCount = phoneCount;
        boolean[] zArr = new boolean[size];
        this.mProhibited = zArr;
        this.mIsLteEpsOnlyAttached = new boolean[size];
        this.mRatChanged = new boolean[size];
        this.mEcbmMode = new boolean[size];
        this.mLastDialogEvent = new DialogEvent[size];
        this.mActiveImpu = new ImsUri[size];
        this.mTtyMode = new int[size];
        this.mRttMode = new int[size];
        this.mAutomaticMode = new boolean[size];
        this.mReleaseWfcBeforeHO = new boolean[size];
        this.mLastRegiErrorCode = new int[size];
        this.mDataAccessNetwork = new int[size];
        this.mIsDeregisterTimerRunning = new boolean[size];
        this.mIsMissedCallSmsChecking = new boolean[phoneCount];
        this.mAllowedNetworkTypesListener = new AllowedNetworkTypesListener[size];
        this.mAllowedNetworkType = new long[size];
        this.mIsLteRetrying = new boolean[size];
        Arrays.fill(zArr, false);
        Arrays.fill(this.mIsLteEpsOnlyAttached, false);
        Arrays.fill(this.mRatChanged, false);
        Arrays.fill(this.mEcbmMode, false);
        Arrays.fill(this.mLastDialogEvent, (Object) null);
        Arrays.fill(this.mActiveImpu, (Object) null);
        Arrays.fill(this.mTtyMode, Extensions.TelecomManager.TTY_MODE_OFF);
        Arrays.fill(this.mRttMode, -1);
        Arrays.fill(this.mAutomaticMode, false);
        Arrays.fill(this.mReleaseWfcBeforeHO, false);
        Arrays.fill(this.mLastRegiErrorCode, 0);
        Arrays.fill(this.mIsDeregisterTimerRunning, false);
        Arrays.fill(this.mIsMissedCallSmsChecking, false);
        Arrays.fill(this.mAllowedNetworkType, -1L);
        Arrays.fill(this.mAllowedNetworkTypesListener, (Object) null);
        Arrays.fill(this.mIsLteRetrying, false);
        this.mVolteSvcIntf.registerForIncomingCallEvent(this, 1, null);
        this.mVolteSvcIntf.registerForCallStateEvent(this, 2, null);
        this.mVolteSvcIntf.registerForDialogEvent(this, 3, null);
        this.mVolteSvcIntf.registerForDedicatedBearerNotifyEvent(this, 8, null);
        this.mVolteSvcIntf.registerQuantumSecurityStatusEvent(this, 38, null);
        this.mVolteSvcIntf.registerForDtmfEvent(this, 17, null);
        this.mVolteSvcIntf.registerForTextEvent(this, 22, null);
        this.mVolteSvcIntf.registerForSIPMSGEvent(this, 25, null);
        this.mVolteSvcIntf.registerForRtpLossRateNoti(this, 18, null);
        this.mVolteSvcIntf.registerForAudioPathUpdated(this, 39, null);
        SimManagerFactory.registerForSubIdChange(this, 24, null);
        this.mPhoneStateManager = new ImsPhoneStateManager(context, -2147462879);
        for (ISimManager iSimManager : allSimManagers) {
            PhoneStateListenerInternal phoneStateListenerInternal = new PhoneStateListenerInternal(iSimManager.getSimSlotIndex(), iSimManager.getSubscriptionId());
            this.mPhoneStateListener.add(phoneStateListenerInternal);
            this.mPhoneStateManager.registerListener(phoneStateListenerInternal, iSimManager.getSubscriptionId(), iSimManager.getSimSlotIndex());
            iSimManager.registerForSimReady(this, 30, null);
            iSimManager.registerForSimRemoved(this, 31, null);
            this.mNetworks.put(Integer.valueOf(iSimManager.getSimSlotIndex()), new NetworkEvent());
        }
        this.mSsacManager = new SsacManager(getLooper(), this, iRegistrationManager, size);
        this.mEcholocateController = new TmoEcholocateController(this.mContext, this, iPdnController, size, getLooper());
        this.mRegMan = iRegistrationManager;
        this.mPdnController = iPdnController;
        this.mMediaController = new ImsMediaController(this, getLooper(), this.mContext, this.mEventLog);
        this.mMobileCareController = new MobileCareController(this.mContext);
        this.mImsCallSessionManager = new ImsCallSessionManager(this, this.mTelephonyManager, iPdnController, iRegistrationManager, getLooper());
        this.mImsCallSipErrorFactory = new ImsCallSipErrorFactory(this, this.mTelephonyManager, iPdnController, iRegistrationManager);
        this.mCmcServiceModule = new CmcServiceHelper(looper, this.mContext, this.mRegistrationList, this.mVolteSvcIntf, this.mMediaController, this.mImsCallSessionManager, this.mOptionsSvcIntf, size);
        this.mCmcMediaController = new CmcMediaController(this, getLooper(), this.mImsCallSessionManager, this.mEventLog);
        this.mImsExternalCallController = new ImsExternalCallController(this);
        this.mIdcServiceModule = new IdcServiceHelper(this, looper, this.mContext, this.mImsCallSessionManager);
        this.mVolteNotifier = new VolteNotifier();
        setRttMode(ImsUtil.isRttModeOnFromCallSettings(this.mContext, 0) ? Extensions.TelecomManager.RTT_MODE : Extensions.TelecomManager.TTY_MODE_OFF);
        setTtyMode(0, Settings.System.getInt(this.mContext.getContentResolver(), "current_tty_mode", 0));
        if (size > 1) {
            setTtyMode(1, Settings.System.getInt(this.mContext.getContentResolver(), "current_tty_mode2", 0));
        }
        sendMessage(obtainMessage(40, ImsConstants.SystemSettings.AIRPLANE_MODE.get(this.mContext, 0), -1));
        this.mRttSettingObserver = new RttSettingObserver(this.mContext, this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ImsConstants.Intents.ACTION_EMERGENCY_CALLBACK_MODE_CHANGED);
        intentFilter.addAction(IVolteServiceModuleInternal.INTENT_ACTION_LTE_BAND_CHANGED);
        intentFilter.addAction(IVolteServiceModuleInternal.ACTION_EMERGENCY_CALLBACK_MODE_INTERNAL);
        intentFilter.addAction(IVolteServiceModuleInternal.INTENT_ACTION_PS_BARRED);
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction(IVolteServiceModuleInternal.INTENT_ACTION_IQISERVICE_STATE_CHNAGED);
        intentFilter.addAction(ImsConstants.Intents.ACTION_AIRPLANE_MODE);
        this.mWfcEpdgMgr = ImsRegistry.getWfcEpdgManager();
        registerEpdgConnectionListener();
        this.mContext.registerReceiver(new AnonymousClass1(), intentFilter);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                action.hashCode();
                if (action.equals(IVolteServiceModuleInternal.INTENT_ACTION_TELEPHONY_NOT_RESPONDING)) {
                    Log.i(IVolteServiceModuleInternal.LOG_TAG, "receive INTENT_ACTION_TELEPHONY_NOT_RESPONDING");
                    VolteServiceModuleInternal.this.onTelephonyNotResponding();
                }
            }
        }, new IntentFilter(IVolteServiceModuleInternal.INTENT_ACTION_TELEPHONY_NOT_RESPONDING), "com.sec.imsservice.TELEPHONY_NOT_RESPONDING", null);
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "VolteServiceModule created");
    }

    /* renamed from: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            char c;
            String action = intent.getAction();
            action.hashCode();
            switch (action.hashCode()) {
                case -2128145023:
                    if (action.equals("android.intent.action.SCREEN_OFF")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -2065845397:
                    if (action.equals(IVolteServiceModuleInternal.INTENT_ACTION_IQISERVICE_STATE_CHNAGED)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -1926447105:
                    if (action.equals(ImsConstants.Intents.ACTION_EMERGENCY_CALLBACK_MODE_CHANGED)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -1840251113:
                    if (action.equals(IVolteServiceModuleInternal.INTENT_ACTION_PS_BARRED)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1664867553:
                    if (action.equals(IVolteServiceModuleInternal.ACTION_EMERGENCY_CALLBACK_MODE_INTERNAL)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -1454123155:
                    if (action.equals("android.intent.action.SCREEN_ON")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -1076576821:
                    if (action.equals(ImsConstants.Intents.ACTION_AIRPLANE_MODE)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1119176030:
                    if (action.equals(IVolteServiceModuleInternal.INTENT_ACTION_LTE_BAND_CHANGED)) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    VolteServiceModuleInternal volteServiceModuleInternal = VolteServiceModuleInternal.this;
                    volteServiceModuleInternal.sendMessage(volteServiceModuleInternal.obtainMessage(23, 0, -1));
                    break;
                case 1:
                    boolean booleanExtra = intent.getBooleanExtra("com.att.iqi.extra.SERVICE_RUNNING", false);
                    VolteServiceModuleInternal volteServiceModuleInternal2 = VolteServiceModuleInternal.this;
                    volteServiceModuleInternal2.sendMessage(volteServiceModuleInternal2.obtainMessage(28, booleanExtra ? 1 : 0, -1));
                    break;
                case 2:
                case 4:
                    boolean booleanExtra2 = intent.getBooleanExtra("android.telephony.extra.PHONE_IN_ECM_STATE", false);
                    int intExtra = intent.getIntExtra(PhoneConstants.PHONE_KEY, ((ServiceModuleBase) VolteServiceModuleInternal.this).mActiveDataPhoneId);
                    if (booleanExtra2) {
                        VolteServiceModuleInternal volteServiceModuleInternal3 = VolteServiceModuleInternal.this;
                        volteServiceModuleInternal3.sendMessage(volteServiceModuleInternal3.obtainMessage(6, intExtra, 1));
                        break;
                    } else {
                        VolteServiceModuleInternal volteServiceModuleInternal4 = VolteServiceModuleInternal.this;
                        volteServiceModuleInternal4.sendMessage(volteServiceModuleInternal4.obtainMessage(6, intExtra, 0));
                        break;
                    }
                case 3:
                    String stringExtra = intent.getStringExtra("cmd");
                    VolteServiceModuleInternal volteServiceModuleInternal5 = VolteServiceModuleInternal.this;
                    volteServiceModuleInternal5.sendMessage(volteServiceModuleInternal5.obtainMessage(14, "1".equals(stringExtra) ? 1 : 0, -1));
                    break;
                case 5:
                    VolteServiceModuleInternal volteServiceModuleInternal6 = VolteServiceModuleInternal.this;
                    volteServiceModuleInternal6.sendMessage(volteServiceModuleInternal6.obtainMessage(23, 1, -1));
                    break;
                case 6:
                    VolteServiceModuleInternal volteServiceModuleInternal7 = VolteServiceModuleInternal.this;
                    volteServiceModuleInternal7.sendMessage(volteServiceModuleInternal7.obtainMessage(40, ((Boolean) Optional.ofNullable(intent.getExtras()).map(new Function() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal$1$$ExternalSyntheticLambda0
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            Boolean lambda$onReceive$0;
                            lambda$onReceive$0 = VolteServiceModuleInternal.AnonymousClass1.lambda$onReceive$0((Bundle) obj);
                            return lambda$onReceive$0;
                        }
                    }).orElse(Boolean.FALSE)).booleanValue() ? 1 : 0, -1));
                    break;
                case 7:
                    VolteServiceModuleInternal.this.mMobileCareController.onLteBancChanged(intent.getStringExtra(DiagnosisConstants.PSCI_KEY_LTE_BAND));
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Boolean lambda$onReceive$0(Bundle bundle) {
            return Boolean.valueOf(bundle.getBoolean("state", false));
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        super.init();
        this.mRttSettingObserver.init();
        this.mCmcServiceModule.init();
        this.mIdcServiceModule.init();
    }

    public ImsCallSession createSession(CallProfile callProfile) throws RemoteException {
        return this.mImsCallSessionManager.createSession(this.mContext, callProfile, callProfile == null ? null : getImsRegistration(callProfile.getPhoneId()));
    }

    public ImsCallSession createSession(CallProfile callProfile, int i) throws RemoteException {
        return this.mImsCallSessionManager.createSession(this.mContext, callProfile, getRegInfo(i));
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isEmergencyRegistered(int i) {
        return getImsRegistration(i, true) != null;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isEcbmMode(int i) {
        return this.mEcbmMode[i];
    }

    private PhoneStateListenerInternal getPhoneStateListener(int i) {
        for (PhoneStateListenerInternal phoneStateListenerInternal : this.mPhoneStateListener) {
            if (phoneStateListenerInternal.getInternalPhoneId() == i) {
                return phoneStateListenerInternal;
            }
        }
        IMSLog.i(IVolteServiceModuleInternal.LOG_TAG, i, "getPhoneStateListener: psli is not exist.");
        return null;
    }

    protected void registerPhoneStateListener(int i) {
        IMSLog.i(IVolteServiceModuleInternal.LOG_TAG, i, "registerPhoneStateListener:");
        int subId = SimUtil.getSubId(i);
        if (subId < 0) {
            return;
        }
        PhoneStateListenerInternal phoneStateListenerInternal = new PhoneStateListenerInternal(i, subId);
        if (getPhoneStateListener(i) == null) {
            this.mPhoneStateListener.add(phoneStateListenerInternal);
        }
        this.mPhoneStateManager.registerListener(phoneStateListenerInternal, subId, i);
    }

    protected void onActiveDataSubscriptionChanged() {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onActiveDataSubscriptionChanged");
        Iterator<? extends ISimManager> it = this.mSimManagers.iterator();
        while (it.hasNext()) {
            int simSlotIndex = it.next().getSimSlotIndex();
            unRegisterPhoneStateListener(simSlotIndex);
            if (simSlotIndex == SimUtil.getActiveDataPhoneId()) {
                registerPhoneStateListener(simSlotIndex);
            }
        }
    }

    protected void unRegisterPhoneStateListener(int i) {
        IMSLog.i(IVolteServiceModuleInternal.LOG_TAG, i, "unRegisterPhoneStateListener:");
        this.mPhoneStateManager.unRegisterListener(i);
        PhoneStateListenerInternal phoneStateListener = getPhoneStateListener(i);
        if (phoneStateListener != null) {
            this.mPhoneStateListener.remove(phoneStateListener);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void dump() {
        String str = IVolteServiceModuleInternal.LOG_TAG;
        IMSLog.dump(str, "Dump of " + str + ":");
        IMSLog.increaseIndent(str);
        this.mEventLog.dump();
        IMSLog.decreaseIndent(str);
        IMSLog.increaseIndent(str);
        Iterator<ImsCallSession> it = getSessionList().iterator();
        while (it.hasNext()) {
            IMSLog.dump(IVolteServiceModuleInternal.LOG_TAG, it.next().smCallStateMachine.toString());
        }
        String str2 = IVolteServiceModuleInternal.LOG_TAG;
        IMSLog.decreaseIndent(str2);
        Looper looper = getLooper();
        if (looper != null) {
            IMSLog.increaseIndent(str2);
            StringBuilder sb = new StringBuilder();
            looper.dump(new StringBuilderPrinter(sb), "Service Module");
            IMSLog.dump(str2, sb.toString());
            IMSLog.decreaseIndent(str2);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void sendMobileCareEvent(int i, int i2, int i3, String str) {
        if (this.mMobileCareController.isEnabled()) {
            this.mMobileCareController.sendMobileCareEvent(i, i2, i3, str, this.mPdnController.isEpdgConnected(i));
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onImsConifgChanged(int i, String str) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onChange: config changed : " + str);
        if (str != null) {
            sendMessage(obtainMessage(21, i, 0, str));
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean acceptCallWhileSmsipRegistered(ImsRegistration imsRegistration) {
        if (imsRegistration == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "Not registered.");
            return false;
        }
        int phoneId = imsRegistration.getPhoneId();
        int subId = SimUtil.getSubId(phoneId);
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "isVowifiEnabled=" + isVowifiEnabled(phoneId) + ", isVideoSettingEnabled=" + isVideoSettingEnabled() + ", isEpdgConnected=" + this.mPdnController.isEpdgConnected(phoneId) + ", VoiceNetworkType=" + this.mTelephonyManager.getVoiceNetworkType(subId) + ", DataNetworkType=" + this.mTelephonyManager.getDataNetworkType(subId) + ", SMSIP=" + imsRegistration.hasService("smsip") + ", VOICE=" + imsRegistration.hasService("mmtel") + ", VIDEO=" + imsRegistration.hasService("mmtel-video"));
        if (isVowifiEnabled(phoneId) && !isVideoSettingEnabled() && this.mPdnController.isEpdgConnected(phoneId) && this.mTelephonyManager.getVoiceNetworkType(subId) == 7) {
            return (this.mTelephonyManager.getDataNetworkType(subId) == 14 || this.mTelephonyManager.getDataNetworkType(subId) == 18) && imsRegistration.hasService("smsip") && !imsRegistration.hasService("mmtel") && !imsRegistration.hasService("mmtel-video");
        }
        return false;
    }

    public void setTtyMode(int i) {
        Iterator<? extends ISimManager> it = this.mSimManagers.iterator();
        while (it.hasNext()) {
            setTtyMode(it.next().getSimSlotIndex(), i);
        }
    }

    public synchronized void setTtyMode(int i, int i2) {
        int[] iArr = this.mTtyMode;
        int i3 = iArr[i];
        iArr[i] = i2;
        this.mEventLog.logAndAdd("setTtyMode: " + i3 + " -> " + this.mTtyMode[i]);
        this.mRegMan.setTtyMode(i, this.mTtyMode[i]);
        if (i3 == this.mTtyMode[i]) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "setTtyMode: not updating sessions");
            return;
        }
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "when non-registered status, do not pass TTY Mode");
            return;
        }
        if (imsRegistration.getImsProfile().getTtyType() != 1 && imsRegistration.getImsProfile().getTtyType() != 3) {
            IMSLog.c(LogClass.VOLTE_CHANGE_TTYMODE, i + "," + this.mTtyMode[i]);
            this.mVolteSvcIntf.setTtyMode(i, 0, this.mTtyMode[i]);
            this.mImsCallSessionManager.setTtyMode(i, i2);
            return;
        }
        Log.e(IVolteServiceModuleInternal.LOG_TAG, "setTtyMode: do not call setTtyMode() for non IMS TTY operator");
        this.mTtyMode[i] = i3;
    }

    public void setRttMode(int i) {
        Iterator<? extends ISimManager> it = this.mSimManagers.iterator();
        while (it.hasNext()) {
            setRttMode(it.next().getSimSlotIndex(), i);
        }
    }

    public void setRttMode(int i, int i2) {
        IRegistrationManager iRegistrationManager;
        int[] iArr = this.mRttMode;
        int i3 = iArr[i];
        iArr[i] = i2;
        this.mEventLog.logAndAdd("setRttMode: " + i3 + " -> " + this.mRttMode[i]);
        if (this.mImsCallSessionManager.getSessionCount() == 0 && (iRegistrationManager = this.mRegMan) != null) {
            iRegistrationManager.setRttMode(i, this.mRttMode[i] == Extensions.TelecomManager.RTT_MODE);
        } else {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "setRttMode: RTT registration is skiped because the call session exist.");
        }
        if (i3 == this.mRttMode[i]) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "setRttMode: not updating sessions");
            return;
        }
        IMSLog.c(LogClass.VOLTE_CHANGE_RTTMODE, i + "," + this.mRttMode[i]);
        this.mVolteSvcIntf.setRttMode(i, this.mRttMode[i]);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public synchronized void onTextReceived(TextInfo textInfo) {
        if (textInfo != null) {
            if (getSession(textInfo.getSessionId()) != null) {
                this.mVolteNotifier.notifyOnRttEventBySession(getSession(textInfo.getSessionId()).getPhoneId(), textInfo);
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isCsfbErrorCode(int i, CallProfile callProfile, SipError sipError) {
        return this.mImsCallSessionManager.isCsfbErrorCode(this.mContext, i, callProfile, sipError);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void sendQualityStatisticsEvent() {
        this.mMobileCareController.sendQualityStatisticsEvent();
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void updateCapabilities(int i) {
        getServiceModuleManager().updateCapabilities(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public ImsFeature.Capabilities queryCapabilityStatus(int i) {
        ImsFeature.Capabilities capabilities = new ImsFeature.Capabilities();
        if (isCallServiceAvailable(i, "mmtel")) {
            capabilities.addCapabilities(1);
        }
        if (isCallServiceAvailable(i, "mmtel-video")) {
            capabilities.addCapabilities(2);
        }
        if (isCallServiceAvailable(i, "mmtel-call-composer")) {
            capabilities.addCapabilities(16);
        }
        return capabilities;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isCallServiceAvailable(int i, String str) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        NetworkEvent network = getNetwork(i);
        boolean isRunning = isRunning();
        if (!isRunning || imsRegistration == null) {
            return this.mCmcServiceModule.isCallServiceAvailableOnSecondary(i, str, isRunning);
        }
        IUserAgent userAgent = getUserAgent(i);
        if (userAgent == null) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "UserAgent is null");
            return false;
        }
        if (userAgent.isRegistering()) {
            Set<String> serviceForNetwork = this.mRegMan.getServiceForNetwork(imsRegistration.getImsProfile(), imsRegistration.getRegiRat(), false, i);
            if (serviceForNetwork != null && !serviceForNetwork.contains(str)) {
                return false;
            }
        } else if (userAgent.isDeregistring()) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, " is not available due to Deregistring");
            return false;
        }
        Mno fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        if (fromName == Mno.ATT && SimUtil.isSoftphoneEnabled()) {
            return imsRegistration.hasService(str);
        }
        if (network.outOfService) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, str + " is not available due to outOfService");
            return false;
        }
        if (fromName == Mno.ATT) {
            int i2 = network.network;
            if (i2 == 18) {
                return imsRegistration.hasService(str);
            }
            if (NetworkUtil.is3gppPsVoiceNetwork(i2) && (network.voiceOverPs != VoPsIndication.NOT_SUPPORTED || hasActiveCall(i))) {
                return imsRegistration.hasService(str);
            }
            Log.e(IVolteServiceModuleInternal.LOG_TAG, str + " is not available due to unsupported N/W");
            return false;
        }
        if (fromName == Mno.VZW) {
            if (this.mRegMan.isInvite403DisabledService(i)) {
                Log.e(IVolteServiceModuleInternal.LOG_TAG, str + " is not available due to isInvite403DisabledService");
                return false;
            }
            if (!NetworkUtil.is3gppPsVoiceNetwork(network.network) && network.network != 18) {
                Log.e(IVolteServiceModuleInternal.LOG_TAG, str + " is not available due to unsupported N/W");
                return false;
            }
        } else if (fromName == Mno.AIRTEL) {
            if (this.mRegMan.isSuspended(imsRegistration.getHandle())) {
                Log.e(IVolteServiceModuleInternal.LOG_TAG, str + " is not available due to N/W suspend");
                return false;
            }
        } else if (fromName == Mno.TMOUS && str == "mmtel-call-composer" && ImsUtil.getComposerAuthValue(i, this.mContext) == 0) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "TMO: return false for composerauth 0 and callcomposer service case");
            return false;
        }
        if (imsRegistration.getImsProfile().getDisallowReregi() && !NetworkUtil.is3gppPsVoiceNetwork(network.network) && network.network != 18) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, str + " is not available due to unsupported N/W");
            return false;
        }
        if (this.mIsDeregisterTimerRunning[i]) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "Call Service is not available for delayedDeregiTimer");
            return false;
        }
        if (fromName.isKor() && str.equals("mmtel") && !NetworkUtil.is3gppPsVoiceNetwork(network.network)) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "Call Service is not available for " + str);
            return false;
        }
        return imsRegistration.hasService(str);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public long getRttDbrTimer(int i) {
        ImsProfile imsProfile;
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration != null) {
            imsProfile = imsRegistration.getImsProfile();
        } else {
            IRegistrationManager iRegistrationManager = this.mRegMan;
            imsProfile = iRegistrationManager != null ? iRegistrationManager.getImsProfile(i, ImsProfile.PROFILE_TYPE.EMERGENCY) : null;
        }
        if (imsProfile != null) {
            return imsProfile.getDbrTimer();
        }
        return 20000L;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int startLocalRingBackTone(int i, int i2, int i3) {
        int i4;
        List<ImsCallSession> sessionByState = getSessionByState(CallConstants.STATE.OutGoingCall);
        List<ImsCallSession> sessionByState2 = getSessionByState(CallConstants.STATE.AlertingCall);
        if (sessionByState.size() > 0) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "has Outgoing call");
            i4 = sessionByState.get(0).getPhoneId();
        } else if (sessionByState2.size() > 0) {
            i4 = sessionByState2.get(0).getPhoneId();
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "has Alerting call");
        } else {
            i4 = -1;
        }
        if (i4 >= 0 && i4 <= SimUtil.getPhoneCount() && this.mPdnController.isEpdgConnected(i4)) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "Use IMS RBT when WiFi Calling");
            return this.mMediaSvcIntf.startLocalRingBackTone(i, i2, i3);
        }
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "Do Not Use IMS RBT when non WiFi Calling");
        return -1;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int stopLocalRingBackTone() {
        return this.mMediaSvcIntf.stopLocalRingBackTone();
    }

    public ICmcServiceHelperInternal getCmcServiceHelper() {
        return this.mCmcServiceModule;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void transfer(int i, String str) {
        this.mImsExternalCallController.transfer(i, str);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getTotalCallCount(int i) {
        return this.mImsCallSessionManager.getTotalCallCount(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getVideoCallCount(int i) {
        return this.mImsCallSessionManager.getVideoCallCount(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getDowngradedCallCount(int i) {
        return this.mImsCallSessionManager.getDowngradedCallCount(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getE911CallCount(int i) {
        return this.mImsCallSessionManager.getE911CallCount(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getEpsFbCallCount(int i) {
        return this.mImsCallSessionManager.getEpsFbCallCount(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getNrSaCallCount(int i) {
        return this.mImsCallSessionManager.getNrSaCallCount(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getEpdgCallCount(int i) {
        return this.mImsCallSessionManager.getEpdgCallCount(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void releaseSessionByState(int i, CallConstants.STATE state) {
        this.mImsCallSessionManager.releaseSessionByState(i, state);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void sendRtpLossRate(int i, RtpLossRateNoti rtpLossRateNoti) {
        this.mVolteNotifier.notifyOnRtpLossRate(i, rtpLossRateNoti);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public String updateEccUrn(int i, String str) {
        String str2;
        String updateCategoryList = updateCategoryList(i);
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "eccCategoryList : " + updateCategoryList);
        if (!TextUtils.isEmpty(updateCategoryList) && !TextUtils.isEmpty(str)) {
            String[] split = updateCategoryList.split(",");
            int length = split.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                String[] split2 = split[i2].split("/");
                if (!split2[0].equals(str)) {
                    i2++;
                } else if (split2.length > 1) {
                    str2 = split2[1];
                }
            }
        }
        str2 = "";
        if ("".equals(str2)) {
            return ImsCallUtil.ECC_SERVICE_URN_DEFAULT;
        }
        if (isRequiredKorSpecificURN(i, str2)) {
            return ImsCallUtil.convertEccCatToUrnSpecificKor(Integer.parseInt(str2));
        }
        return ImsCallUtil.convertEccCatToUrn(Integer.parseInt(str2));
    }

    public IUserAgent getUserAgent(int i) {
        IRegistrationManager iRegistrationManager;
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null || (iRegistrationManager = this.mRegMan) == null) {
            return null;
        }
        return iRegistrationManager.getUserAgentByRegId(imsRegistration.getHandle());
    }

    private String updateCategoryList(int i) {
        String str;
        Mno simMno = SimUtil.getSimMno(i);
        String string = ImsRegistry.getString(i, GlobalSettingsConstants.Call.ECC_CATEGORY_LIST_CDMA, "");
        if (i <= 0) {
            str = "ril.ecclist_net0";
        } else {
            str = "ril.ecclist_net" + i;
        }
        String str2 = SemSystemProperties.get(str, "");
        String string2 = ImsRegistry.getString(i, GlobalSettingsConstants.Call.ECC_CATEGORY_LIST, "");
        int i2 = 0;
        String str3 = "";
        while (true) {
            String str4 = SemSystemProperties.get("ril.ecclist" + i + Integer.toString(i2));
            if (str4.length() == 0) {
                break;
            }
            if (str3.length() > 0) {
                str3 = str3 + "," + str4;
            } else {
                str3 = str3 + str4;
            }
            i2++;
        }
        if (str2.length() > 0) {
            if ("".equals(string2)) {
                string2 = str2;
            } else {
                string2 = string2 + "," + str2;
            }
        }
        if (str3.length() > 0) {
            if (!"".equals(string2)) {
                str3 = string2 + "," + str3;
            }
            string2 = str3;
        }
        if (string.length() > 0) {
            if (!"".equals(string2)) {
                string = string2 + "," + string;
            }
            string2 = string;
        }
        if (!this.mTelephonyManager.isNetworkRoaming()) {
            return string2;
        }
        if (simMno == Mno.SKT || simMno == Mno.KT) {
            return "000/4,08/4,110/4,999/4,118/4," + string2;
        }
        if (simMno != Mno.LGU) {
            return string2;
        }
        return str2 + string2;
    }

    public void registerAllowedNetworkTypesListener(int i) {
        int subId = SimUtil.getSubId(i);
        if (!SubscriptionManager.isValidSubscriptionId(subId)) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "registerAllowedNetworkTypesListener(" + i + ")  : not ValidSubscriptionId");
            return;
        }
        unregisterAllowedNetworkTypesListener(i);
        TelephonyManager createForSubscriptionId = ((TelephonyManager) this.mContext.getSystemService(TelephonyManager.class)).createForSubscriptionId(subId);
        if (createForSubscriptionId == null) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "registerAllowedNetworkTypesListener(" + i + ")  : TelephonyManager null");
            return;
        }
        this.mAllowedNetworkTypesListener[i] = new AllowedNetworkTypesListener(i);
        createForSubscriptionId.registerTelephonyCallback(this.mContext.getMainExecutor(), this.mAllowedNetworkTypesListener[i]);
        this.mAllowedNetworkType[i] = createForSubscriptionId.getAllowedNetworkTypesBitmask();
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "registerAllowedNetworkTypesListener(" + i + ") : " + this.mAllowedNetworkType[i] + " " + this.mAllowedNetworkTypesListener[i]);
        this.mRegMan.updateNrPreferredMode(i, ImsCallUtil.isNrAvailable(this.mAllowedNetworkType[i]));
    }

    public class AllowedNetworkTypesListener extends TelephonyCallback implements TelephonyCallback.AllowedNetworkTypesListener {
        int mPhoneId;

        AllowedNetworkTypesListener(int i) {
            this.mPhoneId = i;
        }

        public void onAllowedNetworkTypesChanged(int i, long j) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "onAllowedNetworkTypesChanged(" + this.mPhoneId + ") : prev = " + VolteServiceModuleInternal.this.mAllowedNetworkType[this.mPhoneId] + " new = " + j);
            VolteServiceModuleInternal.this.handleAllowedNetworkTypeChanged(this.mPhoneId, j);
        }
    }

    public void handleAllowedNetworkTypeChanged(int i, long j) {
        long[] jArr = this.mAllowedNetworkType;
        if (jArr[i] == j) {
            return;
        }
        jArr[i] = j;
        this.mRegMan.updateNrPreferredMode(i, ImsCallUtil.isNrAvailable(j));
    }

    void unregisterAllowedNetworkTypesListener(int i) {
        if (this.mAllowedNetworkTypesListener[i] == null) {
            return;
        }
        TelephonyManager createForSubscriptionId = ((TelephonyManager) this.mContext.getSystemService(TelephonyManager.class)).createForSubscriptionId(SimUtil.getSubId(i));
        if (createForSubscriptionId == null) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "unregisterAllowedNetworkTypesListener(" + i + ") : TelephonyManager null");
            return;
        }
        createForSubscriptionId.unregisterTelephonyCallback(this.mAllowedNetworkTypesListener[i]);
        this.mAllowedNetworkTypesListener[i] = null;
    }

    private void registerEpdgConnectionListener() {
        WfcEpdgManager.WfcEpdgConnectionListener wfcEpdgConnectionListener = new WfcEpdgManager.WfcEpdgConnectionListener() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal.3
            @Override // com.sec.internal.ims.core.WfcEpdgManager.WfcEpdgConnectionListener
            public void onEpdgServiceConnected() {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "EPDG onEpdgServiceConnected");
                VolteServiceModuleInternal volteServiceModuleInternal = VolteServiceModuleInternal.this;
                if (volteServiceModuleInternal.mEpdgListener == null) {
                    volteServiceModuleInternal.mEpdgListener = new ImsManager.EpdgListener() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal.3.1
                        public void onEpdgReleaseCall(int i) {
                            Log.i(IVolteServiceModuleInternal.LOG_TAG, "onEpdgReleaseCall, " + i);
                            VolteServiceModuleInternal volteServiceModuleInternal2 = VolteServiceModuleInternal.this;
                            volteServiceModuleInternal2.sendMessage(volteServiceModuleInternal2.obtainMessage(20, i, 0));
                        }
                    };
                }
                VolteServiceModuleInternal volteServiceModuleInternal2 = VolteServiceModuleInternal.this;
                volteServiceModuleInternal2.mWfcEpdgMgr.registerEpdgHandoverListener(volteServiceModuleInternal2.mEpdgListener);
                for (int i = 0; i < VolteServiceModuleInternal.this.mTelephonyManager.getPhoneCount(); i++) {
                    boolean z = ImsRegistry.getBoolean(i, GlobalSettingsConstants.Call.ALLOW_RELEASE_WFC_BEFORE_HO, false);
                    String str = IVolteServiceModuleInternal.LOG_TAG;
                    Log.i(str, "Phone#" + i + " is allow release call " + z);
                    if (VolteServiceModuleInternal.this.mWfcEpdgMgr.getEpdgMgr() == null) {
                        Log.i(str, "epdgManager is null");
                    } else {
                        VolteServiceModuleInternal.this.mWfcEpdgMgr.getEpdgMgr().setReleaseCallBeforeHO(i, z);
                    }
                }
            }

            @Override // com.sec.internal.ims.core.WfcEpdgManager.WfcEpdgConnectionListener
            public void onEpdgServiceDisconnected() {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "WfcEpdgMgr : disconnected.");
                Arrays.fill(VolteServiceModuleInternal.this.mReleaseWfcBeforeHO, false);
                VolteServiceModuleInternal volteServiceModuleInternal = VolteServiceModuleInternal.this;
                volteServiceModuleInternal.mWfcEpdgMgr.unRegisterEpdgHandoverListener(volteServiceModuleInternal.mEpdgListener);
                VolteServiceModuleInternal.this.mEpdgListener = null;
            }
        };
        this.mWfcEpdgConnectionListener = wfcEpdgConnectionListener;
        this.mWfcEpdgMgr.registerWfcEpdgConnectionListener(wfcEpdgConnectionListener);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isVowifiEnabled(int i) {
        boolean isEnabled = VowifiConfig.isEnabled(this.mContext, i);
        return (this.mTelephonyManager.isNetworkRoaming() && isEnabled) ? VowifiConfig.getRoamPrefMode(this.mContext, 0, i) == 1 : isEnabled;
    }

    protected boolean isVolteSettingEnabled() {
        int i = ImsConstants.SystemSettings.VOLTE_SLOT1.get(this.mContext, 0);
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "voiceType : " + i);
        return i == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean isLTEDataModeEnabled(int r7) {
        /*
            r6 = this;
            com.sec.internal.constants.Mno r0 = com.sec.internal.helper.SimUtil.getSimMno(r7)
            boolean r1 = com.sec.internal.helper.OmcCode.isKOROmcCode()
            r2 = 1
            if (r1 == 0) goto L75
            com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.KT
            if (r0 == r1) goto L75
            com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.LGU
            if (r0 != r1) goto L14
            goto L75
        L14:
            r0 = 0
            com.sec.internal.helper.os.ITelephonyManager r6 = r6.mTelephonyManager     // Catch: java.lang.Exception -> L53
            int r1 = com.sec.internal.helper.SimUtil.getSubId(r7)     // Catch: java.lang.Exception -> L53
            int r6 = r6.getPreferredNetworkType(r1)     // Catch: java.lang.Exception -> L53
            if (r6 == 0) goto L2f
            r1 = 2
            if (r6 == r1) goto L2f
            r1 = 14
            if (r6 == r1) goto L2f
            r1 = 18
            if (r6 != r1) goto L2d
            goto L2f
        L2d:
            r1 = r2
            goto L30
        L2f:
            r1 = r0
        L30:
            java.lang.String r3 = com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal.LOG_TAG     // Catch: java.lang.Exception -> L54
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L54
            r4.<init>()     // Catch: java.lang.Exception -> L54
            java.lang.String r5 = "LTEDataMode : netType = "
            r4.append(r5)     // Catch: java.lang.Exception -> L54
            r4.append(r6)     // Catch: java.lang.Exception -> L54
            java.lang.String r6 = " subid = "
            r4.append(r6)     // Catch: java.lang.Exception -> L54
            int r6 = com.sec.internal.helper.SimUtil.getSubId(r7)     // Catch: java.lang.Exception -> L54
            r4.append(r6)     // Catch: java.lang.Exception -> L54
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Exception -> L54
            android.util.Log.i(r3, r6)     // Catch: java.lang.Exception -> L54
            goto L5b
        L53:
            r1 = r2
        L54:
            java.lang.String r6 = com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal.LOG_TAG
            java.lang.String r7 = "LTEDataMode : getPreferredNetworkType fail"
            android.util.Log.i(r6, r7)
        L5b:
            java.lang.String r6 = com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal.LOG_TAG
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r3 = "LTEDataMode : "
            r7.append(r3)
            r7.append(r1)
            java.lang.String r7 = r7.toString()
            android.util.Log.i(r6, r7)
            if (r1 != r2) goto L74
            goto L75
        L74:
            r2 = r0
        L75:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal.isLTEDataModeEnabled(int):boolean");
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isRoaming(int i) {
        if (getNetwork(i) == null) {
            return false;
        }
        return getNetwork(i).isVoiceRoaming || getNetwork(i).isDataRoaming;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isRegisteredOver3gppPsVoice(int i) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null) {
            return false;
        }
        return NetworkUtil.is3gppPsVoiceNetwork(imsRegistration.getCurrentRat());
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean triggerPsRedial(int i, int i2, int i3) {
        return this.mImsCallSessionManager.triggerPsRedial(i, i2, i3, getImsRegistration(i));
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void pushCallInternal() {
        this.mImsExternalCallController.pushCallInternal();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getLastRegiErrorCode(int i) {
        return this.mLastRegiErrorCode[i];
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isSilentRedialEnabled(Context context, int i) {
        return DmConfigHelper.readBool(context, "silent_redial", Boolean.TRUE, i).booleanValue();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public IMediaServiceInterface getMediaSvcIntf() {
        return this.mMediaSvcIntf;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public CmcServiceHelper getCmcServiceModule() {
        return this.mCmcServiceModule;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isEnableCallWaitingRule() {
        return this.mEnableCallWaitingRule;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isMmtelAcquiredEver() {
        return this.mMmtelAcquiredEver;
    }

    private boolean isVideoSettingEnabled() {
        return ImsConstants.SystemSettings.VILTE_SLOT1.get(this.mContext, 0) == 0;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean hasEmergencyCall(int i) {
        return this.mImsCallSessionManager.hasEmergencyCall(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public ImsCallSession getSessionByCallId(int i) {
        return this.mImsCallSessionManager.getSessionByCallId(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public ImsCallSession getSessionBySipCallId(String str) {
        return this.mImsCallSessionManager.getSessionBySipCallId(str);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public List<ImsCallSession> getSessionByState(CallConstants.STATE state) {
        return getSessionByState(-1, state);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public List<ImsCallSession> getSessionByState(int i, CallConstants.STATE state) {
        return this.mImsCallSessionManager.getSessionByState(i, state);
    }

    public boolean hasActiveCall(int i) {
        return this.mImsCallSessionManager.hasActiveCall(i);
    }

    public boolean hasEstablishedCall(int i) {
        return this.mImsCallSessionManager.hasEstablishedCall(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getSessionCount() {
        return this.mImsCallSessionManager.getSessionCount();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getSessionCount(int i) {
        return this.mImsCallSessionManager.getSessionCount(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public ImsCallSession getSession(int i) {
        return this.mImsCallSessionManager.getSession(i);
    }

    public ImsCallSession getSessionByRegId(int i) {
        return this.mImsCallSessionManager.getSessionByRegId(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public List<ImsCallSession> getSessionList() {
        return this.mImsCallSessionManager.getSessionList();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public List<ImsCallSession> getSessionList(int i) {
        return this.mImsCallSessionManager.getSessionList(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public ImsCallSession getForegroundSession() {
        return this.mImsCallSessionManager.getForegroundSession();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public ImsCallSession getForegroundSession(int i) {
        return this.mImsCallSessionManager.getForegroundSession(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public List<ImsCallSession> getSessionByCallType(int i) {
        return getSessionByCallType(-1, i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public List<ImsCallSession> getSessionByCallType(int i, int i2) {
        return this.mImsCallSessionManager.getSessionByCallType(i, i2);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean hasRingingCall() {
        return hasRingingCall(-1);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean hasRingingCall(int i) {
        return this.mImsCallSessionManager.hasRingingCall(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public NetworkEvent getNetwork() {
        return getNetwork(this.mActiveDataPhoneId);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public NetworkEvent getNetwork(int i) {
        return this.mNetworks.get(Integer.valueOf(i));
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void onCallModifyRequested(int i) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onCallModifyRequested: sessionId " + i);
        ImsCallSession session = getSession(i);
        if (session != null) {
            this.mVolteNotifier.notifyCallStateEvent(new CallStateEvent(CallStateEvent.CALL_STATE.MODIFY_REQUESTED), session);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean hasCsCall(int i) {
        return hasCsCall(i, false);
    }

    public boolean hasCsCall(int i, boolean z) {
        boolean z2;
        int sessionCount = getSessionCount(i);
        ImsCallSession incomingCallSession = this.mImsCallSessionManager.getIncomingCallSession(i);
        int i2 = 0;
        if (z && sessionCount == 1 && incomingCallSession != null && getSessionByCallId(incomingCallSession.getCallId()) != null) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "only one PS incoming call exists");
            sessionCount = 0;
        }
        ITelephonyManager telephonyManagerWrapper = TelephonyManagerWrapper.getInstance(this.mContext);
        if (telephonyManagerWrapper != null) {
            int callState = telephonyManagerWrapper.getCallState(i);
            z2 = sessionCount == 0 && callState != 0;
            i2 = callState;
        } else {
            z2 = false;
        }
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "hasCsCall: numPsCall=" + sessionCount + ", callState[" + i + "]=" + i2 + ", ret=" + z2);
        return z2;
    }

    public boolean hasOutgoingCall(int i) {
        return this.mImsCallSessionManager.hasOutgoingCall(i);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public MobileCareController getMobileCareController() {
        return this.mMobileCareController;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean getRatChanged(int i) {
        return this.mRatChanged[i];
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void setRatChanged(int i, boolean z) {
        this.mRatChanged[i] = z;
    }

    public void notifyProgressIncomingCall(int i, HashMap<String, String> hashMap) {
        this.mVolteSvcIntf.proceedIncomingCall(this.mImsCallSessionManager.convertToSessionId(i), false, hashMap, null);
    }

    public int publishDialog(int i, String str, String str2, String str3, int i2) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "publishDialog: ");
        return this.mVolteSvcIntf.publishDialog(i, str, str2, str3, i2, false);
    }

    protected void clearDialogList(int i, int i2) {
        for (DialogEvent dialogEvent : this.mLastDialogEvent) {
            if (dialogEvent != null && dialogEvent.getDialogList().size() > 0 && i2 == dialogEvent.getRegId()) {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "Match RegId clear Dialog List");
                DialogEvent dialogEvent2 = new DialogEvent(dialogEvent.getMsisdn(), new ArrayList());
                dialogEvent2.setRegId(dialogEvent.getRegId());
                dialogEvent2.setPhoneId(i);
                removeMessages(15);
                sendMessage(obtainMessage(15, dialogEvent2));
            }
        }
    }

    @Override // android.os.Handler
    public String toString() {
        String sb;
        String sb2;
        String str = "[";
        if (SimUtil.isDualIMS()) {
            int i = 0;
            while (i < SimUtil.getPhoneCount()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append(i != 0 ? ", [" : "");
                String sb4 = sb3.toString();
                if (isEmergencyRegistered(i)) {
                    sb2 = sb4 + "Emergency Registered - PhoneId <" + i + ">";
                } else {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(sb4);
                    sb5.append("phoneId <");
                    sb5.append(i);
                    sb5.append("> - Registered : ");
                    sb5.append(getImsRegistration(i) != null);
                    sb2 = sb5.toString();
                }
                str = sb2 + " Feature: " + this.mEnabledFeatures[i] + "]";
                i++;
            }
            return str;
        }
        if (isEmergencyRegistered(this.mActiveDataPhoneId)) {
            sb = "[Emergency Registered";
        } else {
            StringBuilder sb6 = new StringBuilder();
            sb6.append("[");
            sb6.append("Registered: ");
            sb6.append(getImsRegistration() != null);
            sb = sb6.toString();
        }
        return sb + " Feature: " + this.mEnabledFeatures[this.mActiveDataPhoneId] + "]";
    }

    protected void terminateMoWfcWhenWfcSettingOff(int i) {
        if (SimUtil.getSimMno(i) == Mno.VZW && !isVowifiEnabled(i) && this.mPdnController.isEpdgConnected(i) && this.mTelephonyManager.getDataNetworkType(SimUtil.getSubId(i)) == 13) {
            this.mImsCallSessionManager.terminateMoWfcWhenWfcSettingOff(i);
        }
    }

    protected void onImsCallEventForEstablish(ImsRegistration imsRegistration, ImsCallSession imsCallSession, CallStateEvent callStateEvent) {
        ImsRegistration cmcRegistration;
        if (imsRegistration != null) {
            int phoneId = imsRegistration.getPhoneId();
            Mno fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
            if (fromName == Mno.VZW && !this.mRegMan.isVoWiFiSupported(phoneId) && imsRegistration.getEpdgStatus() && callStateEvent.getCallType() == 1) {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "onImsCallEvent: session=" + callStateEvent.getSessionID() + " releaseAllVideoCall due to the audio call");
                this.mImsCallSessionManager.releaseAllVideoCall();
            }
            if (imsCallSession.getCmcType() == 0 && fromName.isChn()) {
                notifyDSDAVideoCapa(phoneId);
            }
            if (this.mRegMan.isVoWiFiSupported(phoneId) && isVowifiEnabled(phoneId) && getTotalCallCount(phoneId) == 1) {
                WiFiManagerExt.setImsCallEstablished(this.mContext, true);
            }
            if (ImsCallUtil.isCmcPrimaryType(imsRegistration.getImsProfile().getCmcType())) {
                imsCallSession.getCallProfile().setCmcDeviceId(callStateEvent.getCmcDeviceId());
            }
            this.mCmcServiceModule.onImsCallEventWhenEstablished(phoneId, imsCallSession, imsRegistration);
        }
        if (imsCallSession.getCmcType() == 1) {
            this.mCmcServiceModule.sendCmcCallStateForRcs(imsCallSession.getPhoneId(), ImsConstants.CmcInfo.CMC_DUMMY_TEL_NUMBER, true);
        } else {
            if (!ImsCallUtil.isCmcSecondaryType(imsCallSession.getCmcType()) || (cmcRegistration = this.mCmcServiceModule.getCmcRegistration(imsCallSession.getPhoneId(), false, imsCallSession.getCmcType())) == null) {
                return;
            }
            clearDialogList(imsCallSession.getPhoneId(), cmcRegistration.getHandle());
        }
    }

    protected void onConfigUpdated(int i, String str) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onConfigUpdated[" + i + "] : " + str);
        if ("VOLTE_ENABLED".equalsIgnoreCase(str) || "LVC_ENABLED".equalsIgnoreCase(str)) {
            onServiceSwitched(i, null);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public EpdgManager getEpdgManager() {
        return this.mWfcEpdgMgr.getEpdgMgr();
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean getLteEpsOnlyAttached(int i) {
        return this.mIsLteEpsOnlyAttached[i];
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getDataAccessNetwork(int i) {
        return this.mDataAccessNetwork[i];
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getSrvccVersion(int i) {
        return ImsRegistry.getInt(i, GlobalSettingsConstants.Call.SRVCC_VERSION, 0);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isCallBarringByNetwork(int i) {
        return ImsRegistry.getBoolean(i, GlobalSettingsConstants.SS.CALLBARRING_BY_NETWORK, false);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getActiveDataPhoneId() {
        return this.mActiveDataPhoneId;
    }

    protected void onSimSubscribeIdChanged(SubscriptionInfo subscriptionInfo) {
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "onSimSubscribeIdChanged, SimSlot: " + subscriptionInfo.getSimSlotIndex() + ", subId: " + subscriptionInfo.getSubscriptionId());
        int simSlotIndex = subscriptionInfo.getSimSlotIndex();
        unRegisterPhoneStateListener(simSlotIndex);
        registerPhoneStateListener(simSlotIndex);
        registerAllowedNetworkTypesListener(simSlotIndex);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public int getMergeCallType(int i, boolean z) {
        return this.mImsCallSessionManager.getMergeCallType(i, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onSrvccStateChange(int i, Call.SrvccState srvccState) {
        Mno fromName;
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "phoneId [" + i + "] handleReinvite");
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration == null) {
            fromName = SimUtil.getSimMno(i);
        } else {
            fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        }
        if (isRunning()) {
            this.mImsCallSessionManager.handleSrvccStateChange(i, srvccState, fromName);
        }
    }

    public boolean hasDialingOrIncomingCall() {
        if (hasDialingOrIncomingCallOnCS()) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "SD has already CS dialing or incoming call on SIM");
            return true;
        }
        if (!this.mCmcServiceModule.hasDialingOrIncomingCall()) {
            return false;
        }
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "SD has already PS dialing or incoming call on SIM");
        return true;
    }

    private boolean hasDialingOrIncomingCallOnCS() {
        return this.mTelephonyManager.hasCall("csdialing") || this.mTelephonyManager.hasCall("csalerting") || this.mTelephonyManager.hasCall("csincoming");
    }

    private String getDialingNumber(IncomingCallEvent incomingCallEvent, Mno mno) {
        String remoteCallerId = ImsCallUtil.getRemoteCallerId(incomingCallEvent.getPeerAddr(), mno, Debug.isProductShip());
        ITelephonyManager iTelephonyManager = this.mTelephonyManager;
        if (iTelephonyManager == null || iTelephonyManager.isNetworkRoaming()) {
            return remoteCallerId;
        }
        if (mno == Mno.VZW || mno == Mno.USCC) {
            return ImsCallUtil.removeUriPlusPrefix(remoteCallerId, Debug.isProductShip());
        }
        if (mno == Mno.KT) {
            return ImsCallUtil.removeUriPlusPrefix(remoteCallerId, "+82", "0", Debug.isProductShip());
        }
        if (mno == Mno.TELENOR_MM) {
            return ImsCallUtil.removeUriPlusPrefix(remoteCallerId, "+95", "0", Debug.isProductShip());
        }
        return mno.isAus() ? ImsCallUtil.removeUriPlusPrefix(remoteCallerId, "+61", "0", Debug.isProductShip()) : remoteCallerId;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isNotifyRejectedCall(int i) {
        return ImsRegistry.getBoolean(i, GlobalSettingsConstants.Call.NOTIFY_REJECTED_CALL, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x031a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0269  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handlePreAlerting(com.sec.ims.ImsRegistration r28, com.sec.internal.ims.servicemodules.volte2.data.IncomingCallEvent r29, boolean r30, boolean r31, com.sec.ims.util.SipError r32) {
        /*
            Method dump skipped, instructions count: 823
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal.handlePreAlerting(com.sec.ims.ImsRegistration, com.sec.internal.ims.servicemodules.volte2.data.IncomingCallEvent, boolean, boolean, com.sec.ims.util.SipError):void");
    }

    private boolean isRingingBlocked(ImsRegistration imsRegistration, IncomingCallEvent incomingCallEvent, Mno mno) {
        if (mno != Mno.TMOUS) {
            return false;
        }
        String remoteCallerId = ImsCallUtil.getRemoteCallerId(incomingCallEvent.getPeerAddr(), mno, Debug.isProductShip());
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "dialingNumber:" + IMSLog.checker(remoteCallerId));
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(remoteCallerId) && remoteCallerId.contains("anonymous")) {
            Log.i(str, "CALL_PRESENTATION : PRESENTATION_RESTRICTED(2)");
            bundle.putInt("com.samsung.telecom.extra.CALL_PRESENTATION", 2);
        }
        try {
            Bundle call = this.mContext.getContentResolver().call(Uri.parse("content://com.android.phone.callsettings/reject_num"), "isblocking_provider_number", remoteCallerId, bundle);
            Log.i(str, "resultExtras_enable:" + call.getBoolean("enable"));
            return call.getBoolean("enable");
        } catch (Exception e) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "isRingingBlocked exception", e);
            return false;
        }
    }

    private boolean acceptCurrentIncomingCall(int i, SipError sipError, Mno mno) {
        ImsCallSession incomingCallSession = this.mImsCallSessionManager.getIncomingCallSession(i);
        if (mno == Mno.TMOUS && sipError == SipErrorBase.BUSY_HERE && incomingCallSession != null && !incomingCallSession.smCallStateMachine.hasMessages(3000)) {
            ITelephonyManager telephonyManagerWrapper = TelephonyManagerWrapper.getInstance(this.mContext);
            int callState = telephonyManagerWrapper != null ? telephonyManagerWrapper.getCallState(i) : 0;
            String str = IVolteServiceModuleInternal.LOG_TAG;
            Log.i(str, "TMO_MT_GUARD_TIMEOUT expired, prevIncoming callState:" + callState);
            if (callState == 0) {
                this.mVolteSvcIntf.rejectCall(incomingCallSession.mSessionId, incomingCallSession.mCallProfile.getCallType(), new SipError(NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE, "MTGuard Expired"));
                Log.i(str, "Reject previous call(" + incomingCallSession.mSessionId + ") and accept current call");
                return true;
            }
        }
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "Reject current call");
        return false;
    }

    private int ignoreIncomingCallSession(ImsRegistration imsRegistration, ImsCallSession imsCallSession, IncomingCallEvent incomingCallEvent, Mno mno) {
        if (ImsCallUtil.isCmcSecondaryType(imsRegistration.getImsProfile().getCmcType()) && hasDialingOrIncomingCall()) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "onImsIncomingCallEvent: Ignore incoming CMC reley call");
            return 1602;
        }
        int phoneId = imsRegistration.getPhoneId();
        int callType = incomingCallEvent.getCallType();
        if (hasCsCall(phoneId, true)) {
            String replaces = incomingCallEvent.getParams().getReplaces();
            String str = IVolteServiceModuleInternal.LOG_TAG;
            Log.i(str, "ignoreIncomingCallSession: replaces " + replaces);
            if (mno.isKor() || mno.isOneOf(Mno.TMOUS, Mno.SPRINT) || (ImsCallUtil.isCmcPrimaryType(imsRegistration.getImsProfile().getCmcType()) && TextUtils.isEmpty(replaces))) {
                Log.i(str, "need to reject incoming call.. due to CS Call");
                this.mVolteSvcIntf.rejectCall(incomingCallEvent.getSessionID(), callType, SipErrorBase.BUSY_HERE);
                return 1603;
            }
        }
        if (!hasOutgoingCall(phoneId)) {
            return 0;
        }
        String str2 = IVolteServiceModuleInternal.LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("ignoreIncomingCallSession: found outgoing call, reject incoming call error=");
        SipError sipError = SipErrorBase.BUSY_HERE;
        sb.append(sipError);
        Log.i(str2, sb.toString());
        this.mVolteSvcIntf.rejectCall(incomingCallEvent.getSessionID(), callType, sipError);
        return 1607;
    }

    private void setProfileForIncomingCallSession(ImsCallSession imsCallSession, IncomingCallEvent incomingCallEvent, Mno mno, Boolean bool, int i) {
        if (mno != Mno.VZW && ImsCallUtil.isVideoCall(incomingCallEvent.getCallType())) {
            if (mno.isChn() && hasDsdaDialingOrIncomingVtOnOtherSlot(incomingCallEvent.getImsRegistration().getPhoneId())) {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "There's no need to stopActiveCamera when other slot has incoming/outgoing vt call.");
            } else {
                this.mMediaController.stopActiveCamera();
            }
        }
        CallProfile callProfile = imsCallSession.getCallProfile();
        callProfile.setCallType(incomingCallEvent.getCallType());
        callProfile.setRemoteVideoCapa(incomingCallEvent.getRemoteVideoCapa());
        if (isNotifyRejectedCall(incomingCallEvent.getImsRegistration().getPhoneId())) {
            callProfile.setRejectCause(i);
        }
        imsCallSession.updateCallProfile(incomingCallEvent.getParams());
        imsCallSession.startIncoming();
        String replaces = incomingCallEvent.getParams().getReplaces();
        if (bool.booleanValue() && !TextUtils.isEmpty(replaces)) {
            String str = IVolteServiceModuleInternal.LOG_TAG;
            Log.i(str, "Has replaces. Check Dialog Id");
            Log.i(str, "replaceSipCallId: " + replaces);
            callProfile.setReplaceSipCallId(replaces);
        }
        String notifyHistoryInfo = incomingCallEvent.getImsRegistration().getImsProfile().getNotifyHistoryInfo();
        if ((callProfile.getHistoryInfo() != null || callProfile.getHasDiversion()) && !"not_notify".equals(notifyHistoryInfo)) {
            if (callProfile.getHistoryInfo() == null && callProfile.getHasDiversion()) {
                callProfile.setHistoryInfo("");
                return;
            }
            if ("change_number".equals(notifyHistoryInfo)) {
                callProfile.setDialingNumber(callProfile.getHistoryInfo());
                callProfile.setHistoryInfo("");
                return;
            } else {
                if ("toast_only".equals(notifyHistoryInfo)) {
                    callProfile.setHistoryInfo("");
                    return;
                }
                return;
            }
        }
        if (mno != Mno.DOCOMO) {
            callProfile.setHistoryInfo((String) null);
        }
    }

    protected void onImsIncomingCallEvent(IncomingCallEvent incomingCallEvent, boolean z) {
        SipError sipError;
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "onImsIncomingCallEvent : sessionId=" + incomingCallEvent.getSessionID() + " peerURI=" + IMSLog.checker(incomingCallEvent.getPeerAddr() + "") + " param=" + incomingCallEvent.getParams() + " type=" + incomingCallEvent.getCallType() + " isDelayedIncoming=" + z);
        boolean z2 = this.mDelayRinging;
        this.mDelayRinging = incomingCallEvent.getParams().getDelayRinging();
        ImsRegistration imsRegistration = incomingCallEvent.getImsRegistration();
        SipError sipError2 = SipErrorBase.OK;
        if (imsRegistration == null) {
            Log.e(str, "Not registered.");
            this.mVolteSvcIntf.rejectCall(incomingCallEvent.getSessionID(), incomingCallEvent.getCallType(), SipErrorBase.NOT_ACCEPTABLE_HERE);
            return;
        }
        if (imsRegistration.getImsProfile().isEnableVcid() && incomingCallEvent.getCallType() != 1) {
            IMSLog.d(str, "VCID/MCID is enabled for only voice call, set Alertinfo null");
            incomingCallEvent.getParams().setAlertInfo(null);
        }
        if (imsRegistration.getImsProfile().isEnableVcid() && VcidHelper.isVcidUrlExist(incomingCallEvent.getParams().getAlertInfo()) && !VcidHelper.isVcidCapable(this.mContext, incomingCallEvent.getParams().getAlertInfo())) {
            IMSLog.d(str, "VCID is not capable, set Alertinfo null");
            incomingCallEvent.getParams().setAlertInfo(null);
        }
        int phoneId = imsRegistration.getPhoneId();
        ImsCallSession session = getSession(incomingCallEvent.getSessionID());
        if (session != null) {
            CallConstants.STATE callState = session.getCallState();
            if (callState == CallConstants.STATE.IncomingCall) {
                Log.e(str, "same session exist.");
                if (!z2 || this.mDelayRinging) {
                    return;
                }
                Log.e(str, "something caused delay ringing false, notify to FW directly");
                session.getCallProfile().setDelayRinging(false);
                session.getCallProfile().setVideoCRBT(false);
                notifyOnIncomingCall(phoneId, session.getCallId());
                return;
            }
            if (ImsCallUtil.isEndCallState(callState)) {
                Log.e(str, "session is already Ending or Ended state");
                return;
            }
        }
        Mno fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        boolean isSamsungMdmnEnabled = imsRegistration.getImsProfile().isSamsungMdmnEnabled();
        if (isSamsungMdmnEnabled) {
            fromName = Mno.MDMN;
        }
        Mno mno = fromName;
        if (!isRunning() || getRegInfo(imsRegistration.getHandle()) == null) {
            Log.e(str, "onImsNewIncomingCallEvent: Unexpected incoming call while volte is off.");
            SipError sipErrorIncomingCallWithVolteOff = this.mImsCallSipErrorFactory.getSipErrorIncomingCallWithVolteOff(this.mContext, incomingCallEvent, this.mMmtelAcquiredEver, imsRegistration);
            if (sipErrorIncomingCallWithVolteOff != sipError2) {
                this.mVolteSvcIntf.rejectCall(incomingCallEvent.getSessionID(), incomingCallEvent.getCallType(), sipErrorIncomingCallWithVolteOff);
                if (!isNotifyRejectedCall(phoneId)) {
                    return;
                }
            }
            sipError = sipErrorIncomingCallWithVolteOff;
        } else {
            sipError = sipError2;
        }
        Log.i(str, "getPreAlerting is " + incomingCallEvent.getPreAlerting());
        if (incomingCallEvent.getPreAlerting()) {
            handlePreAlerting(imsRegistration, incomingCallEvent, isSamsungMdmnEnabled, z, sipError);
            return;
        }
        final ImsCallSession incomingCallSession = this.mImsCallSessionManager.getIncomingCallSession(phoneId);
        if (incomingCallSession == null) {
            Log.e(str, "onImsIncomingCallEvent: mIncomingCallSession is null");
            return;
        }
        int ignoreIncomingCallSession = sipError == sipError2 ? ignoreIncomingCallSession(imsRegistration, incomingCallSession, incomingCallEvent, mno) : 0;
        setProfileForIncomingCallSession(incomingCallSession, incomingCallEvent, mno, Boolean.valueOf(isSamsungMdmnEnabled), ignoreIncomingCallSession);
        ImsProfile imsProfile = incomingCallEvent.getImsRegistration().getImsProfile();
        if (ignoreIncomingCallSession == 0) {
            Log.i(str, "onImsIncomingCallEvent getCmcType : " + imsProfile.getCmcType());
            if (!ImsCallUtil.isCmcPrimaryType(imsProfile.getCmcType())) {
                this.mVolteNotifier.notifyOnIncomingCall(phoneId, incomingCallSession.getCallId());
            }
            post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VolteServiceModuleInternal.this.lambda$onImsIncomingCallEvent$0(incomingCallSession);
                }
            });
            this.mCmcServiceModule.onImsIncomingCallEvent(phoneId, incomingCallSession.getCmcType());
        } else if (!isNotifyRejectedCall(phoneId)) {
            return;
        }
        if (this.mDelayRinging) {
            return;
        }
        notifyOnIncomingCall(phoneId, incomingCallSession.getCallId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onImsIncomingCallEvent$0(ImsCallSession imsCallSession) {
        this.mVolteNotifier.notifyIncomingCallEvent(imsCallSession);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void notifyOnIncomingCall(int i, int i2) {
        int cmcEdCallSlot;
        if (ImsRegistry.getCmcAccountManager().isSupportDualSimCMC()) {
            ImsCallSession sessionByCallId = getSessionByCallId(i2);
            if (sessionByCallId.getCmcType() == 1) {
                if (!TextUtils.isEmpty(sessionByCallId.getCallProfile().getReplaceSipCallId())) {
                    cmcEdCallSlot = getPhoneIdFromExternalCall();
                } else {
                    cmcEdCallSlot = sessionByCallId.getCallProfile().getCmcEdCallSlot();
                }
                if (cmcEdCallSlot > -1) {
                    Log.i(IVolteServiceModuleInternal.LOG_TAG, "notifyOnIncomingCall SD orig phoneId: " + i + " -> " + cmcEdCallSlot);
                    i = cmcEdCallSlot;
                }
            }
        }
        SecImsNotifier.getInstance().onIncomingCall(i, i2);
        this.mDelayRinging = false;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean getIsLteRetrying(int i) {
        return this.mIsLteRetrying[i];
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void setIsLteRetrying(int i, boolean z) {
        this.mIsLteRetrying[i] = z;
    }

    private int getPhoneIdFromExternalCall() {
        for (ImsCallSession imsCallSession : getSessionByState(CallConstants.STATE.InCall)) {
            if (imsCallSession.getCmcType() == 0) {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "phone id for ps call : " + imsCallSession.getPhoneId());
                return imsCallSession.getPhoneId();
            }
        }
        return getCmcServiceHelper().getCsCallPhoneIdByState(1);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void setDelayedDeregisterTimerRunning(int i, boolean z) {
        this.mIsDeregisterTimerRunning[i] = z;
        updateCapabilities(i);
    }

    private class PhoneStateListenerInternal extends PhoneStateListener {
        int mPhoneId;
        int mState = 0;
        int mSubId;

        public PhoneStateListenerInternal(int i, int i2) {
            this.mSubId = i2;
            this.mPhoneId = i;
        }

        public int getInternalPhoneId() {
            return this.mPhoneId;
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            VolteServiceModuleInternal.this.mMobileCareController.onSignalStrengthsChanged(this.mPhoneId, signalStrength);
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            String str = IVolteServiceModuleInternal.LOG_TAG;
            Log.i(str, "onServiceStateChanged(" + serviceState + ")");
            ServiceStateWrapper serviceStateWrapper = new ServiceStateWrapper(serviceState);
            boolean z = false;
            if (isOutOfServiceState(serviceStateWrapper)) {
                if (isCallEndByCsEvent(serviceStateWrapper)) {
                    VolteServiceModuleInternal volteServiceModuleInternal = VolteServiceModuleInternal.this;
                    volteServiceModuleInternal.sendMessage(volteServiceModuleInternal.obtainMessage(10, this.mPhoneId, 0));
                } else if (isUssdEndByCsEvent(serviceStateWrapper)) {
                    VolteServiceModuleInternal volteServiceModuleInternal2 = VolteServiceModuleInternal.this;
                    volteServiceModuleInternal2.sendMessage(volteServiceModuleInternal2.obtainMessage(36, this.mPhoneId, 0));
                }
            }
            boolean[] zArr = VolteServiceModuleInternal.this.mIsLteEpsOnlyAttached;
            int i = this.mPhoneId;
            if (serviceStateWrapper.getDataRegState() == 0 && NetworkUtil.is3gppPsVoiceNetwork(serviceStateWrapper.getDataNetworkType()) && serviceStateWrapper.isPsOnlyReg()) {
                z = true;
            }
            zArr[i] = z;
            VolteServiceModuleInternal.this.mDataAccessNetwork[this.mPhoneId] = serviceStateWrapper.getMobileDataNetworkType();
            Log.i(str, "mIsLteEpsOnlyAttached(" + this.mPhoneId + "):" + VolteServiceModuleInternal.this.mIsLteEpsOnlyAttached[this.mPhoneId]);
        }

        private boolean isOutOfServiceState(ServiceStateWrapper serviceStateWrapper) {
            return !VolteServiceModuleInternal.this.mPdnController.isEpdgConnected(this.mPhoneId) && serviceStateWrapper.getDataRegState() == 1;
        }

        private boolean isCallEndByCsEvent(ServiceStateWrapper serviceStateWrapper) {
            Mno simMno = SimUtil.getSimMno(this.mPhoneId);
            return Mno.TMOUS.equals(simMno) ? serviceStateWrapper.getVoiceRegState() == 0 && serviceStateWrapper.getVoiceNetworkType() == 16 && serviceStateWrapper.getDataNetworkType() == 0 : (simMno == Mno.TELSTRA || simMno == Mno.KDDI || simMno.isTw()) ? serviceStateWrapper.getVoiceRegState() == 1 && serviceStateWrapper.getDataNetworkType() == 0 : simMno.isKor() && serviceStateWrapper.getVoiceRegState() == 1;
        }

        private boolean isUssdEndByCsEvent(ServiceStateWrapper serviceStateWrapper) {
            return SimUtil.getSimMno(this.mPhoneId) == Mno.VODAFONE_INDIA && serviceStateWrapper.getVoiceRegState() == 0 && serviceStateWrapper.getVoiceNetworkType() == 16 && serviceStateWrapper.getDataNetworkType() == 0;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            if (this.mState != i) {
                Log.i(IVolteServiceModuleInternal.LOG_TAG, "onCallStateChanged: state " + i);
                this.mState = i;
                VolteServiceModuleInternal volteServiceModuleInternal = VolteServiceModuleInternal.this;
                volteServiceModuleInternal.sendMessage(volteServiceModuleInternal.obtainMessage(5, this.mPhoneId, i));
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onBarringInfoChanged(BarringInfo barringInfo) {
            boolean z = ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.Call.SUPPORT_SSAC_NR, false);
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "onBarringInfoChanged: barringInfo " + barringInfo + " uacConvertSsac " + z);
            if (!(barringInfo.getCellIdentity() instanceof CellIdentityNr) || z) {
                VolteServiceModuleInternal volteServiceModuleInternal = VolteServiceModuleInternal.this;
                volteServiceModuleInternal.sendMessage(volteServiceModuleInternal.obtainMessage(37, this.mPhoneId, 0, barringInfo));
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onPreciseDataConnectionStateChanged(PreciseDataConnectionState preciseDataConnectionState) {
            String str = IVolteServiceModuleInternal.LOG_TAG;
            IMSLog.s(str, "onPreciseDataConnectionStateChanged: state=" + preciseDataConnectionState);
            if (preciseDataConnectionState == null || preciseDataConnectionState.getDataConnectionState() != 0) {
                return;
            }
            int dataConnectionFailCause = preciseDataConnectionState.getDataConnectionFailCause();
            if (preciseDataConnectionState.getApnSetting() == null || (preciseDataConnectionState.getApnSetting().getApnTypeBitmask() & 512) != 512 || dataConnectionFailCause == 0) {
                return;
            }
            Log.i(str, "ePDN setup failed" + dataConnectionFailCause);
            VolteServiceModuleInternal volteServiceModuleInternal = VolteServiceModuleInternal.this;
            volteServiceModuleInternal.sendMessage(volteServiceModuleInternal.obtainMessage(19, this.mPhoneId, dataConnectionFailCause));
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void notifyImsCallEventForVideo(ImsCallSession imsCallSession, IMSMediaEvent iMSMediaEvent) {
        this.mVolteNotifier.notifyImsCallEventForVideo(imsCallSession, iMSMediaEvent);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void sendEmergencyCallTimerState(int i, ImsCallSession imsCallSession, ImsCallUtil.EMERGENCY_TIMER emergency_timer, ImsCallUtil.EMERGENCY_TIMER_STATE emergency_timer_state) {
        if (!Mno.TMOUS.equals(SimUtil.getSimMno(i)) || imsCallSession == null || this.mEcholocateController == null) {
            return;
        }
        if (imsCallSession.getTimerState(emergency_timer.ordinal()) == emergency_timer_state.ordinal()) {
            Log.e(IVolteServiceModuleInternal.LOG_TAG, "sendEmergencyCallTimerState: timer[" + emergency_timer.name() + "], state[" + emergency_timer_state.name() + "] is same, Just return");
            return;
        }
        imsCallSession.setTimerState(emergency_timer.ordinal(), emergency_timer_state.ordinal());
        EcholocateEvent.EcholocateEmergencyMessage echolocateEmergencyMessage = new EcholocateEvent.EcholocateEmergencyMessage(imsCallSession.getCallProfile().getDialingNumber(), emergency_timer.name(), emergency_timer_state.name(), imsCallSession.getCallProfile().getEchoCallId(), imsCallSession.isEpdgCall());
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "sendEmergencyCallTimerState: timer[" + emergency_timer.name() + "], state[" + emergency_timer_state.name() + "]");
        this.mEcholocateController.handleEmergencyCallTimerState(i, echolocateEmergencyMessage);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void handleDedicatedEventAfterHandover(int i) {
        this.mEcholocateController.handleDedicatedEventAfterHandover(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTelephonyNotResponding() {
        this.mMobileCareController.sendTelephonyNotResponding(getSessionList());
        SystemWrapper.exit(0);
    }

    protected void registerMissedSmsReceiver(boolean z, int i) {
        BroadcastReceiver broadcastReceiver;
        String phraseByMno = ImsCallUtil.getPhraseByMno(this.mContext, i);
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "missedcallSmsphrase = " + phraseByMno);
        this.mIsMissedCallSmsChecking[i] = !TextUtils.isEmpty(phraseByMno) && z;
        boolean z2 = false;
        for (int i2 = 0; i2 < this.mMaxPhoneCount; i2++) {
            if (this.mIsMissedCallSmsChecking[i2]) {
                z2 = true;
            }
        }
        if (z2 && this.mMissedSmsIntentReceiver == null) {
            Log.i(IVolteServiceModuleInternal.LOG_TAG, "register mMissedSmsIntentReceiver");
            this.mMissedSmsIntentReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal.4
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if ("android.provider.Telephony.SMS_RECEIVED".equals(intent.getAction())) {
                        Log.i(IVolteServiceModuleInternal.LOG_TAG, "receive android.provider.Telephony.SMS_RECEIVED");
                        VolteServiceModuleInternal.this.handleMissedCallSms(intent);
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
            this.mContext.registerReceiver(this.mMissedSmsIntentReceiver, intentFilter);
            return;
        }
        if (z2 || (broadcastReceiver = this.mMissedSmsIntentReceiver) == null) {
            return;
        }
        this.mContext.unregisterReceiver(broadcastReceiver);
        this.mMissedSmsIntentReceiver = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMissedCallSms(Intent intent) {
        this.mMobileCareController.sendMissedCallSms(intent);
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean hasDsdaDialingOrIncomingVtOnOtherSlot(int i) {
        return this.mImsCallSessionManager.hasDsdaDialingOrIncomingVtOnOtherSlot(i);
    }

    private boolean isRequiredKorSpecificURN(int i, String str) {
        Mno simMno = SimUtil.getSimMno(i);
        Mno simMnoAsNwPlmn = SimUtil.getSimMnoAsNwPlmn(i);
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration != null) {
            simMno = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        }
        if (simMno.isKor()) {
            return true;
        }
        int parseInt = !TextUtils.isEmpty(str) ? Integer.parseInt(str) : -1;
        if (simMnoAsNwPlmn.isKor()) {
            return parseInt == 6 || parseInt == 7 || parseInt == 3 || parseInt == 18 || parseInt == 19 || parseInt == 9;
        }
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public boolean isMdmiEnabled(int i) {
        return ImsRegistry.getBoolean(i, GlobalSettingsConstants.Call.ENABLE_MDMI, false);
    }

    public boolean isQSSSuccessAuthAndLogin(int i) {
        if (i != 0) {
            return false;
        }
        boolean isSuccessAuthAndLogin = getServiceModuleManager().getQuantumEncryptionServiceModule().isSuccessAuthAndLogin();
        Log.i(IVolteServiceModuleInternal.LOG_TAG, "phoneId: " + i + ", isQSSSuccessAuthAndLogin: " + isSuccessAuthAndLogin);
        return isSuccessAuthAndLogin;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.IVolteServiceModuleInternal
    public void updateNrSaModeOnStart(final int i, final int i2) {
        IRegistrationManager iRegistrationManager;
        if (getSessionCount(i) == 1 && (iRegistrationManager = this.mRegMan) != null && iRegistrationManager.isSupportVoWiFiDisable5GSAFromConfiguration(i)) {
            new Thread(new Runnable() { // from class: com.sec.internal.ims.servicemodules.volte2.VolteServiceModuleInternal$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    VolteServiceModuleInternal.this.lambda$updateNrSaModeOnStart$1(i, i2);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateNrSaModeOnStart$1(int i, int i2) {
        int subId = SimUtil.getSubId(i);
        byte[] bArr = {2, -124, 0, 4};
        byte[] bArr2 = {0, 0, 0, 0};
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "updateNrSaModeOnStart : start, subId : " + subId);
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
        if (telephonyManager != null) {
            int invokeOemRilRequestRawForSubscriber = telephonyManager.invokeOemRilRequestRawForSubscriber(subId, bArr, bArr2);
            Log.i(str, "updateNrSaModeOnStart : respLen : " + invokeOemRilRequestRawForSubscriber);
            if (invokeOemRilRequestRawForSubscriber > 3) {
                byte b = bArr2[0];
                boolean z = b == 0 || b == 2 || b == 3;
                this.mRegMan.updateNrSaMode(i, z);
                if (ImsRegistry.getBoolean(i, GlobalSettingsConstants.Call.IS_SUPPORT_UPDATE_SA_MODE_ON_START, false) && z) {
                    this.mVolteSvcIntf.updateNrSaModeOnStart(i2);
                }
            }
        }
    }

    public void notifyDSDAVideoCapa(int i) {
        String str = IVolteServiceModuleInternal.LOG_TAG;
        Log.i(str, "notifyDSDAVideoCapa : phoneId : " + i);
        int i2 = ImsConstants.Phone.SLOT_1;
        if (i == i2) {
            i2 = ImsConstants.Phone.SLOT_2;
        }
        if (!hasEstablishedCall(i2)) {
            Log.i(str, "notifyDSDAVideoCapa : There is no active call on phoneId " + i2);
            return;
        }
        this.mImsCallSessionManager.notifyDSDAVideoCapa(!hasEstablishedCall(i));
    }

    public IIdcServiceHelper getIdcServiceHelper() {
        return this.mIdcServiceModule;
    }
}
