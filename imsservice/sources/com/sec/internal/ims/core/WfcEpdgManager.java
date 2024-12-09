package com.sec.internal.ims.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.sec.epdg.EpdgManager;
import com.sec.ims.IEpdgListener;
import com.sec.ims.ISimMobilityStatusListener;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.settings.ImsServiceSwitch;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IWfcEpdgManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class WfcEpdgManager extends StateMachine implements IWfcEpdgManager {
    static final String COLUMN_CROSS_SIM_CALL_ENABLE = "data_preferred_mode_during_calling";
    static final String COLUMN_WIFI_CALL_ENABLE = "wifi_call_enable";
    static final int EPDG_AVAILABLE = 1;
    static final int EPDG_TERMINATED = 2;
    static final int EPDG_UNAVAILABLE = 0;
    static final String EXTRA_CARRIER_PHONEID = "com.samsung.carrier.extra.CARRIER_PHONE_ID";
    static final String INTENT_EPDG_FQDN_NAME = "com.sec.imsservice.intent.action.EPDG_NAME";
    private static final String LOG_TAG = "WfcEpdgManager";
    private static final int MOBILE_DATA_SETTING_UPDATE = 15;
    static final int ON_CARRIER_UPDATE = 14;
    private static final int ON_CROSS_SIM_UPDATED = 16;
    static final int ON_ENTITLEMENT_EVENT = 12;
    static final int ON_EPDG_CONNECTED = 8;
    static final int ON_EPDG_DISCONNECTED = 9;
    static final int ON_EPDG_FQDN_EVENT = 13;
    private static final int ON_PERMANENT_PDN_FAILED = 17;
    static final int ON_SETTING_RESET = 11;
    static final int ON_WFC_UPDATED = 4;
    static final String PROVIDER_NAME = "com.samsung.ims.entitlement.provider";
    static final int SIM_ABSENT = 6;
    static final int SIM_READY = 5;
    private static final int SIM_READY_DELAY = 18;
    static final int SLOT_0 = 0;
    static final int SLOT_1 = 1;
    private static final String SLOT_ID = "slot";
    static final int STATE_TIMEOUT = 10;
    static final int TRY_EPDG_CONNECT = 7;
    static final String VOWIFI_ENTITLEMENT_REQUIRED = "vowifi_entitlement_required";
    static final String VOWIFI_ENTITLEMENT_STATUS = "vowifi_entitlement_status";
    static final int WIFI_CONNECTED = 3;
    Connected mConnected;
    Connecting mConnecting;
    final ConnectivityManager mConnectivityManager;
    Context mContext;
    boolean[] mCurrentSimMobilityState;
    final ConnectivityManager.NetworkCallback mDefaultNetworkCallback;
    Disconnected mDisconnected;
    Disconnecting mDisconnecting;
    final BroadcastReceiver mEntitlementReceiver;
    boolean[] mEpdgAvailable;
    EpdgManager.ConnectionListener mEpdgConnection;
    EpdgManager.EpdgListener mEpdgHandoverListener;
    EpdgManager mEpdgMgr;
    private int[] mEpdgPhysicalInterface;
    SimpleEventLog mEventLog;
    IImsFramework mImsFramework;
    private boolean[] mIsCrossSimPermanentBlocked;
    boolean mIsEpdgReqTerminate;
    boolean mIsWIFIConnected;
    final List<IEpdgListener> mListeners;
    private int[] mNrInterworkingMode;
    Intent mReasonIntent;
    ISimMobilityStatusListener mSimMobilityStatusListener;
    VoWifiSettingObserver mVoWifiSettingObserver;
    List<WfcEpdgConnectionListener> mWfcEpdgConnectionListenerList;
    final ConnectivityManager.NetworkCallback mWifiStateListener;
    static final Uri ENTITLEMENT_URI = Uri.parse("content://com.samsung.ims.entitlement.provider");
    static final HashMap<String, String> mVodaProvisoinMap = new HashMap<>();

    public interface WfcEpdgConnectionListener {
        void onEpdgServiceConnected();

        void onEpdgServiceDisconnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String eventAsString(int i) {
        switch (i) {
            case 2:
                return "EPDG_TERMINATED";
            case 3:
                return "WIFI_CONNECTED";
            case 4:
                return "ON_WFC_UPDATED";
            case 5:
                return "SIM_READY";
            case 6:
                return "SIM_ABSENT";
            case 7:
                return "TRY_EPDG_CONNECT";
            case 8:
                return "ON_EPDG_CONNECTED";
            case 9:
                return "ON_EPDG_DISCONNECTED";
            case 10:
                return "STATE_TIMEOUT";
            case 11:
                return "ON_SETTING_RESET";
            case 12:
                return "ON_ENTITLEMENT_EVENT";
            case 13:
                return "ON_EPDG_FQDN_EVENT";
            case 14:
                return "ON_CARRIER_UPDATE";
            case 15:
                return "MOBILE_DATA_SETTING_UPDATE";
            case 16:
                return "ON_CROSS_SIM_UPDATED";
            case 17:
                return "ON_PERMANENT_PDN_FAILED";
            case 18:
                return "SIM_READY_DELAY";
            default:
                return "UNKNOWN";
        }
    }

    public WfcEpdgManager(Context context, Looper looper, IImsFramework iImsFramework) {
        super(LOG_TAG, looper);
        this.mEpdgAvailable = new boolean[]{false, false};
        this.mEpdgPhysicalInterface = new int[]{0, 0};
        this.mIsCrossSimPermanentBlocked = new boolean[]{false, false};
        this.mNrInterworkingMode = new int[]{0, 0};
        this.mReasonIntent = null;
        this.mEpdgMgr = null;
        this.mListeners = Collections.synchronizedList(new ArrayList());
        this.mCurrentSimMobilityState = new boolean[]{false, false};
        this.mIsWIFIConnected = false;
        this.mIsEpdgReqTerminate = false;
        this.mDefaultNetworkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.core.WfcEpdgManager.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                NetworkCapabilities networkCapabilities = WfcEpdgManager.this.mConnectivityManager.getNetworkCapabilities(network);
                if (networkCapabilities != null) {
                    boolean hasTransport = networkCapabilities.hasTransport(1);
                    Log.i(WfcEpdgManager.LOG_TAG, "mDefaultNetworkCallback onAvailable isWifi: " + hasTransport);
                    if (hasTransport && WfcEpdgManager.this.isWifiConnected()) {
                        WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
                        wfcEpdgManager.mIsWIFIConnected = true;
                        wfcEpdgManager.sendMessage(3);
                        return;
                    }
                    WfcEpdgManager.this.mIsWIFIConnected = false;
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                if (network == null || networkCapabilities == null || !networkCapabilities.hasTransport(4)) {
                    return;
                }
                boolean hasTransport = networkCapabilities.hasTransport(1);
                Log.i(WfcEpdgManager.LOG_TAG, "mDefaultNetworkCallback onCapabilitiesChanged(): isWifi :" + hasTransport + ",validated :" + networkCapabilities.hasCapability(16));
                if (hasTransport) {
                    if (networkCapabilities.hasCapability(16)) {
                        WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
                        wfcEpdgManager.mIsWIFIConnected = true;
                        wfcEpdgManager.sendMessage(3);
                        return;
                    }
                    return;
                }
                WfcEpdgManager.this.mIsWIFIConnected = false;
            }
        };
        this.mWifiStateListener = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.core.WfcEpdgManager.2
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Log.i(WfcEpdgManager.LOG_TAG, "mWifiStateListener onLost");
                WfcEpdgManager.this.mIsWIFIConnected = false;
            }
        };
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.WfcEpdgManager.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                Log.d(WfcEpdgManager.LOG_TAG, action + " intent received.");
                if (NSDSNamespaces.NSDSActions.ENTITLEMENT_CHECK_COMPLETED.equals(action) || AECNamespace.Action.COMPLETED_ENTITLEMENT.equals(action)) {
                    WfcEpdgManager.this.sendMessage(12);
                    return;
                }
                if (WfcEpdgManager.INTENT_EPDG_FQDN_NAME.equals(action)) {
                    int intExtra = intent.getIntExtra("simslotindex", 0);
                    ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(intExtra);
                    String imsi = simManagerFromSimSlot == null ? "no sim" : simManagerFromSimSlot.getImsi();
                    WfcEpdgManager.this.mEventLog.add("Vodafone_SMS_Provisioning : slot[" + intExtra + "], imsi[" + IMSLog.checker(imsi) + "], epdgfqdn[" + intent.getStringExtra("epdgfqdn") + "]");
                    WfcEpdgManager.this.sendMessage(13, intent);
                }
            }
        };
        this.mEntitlementReceiver = broadcastReceiver;
        this.mContext = context;
        this.mImsFramework = iImsFramework;
        this.mEventLog = new SimpleEventLog(context, LOG_TAG, 20);
        this.mConnectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        this.mWfcEpdgConnectionListenerList = new ArrayList();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(NSDSNamespaces.NSDSActions.ENTITLEMENT_CHECK_COMPLETED);
        intentFilter.addAction(AECNamespace.Action.COMPLETED_ENTITLEMENT);
        intentFilter.addAction(INTENT_EPDG_FQDN_NAME);
        this.mContext.registerReceiver(broadcastReceiver, intentFilter);
        this.mDisconnected = new Disconnected();
        this.mConnecting = new Connecting();
        this.mConnected = new Connected();
        this.mDisconnecting = new Disconnecting();
    }

    private void init() {
        addState(this.mDisconnected);
        addState(this.mConnecting);
        addState(this.mConnected);
        addState(this.mDisconnecting);
        setInitialState(this.mDisconnected);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        init();
        super.start();
        this.mConnectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).addCapability(12).build(), this.mWifiStateListener);
        this.mConnectivityManager.registerDefaultNetworkCallback(this.mDefaultNetworkCallback);
        this.mEpdgHandoverListener = makeEpdgHandoverListener();
        this.mVoWifiSettingObserver = new VoWifiSettingObserver(super.getHandler());
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("wifi_call_enable1"), false, this.mVoWifiSettingObserver);
        if (SimUtil.getPhoneCount() > 1) {
            this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("data_preferred_mode_during_calling"), false, this.mVoWifiSettingObserver);
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("wifi_call_enable2"), false, this.mVoWifiSettingObserver);
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("mobile_data"), false, this.mVoWifiSettingObserver);
        }
        for (ISimManager iSimManager : SimManagerFactory.getAllSimManagers()) {
            iSimManager.registerForSimReady(super.getHandler(), 5, iSimManager);
            iSimManager.registerForSimRemoved(super.getHandler(), 6, iSimManager);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public synchronized void registerEpdgHandoverListener(IEpdgListener iEpdgListener) {
        Log.i(LOG_TAG, "registerEpdgHandoverListener..");
        if (!this.mListeners.contains(iEpdgListener)) {
            this.mListeners.add(iEpdgListener);
        }
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            try {
                iEpdgListener.onEpdgAvailable(i, this.mEpdgAvailable[i] ? 1 : 0, this.mEpdgPhysicalInterface[i]);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public synchronized void unRegisterEpdgHandoverListener(IEpdgListener iEpdgListener) {
        Log.i(LOG_TAG, "unRegisterEpdgHandoverListener..");
        this.mListeners.remove(iEpdgListener);
    }

    public boolean isWifiConnected() {
        Network activeNetwork = this.mConnectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            Log.i(LOG_TAG, "isWifiConnected: Default NW is null ");
            return false;
        }
        NetworkCapabilities networkCapabilities = this.mConnectivityManager.getNetworkCapabilities(activeNetwork);
        if (networkCapabilities == null || !networkCapabilities.hasTransport(1)) {
            return false;
        }
        return networkCapabilities.hasCapability(12) || networkCapabilities.hasCapability(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isReadyForEpdgConnect() {
        if (isAnySimAvailableWithWFCEnabled()) {
            for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
                if (SimUtil.getSimMno(i).isUSA() || this.mIsWIFIConnected) {
                    return true;
                }
            }
        }
        if (!isCrossSimAvailable()) {
            return false;
        }
        boolean isDataEnabled = ((TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY)).isDataEnabled();
        Log.i(LOG_TAG, "Ready for cross sim calling dataEnabled : " + isDataEnabled);
        return isDataEnabled;
    }

    private boolean isCrossSimAvailable() {
        if (Settings.Secure.getInt(this.mContext.getContentResolver(), "data_preferred_mode_during_calling", 0) == 1) {
            for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
                if (isWFCEnabled(i) && this.mImsFramework.isCrossSimCallingSupportedByPhoneId(i)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isEntitlementRequired(Context context, int i) {
        Uri.Builder buildUpon = Uri.withAppendedPath(ENTITLEMENT_URI, VOWIFI_ENTITLEMENT_REQUIRED).buildUpon();
        buildUpon.appendQueryParameter("slot", String.valueOf(i));
        Cursor query = context.getContentResolver().query(buildUpon.build(), null, null, null, null);
        if (query != null) {
            int columnIndex = query.getColumnIndex(VOWIFI_ENTITLEMENT_REQUIRED);
            query.moveToNext();
            r9 = query.getInt(columnIndex) == 1;
            query.close();
        }
        Log.i(LOG_TAG, "isEntitlementRequired : " + r9);
        return r9;
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public void setCrossSimPermanentBlocked(int i, boolean z) {
        this.mIsCrossSimPermanentBlocked[i] = z;
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public boolean isCrossSimPermanentBlocked(int i) {
        return this.mIsCrossSimPermanentBlocked[i];
    }

    public void setNrInterworkingMode(int i, int i2) {
        this.mNrInterworkingMode[i] = i2;
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public int getNrInterworkingMode(int i) {
        return this.mNrInterworkingMode[i];
    }

    private boolean isEntitlementResult(Context context, int i) {
        Uri.Builder buildUpon = Uri.withAppendedPath(ENTITLEMENT_URI, VOWIFI_ENTITLEMENT_STATUS).buildUpon();
        buildUpon.appendQueryParameter("slot", String.valueOf(i));
        Cursor query = context.getContentResolver().query(buildUpon.build(), null, null, null, null);
        if (query != null) {
            int columnIndex = query.getColumnIndex(VOWIFI_ENTITLEMENT_STATUS);
            query.moveToNext();
            r9 = query.getInt(columnIndex) == 1;
            query.close();
        }
        Log.i(LOG_TAG, "isEntitlementResult : " + r9);
        return r9;
    }

    private boolean isAnySimAvailableWithWFCEnabled() {
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            if (isSimAvailable(i) && isWFCEnabled(i)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSimAvailable(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        return simManagerFromSimSlot != null && (simManagerFromSimSlot.isSimAvailable() || simManagerFromSimSlot.hasVsim());
    }

    private boolean isWFCEnabled(int i) {
        if (isEntitlementRequired(this.mContext, i) && !isEntitlementResult(this.mContext, i)) {
            return false;
        }
        int i2 = i + 1;
        Mno simMno = SimUtil.getSimMno(i);
        if (!isVowifiSupported(i)) {
            return false;
        }
        if (!simMno.isCanada() && !simMno.isUSA()) {
            if (Settings.System.getInt(this.mContext.getContentResolver(), "wifi_call_enable" + i2, -1) != 1) {
                return false;
            }
        }
        return true;
    }

    private boolean isVowifiSupported(int i) {
        try {
            if (!this.mImsFramework.isServiceAvailable("mmtel", 18, i) && !this.mImsFramework.isServiceAvailable("mmtel-video", 18, i)) {
                if (!this.mImsFramework.isServiceAvailable("smsip", 18, i)) {
                    return false;
                }
            }
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public void dump() {
        dumpVodaProvisioning();
        this.mEventLog.dump();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EpdgManager getEpdgManager() {
        EpdgManager epdgManager = this.mEpdgMgr;
        if (epdgManager != null) {
            return epdgManager;
        }
        EpdgManager epdgManager2 = new EpdgManager(this.mContext, this.mEpdgConnection);
        this.mEpdgMgr = epdgManager2;
        return epdgManager2;
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public EpdgManager getEpdgMgr() {
        if (isEpdgServiceConnecting() || isEpdgServiceConnected()) {
            return this.mEpdgMgr;
        }
        return null;
    }

    EpdgManager.EpdgListener makeEpdgHandoverListener() {
        return new EpdgManager.EpdgListener() { // from class: com.sec.internal.ims.core.WfcEpdgManager.3
            public void onEpdgAvailable(int i, int i2, int i3) {
                if (i2 == 2) {
                    WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
                    wfcEpdgManager.mIsEpdgReqTerminate = true;
                    wfcEpdgManager.sendMessageAtFrontOfQueue(2);
                    i2 = 0;
                }
                boolean z = i2 == 1;
                WfcEpdgManager wfcEpdgManager2 = WfcEpdgManager.this;
                if (wfcEpdgManager2.mEpdgAvailable[i] == z && wfcEpdgManager2.mEpdgPhysicalInterface[i] == i3) {
                    return;
                }
                WfcEpdgManager wfcEpdgManager3 = WfcEpdgManager.this;
                wfcEpdgManager3.mEpdgAvailable[i] = z;
                wfcEpdgManager3.mEpdgPhysicalInterface[i] = i3;
                synchronized (WfcEpdgManager.this.mListeners) {
                    Iterator<IEpdgListener> it = WfcEpdgManager.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            it.next().onEpdgAvailable(i, i2, i3);
                        } catch (DeadObjectException unused) {
                            Log.e(WfcEpdgManager.LOG_TAG, " DeadObjectException remove dead listener.");
                            it.remove();
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            public void onEpdgHandoverResult(int i, int i2, int i3, String str) {
                synchronized (WfcEpdgManager.this.mListeners) {
                    Iterator<IEpdgListener> it = WfcEpdgManager.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            try {
                                it.next().onEpdgHandoverResult(i, i2, i3, str);
                            } catch (DeadObjectException unused) {
                                Log.e(WfcEpdgManager.LOG_TAG, " DeadObjectException remove dead listener.");
                                it.remove();
                            }
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            public void onEpdgDeregister(int i) {
                synchronized (WfcEpdgManager.this.mListeners) {
                    Iterator<IEpdgListener> it = WfcEpdgManager.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            try {
                                it.next().onEpdgDeregister(i);
                            } catch (DeadObjectException unused) {
                                Log.e(WfcEpdgManager.LOG_TAG, " DeadObjectException remove dead listener.");
                                it.remove();
                            }
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            public void onEpdgIpsecConnection(int i, String str, int i2, int i3) {
                synchronized (WfcEpdgManager.this.mListeners) {
                    Iterator<IEpdgListener> it = WfcEpdgManager.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            try {
                                it.next().onEpdgIpsecConnection(i, str, i2, i3);
                            } catch (DeadObjectException unused) {
                                Log.e(WfcEpdgManager.LOG_TAG, " DeadObjectException remove dead listener.");
                                it.remove();
                            }
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            public void onEpdgIpsecDisconnection(int i, String str) {
                synchronized (WfcEpdgManager.this.mListeners) {
                    Iterator<IEpdgListener> it = WfcEpdgManager.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            try {
                                it.next().onEpdgIpsecDisconnection(i, str);
                            } catch (DeadObjectException unused) {
                                Log.e(WfcEpdgManager.LOG_TAG, " DeadObjectException remove dead listener.");
                                it.remove();
                            }
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            public void onEpdgRegister(int i, boolean z) {
                synchronized (WfcEpdgManager.this.mListeners) {
                    Iterator<IEpdgListener> it = WfcEpdgManager.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            try {
                                it.next().onEpdgRegister(i, z);
                            } catch (DeadObjectException unused) {
                                Log.e(WfcEpdgManager.LOG_TAG, " DeadObjectException remove dead listener.");
                                it.remove();
                            }
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            public void onEpdgShowPopup(int i, int i2) {
                synchronized (WfcEpdgManager.this.mListeners) {
                    Iterator<IEpdgListener> it = WfcEpdgManager.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            try {
                                it.next().onEpdgShowPopup(i, i2);
                            } catch (DeadObjectException unused) {
                                Log.e(WfcEpdgManager.LOG_TAG, " DeadObjectException remove dead listener.");
                                it.remove();
                            }
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            public void onEpdgReleaseCall(int i) {
                synchronized (WfcEpdgManager.this.mListeners) {
                    Iterator<IEpdgListener> it = WfcEpdgManager.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            try {
                                it.next().onEpdgReleaseCall(i);
                            } catch (DeadObjectException unused) {
                                Log.e(WfcEpdgManager.LOG_TAG, " DeadObjectException remove dead listener.");
                                it.remove();
                            }
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }

            public void onEpdgHandoverEnableChanged(int i, boolean z) {
                synchronized (WfcEpdgManager.this.mListeners) {
                    Iterator<IEpdgListener> it = WfcEpdgManager.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            try {
                                it.next().onEpdgHandoverEnableChanged(i, z);
                            } catch (DeadObjectException unused) {
                                Log.e(WfcEpdgManager.LOG_TAG, " DeadObjectException remove dead listener.");
                                it.remove();
                            }
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        };
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public void registerWfcEpdgConnectionListener(WfcEpdgConnectionListener wfcEpdgConnectionListener) {
        this.mWfcEpdgConnectionListenerList.add(wfcEpdgConnectionListener);
    }

    public void unRegisterWfcEpdgConnectionListener(WfcEpdgConnectionListener wfcEpdgConnectionListener) {
        this.mWfcEpdgConnectionListenerList.remove(wfcEpdgConnectionListener);
    }

    class Disconnected extends State {
        Disconnected() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.i(WfcEpdgManager.LOG_TAG, "Enter [Disconnected]");
            if (WfcEpdgManager.this.isReadyForEpdgConnect() || WfcEpdgManager.this.mReasonIntent != null) {
                WfcEpdgManager.this.removeMessages(7);
                WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
                wfcEpdgManager.transitionTo(wfcEpdgManager.mConnecting);
            }
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            Log.i(WfcEpdgManager.LOG_TAG, "[Disconnected] processMessage " + WfcEpdgManager.this.eventAsString(message.what));
            switch (message.what) {
                case 3:
                case 4:
                case 15:
                case 16:
                    if (!WfcEpdgManager.this.isReadyForEpdgConnect()) {
                        return true;
                    }
                    WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
                    wfcEpdgManager.transitionTo(wfcEpdgManager.mConnecting);
                    return true;
                case 5:
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    if (!WfcEpdgManager.this.isEnableVoWiFiFromMnoInfo((ISimManager) asyncResult.userObj)) {
                        Log.i(WfcEpdgManager.LOG_TAG, "disable VoWiFi, delay for update ImsSwitch");
                        ISimManager iSimManager = (ISimManager) asyncResult.userObj;
                        WfcEpdgManager wfcEpdgManager2 = WfcEpdgManager.this;
                        wfcEpdgManager2.sendMessageDelayed(wfcEpdgManager2.obtainMessage(18, new AsyncResult(iSimManager, Integer.valueOf(iSimManager.getSimSlotIndex()), null)), 100L);
                        return true;
                    }
                    if (!WfcEpdgManager.this.onSimReady((ISimManager) asyncResult.userObj)) {
                        return true;
                    }
                    WfcEpdgManager wfcEpdgManager3 = WfcEpdgManager.this;
                    wfcEpdgManager3.transitionTo(wfcEpdgManager3.mConnecting);
                    return true;
                case 6:
                    if (!WfcEpdgManager.this.onSimRemoved((ISimManager) ((AsyncResult) message.obj).userObj)) {
                        return true;
                    }
                    WfcEpdgManager wfcEpdgManager4 = WfcEpdgManager.this;
                    wfcEpdgManager4.transitionTo(wfcEpdgManager4.mConnecting);
                    return true;
                case 7:
                case 12:
                case 17:
                    break;
                case 8:
                    Log.i(WfcEpdgManager.LOG_TAG, "EPDG CONNECTED in disconnected state, STRANGE, please check...");
                    WfcEpdgManager wfcEpdgManager5 = WfcEpdgManager.this;
                    wfcEpdgManager5.transitionTo(wfcEpdgManager5.mConnected);
                    return true;
                case 9:
                    Log.i(WfcEpdgManager.LOG_TAG, "ON_EPDG_DISCONNECTED IN ReadyToConnect INVALID EVENT ");
                    return true;
                case 10:
                default:
                    return true;
                case 11:
                case 13:
                    WfcEpdgManager.this.mReasonIntent = (Intent) message.obj;
                    break;
                case 14:
                    WfcEpdgManager wfcEpdgManager6 = WfcEpdgManager.this;
                    Intent intent = (Intent) message.obj;
                    wfcEpdgManager6.mReasonIntent = intent;
                    if (!WfcEpdgManager.this.isSimAvailable(intent.getIntExtra(WfcEpdgManager.EXTRA_CARRIER_PHONEID, 0))) {
                        return true;
                    }
                    WfcEpdgManager wfcEpdgManager7 = WfcEpdgManager.this;
                    wfcEpdgManager7.transitionTo(wfcEpdgManager7.mConnecting);
                    return true;
                case 18:
                    if (!WfcEpdgManager.this.onSimReady((ISimManager) ((AsyncResult) message.obj).userObj)) {
                        return true;
                    }
                    WfcEpdgManager wfcEpdgManager8 = WfcEpdgManager.this;
                    wfcEpdgManager8.transitionTo(wfcEpdgManager8.mConnecting);
                    return true;
            }
            WfcEpdgManager wfcEpdgManager9 = WfcEpdgManager.this;
            wfcEpdgManager9.transitionTo(wfcEpdgManager9.mConnecting);
            return true;
        }
    }

    class Connecting extends State {
        Connecting() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.i(WfcEpdgManager.LOG_TAG, "Enter [Connecting] connecting epdg service");
            WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
            if (wfcEpdgManager.mEpdgConnection == null) {
                wfcEpdgManager.mEpdgConnection = new EpdgManager.ConnectionListener() { // from class: com.sec.internal.ims.core.WfcEpdgManager.Connecting.1
                    public void onConnected() {
                        Log.i(WfcEpdgManager.LOG_TAG, "Bind EpdgService success.");
                        WfcEpdgManager.this.sendMessage(8);
                        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
                            WfcEpdgManager.this.getEpdgManager().addListenerBySim(WfcEpdgManager.this.mEpdgHandoverListener, i);
                        }
                    }

                    public void onDisconnected() {
                        Log.i(WfcEpdgManager.LOG_TAG, "Unbind EpdgService success.");
                        Iterator<WfcEpdgConnectionListener> it = WfcEpdgManager.this.mWfcEpdgConnectionListenerList.iterator();
                        while (it.hasNext()) {
                            it.next().onEpdgServiceDisconnected();
                        }
                        WfcEpdgManager.this.sendMessageDelayed(9, 500L);
                    }
                };
            }
            WfcEpdgManager.this.getEpdgManager().startService(WfcEpdgManager.this.mReasonIntent);
            WfcEpdgManager.this.getEpdgManager().connectService();
            WfcEpdgManager.this.sendMessageDelayed(10, 5000L);
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            Log.i(WfcEpdgManager.LOG_TAG, "[Connecting] processMessage " + WfcEpdgManager.this.eventAsString(message.what));
            int i = message.what;
            if (i == 2) {
                WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
                wfcEpdgManager.transitionTo(wfcEpdgManager.mDisconnecting);
                return true;
            }
            switch (i) {
                case 5:
                    WfcEpdgManager.this.onSimReady((ISimManager) ((AsyncResult) message.obj).userObj);
                    break;
                case 6:
                    WfcEpdgManager.this.onSimRemoved((ISimManager) ((AsyncResult) message.obj).userObj);
                    break;
                case 7:
                    Log.i(WfcEpdgManager.LOG_TAG, "[Connecting] TRY_EPDG_CONNECT already in progress ");
                    break;
                case 8:
                    WfcEpdgManager wfcEpdgManager2 = WfcEpdgManager.this;
                    wfcEpdgManager2.transitionTo(wfcEpdgManager2.mConnected);
                    break;
                case 9:
                    Log.i(WfcEpdgManager.LOG_TAG, "EPDG disconnect in [Connecting] state, may be crash has happenened, need to recover..");
                    WfcEpdgManager wfcEpdgManager3 = WfcEpdgManager.this;
                    wfcEpdgManager3.transitionTo(wfcEpdgManager3.mDisconnected);
                    break;
                case 10:
                    WfcEpdgManager wfcEpdgManager4 = WfcEpdgManager.this;
                    wfcEpdgManager4.transitionTo(wfcEpdgManager4.mDisconnected);
                    break;
            }
            return true;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            WfcEpdgManager.this.removeMessages(10);
        }
    }

    class Connected extends State {
        Connected() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.i(WfcEpdgManager.LOG_TAG, "Enter [Connected]");
            WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
            wfcEpdgManager.mReasonIntent = null;
            Iterator<WfcEpdgConnectionListener> it = wfcEpdgManager.mWfcEpdgConnectionListenerList.iterator();
            while (it.hasNext()) {
                it.next().onEpdgServiceConnected();
            }
            WfcEpdgManager.this.queryVodaProvision();
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            Log.i(WfcEpdgManager.LOG_TAG, "[Connected] processMessage " + WfcEpdgManager.this.eventAsString(message.what));
            switch (message.what) {
                case 2:
                    WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
                    wfcEpdgManager.transitionTo(wfcEpdgManager.mDisconnecting);
                    return true;
                case 3:
                case 4:
                case 10:
                default:
                    return true;
                case 5:
                    WfcEpdgManager wfcEpdgManager2 = WfcEpdgManager.this;
                    if (wfcEpdgManager2.mIsEpdgReqTerminate) {
                        wfcEpdgManager2.deferMessage(message);
                        return true;
                    }
                    wfcEpdgManager2.onSimReady((ISimManager) ((AsyncResult) message.obj).userObj);
                    WfcEpdgManager.this.sendMessageDelayed(7, 200L);
                    return true;
                case 6:
                    WfcEpdgManager wfcEpdgManager3 = WfcEpdgManager.this;
                    if (wfcEpdgManager3.mIsEpdgReqTerminate) {
                        wfcEpdgManager3.deferMessage(message);
                        return true;
                    }
                    wfcEpdgManager3.onSimRemoved((ISimManager) ((AsyncResult) message.obj).userObj);
                    WfcEpdgManager.this.sendMessageDelayed(7, 200L);
                    return true;
                case 7:
                    WfcEpdgManager.this.mReasonIntent = null;
                    return true;
                case 8:
                    Log.i(WfcEpdgManager.LOG_TAG, "[Connected] ON_EPDG_CONNECTED already in connected state.... ");
                    return true;
                case 9:
                    Log.i(WfcEpdgManager.LOG_TAG, "EPDG disconnect in [Connected] state, may be crash has happenened, need to recover..");
                    WfcEpdgManager wfcEpdgManager4 = WfcEpdgManager.this;
                    wfcEpdgManager4.transitionTo(wfcEpdgManager4.mDisconnected);
                    return true;
                case 11:
                case 13:
                case 14:
                    WfcEpdgManager.this.mReasonIntent = (Intent) message.obj;
                    break;
                case 12:
                    break;
            }
            WfcEpdgManager wfcEpdgManager5 = WfcEpdgManager.this;
            if (wfcEpdgManager5.mIsEpdgReqTerminate) {
                wfcEpdgManager5.deferMessage(message);
                return true;
            }
            wfcEpdgManager5.sendMessageDelayed(7, 200L);
            return true;
        }
    }

    class Disconnecting extends State {
        Disconnecting() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.i(WfcEpdgManager.LOG_TAG, "Enter [Disconnecting]");
            WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
            boolean[] zArr = wfcEpdgManager.mEpdgAvailable;
            zArr[0] = false;
            zArr[1] = false;
            wfcEpdgManager.mEpdgPhysicalInterface[0] = 0;
            WfcEpdgManager.this.mEpdgPhysicalInterface[1] = 0;
            WfcEpdgManager.this.mIsEpdgReqTerminate = false;
            for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
                WfcEpdgManager.this.getEpdgManager().removeListenerBySim(WfcEpdgManager.this.mEpdgHandoverListener, i);
            }
            WfcEpdgManager.this.getEpdgManager().disconnectService();
            WfcEpdgManager.this.getEpdgManager().stopService();
            WfcEpdgManager.this.sendMessageDelayed(10, 5000L);
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            Log.i(WfcEpdgManager.LOG_TAG, "[Disconnecting] processMessage " + WfcEpdgManager.this.eventAsString(message.what));
            int i = message.what;
            if (i != 17) {
                switch (i) {
                    case 8:
                        Log.i(WfcEpdgManager.LOG_TAG, "INVALID STATE ON EPDG CONNECTED IN DISCONNECTING STATE for EPDG");
                        break;
                    case 9:
                    case 10:
                        WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
                        wfcEpdgManager.transitionTo(wfcEpdgManager.mDisconnected);
                        break;
                }
                return true;
            }
            WfcEpdgManager.this.deferMessage(message);
            return true;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            WfcEpdgManager.this.removeMessages(10);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public boolean isEpdgServiceConnected() {
        return this.mConnected.equals(getCurrentState());
    }

    public boolean isEpdgServiceConnecting() {
        return this.mConnecting.equals(getCurrentState());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onSimReady(ISimManager iSimManager) {
        int simSlotIndex = iSimManager.getSimSlotIndex();
        if (iSimManager.isSimAvailable()) {
            Log.i(LOG_TAG, "on SIM Ready: phoneId=" + simSlotIndex);
            this.mCurrentSimMobilityState[simSlotIndex] = ImsUtil.isSimMobilityActivated(simSlotIndex);
            this.mIsCrossSimPermanentBlocked[simSlotIndex] = false;
            this.mNrInterworkingMode[simSlotIndex] = 0;
            if (this.mSimMobilityStatusListener == null) {
                this.mSimMobilityStatusListener = makeSimMobilityListener();
                SlotBasedConfig.getInstance(simSlotIndex).getSimMobilityStatusListeners().register(this.mSimMobilityStatusListener);
            }
            SlotBasedConfig.getInstance(simSlotIndex).setBlockedServicesForCrossSim(ImsRegistry.getString(simSlotIndex, GlobalSettingsConstants.Registration.BLOCKED_SERVICES_FOR_CROSS_SIM, ""));
            return true;
        }
        Log.i(LOG_TAG, "SIM ABSENT|LOCKED|NOT READY: phoneId=" + simSlotIndex);
        sendMessage(obtainMessage(6, new AsyncResult(iSimManager, Integer.valueOf(simSlotIndex), null)));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEnableVoWiFiFromMnoInfo(ISimManager iSimManager) {
        return CollectionUtils.getBooleanValue(iSimManager.getMnoInfo(), ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, false);
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public void onResetSetting(Intent intent) {
        sendMessage(11, intent);
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public void onCarrierUpdate(Intent intent) {
        sendMessage(14, intent);
    }

    @Override // com.sec.internal.interfaces.ims.core.IWfcEpdgManager
    public void onPermanentPdnFail() {
        sendMessage(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onSimRemoved(ISimManager iSimManager) {
        if (iSimManager.isSimAvailable()) {
            return false;
        }
        int simSlotIndex = iSimManager.getSimSlotIndex();
        Log.i(LOG_TAG, "SIM Absent: phoneId=" + simSlotIndex);
        this.mIsCrossSimPermanentBlocked[simSlotIndex] = false;
        this.mCurrentSimMobilityState[simSlotIndex] = false;
        this.mNrInterworkingMode[simSlotIndex] = 0;
        return true;
    }

    class VoWifiSettingObserver extends ContentObserver {
        public VoWifiSettingObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            onChange(z, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (uri == null) {
                return;
            }
            String uri2 = uri.toString();
            Log.i(WfcEpdgManager.LOG_TAG, "On SETTING Changed, key : " + uri2);
            if (uri2.contains("wifi_call_enable1")) {
                WfcEpdgManager.this.sendMessage(4, 0);
                return;
            }
            if (uri2.contains("wifi_call_enable2")) {
                WfcEpdgManager.this.sendMessage(4, 1);
            } else if (uri2.contains("data_preferred_mode_during_calling")) {
                WfcEpdgManager.this.sendMessage(16);
            } else if (uri2.contains("mobile_data")) {
                WfcEpdgManager.this.sendMessage(15);
            }
        }
    }

    protected ISimMobilityStatusListener makeSimMobilityListener() {
        return new ISimMobilityStatusListener.Stub() { // from class: com.sec.internal.ims.core.WfcEpdgManager.4
            public void onSimMobilityStateChanged(boolean z) throws RemoteException {
                for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
                    boolean isSimMobilityActivated = ImsUtil.isSimMobilityActivated(i);
                    WfcEpdgManager wfcEpdgManager = WfcEpdgManager.this;
                    if (wfcEpdgManager.mCurrentSimMobilityState[i] != isSimMobilityActivated && wfcEpdgManager.isSimAvailable(i)) {
                        Log.i(WfcEpdgManager.LOG_TAG, "onSimMobilityStateChanged: simMobility " + isSimMobilityActivated + " phoneID " + i);
                        WfcEpdgManager.this.mCurrentSimMobilityState[i] = isSimMobilityActivated;
                        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
                        WfcEpdgManager wfcEpdgManager2 = WfcEpdgManager.this;
                        wfcEpdgManager2.sendMessage(wfcEpdgManager2.obtainMessage(5, new AsyncResult(simManagerFromSimSlot, Integer.valueOf(i), null)));
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryVodaProvision() {
        ISimManager simManagerFromSimSlot;
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            if (SimUtil.getSimMno(i).equals(Mno.VODAFONE_UK) && (simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i)) != null) {
                String imsi = simManagerFromSimSlot.getImsi();
                Cursor query = this.mContext.getContentResolver().query(Uri.parse("content://iwlansettings/todos/provision"), null, imsi, null, null);
                if (query != null) {
                    try {
                        if (query.getCount() > 0) {
                            query.moveToFirst();
                            mVodaProvisoinMap.put(imsi, query.getString(0));
                        }
                    } catch (Throwable th) {
                        try {
                            query.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
            }
        }
    }

    private void dumpVodaProvisioning() {
        HashMap<String, String> hashMap = mVodaProvisoinMap;
        if (hashMap.isEmpty()) {
            return;
        }
        this.mEventLog.add("Vodafone_SMS_Provisioning : " + hashMap.toString());
    }
}
