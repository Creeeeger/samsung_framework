package com.sec.internal.ims.servicemodules.ss;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.provider.Settings;
import android.provider.Telephony;
import android.telephony.CellInfo;
import android.telephony.PreciseDataConnectionState;
import android.telephony.data.ApnSetting;
import android.telephony.ims.feature.ImsFeature;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.telephony.TelephonyFeatures;
import com.sec.ims.IImsRegistrationListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.ImsRegistrationError;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.settings.UserConfiguration;
import com.sec.ims.ss.IImsUtEventListener;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.entitilement.SoftphoneContract;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.settings.ImsProfileLoaderInternal;
import com.sec.internal.ims.util.httpclient.GbaHttpController;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.interfaces.ims.core.NetworkStateListener;
import com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule;
import com.sec.internal.log.IMSLog;
import com.sec.vsim.attsoftphone.ISoftphoneService;
import com.sec.vsim.attsoftphone.ISupplementaryServiceListener;
import com.sec.vsim.attsoftphone.data.CallForwardingInfo;
import com.sec.vsim.attsoftphone.data.SupplementaryServiceNotify;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class UtServiceModule extends ServiceModuleBase implements IUtServiceModule {
    private static final int EVENT_SIM_READY = 4;
    private static final int EVENT_SOFTPHONE_RESPONSE = 5;
    private static final int EVENT_TRIGGER_CONFIG = 1;
    private static final int EXEMPT = 1;
    private static final String LOG_TAG = "UtServiceModule";
    private static final int MAX_RETRY_SIM_SERV_DOC = 3;
    private static final int XCAP_ROOT_URI_PREF_IMSI = 2;
    private static final int XCAP_ROOT_URI_PREF_MSISDN = 1;
    private static final int XCAP_ROOT_URI_PREF_MSISDN_WITH_DOMAIN = 3;
    private final ContentObserver mAirplaneModeObserver;
    protected SparseArray<CWDBContentObserver> mCWDBChangeObserver;
    private final ServiceConnection mConnection;
    protected Context mContext;
    protected final IImsFramework mImsFramework;
    private boolean[] mIsConfigured;
    private boolean[] mIsEpdgAvailable;
    private boolean mIsRunningRequest;
    private Map<String, ImsUri> mLastUri;
    private Map<Integer, IImsUtEventListener> mListeners;
    protected final Looper mLooper;
    ContentObserver mMnoUpdateObserver;
    private ContentObserver mMobileDataObserver;
    private final NetworkStateListener mNetworkStateListener;
    private IPdnController mPdnController;
    private List<UtProfile> mPendingRequests;
    private final IImsRegistrationListener mRegistrationListener;
    private boolean[] mSentSimServDoc;
    private int[] mSentSimServDocCount;
    private String mSoftPhoneAccountId;
    private int mSoftPhoneClientId;
    private UtProfile mSoftProfile;
    private boolean mSoftphoneBound;
    private ISoftphoneService mSoftphoneService;
    private final ISupplementaryServiceListener mSupplementaryServiceListener;
    private ITelephonyManager mTelephonyManager;
    private SimpleEventLog mUtServiceHistory;
    private boolean[] mUtSwitch;
    private HashMap<Integer, UtStateMachine> smUtMap;
    public static final String NAME = UtServiceModule.class.getSimpleName();
    private static int mUtIdCounter = 0;

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
    }

    public UtServiceModule(Looper looper, Context context, IImsFramework iImsFramework) {
        super(looper);
        this.mContext = null;
        this.smUtMap = new HashMap<>();
        this.mLastUri = new HashMap();
        this.mIsConfigured = new boolean[]{false, false};
        this.mUtSwitch = new boolean[]{true, true};
        this.mPdnController = null;
        this.mIsEpdgAvailable = new boolean[SimUtil.getPhoneCount()];
        this.mSentSimServDoc = new boolean[SimUtil.getPhoneCount()];
        this.mSentSimServDocCount = new int[SimUtil.getPhoneCount()];
        this.mSoftphoneBound = false;
        this.mSoftPhoneClientId = -1;
        this.mSoftPhoneAccountId = null;
        this.mSoftphoneService = null;
        this.mIsRunningRequest = false;
        this.mSoftProfile = null;
        this.mListeners = new ArrayMap();
        this.mRegistrationListener = new IImsRegistrationListener.Stub() { // from class: com.sec.internal.ims.servicemodules.ss.UtServiceModule.3
            public void onRegistered(ImsRegistration imsRegistration) {
                int phoneId = imsRegistration.getPhoneId();
                Mno simMno = SimUtil.getSimMno(phoneId);
                if (imsRegistration.hasVolteService() && UtServiceModule.this.getimpi(phoneId) != null) {
                    if (simMno == Mno.ATT) {
                        UtServiceModule utServiceModule = UtServiceModule.this;
                        utServiceModule.setLastUri(utServiceModule.getimpi(phoneId), UtServiceModule.this.getImpuOfType(imsRegistration));
                    } else {
                        UtServiceModule utServiceModule2 = UtServiceModule.this;
                        utServiceModule2.setLastUri(utServiceModule2.getimpi(phoneId), imsRegistration.getPreferredImpu().getUri());
                    }
                }
                if (imsRegistration.getImsProfile().isSoftphoneEnabled()) {
                    UtServiceModule.this.bindSoftPhoneService();
                    ((UtStateMachine) UtServiceModule.this.smUtMap.get(Integer.valueOf(phoneId))).updateConfig(UtServiceModule.this.makeConfig(phoneId));
                    UtServiceModule.this.updateCapabilities(phoneId);
                }
            }

            public void onDeregistered(ImsRegistration imsRegistration, ImsRegistrationError imsRegistrationError) {
                if (imsRegistration.getImsProfile().isSoftphoneEnabled()) {
                    UtServiceModule.this.unbindSoftPhoneService();
                }
            }
        };
        this.mMnoUpdateObserver = new ContentObserver(this) { // from class: com.sec.internal.ims.servicemodules.ss.UtServiceModule.4
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
                UtServiceModule.this.mIsConfigured[simSlotFromUri] = false;
                IMSLog.i(UtServiceModule.LOG_TAG, simSlotFromUri, "Loaded Config Data");
                UtServiceModule.this.removeMessages(1, Integer.valueOf(simSlotFromUri));
                UtServiceModule utServiceModule = UtServiceModule.this;
                utServiceModule.sendMessage(utServiceModule.obtainMessage(1, Integer.valueOf(simSlotFromUri)));
            }
        };
        this.mNetworkStateListener = new NetworkStateListener() { // from class: com.sec.internal.ims.servicemodules.ss.UtServiceModule.5
            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onCellInfoChanged(List<CellInfo> list, int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onDefaultNetworkStateChanged(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgDeregisterRequested(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgHandoverEnableChanged(int i, boolean z) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgIpsecDisconnected(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgRegisterRequested(int i, boolean z) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onIKEAuthFAilure(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onMobileRadioConnected(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onMobileRadioDisconnected(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onDataConnectionStateChanged(int i, boolean z, int i2) {
                if (UtServiceModule.this.mPdnController.getMobileDataRegState(i2) == 0 && UtServiceModule.this.needToGetSimservDocOnBootup(i2)) {
                    UtServiceModule.this.querySimServDoc(i2);
                }
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgConnected(int i) {
                UtServiceModule.this.performExemptUtService();
                if (UtServiceModule.this.needToGetSimservDocOnBootup(i)) {
                    IMSLog.i(UtServiceModule.LOG_TAG, i, "onEpdgConnected");
                    UtServiceModule.this.querySimServDoc(i);
                }
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgDisconnected(int i) {
                UtServiceModule.this.performExemptUtService();
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onPreciseDataConnectionStateChanged(int i, PreciseDataConnectionState preciseDataConnectionState) {
                if (preciseDataConnectionState == null || preciseDataConnectionState.getDataConnectionState() != 0 || UtServiceModule.this.mPdnController.isDisconnecting()) {
                    return;
                }
                ((UtStateMachine) UtServiceModule.this.smUtMap.get(Integer.valueOf(i))).handlePdnFail(preciseDataConnectionState);
            }
        };
        this.mConnection = new ServiceConnection() { // from class: com.sec.internal.ims.servicemodules.ss.UtServiceModule.6
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IMSLog.i(UtServiceModule.LOG_TAG, "connected");
                UtServiceModule.this.mSoftphoneService = ISoftphoneService.Stub.asInterface(iBinder);
                UtServiceModule.this.connected();
                UtServiceModule.this.mSoftphoneBound = true;
                IMSLog.i(UtServiceModule.LOG_TAG, "Softphone Service bind" + UtServiceModule.this.mSoftphoneBound);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                IMSLog.i(UtServiceModule.LOG_TAG, "Disconnected");
                UtServiceModule.this.mSoftphoneService = null;
            }
        };
        this.mSupplementaryServiceListener = new ISupplementaryServiceListener.Stub() { // from class: com.sec.internal.ims.servicemodules.ss.UtServiceModule.7
            public void onNotify(SupplementaryServiceNotify supplementaryServiceNotify) {
                IMSLog.i(UtServiceModule.LOG_TAG, "Receive notify for Request ID: " + supplementaryServiceNotify.mRequestId);
                int i = supplementaryServiceNotify.mRequestId;
                switch (i) {
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                        UtServiceModule utServiceModule = UtServiceModule.this;
                        utServiceModule.sendMessage(utServiceModule.obtainMessage(5, i, 0, supplementaryServiceNotify));
                        break;
                    default:
                        Log.e(UtServiceModule.LOG_TAG, "Unknown request ID: " + supplementaryServiceNotify.mRequestId);
                        break;
                }
            }
        };
        this.mLooper = looper;
        this.mContext = context;
        this.mUtServiceHistory = new SimpleEventLog(context, LOG_TAG, 300);
        this.mImsFramework = iImsFramework;
        Iterator<? extends ISimManager> it = SimManagerFactory.getAllSimManagers().iterator();
        while (it.hasNext()) {
            it.next().registerForSimReady(this, 4, null);
        }
        this.mUtServiceHistory.add("Create UtServiceModule");
        this.mAirplaneModeObserver = new ContentObserver(new Handler(this.mLooper)) { // from class: com.sec.internal.ims.servicemodules.ss.UtServiceModule.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                int i = Settings.Global.getInt(UtServiceModule.this.mContext.getContentResolver(), "airplane_mode_on", 0);
                IMSLog.i(UtServiceModule.LOG_TAG, "AirplaneModeObserver onChange: " + i);
                if (i == 0) {
                    for (ISimManager iSimManager : SimManagerFactory.getAllSimManagers()) {
                        if (iSimManager != null && iSimManager.getSimMno().isChn()) {
                            GbaHttpController.getInstance().clearLastAuthInfo(iSimManager.getSimSlotIndex());
                        }
                    }
                }
                for (int i2 = 0; i2 < UtServiceModule.this.smUtMap.size(); i2++) {
                    ((UtStateMachine) UtServiceModule.this.smUtMap.get(Integer.valueOf(i2))).onAirplaneModeChanged(i);
                }
            }
        };
        this.mMobileDataObserver = new ContentObserver(new Handler(this.mLooper)) { // from class: com.sec.internal.ims.servicemodules.ss.UtServiceModule.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                UtServiceModule.this.performExemptUtService();
            }
        };
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        super.init();
        this.mTelephonyManager = TelephonyManagerWrapper.getInstance(this.mContext);
        this.mPdnController = this.mImsFramework.getPdnController();
        int phoneCount = this.mTelephonyManager.getPhoneCount();
        IRegistrationManager registrationManager = this.mImsFramework.getRegistrationManager();
        this.mIsRunningRequest = false;
        this.mPendingRequests = new ArrayList();
        this.mCWDBChangeObserver = new SparseArray<>();
        for (int i = 0; i < phoneCount; i++) {
            UtStateMachine utStateMachine = new UtStateMachine("UtMachine" + i, this.mLooper, this, this.mImsFramework, this.mContext);
            utStateMachine.init(i);
            utStateMachine.start();
            this.smUtMap.put(Integer.valueOf(i), utStateMachine);
            this.mIsEpdgAvailable[i] = false;
            setSentSimServDoc(i, false);
            this.mSentSimServDocCount[i] = 0;
            registrationManager.registerListener(this.mRegistrationListener, i);
            sendMessage(obtainMessage(1, Integer.valueOf(i)));
        }
        registerObserver();
        registerAirplaneModeObserver();
        registerMobileDataObserver();
        this.mPdnController.registerForNetworkState(this.mNetworkStateListener);
    }

    protected UtConfigData makeConfig(int i) {
        UtConfigData utConfigData = new UtConfigData();
        utConfigData.username = UtUtils.getSetting(i, GlobalSettingsConstants.SS.HTTP_USERNAME, "");
        utConfigData.passwd = UtUtils.getSetting(i, GlobalSettingsConstants.SS.HTTP_PASSWORD, "");
        int setting = UtUtils.getSetting(i, GlobalSettingsConstants.SS.XCAP_ROOT_URI_PREF, 2);
        if (setting == 1 || setting == 2 || setting == 3) {
            utConfigData.nafServer = UtUtils.getNAFDomain(i);
            utConfigData.bsfServer = UtUtils.getBSFDomain(i);
        } else {
            utConfigData.nafServer = UtUtils.getSetting(i, GlobalSettingsConstants.SS.AUTH_PROXY_IP, "");
            utConfigData.bsfServer = UtUtils.getSetting(i, GlobalSettingsConstants.SS.BSF_IP, "");
        }
        utConfigData.nafPort = UtUtils.getSetting(i, GlobalSettingsConstants.SS.AUTH_PROXY_PORT, 80);
        utConfigData.impu = getPublicId(i);
        utConfigData.bsfPort = UtUtils.getSetting(i, GlobalSettingsConstants.SS.BSF_PORT, 80);
        utConfigData.userAgent = UtUtils.getSetting(i, GlobalSettingsConstants.Registration.USER_AGENT, "");
        utConfigData.xcapRootUri = UtUtils.getSetting(i, GlobalSettingsConstants.SS.XCAP_ROOT_URI, "");
        utConfigData.apnSelection = UtUtils.getSetting(i, GlobalSettingsConstants.SS.APN_SELECTION, "xcap");
        utConfigData.xdmUserAgent = UtUtils.makeXcapUserAgentHeader(UtUtils.getSetting(i, GlobalSettingsConstants.SS.XDM_USER_AGENT, "3gpp-gba"), i);
        String setting2 = UtUtils.getSetting(i, GlobalSettingsConstants.SS.DOMAIN, "CS");
        if (setting2.equalsIgnoreCase("CS") || setting2.equalsIgnoreCase("CS_ALWAYS")) {
            registerCwdbObserver(i);
        } else {
            unregisterCwdbObserver(i);
        }
        IMSLog.s(LOG_TAG, i, "makeConfig " + IMSLog.checker(getPublicId(i)));
        return utConfigData;
    }

    public Context getContext() {
        return this.mContext;
    }

    public int querySimServDoc(int i) {
        int createRequestId = createRequestId();
        setSentSimServDoc(i, true);
        int[] iArr = this.mSentSimServDocCount;
        iArr[i] = iArr[i] + 1;
        startUtRequest(i, new UtProfile(116, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int queryCallWaiting(int i) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(114, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int queryCallBarring(int i, int i2, int i3) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(UtUtils.doconvertCBType(false, i2), i2, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int queryCallForward(int i, int i2, String str) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(100, i2, str, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int queryCLIR(int i) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(108, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int queryCLIP(int i) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(106, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int queryCOLR(int i) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(112, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int queryCOLP(int i) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(110, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int updateCallBarring(int i, int i2, int i3, int i4, String str, String[] strArr) {
        int i5;
        int createRequestId = createRequestId();
        Mno simMno = SimUtil.getSimMno(i);
        if (simMno == Mno.CMCC && i2 == 7) {
            i2 = 1;
        }
        if (simMno == Mno.CMHK) {
            if (i2 == 8) {
                i2 = 2;
            } else if (i2 == 9 || i2 == 7) {
                i5 = 1;
                startUtRequest(i, new UtProfile(UtUtils.doconvertCBType(true, i5), i5, i3, i4, strArr, createRequestId, str));
                return createRequestId;
            }
        }
        i5 = i2;
        startUtRequest(i, new UtProfile(UtUtils.doconvertCBType(true, i5), i5, i3, i4, strArr, createRequestId, str));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int updateCallForward(int i, int i2, int i3, String str, int i4, int i5) {
        int createRequestId = createRequestId();
        Mno simMno = SimUtil.getSimMno(i);
        if ((simMno == Mno.TELSTRA || simMno == Mno.SINGTEL) && i3 == 2 && i5 <= 0) {
            i5 = 20;
        } else if (simMno == Mno.FET && i2 == 3 && i5 <= 0 && (i3 == 2 || i3 == 4 || i3 == 5)) {
            i5 = 40;
        }
        startUtRequest(i, new UtProfile(101, i2, i3, str, i4, i5, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int updateCallWaiting(int i, boolean z, int i2) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(115, z, i2, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int updateCLIR(int i, int i2) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(109, i2, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int updateCLIP(int i, boolean z) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(107, z, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int updateCOLR(int i, int i2) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(113, i2, createRequestId));
        return createRequestId;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public int updateCOLP(int i, boolean z) {
        int createRequestId = createRequestId();
        startUtRequest(i, new UtProfile(111, z, createRequestId));
        return createRequestId;
    }

    protected ImsUri getImpuOfType(ImsRegistration imsRegistration) {
        if (imsRegistration == null) {
            return null;
        }
        for (NameAddr nameAddr : imsRegistration.getImpuList()) {
            if (nameAddr.getUri().getUriType() == ImsUri.UriType.TEL_URI) {
                IMSLog.i(LOG_TAG, imsRegistration.getPhoneId(), "getPublicId for ATT : registered IMPU = " + IMSLog.checker(nameAddr.getUri().toString()));
                return nameAddr.getUri();
            }
        }
        return imsRegistration.getPreferredImpu().getUri();
    }

    private void startUtRequest(int i, UtProfile utProfile) {
        printLog(i, utProfile);
        UtStateMachine utStateMachine = this.smUtMap.get(Integer.valueOf(i));
        int phoneCount = this.mTelephonyManager.getPhoneCount();
        for (int i2 = 0; i2 < phoneCount; i2++) {
            if (i2 != i && this.smUtMap.get(Integer.valueOf(i2)).hasConnection()) {
                IMSLog.i(LOG_TAG, i, "already connected on another slot");
                this.smUtMap.get(Integer.valueOf(i2)).sendMessage(2);
            }
        }
        IUserAgent ua = getUa(i);
        if (ua != null && ua.getImsProfile().isSoftphoneEnabled() && !isTerminalRequest(i, utProfile)) {
            if (this.mIsRunningRequest) {
                enqueueRequest(utProfile);
                IMSLog.i(LOG_TAG, i, "Other request is processing now...");
                return;
            } else {
                processSpUtRequest(utProfile);
                return;
            }
        }
        utStateMachine.query(utProfile);
    }

    protected boolean isTerminalRequest(int i, UtProfile utProfile) {
        int i2 = this.mImsFramework.getInt(i, GlobalSettingsConstants.SS.CLIP_CLIR_BY_NETWORK, 0);
        int i3 = this.mImsFramework.getInt(i, GlobalSettingsConstants.SS.CALLBARRING_BY_NETWORK, 1);
        int i4 = this.mImsFramework.getInt(i, GlobalSettingsConstants.SS.CALLWAITING_BY_NETWORK, 0);
        if (UtUtils.isCallBarringType(utProfile.type)) {
            return i3 == 0;
        }
        int i5 = utProfile.type;
        return (i5 == 114 || i5 == 115) ? i4 == 0 : i5 >= 106 && i5 <= 109 && i2 == 0;
    }

    public int checkAvailabilityError(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null || !simManagerFromSimSlot.isSimAvailable()) {
            IMSLog.i(LOG_TAG, i, "checkAvailabilityError(): SIM is not ready");
            return 1004;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            List<ImsProfile> profileListWithMnoName = ImsProfileLoaderInternal.getProfileListWithMnoName(this.mContext, simManagerFromSimSlot.getSimMnoName(), i);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            if (profileListWithMnoName.isEmpty()) {
                if (simManagerFromSimSlot.hasVsim() && this.mSoftphoneBound) {
                    return 0;
                }
                IMSLog.i(LOG_TAG, i, "checkAvailabilityError(): no matched profile with SIM");
                return 1006;
            }
            if (this.mIsConfigured[i]) {
                return 0;
            }
            IMSLog.i(LOG_TAG, i, "checkAvailabilityError(): UtStateMachine is not configured");
            return 1007;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public boolean isInvalidUtRequest(int i, UtProfile utProfile) {
        if (utProfile.type != 101 || utProfile.action != 3 || !TextUtils.isEmpty(utProfile.number)) {
            return false;
        }
        IMSLog.i(LOG_TAG, i, "Invalid request - Registration should have number.");
        return true;
    }

    protected IUserAgent getUa(int i) {
        return getUa(i, 0);
    }

    private IUserAgent getUa(int i, int i2) {
        IRegistrationManager registrationManager = this.mImsFramework.getRegistrationManager();
        Mno simMno = SimUtil.getSimMno(i);
        IUserAgent[] userAgentByPhoneId = registrationManager.getUserAgentByPhoneId(i, "mmtel");
        if (userAgentByPhoneId.length != 0 && userAgentByPhoneId[0] == null) {
            userAgentByPhoneId = (simMno == Mno.TELUS || simMno == Mno.KOODO) ? registrationManager.getUserAgentByPhoneId(i, "smsip") : registrationManager.getUserAgentByPhoneId(i, "ss");
        }
        if (userAgentByPhoneId.length == 0) {
            return null;
        }
        for (IUserAgent iUserAgent : userAgentByPhoneId) {
            if (iUserAgent != null && iUserAgent.getImsProfile().getCmcType() == i2) {
                return iUserAgent;
            }
        }
        return userAgentByPhoneId[0];
    }

    private String getUtImpi(int i) {
        ImsProfile imsProfile;
        IUserAgent ua = getUa(i);
        return (ua == null || (imsProfile = ua.getImsProfile()) == null) ? "" : this.mImsFramework.getRegistrationManager().getImpi(imsProfile, i);
    }

    protected String getimpi(int i) {
        String utImpi = getUtImpi(i);
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot != null) {
            if (TextUtils.isEmpty(utImpi) && simManagerFromSimSlot.hasIsim()) {
                utImpi = simManagerFromSimSlot.getImpi();
            }
            if (TextUtils.isEmpty(utImpi)) {
                utImpi = simManagerFromSimSlot.getDerivedImpi();
            }
        }
        if (!TextUtils.isEmpty(utImpi)) {
            return utImpi;
        }
        IMSLog.e(LOG_TAG, i, "There is no impi");
        return "";
    }

    protected String getPublicId(int i) {
        String str;
        ImsUri uri;
        ImsUri impuOfType;
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        Mno simMno = simManagerFromSimSlot == null ? Mno.DEFAULT : simManagerFromSimSlot.getSimMno();
        IUserAgent ua = getUa(i);
        if (ua != null) {
            ImsRegistration imsRegistration = ua.getImsRegistration();
            if (simMno == Mno.ATT) {
                if (imsRegistration != null && (impuOfType = getImpuOfType(imsRegistration)) != null) {
                    return impuOfType.toString();
                }
            } else if (simMno != Mno.TELSTRA && imsRegistration != null && (uri = imsRegistration.getPreferredImpu().getUri()) != null) {
                return uri.toString();
            }
        }
        String str2 = getimpi(i);
        if (this.mLastUri.size() > 0 && !TextUtils.isEmpty(str2) && simMno != Mno.TELSTRA && this.mLastUri.containsKey(str2) && this.mLastUri.get(str2) != null) {
            return this.mLastUri.get(str2).toString();
        }
        if (simManagerFromSimSlot != null) {
            str = TelephonyManagerWrapper.getInstance(this.mContext).getIsimImpuAtIndex(SimUtil.getSubId(i), 0);
            if (TextUtils.isEmpty(str)) {
                str = simManagerFromSimSlot.getDerivedImpu();
            }
            if (simMno == Mno.ROGERS && !TextUtils.isEmpty(simManagerFromSimSlot.getMsisdn())) {
                str = simManagerFromSimSlot.getDerivedImpuFromMsisdn();
            }
        } else {
            str = null;
        }
        return TextUtils.isEmpty(str) ? "" : str;
    }

    private int createRequestId() {
        if (mUtIdCounter >= 255) {
            mUtIdCounter = 0;
        }
        int i = mUtIdCounter + 1;
        mUtIdCounter = i;
        return i;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{"ss"};
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onNetworkChanged(NetworkEvent networkEvent, int i) {
        super.onNetworkChanged(networkEvent, i);
        IMSLog.d(LOG_TAG, i, "onNetworkChanged to " + networkEvent);
        boolean z = networkEvent.isEpdgAvailable;
        if (z != this.mIsEpdgAvailable[i]) {
            onEpdgAvailabilityChanged(z, i);
        }
    }

    private void onEpdgAvailabilityChanged(boolean z, int i) {
        this.mIsEpdgAvailable[i] = z;
        if (SimUtil.getSimMno(i) != Mno.KDDI || this.mIsEpdgAvailable[i]) {
            return;
        }
        this.smUtMap.get(Integer.valueOf(i)).handleEpdgAvailabilityChanged(this.mIsEpdgAvailable[i]);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(LOG_TAG, "handleMessage " + message.what);
        super.handleMessage(message);
        int i = message.what;
        if (i == 1) {
            updateConfig(message);
            return;
        }
        if (i != 4) {
            if (i != 5) {
                return;
            }
            handleSoftPhoneEvent(message);
        } else {
            int intValue = ((Integer) ((AsyncResult) message.obj).result).intValue();
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(intValue);
            if (simManagerFromSimSlot == null || !simManagerFromSimSlot.getSimMno().isChn()) {
                return;
            }
            GbaHttpController.getInstance().clearLastAuthInfo(intValue);
        }
    }

    private void handleSoftPhoneEvent(Message message) {
        SupplementaryServiceNotify supplementaryServiceNotify = (SupplementaryServiceNotify) message.obj;
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        switch (message.arg1) {
            case 8:
                if (supplementaryServiceNotify.mSuccess && supplementaryServiceNotify.mCallWaitingInfo != null) {
                    IMSLog.i(LOG_TAG, "CallWaitingInfo: " + supplementaryServiceNotify.mCallWaitingInfo.mActive);
                    Bundle[] bundleArr = {new Bundle()};
                    bundleArr[0].putBoolean("status", supplementaryServiceNotify.mCallWaitingInfo.mActive);
                    UtProfile utProfile = this.mSoftProfile;
                    notifySuccessResult(activeDataPhoneId, utProfile.type, utProfile.requestId, bundleArr);
                    break;
                } else {
                    IMSLog.e(LOG_TAG, activeDataPhoneId, "Unable to get CallWaitingInfo. reason = " + supplementaryServiceNotify.mReason);
                    Bundle bundle = new Bundle();
                    bundle.putInt("errorCode", 408);
                    UtProfile utProfile2 = this.mSoftProfile;
                    notifyFailResult(activeDataPhoneId, utProfile2.type, utProfile2.requestId, bundle);
                    break;
                }
            case 9:
                if (supplementaryServiceNotify.mSuccess) {
                    IMSLog.i(LOG_TAG, activeDataPhoneId, "Success to get CallForwardingInfo");
                    Bundle[] bundleArr2 = new Bundle[1];
                    Bundle bundle2 = new Bundle();
                    for (CallForwardingInfo callForwardingInfo : supplementaryServiceNotify.mCallForwardingInfos) {
                        if (this.mSoftProfile.condition == callForwardingInfo.mForwardCondition) {
                            if (callForwardingInfo.mActive) {
                                bundle2.putInt("status", 1);
                            } else {
                                bundle2.putInt("status", 0);
                            }
                            bundle2.putInt(UtConstant.CONDITION, this.mSoftProfile.condition);
                            bundle2.putString("number", callForwardingInfo.mForwardNumber);
                            bundle2.putInt(UtConstant.SERVICECLASS, 17);
                        }
                    }
                    bundleArr2[0] = bundle2;
                    UtProfile utProfile3 = this.mSoftProfile;
                    notifySuccessResult(activeDataPhoneId, utProfile3.type, utProfile3.requestId, bundleArr2);
                    break;
                } else {
                    IMSLog.e(LOG_TAG, "Unable to get CallForwardingInfo. reason = " + supplementaryServiceNotify.mReason);
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt("errorCode", 408);
                    UtProfile utProfile4 = this.mSoftProfile;
                    notifyFailResult(activeDataPhoneId, utProfile4.type, utProfile4.requestId, bundle3);
                    break;
                }
            case 10:
            case 11:
                if (supplementaryServiceNotify.mSuccess) {
                    IMSLog.i(LOG_TAG, "Success to set " + message.what);
                    UtProfile utProfile5 = this.mSoftProfile;
                    notifySuccessResult(activeDataPhoneId, utProfile5.type, utProfile5.requestId, null);
                    break;
                } else {
                    IMSLog.e(LOG_TAG, "Unable to " + message.arg1 + ". reason = " + supplementaryServiceNotify.mReason);
                    Bundle bundle4 = new Bundle();
                    bundle4.putInt("errorCode", 408);
                    UtProfile utProfile6 = this.mSoftProfile;
                    notifyFailResult(activeDataPhoneId, utProfile6.type, utProfile6.requestId, bundle4);
                    break;
                }
            default:
                IMSLog.e(LOG_TAG, "Unknown message type: " + message.what);
                break;
        }
        if (!this.mPendingRequests.isEmpty()) {
            IMSLog.i(LOG_TAG, "Process next request...");
            processSpUtRequest(dequeueRequest());
        } else {
            this.mIsRunningRequest = false;
        }
    }

    private void updateConfig(Message message) {
        int intValue = ((Integer) message.obj).intValue();
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(intValue);
        if (simManagerFromSimSlot == null) {
            return;
        }
        if (simManagerFromSimSlot.isSimAvailable()) {
            this.smUtMap.get(Integer.valueOf(intValue)).updateConfig(makeConfig(intValue));
            this.mIsConfigured[intValue] = true;
            this.mSentSimServDocCount[intValue] = 0;
            setSentSimServDoc(intValue, false);
            enableUt(intValue, true);
            if (needToGetSimservDocOnBootup(intValue)) {
                querySimServDoc(intValue);
                return;
            }
            return;
        }
        if (simManagerFromSimSlot.hasNoSim() || hasMessages(message.what, message.obj)) {
            return;
        }
        sendMessageDelayed(obtainMessage(message.what, message.obj), 10000L);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public boolean isUtEnabled(int i) {
        boolean z;
        boolean z2 = false;
        if (!isUtStateMachineInit(i)) {
            IMSLog.e(LOG_TAG, i, "UtStateMachine is not initialized yet");
            return false;
        }
        if (!this.mUtSwitch[i]) {
            IMSLog.e(LOG_TAG, i, "UtService is disabled");
            return false;
        }
        Mno simMno = SimUtil.getSimMno(i);
        if (simMno == Mno.GLOBE_PH && !checkXcapApn(i)) {
            IMSLog.e(LOG_TAG, i, "Doesn't have any XCAP apn");
            return false;
        }
        String setting = UtUtils.getSetting(i, GlobalSettingsConstants.SS.DOMAIN, "CS");
        if ("PS".equalsIgnoreCase(setting) || "PS_ALWAYS".equalsIgnoreCase(setting)) {
            z = true;
        } else if (DiagnosisConstants.PSCI_KEY_CALL_BEARER.equalsIgnoreCase(setting) || "PS_ONLY_VOLTEREGIED".equalsIgnoreCase(setting)) {
            z = isVolteServiceRegistered(i);
        } else {
            z = "PS_ONLY_PSREGIED".equalsIgnoreCase(setting) ? isPsRegistered(i) : false;
        }
        if (z && !isUtExempt(i) && isPsDataOffForXcap(i)) {
            IMSLog.e(LOG_TAG, i, "isUtEnabled : UtService is not exempted.");
            return false;
        }
        if (this.smUtMap.get(Integer.valueOf(i)).isForbidden()) {
            IMSLog.e(LOG_TAG, i, "Ut Request is blocked by previous 403 Error");
            z = false;
        }
        if (simMno == Mno.CTC || simMno == Mno.CTCMO) {
            String str = SemSystemProperties.get("ril.ICC_TYPE" + i);
            String str2 = SemSystemProperties.get("ril.IsCSIM");
            IMSLog.i(LOG_TAG, i, "iccType : " + str + " isCsim = " + str2);
            String[] split = str2.split(",");
            if (DiagnosisConstants.RCSM_ORST_HTTP.equals(str) && split.length > i && "0".equals(split[i])) {
                IMSLog.i(LOG_TAG, i, "RUIM did not support UT interface");
                this.smUtMap.get(Integer.valueOf(i)).setForce403Error(true);
                IMSLog.i(LOG_TAG, i, "isUtEnabled with policy : " + setting + " enabled = " + z2);
                return z2;
            }
        }
        z2 = z;
        IMSLog.i(LOG_TAG, i, "isUtEnabled with policy : " + setting + " enabled = " + z2);
        return z2;
    }

    private boolean isUtStateMachineInit(int i) {
        return (this.smUtMap.isEmpty() || this.smUtMap.get(Integer.valueOf(i)) == null) ? false : true;
    }

    private boolean isUtExempt(int i) {
        return (isUtStateMachineInit(i) && this.mIsConfigured[i] && this.smUtMap.get(Integer.valueOf(i)).mFeature.ssXcapConfigExempt != 1) ? false : true;
    }

    private boolean isPsDataOffForXcap(int i) {
        return (NetworkUtil.isMobileDataOn(this.mContext) || (this.mPdnController.isEpdgConnected(i) && checkEpdgApnExist(i, "xcap"))) ? false : true;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public boolean isUssdEnabled(int i) {
        String setting = UtUtils.getSetting(i, GlobalSettingsConstants.Call.USSD_DOMAIN, "CS");
        boolean checkSpecificPolicy = ("PS".equalsIgnoreCase(setting) || DiagnosisConstants.PSCI_KEY_CALL_BEARER.equalsIgnoreCase(setting)) ? checkSpecificPolicy(i) : false;
        if (checkSpecificPolicy && !isUssdExempt(i) && isPsDataOffForUssd(i)) {
            IMSLog.e(LOG_TAG, i, "isUssdEnabled : USSI is not exempted.");
            return false;
        }
        IMSLog.i(LOG_TAG, i, "isUssdEnabled with policy : " + setting + " enabled = " + checkSpecificPolicy);
        return checkSpecificPolicy;
    }

    private boolean isUssdExempt(int i) {
        return (isUtStateMachineInit(i) && this.mIsConfigured[i] && this.smUtMap.get(Integer.valueOf(i)).mFeature.ussdExempt != 1) ? false : true;
    }

    private boolean isPsDataOffForUssd(int i) {
        return (NetworkUtil.isMobileDataOn(this.mContext) || this.mPdnController.isEpdgConnected(i)) ? false : true;
    }

    private String ctcOperator(int i) {
        Mno simMno = SimUtil.getSimMno(i);
        if (simMno == Mno.CTC) {
            return "46003";
        }
        if (simMno == Mno.CTCMO) {
            return "45502";
        }
        return null;
    }

    private boolean queryEpdgApnExist(int i, String str, Uri uri) {
        Context context = this.mContext;
        if (context == null) {
            IMSLog.e(LOG_TAG, i, "queryEpdgApnExist(): There is no ImsContext");
            return false;
        }
        try {
            Cursor query = context.getContentResolver().query(uri, null, str, null, null);
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        IMSLog.i(LOG_TAG, i, "queryEpdgApnExist(): count(" + query.getCount() + "), selection = " + str);
                        query.close();
                        return true;
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
            IMSLog.e(LOG_TAG, i, "queryEpdgApnExist(): exception = " + e);
        }
        return false;
    }

    private boolean queryApnExist(int i, String str, Uri uri) {
        Context context = this.mContext;
        if (context == null) {
            IMSLog.e(LOG_TAG, i, "queryApnExist(): There is no ImsContext");
            return false;
        }
        try {
            Cursor query = context.getContentResolver().query(uri, null, str, null, "_id");
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        while (query.moveToNext()) {
                            ApnSetting makeApnSetting = ApnSetting.makeApnSetting(query);
                            if (makeApnSetting != null) {
                                IMSLog.i(LOG_TAG, i, "queryApnExist(" + query.getCount() + ")::getApnName = " + makeApnSetting.getApnName() + ", getApnTypeBitmask() = " + makeApnSetting.getApnTypeBitmask());
                                if ((makeApnSetting.getApnTypeBitmask() & 2048) == 2048) {
                                    IMSLog.i(LOG_TAG, i, "queryApnExist: have Xcap !!!!!");
                                    query.close();
                                    return true;
                                }
                            }
                        }
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
            IMSLog.e(LOG_TAG, i, "queryApnExist(): exception = " + e);
        }
        return false;
    }

    private boolean getApnExist(int i, String str) {
        String str2;
        Uri parse;
        String ctcOperator = ctcOperator(i);
        if (ctcOperator == null) {
            int subId = SimUtil.getSubId(i);
            parse = Uri.withAppendedPath(Telephony.Carriers.SIM_APN_URI, "filtered/subId/" + String.valueOf(subId));
            str2 = ("EUR".equals(TelephonyFeatures.getMainOperatorName(i)) && SimUtil.isMultiSimSupported()) ? i == 0 ? "current = 1" : "current1 = 1" : null;
        } else {
            str2 = "numeric = '" + ctcOperator + "'and (type LIKE '%" + str + "%')";
            parse = Uri.parse("content://telephony/carriers");
        }
        IMSLog.i(LOG_TAG, i, "getApnExist(): operator = " + ctcOperator + ", selection(" + str2 + "), contentURI = " + parse);
        if (queryApnExist(i, str2, parse)) {
            return true;
        }
        IMSLog.e(LOG_TAG, i, "getApnExist(): There is no apntype=" + str);
        return false;
    }

    private boolean checkEpdgApnExist(int i, String str) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        String simMnoName = simManagerFromSimSlot == null ? null : simManagerFromSimSlot.getSimMnoName();
        IMSLog.i(LOG_TAG, i, "checkEpdgApnExist(): mnoName=" + simMnoName);
        if (simMnoName == null) {
            IMSLog.e(LOG_TAG, i, "checkEpdgApnExist(): There is no mnoName");
            return false;
        }
        if (queryEpdgApnExist(i, "mnoname = '" + simMnoName + "' AND apnname = '" + str + "'", Uri.parse("content://iwlansettings/todos"))) {
            return true;
        }
        IMSLog.e(LOG_TAG, i, "checkEpdgApnExist(): There is no apntype=" + str);
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public boolean checkXcapApn(int i) {
        IUserAgent ua = getUa(i);
        String str = this.mIsConfigured[i] ? this.smUtMap.get(Integer.valueOf(i)).getConfig().apnSelection : "xcap";
        if (ua != null && ua.getImsProfile().isSoftphoneEnabled()) {
            return true;
        }
        if (this.mPdnController.isEpdgConnected(i)) {
            if (checkEpdgApnExist(i, str)) {
                return true;
            }
            if (this.mPdnController.getMobileDataRegState(i) != 0) {
                IMSLog.i(LOG_TAG, i, "checkXcapApn(): ePDG XCAP APN not exist. PS also not registered.");
                return false;
            }
        }
        return getApnExist(i, str);
    }

    private boolean checkSpecificPolicy(int i) {
        Mno simMno = SimUtil.getSimMno(i);
        ImsRegistration[] registrationInfoByPhoneId = this.mImsFramework.getRegistrationManager().getRegistrationInfoByPhoneId(i);
        if (registrationInfoByPhoneId != null) {
            for (ImsRegistration imsRegistration : registrationInfoByPhoneId) {
                if (!imsRegistration.getImsProfile().hasEmergencySupport() && imsRegistration.hasService("mmtel") && imsRegistration.getImsProfile().getCmcType() == 0) {
                    if (simMno != Mno.ATT || imsRegistration.getCurrentRat() == 18) {
                        return true;
                    }
                    return NetworkUtil.is3gppPsVoiceNetwork(imsRegistration.getCurrentRat()) && this.mPdnController.getVopsIndication(i) != VoPsIndication.NOT_SUPPORTED;
                }
            }
        }
        return false;
    }

    private void registerAirplaneModeObserver() {
        this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("airplane_mode_on"), false, this.mAirplaneModeObserver);
    }

    private void registerMobileDataObserver() {
        this.mContext.getContentResolver().registerContentObserver(ImsConstants.SystemSettings.MOBILE_DATA.getUri(), false, this.mMobileDataObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performExemptUtService() {
        for (int i = 0; i < this.smUtMap.size(); i++) {
            if (!isUtExempt(i)) {
                updateCapabilities(i);
            }
        }
    }

    protected boolean needToGetSimservDocOnBootup(int i) {
        Mno simMno = SimUtil.getSimMno(i);
        if ((!simMno.isTmobile() && simMno != Mno.TELEKOM_ALBANIA) || isSentSimServDoc(i)) {
            return false;
        }
        if (isUtEnabled(i) && isPsRegistered(i) && i == SimUtil.getActiveDataPhoneId() && !this.mPdnController.isVoiceRoaming(i) && this.mSentSimServDocCount[i] <= 3) {
            return true;
        }
        IMSLog.i(LOG_TAG, i, "needToQuerySimservDocOnBootup : isUtEnabled(phoneId) = " + isUtEnabled(i) + "isPsRegistered() = " + isPsRegistered(i) + ", SimUtil.getActiveDataPhoneId() = " + SimUtil.getActiveDataPhoneId() + ", mPdnController.isVoiceRoaming(phoneId) = " + this.mPdnController.isVoiceRoaming(i) + ", mSentSimServDocCount[phoneId]) = " + this.mSentSimServDocCount[i]);
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public void enableUt(int i, boolean z) {
        IMSLog.i(LOG_TAG, i, "UtSwitch: " + z);
        this.mUtServiceHistory.add(i, "UtSwitch: " + z);
        this.mUtSwitch[i] = z;
        updateCapabilities(i);
    }

    public boolean isSentSimServDoc(int i) {
        return this.mSentSimServDoc[i];
    }

    public void setSentSimServDoc(int i, boolean z) {
        this.mSentSimServDoc[i] = z;
    }

    private class CWDBContentObserver extends ContentObserver {
        public CWDBContentObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            boolean contains = uri.toString().contains("slot2");
            IMSLog.i(UtServiceModule.LOG_TAG, contains ? 1 : 0, "CWDBContentObserver - onChange() with " + uri);
            UtServiceModule.this.setImsCallWaiting(contains ? 1 : 0);
        }
    }

    protected boolean setImsCallWaiting(int i) {
        boolean z = false;
        if (i != 1 ? Settings.System.getInt(this.mContext.getContentResolver(), "volte_call_waiting", 1) == 1 : Settings.System.getInt(this.mContext.getContentResolver(), "volte_call_waiting_slot2", 1) == 1) {
            z = true;
        }
        IMSLog.i(LOG_TAG, i, "setImsCallWaiting(): activate=" + z);
        UserConfiguration.setUserConfig(this.mContext, i, "enable_call_wait", z);
        return z;
    }

    private void registerObserver() {
        this.mContext.getContentResolver().registerContentObserver(Uri.parse("content://com.sec.ims.settings/mno"), true, this.mMnoUpdateObserver);
    }

    public void registerCwdbObserver(int i) {
        if (this.mCWDBChangeObserver.get(i) == null) {
            this.mCWDBChangeObserver.put(i, new CWDBContentObserver(this));
        }
        if (i == 0) {
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("volte_call_waiting"), true, this.mCWDBChangeObserver.get(i));
        } else {
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("volte_call_waiting_slot2"), true, this.mCWDBChangeObserver.get(i));
        }
    }

    public void unregisterCwdbObserver(int i) {
        if (this.mCWDBChangeObserver.get(i) != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mCWDBChangeObserver.get(i));
            this.mCWDBChangeObserver.remove(i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule
    public void registerForUtEvent(int i, IImsUtEventListener iImsUtEventListener) {
        this.mListeners.put(Integer.valueOf(i), iImsUtEventListener);
    }

    public void deRegisterForUtEvent(int i, IImsUtEventListener iImsUtEventListener) {
        this.mListeners.remove(Integer.valueOf(i));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected synchronized void notifySuccessResult(int i, int i2, int i3, Bundle[] bundleArr) {
        IMSLog.i(LOG_TAG, i, "notifySuccessResult : " + i3);
        switch (i2) {
            case 100:
                try {
                    this.mListeners.get(Integer.valueOf(i)).onUtConfigurationCallForwardQueried(i3, bundleArr);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                break;
            case 101:
            case 103:
            case 105:
            case 107:
            case 109:
            case 111:
            case 113:
            case 115:
                try {
                    this.mListeners.get(Integer.valueOf(i)).onUtConfigurationUpdated(i3);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                break;
            case 102:
            case 104:
                try {
                    this.mListeners.get(Integer.valueOf(i)).onUtConfigurationCallBarringQueried(i3, bundleArr);
                } catch (RemoteException e3) {
                    e3.printStackTrace();
                }
                break;
            case 106:
            case 108:
            case 110:
            case 112:
                try {
                    this.mListeners.get(Integer.valueOf(i)).onUtConfigurationQueried(i3, bundleArr[0]);
                } catch (RemoteException e4) {
                    e4.printStackTrace();
                }
                break;
            case 114:
                try {
                    this.mListeners.get(Integer.valueOf(i)).onUtConfigurationCallWaitingQueried(i3, bundleArr[0].getBoolean("status", false));
                } catch (RemoteException e5) {
                    e5.printStackTrace();
                }
                break;
        }
    }

    protected synchronized void notifyFailResult(int i, int i2, int i3, Bundle bundle) {
        IMSLog.i(LOG_TAG, "notifyFailResult : " + i3 + " requestType : " + i2);
        if (UtUtils.isPutRequest(i2)) {
            try {
                this.mListeners.get(Integer.valueOf(i)).onUtConfigurationUpdateFailed(i3, bundle);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } else {
            try {
                this.mListeners.get(Integer.valueOf(i)).onUtConfigurationQueryFailed(i3, bundle);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void updateCapabilities(int i) {
        getServiceModuleManager().updateCapabilities(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public ImsFeature.Capabilities queryCapabilityStatus(int i) {
        ImsFeature.Capabilities capabilities = new ImsFeature.Capabilities();
        if (isUtEnabled(i)) {
            capabilities.addCapabilities(4);
        }
        return capabilities;
    }

    protected boolean isVolteServiceRegistered(int i) {
        List<IRegisterTask> pendingRegistration;
        IRegistrationManager registrationManager = this.mImsFramework.getRegistrationManager();
        if (registrationManager == null || (pendingRegistration = registrationManager.getPendingRegistration(i)) == null) {
            return false;
        }
        for (IRegisterTask iRegisterTask : pendingRegistration) {
            if (iRegisterTask.getProfile().getPdnType() != 15 && iRegisterTask.getImsRegistration() != null && iRegisterTask.getProfile().getCmcType() == 0 && iRegisterTask.getImsRegistration().hasVolteService() && iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
                return true;
            }
        }
        return false;
    }

    private boolean isPsRegistered(int i) {
        return this.mPdnController.getMobileDataRegState(i) == 0 || this.mPdnController.isEpdgConnected(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        if (android.text.TextUtils.isEmpty(r11.number) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void processSpUtRequest(com.sec.internal.ims.servicemodules.ss.UtProfile r11) {
        /*
            r10 = this;
            com.sec.vsim.attsoftphone.ISoftphoneService r0 = r10.mSoftphoneService
            if (r0 != 0) goto L5
            return
        L5:
            r10.mSoftProfile = r11
            r1 = 1
            r10.mIsRunningRequest = r1
            int r2 = r11.type     // Catch: android.os.RemoteException -> L75
            r3 = 114(0x72, float:1.6E-43)
            if (r2 != r3) goto L17
            int r10 = r10.mSoftPhoneClientId     // Catch: android.os.RemoteException -> L75
            r0.getCallWaitingInfo(r10)     // Catch: android.os.RemoteException -> L75
            goto L7c
        L17:
            r3 = 115(0x73, float:1.61E-43)
            if (r2 != r3) goto L2a
            com.sec.vsim.attsoftphone.data.CallWaitingInfo r0 = new com.sec.vsim.attsoftphone.data.CallWaitingInfo     // Catch: android.os.RemoteException -> L75
            boolean r11 = r11.enable     // Catch: android.os.RemoteException -> L75
            r0.<init>(r11)     // Catch: android.os.RemoteException -> L75
            com.sec.vsim.attsoftphone.ISoftphoneService r11 = r10.mSoftphoneService     // Catch: android.os.RemoteException -> L75
            int r10 = r10.mSoftPhoneClientId     // Catch: android.os.RemoteException -> L75
            r11.setCallWaitingInfo(r10, r0)     // Catch: android.os.RemoteException -> L75
            goto L7c
        L2a:
            r3 = 100
            if (r2 != r3) goto L34
            int r10 = r10.mSoftPhoneClientId     // Catch: android.os.RemoteException -> L75
            r0.getCallForwardingInfo(r10)     // Catch: android.os.RemoteException -> L75
            goto L7c
        L34:
            r0 = 101(0x65, float:1.42E-43)
            if (r2 != r0) goto L7c
            int r0 = r11.action     // Catch: android.os.RemoteException -> L75
            r2 = 3
            r3 = 0
            if (r0 != r2) goto L4c
            java.lang.String r0 = r11.number     // Catch: android.os.RemoteException -> L75
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: android.os.RemoteException -> L75
            if (r0 == 0) goto L49
        L46:
            r5 = r1
        L47:
            r6 = r5
            goto L61
        L49:
            r5 = r1
            r6 = r3
            goto L61
        L4c:
            r2 = 4
            if (r0 != r2) goto L52
            r6 = r1
            r5 = r3
            goto L61
        L52:
            if (r0 != r1) goto L5d
            java.lang.String r0 = r11.number     // Catch: android.os.RemoteException -> L75
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: android.os.RemoteException -> L75
            if (r0 == 0) goto L49
            goto L46
        L5d:
            if (r0 != 0) goto L49
            r5 = r3
            goto L47
        L61:
            com.sec.vsim.attsoftphone.data.CallForwardingInfo r0 = new com.sec.vsim.attsoftphone.data.CallForwardingInfo     // Catch: android.os.RemoteException -> L75
            int r7 = r11.timeSeconds     // Catch: android.os.RemoteException -> L75
            int r8 = r11.condition     // Catch: android.os.RemoteException -> L75
            java.lang.String r9 = r11.number     // Catch: android.os.RemoteException -> L75
            r4 = r0
            r4.<init>(r5, r6, r7, r8, r9)     // Catch: android.os.RemoteException -> L75
            com.sec.vsim.attsoftphone.ISoftphoneService r11 = r10.mSoftphoneService     // Catch: android.os.RemoteException -> L75
            int r10 = r10.mSoftPhoneClientId     // Catch: android.os.RemoteException -> L75
            r11.setCallForwardingInfo(r10, r0)     // Catch: android.os.RemoteException -> L75
            goto L7c
        L75:
            java.lang.String r10 = "UtServiceModule"
            java.lang.String r11 = "RemoteException happen"
            com.sec.internal.log.IMSLog.e(r10, r11)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.ss.UtServiceModule.processSpUtRequest(com.sec.internal.ims.servicemodules.ss.UtProfile):void");
    }

    public void connected() {
        IMSLog.i(LOG_TAG, "connected is started");
        String activeAccount = getActiveAccount(this.mContext);
        this.mSoftPhoneAccountId = activeAccount;
        if (activeAccount == null) {
            IMSLog.e(LOG_TAG, "no active account, supplementary service is not available, grey out.");
            return;
        }
        IMSLog.i(LOG_TAG, "mAccountId = " + this.mSoftPhoneAccountId);
        registerSupplementaryServiceListener(this.mSoftPhoneAccountId);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x005b, code lost:
    
        r7.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getActiveAccount(android.content.Context r8) {
        /*
            r7 = this;
            java.lang.String r7 = "getActiveAccount is started"
            java.lang.String r0 = "UtServiceModule"
            com.sec.internal.log.IMSLog.i(r0, r7)
            android.net.Uri r2 = com.sec.internal.constants.ims.entitilement.SoftphoneContract.SoftphoneAccount.buildActiveAccountUri()
            android.content.ContentResolver r1 = r8.getContentResolver()
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r7 = r1.query(r2, r3, r4, r5, r6)
            r8 = 0
            if (r7 == 0) goto L59
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f
            r1.<init>()     // Catch: java.lang.Throwable -> L4f
            java.lang.String r2 = "found "
            r1.append(r2)     // Catch: java.lang.Throwable -> L4f
            int r2 = r7.getCount()     // Catch: java.lang.Throwable -> L4f
            r1.append(r2)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r2 = " active users"
            r1.append(r2)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L4f
            com.sec.internal.log.IMSLog.i(r0, r1)     // Catch: java.lang.Throwable -> L4f
            int r0 = r7.getCount()     // Catch: java.lang.Throwable -> L4f
            if (r0 != 0) goto L3e
            goto L59
        L3e:
            boolean r0 = r7.moveToFirst()     // Catch: java.lang.Throwable -> L4f
            if (r0 == 0) goto L59
            java.lang.String r8 = "account_id"
            int r8 = r7.getColumnIndex(r8)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r8 = r7.getString(r8)     // Catch: java.lang.Throwable -> L4f
            goto L59
        L4f:
            r8 = move-exception
            r7.close()     // Catch: java.lang.Throwable -> L54
            goto L58
        L54:
            r7 = move-exception
            r8.addSuppressed(r7)
        L58:
            throw r8
        L59:
            if (r7 == 0) goto L5e
            r7.close()
        L5e:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.ss.UtServiceModule.getActiveAccount(android.content.Context):java.lang.String");
    }

    public void registerSupplementaryServiceListener(String str) {
        this.mSoftPhoneAccountId = str;
        try {
            int clientId = this.mSoftphoneService.getClientId(str);
            this.mSoftPhoneClientId = clientId;
            this.mSoftphoneService.registerSupplementaryServiceListener(clientId, this.mSupplementaryServiceListener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void bindSoftPhoneService() {
        if (this.mSoftphoneService == null) {
            Intent intent = new Intent();
            intent.setClassName("com.sec.imsservice", SoftphoneContract.SERVICE_CLASS_NAME);
            this.mContext.bindService(intent, this.mConnection, 1);
        } else {
            IMSLog.i(LOG_TAG, "mSoftphoneService is not null");
            connected();
        }
    }

    public void unbindSoftPhoneService() {
        if (this.mSoftphoneBound) {
            this.mContext.unbindService(this.mConnection);
            this.mSoftphoneBound = false;
            this.mConnection.onServiceDisconnected(null);
        }
        IMSLog.i(LOG_TAG, "is bind" + this.mSoftphoneBound);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void dump() {
        IMSLog.dump(LOG_TAG, "Dump of " + getClass().getSimpleName() + ":");
        IMSLog.increaseIndent(LOG_TAG);
        this.mUtServiceHistory.dump();
        IMSLog.decreaseIndent(LOG_TAG);
    }

    protected void setLastUri(String str, ImsUri imsUri) {
        this.mLastUri.put(str, imsUri);
    }

    protected void enqueueRequest(UtProfile utProfile) {
        this.mPendingRequests.add(utProfile);
    }

    protected UtProfile dequeueRequest() {
        UtProfile utProfile = this.mPendingRequests.get(0);
        this.mPendingRequests.remove(0);
        return utProfile;
    }

    private void printLog(int i, UtProfile utProfile) {
        if (utProfile == null) {
            IMSLog.d(LOG_TAG, i, "UtProfile is null.");
            return;
        }
        String str = "UtXcap[" + utProfile.requestId + "]> " + UtLog.extractLogFromUtProfile(utProfile);
        String extractCrLogFromUtProfile = UtLog.extractCrLogFromUtProfile(i, utProfile);
        IMSLog.i(LOG_TAG, i, str);
        this.mUtServiceHistory.add(i, str);
        IMSLog.c(LogClass.UT_REQUEST, extractCrLogFromUtProfile);
    }

    protected void writeDump(int i, String str) {
        this.mUtServiceHistory.add(i, str);
    }
}
