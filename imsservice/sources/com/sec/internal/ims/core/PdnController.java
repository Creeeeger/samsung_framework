package com.sec.internal.ims.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.net.TelephonyNetworkSpecifier;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.telephony.CellIdentity;
import android.telephony.CellInfo;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.Pair;
import com.sec.epdg.EpdgManager;
import com.sec.ims.ImsManager;
import com.sec.ims.extensions.ConnectivityManagerExt;
import com.sec.ims.extensions.ServiceStateExt;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.core.LinkPropertiesChangedEvent;
import com.sec.internal.constants.ims.os.EmcBsIndication;
import com.sec.internal.constants.ims.os.NetworkState;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.CellIdentityWrapper;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.LinkPropertiesWrapper;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.PdnController;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.SemTelephonyAdapter;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.NetworkStateListener;
import com.sec.internal.interfaces.ims.core.PdnEventListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.log.IMSLogTimer;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class PdnController extends Handler implements IPdnController {
    protected static final String ECC_IWLAN = "IWLAN";
    protected static final int EVENT_CLEAR_EMERGENCY_QUALIFIEDNETWORK = 112;
    protected static final int EVENT_DEFAULT_NETWORK_CHANGED = 110;
    protected static final int EVENT_EPDG_CONNECTION_CHANGED = 104;
    protected static final int EVENT_EPDG_IKEERROR = 109;
    protected static final int EVENT_LINK_PROPERTIES_CHANGED = 111;
    protected static final int EVENT_PDN_CONNECTED = 108;
    protected static final int EVENT_PDN_DISCONNECTED = 103;
    protected static final int EVENT_REQUEST_NETWORK = 101;
    protected static final int EVENT_REQUEST_STOP_PDN = 107;
    protected static final int EVENT_STOP_PDN_COMPLETED = 102;
    protected static final int EVENT_WIFI_CONNECTED = 105;
    protected static final int EVENT_WIFI_DISCONNECTED = 106;
    protected static final String PROPERTY_ECC_PATH = "ril.subtype";
    static final int TEMP_SA_DISABLE = 4;
    static final int TEMP_SA_ENABLE = 3;
    protected int mActiveDataPhoneId;
    protected ConnectivityManager mConnectivityManager;
    private final Context mContext;
    final ConnectivityManager.NetworkCallback mDefaultNetworkListener;
    protected int[] mEPDNQN;
    protected String[] mEPDNintfName;
    protected ImsManager.EpdgListener mEpdgHandoverListener;
    protected SimpleEventLog mEventLog;
    private final IImsFramework mImsFramework;
    protected boolean mIsDisconnecting;
    protected boolean mNeedCellLocationUpdate;
    protected final Map<PdnEventListener, NetworkCallback> mNetworkCallbacks;
    protected final Set<NetworkStateListener> mNetworkStateListeners;
    protected List<NetworkState> mNetworkStates;
    private final BroadcastReceiver mPcscfRestorationEventReceiver;
    protected final Set<Pair<Pair<Integer, Integer>, PdnEventListener>> mPendingRequests;
    protected List<? extends ISimManager> mSimManagers;
    protected final Map<Integer, TelephonyCallbackForPdnController> mTelephonyCallbacks;
    protected ITelephonyManager mTelephonyManager;
    final ConnectivityManager.NetworkCallback mWifiStateListener;
    private static final boolean DBG = "eng".equals(Build.TYPE);
    private static final String LOG_TAG = PdnController.class.getSimpleName();
    protected static Map<Integer, Integer> mDataState = new HashMap();

    private int getNetworkCapability(int i) {
        if (i == 11) {
            return 4;
        }
        if (i != 15) {
            return i != 27 ? 12 : 9;
        }
        return 10;
    }

    public PdnController(Context context, Looper looper, IImsFramework iImsFramework) {
        super(looper);
        this.mNetworkCallbacks = new ArrayMap();
        this.mTelephonyManager = null;
        this.mNetworkStateListeners = new ArraySet();
        this.mNetworkStates = new ArrayList();
        this.mPendingRequests = new ArraySet();
        this.mTelephonyCallbacks = new HashMap();
        this.mActiveDataPhoneId = 0;
        this.mIsDisconnecting = false;
        this.mNeedCellLocationUpdate = false;
        this.mWifiStateListener = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.core.PdnController.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                PdnController.this.sendEmptyMessage(105);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                PdnController.this.sendEmptyMessage(106);
            }
        };
        this.mDefaultNetworkListener = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.core.PdnController.2
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                Log.i(PdnController.LOG_TAG, "mDefaultNetworkListener: onAvailable network=" + network);
                if (PdnController.this.hasMessages(110)) {
                    return;
                }
                PdnController.this.sendEmptyMessage(110);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Log.i(PdnController.LOG_TAG, "mDefaultNetworkListener: onLost network=" + network);
            }
        };
        this.mPcscfRestorationEventReceiver = new AnonymousClass3();
        this.mContext = context;
        this.mImsFramework = iImsFramework;
        this.mConnectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.mTelephonyManager = TelephonyManagerWrapper.getInstance(context);
        this.mSimManagers = SimManagerFactory.getAllSimManagers();
        this.mEpdgHandoverListener = new ImsEpdgEventListener(this, iImsFramework);
        int size = this.mSimManagers.size();
        this.mEPDNintfName = new String[size];
        this.mEPDNQN = new int[size];
        this.mActiveDataPhoneId = SimUtil.getActiveDataPhoneId();
        this.mEventLog = new SimpleEventLog(context, LOG_TAG, 200);
    }

    protected SimpleEventLog getEventLog() {
        return this.mEventLog;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        Iterator<? extends ISimManager> it = this.mSimManagers.iterator();
        while (it.hasNext()) {
            this.mNetworkStates.add(NetworkState.create(it.next().getSimSlotIndex()));
        }
        Iterator<? extends ISimManager> it2 = this.mSimManagers.iterator();
        while (it2.hasNext()) {
            registerTelephonyCallback(it2.next().getSimSlotIndex());
        }
        this.mImsFramework.getWfcEpdgManager().registerEpdgHandoverListener(this.mEpdgHandoverListener);
        this.mConnectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).addCapability(12).build(), this.mWifiStateListener);
        this.mConnectivityManager.registerDefaultNetworkCallback(this.mDefaultNetworkListener);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ImsConstants.Intents.ACTION_UPDATE_PCSCF_RESTORATION);
        this.mContext.registerReceiver(this.mPcscfRestorationEventReceiver, intentFilter);
    }

    public void registerTelephonyCallback(int i) {
        int subId = SimUtil.getSubId(i);
        String str = LOG_TAG;
        IMSLog.i(str, i, "registerPhoneStateListener subId=" + subId);
        if (subId < 0) {
            return;
        }
        TelephonyCallbackForPdnController telephonyCallbackForPdnController = this.mTelephonyCallbacks.get(Integer.valueOf(i));
        if (telephonyCallbackForPdnController != null) {
            IMSLog.i(str, i, "registerPhoneStateListener: callback exits subId:" + telephonyCallbackForPdnController.getSubId());
            if (telephonyCallbackForPdnController.getSubId() == subId) {
                return;
            } else {
                unRegisterTelephonyCallback(i);
            }
        }
        TelephonyCallbackForPdnController telephonyCallbackForPdnController2 = new TelephonyCallbackForPdnController(this, this.mImsFramework, i, subId);
        this.mTelephonyCallbacks.put(Integer.valueOf(i), telephonyCallbackForPdnController2);
        this.mTelephonyManager.registerTelephonyCallbackForSlot(i, this.mContext.getMainExecutor(), telephonyCallbackForPdnController2);
    }

    public void unRegisterTelephonyCallback(int i) {
        IMSLog.i(LOG_TAG, i, "unRegisterTelephonyCallback:");
        TelephonyCallbackForPdnController telephonyCallbackForPdnController = this.mTelephonyCallbacks.get(Integer.valueOf(i));
        if (telephonyCallbackForPdnController == null) {
            return;
        }
        this.mTelephonyManager.unregisterTelephonyCallbackForSlot(i, telephonyCallbackForPdnController);
        this.mTelephonyCallbacks.remove(Integer.valueOf(i));
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean isPendedEPDGWeakSignal(int i) {
        return getNetworkState(i).isPendedEPDGWeakSignal();
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public void setPendedEPDGWeakSignal(int i, boolean z) {
        String str = LOG_TAG;
        IMSLog.i(str, i, "setPendedEPDGWeakSignal");
        NetworkState networkState = getNetworkState(i);
        if (z) {
            if (SimUtil.getSimMno(i).isOneOf(Mno.TMOUS, Mno.DISH, Mno.VZW, Mno.ATT)) {
                int dataRegState = networkState.getDataRegState();
                int dataNetworkType = networkState.getDataNetworkType();
                if (dataRegState == 1 || dataRegState == 3 || !(dataNetworkType == 13 || dataNetworkType == 14 || dataRegState != 0)) {
                    IMSLog.i(str, i, "VzW/ATT/TMOUS/DISH : LOST_LTE_WIFI_CONNECTION:12");
                    networkState.setPendedEpdgWeakSignal(true);
                    return;
                }
                return;
            }
            return;
        }
        networkState.setPendedEpdgWeakSignal(false);
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean isEpsOnlyReg(int i) {
        NetworkState networkState = getNetworkState(i);
        return networkState.isPsOnlyReg() && NetworkUtil.is3gppPsVoiceNetwork(networkState.getDataNetworkType());
    }

    public boolean hasEmergencyServiceOnly(int i) {
        return this.mTelephonyManager.getDataServiceState(SimUtil.getSubId(i)) != 0;
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public VoPsIndication getVopsIndication(int i) {
        return getNetworkState(i).getVopsIndication();
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean isVoiceRoaming(int i) {
        return getNetworkState(i).isVoiceRoaming();
    }

    public boolean isDataRoaming(int i) {
        return getNetworkState(i).isDataRoaming();
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public int getVoiceRegState(int i) {
        return getNetworkState(i).getVoiceRegState();
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public int getEpdgPhysicalInterface(int i) {
        try {
            return getNetworkState(i).getEpdgPhysicalInterface();
        } catch (NullPointerException unused) {
            IMSLog.i(LOG_TAG, i, "Network State is NULL");
            return 0;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public int getMobileDataRegState(int i) {
        return getNetworkState(i).getMobileDataRegState();
    }

    public boolean isPsOnlyReg(int i) {
        return getNetworkState(i).isPsOnlyReg();
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public EmcBsIndication getEmcBsIndication(int i) {
        return getNetworkState(i).getEmcBsIndication();
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public List<CellInfo> getAllCellInfo(int i, boolean z) {
        List<CellInfo> allCellInfo = getNetworkState(i).getAllCellInfo();
        String str = LOG_TAG;
        IMSLog.i(str, i, "getAllCellInfo mNeedCellLocationUpdate : " + this.mNeedCellLocationUpdate);
        int subId = SimUtil.getSubId(i);
        if (allCellInfo != null && !allCellInfo.isEmpty() && !z && !this.mNeedCellLocationUpdate && subId != -1) {
            return allCellInfo;
        }
        List<CellInfo> allCellInfoBySubId = this.mTelephonyManager.getAllCellInfoBySubId(subId);
        IMSLog.i(str, i, "get latest cellInfo and store, subId = " + subId);
        getNetworkState(i).setAllCellInfo(allCellInfoBySubId);
        List<CellInfo> allCellInfo2 = getNetworkState(i).getAllCellInfo();
        this.mNeedCellLocationUpdate = false;
        return allCellInfo2;
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public CellIdentity getCellIdentity(int i, boolean z) {
        CellIdentity cellIdentity;
        if (z) {
            cellIdentity = SemTelephonyAdapter.getCellIdentityFromSemTelephony(i, this.mContext.getOpPackageName(), this.mContext.getAttributionTag());
        } else {
            cellIdentity = getNetworkState(i).getCellIdentity();
            if (cellIdentity == null) {
                IMSLog.i(LOG_TAG, i, "reget cid from ril since null restored value");
                cellIdentity = SemTelephonyAdapter.getCellIdentityFromSemTelephony(i, this.mContext.getOpPackageName(), this.mContext.getAttributionTag());
            }
        }
        getNetworkState(i).setCellIdentity(cellIdentity);
        return cellIdentity;
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public CellIdentityWrapper getCurrentCellIdentity(int i, final int i2) {
        if (SimUtil.getMno(i).isChn()) {
            return CellIdentityWrapper.from(getCellIdentity(i, false));
        }
        List<CellInfo> allCellInfo = getAllCellInfo(i, false);
        if (allCellInfo == null) {
            IMSLog.e(LOG_TAG, i, "getCurrentCellIdentity: getAllCellInfo null");
            return CellIdentityWrapper.DEFAULT;
        }
        return (CellIdentityWrapper) allCellInfo.stream().map(new PdnController$$ExternalSyntheticLambda0()).map(new PdnController$$ExternalSyntheticLambda1()).filter(new Predicate() { // from class: com.sec.internal.ims.core.PdnController$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getCurrentCellIdentity$0;
                lambda$getCurrentCellIdentity$0 = PdnController.lambda$getCurrentCellIdentity$0(i2, (CellIdentityWrapper) obj);
                return lambda$getCurrentCellIdentity$0;
            }
        }).findFirst().orElse(CellIdentityWrapper.DEFAULT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getCurrentCellIdentity$0(int i, CellIdentityWrapper cellIdentityWrapper) {
        return cellIdentityWrapper.isMatched(i);
    }

    public boolean isInternationalRoaming(int i) {
        return getNetworkState(i).isInternationalRoaming();
    }

    public boolean isNeedCellLocationUpdate() {
        return this.mNeedCellLocationUpdate;
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public NetworkState getNetworkState(int i) {
        for (NetworkState networkState : this.mNetworkStates) {
            if (networkState.getSimSlot() == i) {
                return networkState;
            }
        }
        IMSLog.e(LOG_TAG, i, "NetworkState is not exist. Return default NetworkState.");
        return NetworkState.create(i);
    }

    public void resetNetworkState(int i) {
        NetworkState networkState = getNetworkState(i);
        if (networkState != null) {
            networkState.setDataNetworkType(0);
            networkState.setMobileDataNetworkType(0);
            networkState.setDataRegState(1);
            networkState.setVoiceRegState(1);
            networkState.setMobileDataRegState(1);
            networkState.setSnapshotState(ServiceStateExt.SNAPSHOT_STATUS_DEACTIVATED);
            networkState.setAllCellInfo(null);
            networkState.setCellIdentity(null);
        }
    }

    protected List<String> readPcscfFromLinkProperties(LinkPropertiesWrapper linkPropertiesWrapper) {
        String str = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("readPcscfFromLinkProperties: lp=");
        sb.append(linkPropertiesWrapper == null ? "null" : "not null");
        Log.i(str, sb.toString());
        ArrayList arrayList = new ArrayList();
        if (linkPropertiesWrapper == null) {
            return arrayList;
        }
        List<InetAddress> pcscfServers = linkPropertiesWrapper.getPcscfServers();
        if (!CollectionUtils.isNullOrEmpty(pcscfServers)) {
            Iterator<InetAddress> it = pcscfServers.iterator();
            while (it.hasNext()) {
                String hostAddress = it.next().getHostAddress();
                if (!TextUtils.isEmpty(hostAddress) && !"0.0.0.0".equals(hostAddress) && !"0:0:0:0:0:0:0:0".equals(hostAddress) && !"::".equals(hostAddress)) {
                    Log.i(LOG_TAG, "readPcscfFromLinkProperties: Valid pcscf: " + hostAddress);
                    arrayList.add(hostAddress);
                }
            }
        }
        return arrayList;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Log.i(LOG_TAG, "handleMessage: what " + message.what);
        switch (message.what) {
            case 101:
                requestNetwork(message.arg1, message.arg2, (PdnEventListener) message.obj);
                break;
            case 102:
                onStopPdnCompleted();
                break;
            case 103:
                onPdnDisconnected(message.arg1, message.arg2, (PdnEventListener) message.obj);
                break;
            case 104:
                onEpdgConnected(message.arg1, (String) message.obj, message.arg2 == 1);
                break;
            case 105:
                onWifiConnected();
                break;
            case 106:
                onWifiDisconnected();
                break;
            case 107:
                requestStopNetwork(message.arg1, message.arg2, (PdnEventListener) message.obj);
                break;
            case 108:
                PdnConnectedEvent pdnConnectedEvent = (PdnConnectedEvent) message.obj;
                onPdnConnected(message.arg1, message.arg2, pdnConnectedEvent.mListener, pdnConnectedEvent.mNetwork);
                break;
            case 109:
                onEpdgIkeError(message.arg1);
                break;
            case 110:
                onDefaultNetworkChanged();
                break;
            case 111:
                LinkPropertiesChangedEvent linkPropertiesChangedEvent = (LinkPropertiesChangedEvent) message.obj;
                onLinkPropertiesChanged(message.arg1, linkPropertiesChangedEvent.getNetwork(), linkPropertiesChangedEvent.getListener(), linkPropertiesChangedEvent.getLinkProperties());
                break;
            case 112:
                applyEmergencyQualifiedNetowrk(message.arg1);
                break;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public void registerForNetworkState(NetworkStateListener networkStateListener) {
        this.mNetworkStateListeners.add(networkStateListener);
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public void unregisterForNetworkState(NetworkStateListener networkStateListener) {
        this.mNetworkStateListeners.remove(networkStateListener);
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public int startPdnConnectivity(int i, PdnEventListener pdnEventListener, int i2) {
        IMSLog.i(LOG_TAG, i2, "startPdnConnectivity: networkType " + i);
        sendMessage(obtainMessage(101, i, i2, pdnEventListener));
        return 1;
    }

    void requestNetwork(final int i, int i2, final PdnEventListener pdnEventListener) {
        int subId;
        final NetworkCallback networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
        SimpleEventLog simpleEventLog = this.mEventLog;
        StringBuilder sb = new StringBuilder();
        sb.append("requestNetwork: networkType ");
        sb.append(i);
        sb.append(", callback=");
        sb.append(networkCallback == null ? "null" : Integer.valueOf(networkCallback.mNetworkType));
        simpleEventLog.logAndAdd(i2, sb.toString());
        if (networkCallback != null) {
            if (networkCallback.mNetworkType != i) {
                try {
                    this.mConnectivityManager.unregisterNetworkCallback(networkCallback);
                } catch (IllegalArgumentException e) {
                    Log.e(LOG_TAG, e.getMessage());
                }
            } else {
                if (isConnected(i, pdnEventListener)) {
                    post(new Runnable() { // from class: com.sec.internal.ims.core.PdnController$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            PdnController.lambda$requestNetwork$1(PdnEventListener.this, i, networkCallback);
                        }
                    });
                    return;
                }
                return;
            }
        }
        synchronized (this.mPendingRequests) {
            if (this.mIsDisconnecting) {
                String str = LOG_TAG;
                Log.i(str, "Wait until ongoing stop request done.");
                this.mPendingRequests.add(Pair.create(Pair.create(Integer.valueOf(i2), Integer.valueOf(i)), pdnEventListener));
                if (!hasMessages(102)) {
                    Log.i(str, "requestNetwork: Unexpected event missing case. Send EVENT_STOP_PDN_COMPLETED again");
                    sendEmptyMessage(102);
                }
                return;
            }
            boolean z = false;
            int i3 = i == 1 ? 1 : 0;
            int networkCapability = getNetworkCapability(i);
            if (SimUtil.getSimMno(i2).isKor() && needRequestMobileNetwork(i, i2)) {
                z = true;
            }
            if (z) {
                networkCapability = 12;
            }
            IMSLog.i(LOG_TAG, i2, "startPdnConnectivity: transport " + i3 + " capability " + networkCapability + " needRequestMobileNetwork " + z);
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addTransportType(i3).addCapability(networkCapability);
            if (i3 == 0 && (subId = SimUtil.getSubId(i2)) > 0 && SimUtil.isDualIMS()) {
                builder.setNetworkSpecifier(new TelephonyNetworkSpecifier.Builder().setSubscriptionId(subId).build());
            }
            NetworkRequest build = builder.build();
            NetworkCallback networkCallback2 = new NetworkCallback(this, i, pdnEventListener, i2);
            this.mNetworkCallbacks.put(pdnEventListener, networkCallback2);
            if (i == 15) {
                try {
                    applyEmergencyQualifiedNetowrk(i2);
                } catch (IllegalArgumentException e2) {
                    Log.e(LOG_TAG, e2.toString());
                    pdnEventListener.onNetworkRequestFail();
                    this.mNetworkCallbacks.remove(pdnEventListener);
                    return;
                }
            }
            if ((i != 1 && i != 0) || z) {
                if (SipTestManagerFactory.isSipTest()) {
                    if (isWifiConnected()) {
                        SipTestManagerFactory.getSipTestManager().requestNetwork(this.mConnectivityManager, this.mNetworkStateListeners, networkCallback2, i, i2);
                        return;
                    } else {
                        SipTestManagerFactory.getSipTestManager().clearNetwork(this.mNetworkCallbacks, pdnEventListener);
                        return;
                    }
                }
                this.mConnectivityManager.requestNetwork(build, networkCallback2);
                return;
            }
            this.mConnectivityManager.registerNetworkCallback(build, networkCallback2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestNetwork$1(PdnEventListener pdnEventListener, int i, NetworkCallback networkCallback) {
        pdnEventListener.onConnected(i, networkCallback.mNetwork);
    }

    private void requestStopNetwork(int i, int i2, PdnEventListener pdnEventListener) {
        if (i == 15) {
            this.mEPDNintfName[i2] = null;
        }
        synchronized (this.mPendingRequests) {
            this.mPendingRequests.remove(Pair.create(Pair.create(Integer.valueOf(i2), Integer.valueOf(i)), pdnEventListener));
        }
        synchronized (this.mNetworkCallbacks) {
            NetworkCallback networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
            SimpleEventLog simpleEventLog = this.mEventLog;
            StringBuilder sb = new StringBuilder();
            sb.append("requestStopNetwork: network ");
            sb.append(i);
            sb.append(", callback is ");
            sb.append(networkCallback != null ? "exist" : "null");
            simpleEventLog.logAndAdd(i2, sb.toString());
            if (networkCallback != null) {
                pdnEventListener.onResumed(i);
                pdnEventListener.onResumedBySnapshot(i);
                try {
                    this.mConnectivityManager.unregisterNetworkCallback(networkCallback);
                } catch (IllegalArgumentException e) {
                    Log.e(LOG_TAG, e.toString());
                }
                this.mNetworkCallbacks.remove(pdnEventListener);
                this.mIsDisconnecting = true;
                removeMessages(102);
                sendMessageDelayed(obtainMessage(102), SimUtil.getSimMno(i2).isKor() && needRequestMobileNetwork(i, i2) ? UtStateMachine.HTTP_READ_TIMEOUT_GCF : 1000L);
            }
        }
        NetworkState networkState = getNetworkState(i2);
        if (i == 11 && networkState.isEpdgConnected()) {
            networkState.setEpdgConnected(false);
            if (networkState.getDataNetworkType() != 18) {
                notifyDataConnectionState(networkState.getDataNetworkType(), networkState.getDataRegState(), true, i2);
                return;
            }
            return;
        }
        if (i == 15) {
            if (networkState.isEmergencyEpdgConnected()) {
                networkState.setEmergencyEpdgConnected(false);
            }
            this.mEPDNQN[i2] = 0;
            applyEmergencyQualifiedNetowrk(i2);
        }
    }

    private void onStopPdnCompleted() {
        synchronized (this.mPendingRequests) {
            this.mIsDisconnecting = false;
            for (Pair<Pair<Integer, Integer>, PdnEventListener> pair : this.mPendingRequests) {
                requestNetwork(((Integer) ((Pair) pair.first).second).intValue(), ((Integer) ((Pair) pair.first).first).intValue(), (PdnEventListener) pair.second);
            }
            this.mPendingRequests.clear();
        }
    }

    private boolean needRequestMobileNetwork(int i, int i2) {
        return !isDataRoaming(i2) && NetworkUtil.isMobileDataOn(this.mContext) && NetworkUtil.isMobileDataPressed(this.mContext) && getNetworkState(i2).getDataRegState() != 1 && ImsConstants.SystemSettings.AIRPLANE_MODE.get(this.mContext, 0) != ImsConstants.SystemSettings.AIRPLANE_MODE_ON && i == 0 && translateNetworkBearer(getDefaultNetworkBearer()) == 1;
    }

    void onPdnConnected(int i, int i2, PdnEventListener pdnEventListener, Network network) {
        NetworkCallback networkCallback;
        if (i == 11) {
            IMSLogTimer.setPdnEndTime(i2);
            IMSLog.lazer((RegisterTask) pdnEventListener, "PDN SETUP TIME : " + ((IMSLogTimer.getPdnEndTime(i2) - IMSLogTimer.getPdnStartTime(i2)) / 1000.0d) + "s");
        }
        synchronized (this.mNetworkCallbacks) {
            networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
        }
        if (networkCallback == null) {
            this.mEventLog.logAndAdd("ignore onPdnConnected: network " + network + " as requestStopNetwork preceded this");
            return;
        }
        LinkProperties linkProperties = this.mConnectivityManager.getLinkProperties(network);
        if (linkProperties == null || linkProperties.getInterfaceName() == null) {
            IMSLog.i(LOG_TAG, i2, "onPdnConnected: linkProperties or interface name is null, wait for next onPdnConnected()");
            return;
        }
        this.mEventLog.logAndAdd("onPdnConnected: network=" + network + ", " + linkProperties.getInterfaceName() + ", " + toString());
        networkCallback.mNetwork = network;
        networkCallback.mPdnConnected = true;
        LinkPropertiesWrapper linkPropertiesWrapper = new LinkPropertiesWrapper(linkProperties);
        IMSLog.i(LOG_TAG, i2, "onPdnConnected: link properties " + linkPropertiesWrapper);
        handleConnectedPdnType(i, i2, networkCallback, linkPropertiesWrapper.getInterfaceName());
        if (networkCallback.mLinkProperties.getInterfaceName() != null) {
            int isLocalIpChanged = networkCallback.isLocalIpChanged(linkPropertiesWrapper);
            if (isLocalIpChanged >= 1) {
                pdnEventListener.onLocalIpChanged(i, network, isLocalIpChanged == 2);
            }
            if (networkCallback.isPcscfAddressChanged(linkPropertiesWrapper)) {
                pdnEventListener.onPcscfAddressChanged(i, network, readPcscfFromLinkProperties(linkPropertiesWrapper));
            }
            networkCallback.mLinkProperties = linkPropertiesWrapper;
            return;
        }
        networkCallback.mLinkProperties = linkPropertiesWrapper;
        networkCallback.mListener.onConnected(i, network);
    }

    private void handleConnectedPdnType(int i, int i2, NetworkCallback networkCallback, String str) {
        NetworkState networkState = getNetworkState(i2);
        if (i == 11 && networkCallback.mLinkProperties.getInterfaceName() == null) {
            if (networkState.isEpdgConnected()) {
                this.mEventLog.logAndAdd(i2, "onPdnConnected: epdg network for ims pdn");
                synchronized (this.mNetworkStateListeners) {
                    for (NetworkStateListener networkStateListener : this.mNetworkStateListeners) {
                        networkStateListener.onDataConnectionStateChanged(networkState.getDataNetworkType(), true, i2);
                        networkStateListener.onEpdgConnected(i2);
                    }
                }
                return;
            }
            return;
        }
        if (i == 15) {
            String str2 = SemSystemProperties.get(PROPERTY_ECC_PATH, "");
            this.mEventLog.logAndAdd("eccPath : " + str2);
            if (str2.equalsIgnoreCase(ECC_IWLAN)) {
                networkState.setEmergencyEpdgConnected(true);
            }
            this.mEPDNintfName[i2] = str;
            IMSLog.i(LOG_TAG, i2, "handleConnectedPdnType: eccPath=" + str2 + "mEPDNintfName : " + this.mEPDNintfName[i2]);
        }
    }

    private void onPdnDisconnected(int i, int i2, PdnEventListener pdnEventListener) {
        this.mEventLog.logAndAdd("onPdnDisconnected: networkType " + i);
        NetworkState networkState = getNetworkState(i2);
        pdnEventListener.onResumed(i);
        if (i == 11 && networkState.isEpdgConnected()) {
            networkState.setEpdgConnected(false);
            notifyDataConnectionState(networkState.getDataNetworkType(), networkState.getDataRegState(), true, i2);
        } else if (i == 15 && networkState.isEmergencyEpdgConnected()) {
            networkState.setEmergencyEpdgConnected(false);
        }
        if (i == 15) {
            this.mEPDNintfName[i2] = null;
        }
        synchronized (this.mNetworkCallbacks) {
            if (this.mNetworkCallbacks.containsKey(pdnEventListener)) {
                pdnEventListener.onDisconnected(i);
                NetworkCallback networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
                networkCallback.mLinkProperties = new LinkPropertiesWrapper();
                networkCallback.mNetwork = null;
                networkCallback.mPdnConnected = false;
            }
        }
    }

    private void onLinkPropertiesChanged(int i, Network network, PdnEventListener pdnEventListener, LinkProperties linkProperties) {
        NetworkCallback networkCallback;
        synchronized (this.mNetworkCallbacks) {
            networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
        }
        if (networkCallback == null) {
            this.mEventLog.logAndAdd("ignore onLinkPropertiesChanged as requestStopNetwork preceded this");
            return;
        }
        this.mEventLog.logAndAdd("onLinkPropertiesChanged: networkType=" + i);
        IMSLog.s(LOG_TAG, "onLinkPropertiesChanged: linkProperties=" + linkProperties);
        LinkPropertiesWrapper linkPropertiesWrapper = new LinkPropertiesWrapper(linkProperties);
        int isLocalIpChanged = networkCallback.isLocalIpChanged(linkPropertiesWrapper);
        boolean isPcscfAddressChanged = networkCallback.isPcscfAddressChanged(linkPropertiesWrapper);
        if (isLocalIpChanged >= 1 || isPcscfAddressChanged) {
            networkCallback.mLinkProperties = linkPropertiesWrapper;
            if (isLocalIpChanged >= 1) {
                this.mEventLog.logAndAdd("onLinkPropertiesChanged: LinkProperties changed type=" + isLocalIpChanged + " call onLocalIpChanged");
                pdnEventListener.onLocalIpChanged(i, network, isLocalIpChanged == 2);
            }
            if (isPcscfAddressChanged) {
                this.mEventLog.logAndAdd("onLinkPropertiesChanged: LinkProperties changed call onPcscfAddressChanged");
                pdnEventListener.onPcscfAddressChanged(i, network, readPcscfFromLinkProperties(linkPropertiesWrapper));
            }
        }
    }

    private void onEpdgIkeError(int i) {
        synchronized (this.mNetworkStateListeners) {
            Iterator<NetworkStateListener> it = this.mNetworkStateListeners.iterator();
            while (it.hasNext()) {
                it.next().onIKEAuthFAilure(i);
            }
        }
    }

    private void onEpdgConnected(int i, String str, boolean z) {
        boolean z2;
        NetworkState networkState = getNetworkState(i);
        if (TextUtils.equals(str, "emergency") && networkState != null) {
            IMSLog.i(LOG_TAG, i, "EpdgEvent onEpdgConnected: emergency  connected=" + z + " mIsEmergencyEpdgConnected=" + networkState.isEmergencyEpdgConnected());
            networkState.setEmergencyEpdgConnected(z);
            return;
        }
        if (!TextUtils.equals(str, DeviceConfigManager.IMS) || networkState == null) {
            return;
        }
        IMSLog.i(LOG_TAG, i, "EpdgEvent onEpdgConnected: apnType=" + str + " connected=" + z + " mIsEpdgConnected=" + networkState.isEpdgConnected());
        Iterator<NetworkCallback> it = this.mNetworkCallbacks.values().iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().mNetworkType == 11) {
                    z2 = true;
                    break;
                }
            } else {
                z2 = false;
                break;
            }
        }
        IMSLog.i(LOG_TAG, i, "onEpdgConnected: existCallBack=" + z2 + " connected=" + z + " dataRat=" + networkState.getDataNetworkType() + " mobileDataRat=" + networkState.getMobileDataNetworkType() + " voiceRat =" + networkState.getVoiceNetworkType());
        if (!z2) {
            networkState.setEpdgConnected(false);
            return;
        }
        if (z) {
            if (networkState.isEpdgConnected()) {
                return;
            }
            networkState.setEpdgConnected(true);
            synchronized (this.mNetworkStateListeners) {
                for (NetworkStateListener networkStateListener : this.mNetworkStateListeners) {
                    networkStateListener.onDataConnectionStateChanged(18, true, i);
                    networkStateListener.onEpdgConnected(i);
                }
            }
            return;
        }
        if (networkState.isEpdgConnected()) {
            networkState.setEpdgConnected(false);
            int dataNetworkType = networkState.getDataNetworkType();
            if (dataNetworkType == 18) {
                dataNetworkType = networkState.getMobileDataNetworkType();
            }
            synchronized (this.mNetworkStateListeners) {
                for (NetworkStateListener networkStateListener2 : this.mNetworkStateListeners) {
                    networkStateListener2.onDataConnectionStateChanged(dataNetworkType, isWifiConnected(), i);
                    networkStateListener2.onEpdgDisconnected(i);
                }
            }
        }
    }

    private void onWifiConnected() {
        Log.i(LOG_TAG, "onWifiConnected:");
        synchronized (this.mNetworkStateListeners) {
            if (SimUtil.isDualIMS()) {
                for (NetworkStateListener networkStateListener : this.mNetworkStateListeners) {
                    for (ISimManager iSimManager : this.mSimManagers) {
                        NetworkState networkState = getNetworkState(iSimManager.getSimSlotIndex());
                        if (networkState != null) {
                            networkStateListener.onDataConnectionStateChanged(networkState.getDataNetworkType(), true, iSimManager.getSimSlotIndex());
                        }
                    }
                }
            } else {
                for (NetworkStateListener networkStateListener2 : this.mNetworkStateListeners) {
                    int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
                    NetworkState networkState2 = getNetworkState(activeDataPhoneId);
                    if (networkState2 != null) {
                        networkStateListener2.onDataConnectionStateChanged(networkState2.getDataNetworkType(), true, activeDataPhoneId);
                    }
                }
            }
        }
        for (ISimManager iSimManager2 : this.mSimManagers) {
            try {
                if (iSimManager2.isSimAvailable() && iSimManager2.getSimMno() == Mno.ZAIN_KUWAIT && this.mImsFramework.isServiceAvailable("mmtel", 20, iSimManager2.getSimSlotIndex()) && this.mTelephonyManager.getCallState(iSimManager2.getSimSlotIndex()) == 0) {
                    this.mTelephonyManager.semSetNrMode(iSimManager2.getSimSlotIndex(), 4);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void onWifiDisconnected() {
        Log.i(LOG_TAG, "onWifiDisConnected:");
        synchronized (this.mNetworkStateListeners) {
            if (SimUtil.isDualIMS()) {
                for (NetworkStateListener networkStateListener : this.mNetworkStateListeners) {
                    for (ISimManager iSimManager : this.mSimManagers) {
                        NetworkState networkState = getNetworkState(iSimManager.getSimSlotIndex());
                        if (networkState != null) {
                            networkStateListener.onDataConnectionStateChanged(networkState.getDataNetworkType(), false, iSimManager.getSimSlotIndex());
                        }
                    }
                }
            } else {
                for (NetworkStateListener networkStateListener2 : this.mNetworkStateListeners) {
                    int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
                    NetworkState networkState2 = getNetworkState(activeDataPhoneId);
                    if (networkState2 != null) {
                        networkStateListener2.onDataConnectionStateChanged(networkState2.getDataNetworkType(), false, activeDataPhoneId);
                    }
                }
            }
        }
        for (ISimManager iSimManager2 : this.mSimManagers) {
            try {
                if (iSimManager2.isSimAvailable() && iSimManager2.getSimMno() == Mno.ZAIN_KUWAIT && this.mImsFramework.isServiceAvailable("mmtel", 20, iSimManager2.getSimSlotIndex()) && this.mTelephonyManager.getCallState(iSimManager2.getSimSlotIndex()) == 0) {
                    this.mTelephonyManager.semSetNrMode(iSimManager2.getSimSlotIndex(), 3);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void onDefaultNetworkChanged() {
        Log.i(LOG_TAG, "onDefaultNetworkChanged:");
        synchronized (this.mNetworkStateListeners) {
            if (SimUtil.isDualIMS()) {
                for (NetworkStateListener networkStateListener : this.mNetworkStateListeners) {
                    Iterator<? extends ISimManager> it = this.mSimManagers.iterator();
                    while (it.hasNext()) {
                        networkStateListener.onDefaultNetworkStateChanged(it.next().getSimSlotIndex());
                    }
                }
            } else {
                Iterator<NetworkStateListener> it2 = this.mNetworkStateListeners.iterator();
                while (it2.hasNext()) {
                    it2.next().onDefaultNetworkStateChanged(SimUtil.getActiveDataPhoneId());
                }
            }
        }
    }

    public int stopPdnConnectivity(int i, PdnEventListener pdnEventListener) {
        return stopPdnConnectivity(i, this.mActiveDataPhoneId, pdnEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public int stopPdnConnectivity(int i, int i2, PdnEventListener pdnEventListener) {
        synchronized (this.mNetworkCallbacks) {
            NetworkCallback networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
            SimpleEventLog simpleEventLog = this.mEventLog;
            StringBuilder sb = new StringBuilder();
            sb.append("stopPdnConnectivity: network ");
            sb.append(i);
            sb.append(", callback is ");
            sb.append(networkCallback != null ? "exist" : "null");
            simpleEventLog.logAndAdd(i2, sb.toString());
            if (networkCallback != null) {
                networkCallback.setDisconnectRequested();
            } else {
                IMSLog.e(LOG_TAG, i2, "requestStopNetwork: callback not found");
                if (SimUtil.getSimMno(i2).isKor()) {
                    return 2;
                }
            }
            sendMessage(obtainMessage(107, i, i2, pdnEventListener));
            return 1;
        }
    }

    public List<InetAddress> filterAddresses(Iterable<InetAddress> iterable) {
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (InetAddress inetAddress : iterable) {
                boolean z = DBG;
                if (z) {
                    Log.i(LOG_TAG, "getIpAddressList: inetAddress: " + inetAddress);
                }
                if (inetAddress != null && !inetAddress.isAnyLocalAddress() && !inetAddress.isLinkLocalAddress() && !inetAddress.isLoopbackAddress() && !inetAddress.isMulticastAddress()) {
                    if (z) {
                        Log.i(LOG_TAG, "getIpAddressList: inetAddress IP: " + inetAddress.getHostAddress());
                    }
                    if (NetworkUtil.isIPv4Address(inetAddress.getHostAddress()) || NetworkUtil.isIPv6Address(inetAddress.getHostAddress())) {
                        arrayList.add(inetAddress);
                    }
                }
            }
        }
        return arrayList;
    }

    private InetAddress determineIpAddress(String str) {
        if (str == null || str.length() == 0) {
            Log.e(LOG_TAG, "determineIpAddress: empty address.");
            return null;
        }
        try {
            return InetAddress.getByName(str);
        } catch (UnknownHostException unused) {
            Log.e(LOG_TAG, "determineIpAddress: invalid address -  " + str);
            return null;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean requestRouteToHostAddress(int i, String str) {
        InetAddress determineIpAddress = determineIpAddress(str);
        boolean requestRouteToHostAddress = determineIpAddress != null ? ConnectivityManagerExt.requestRouteToHostAddress(this.mConnectivityManager, i, determineIpAddress) : false;
        Log.i(LOG_TAG, "requestRouteToHostAddress: hostAddress=" + str + " networkType=" + i + " address=" + IMSLog.checker(determineIpAddress) + " result : " + requestRouteToHostAddress);
        return requestRouteToHostAddress;
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean removeRouteToHostAddress(int i, String str) {
        Log.i(LOG_TAG, "removeRouteToHostAddress: hostAddress " + str + " networkType " + i);
        InetAddress determineIpAddress = determineIpAddress(str);
        if (determineIpAddress != null) {
            return ConnectivityManagerExt.removeRouteToHostAddress(this.mConnectivityManager, i, determineIpAddress);
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean isConnected(int i, PdnEventListener pdnEventListener) {
        boolean z;
        if (i == 15) {
            return this.mEPDNintfName[((RegisterTask) pdnEventListener).getPhoneId()] != null;
        }
        synchronized (this.mNetworkCallbacks) {
            if (this.mNetworkCallbacks.isEmpty()) {
                Log.i(LOG_TAG, "isConnected: No callback exists");
                return false;
            }
            NetworkCallback networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
            if (networkCallback == null || networkCallback.mNetwork == null || networkCallback.mNetworkType != i) {
                return false;
            }
            if (networkCallback.isDisconnectRequested()) {
                this.mEventLog.logAndAdd("isConnected: Disconnect msg is in queue for networkType [" + i + "]");
                return false;
            }
            if (i == 0 || i == 1) {
                z = !TextUtils.isEmpty(networkCallback.mLinkProperties.getInterfaceName());
            } else {
                z = networkCallback.mPdnConnected;
            }
            Log.i(LOG_TAG, "isConnected:  [" + z + "] networktype [" + i + "]");
            return z;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public LinkPropertiesWrapper getLinkProperties(PdnEventListener pdnEventListener) {
        NetworkCallback networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
        if (networkCallback != null) {
            return networkCallback.mLinkProperties;
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean isEpdgConnected(int i) {
        return ((Boolean) Optional.ofNullable(getNetworkState(i)).map(new Function() { // from class: com.sec.internal.ims.core.PdnController$$ExternalSyntheticLambda8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((NetworkState) obj).isEpdgConnected());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public boolean isEpdgAvailable(int i) {
        return ((Boolean) Optional.ofNullable(getNetworkState(i)).map(new Function() { // from class: com.sec.internal.ims.core.PdnController$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((NetworkState) obj).isEpdgAVailable());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean isEmergencyEpdgConnected(int i) {
        return ((Boolean) Optional.ofNullable(getNetworkState(i)).map(new Function() { // from class: com.sec.internal.ims.core.PdnController$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((NetworkState) obj).isEmergencyEpdgConnected());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
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

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public String getInterfaceName(PdnEventListener pdnEventListener) {
        LinkPropertiesWrapper linkPropertiesWrapper;
        String interfaceName;
        synchronized (this.mNetworkCallbacks) {
            NetworkCallback networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
            if (networkCallback == null || (linkPropertiesWrapper = networkCallback.mLinkProperties) == null || (interfaceName = linkPropertiesWrapper.getInterfaceName()) == null) {
                return null;
            }
            return interfaceName;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public List<String> getDnsServers(PdnEventListener pdnEventListener) {
        LinkPropertiesWrapper linkPropertiesWrapper;
        synchronized (this.mNetworkCallbacks) {
            NetworkCallback networkCallback = this.mNetworkCallbacks.get(pdnEventListener);
            if (networkCallback == null || (linkPropertiesWrapper = networkCallback.mLinkProperties) == null) {
                return null;
            }
            return getDnsServers(linkPropertiesWrapper.getLinkProperties());
        }
    }

    public List<String> getDnsServersByNetType() {
        ConnectivityManager connectivityManager = this.mConnectivityManager;
        return getDnsServers(connectivityManager.getLinkProperties(connectivityManager.getActiveNetwork()));
    }

    private List<String> getDnsServers(LinkProperties linkProperties) {
        if (linkProperties == null) {
            return null;
        }
        List<InetAddress> dnsServers = linkProperties.getDnsServers();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (InetAddress inetAddress : dnsServers) {
            if (NetworkUtil.isIPv4Address(inetAddress.getHostAddress())) {
                arrayList2.add(inetAddress.getHostAddress());
            } else if (NetworkUtil.isIPv6Address(inetAddress.getHostAddress())) {
                arrayList3.add(inetAddress.getHostAddress());
            }
        }
        arrayList.addAll(arrayList3);
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    public String getIntfNameByNetType() {
        return getIntfNameByNetType(this.mConnectivityManager.getActiveNetwork());
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public String getIntfNameByNetType(Network network) {
        LinkProperties linkProperties = this.mConnectivityManager.getLinkProperties(network);
        if (linkProperties != null) {
            return linkProperties.getInterfaceName();
        }
        return null;
    }

    public boolean isNetworkAvailable(int i, int i2, int i3) {
        if (i2 == 15 || i2 == -1) {
            return true;
        }
        NetworkState networkState = getNetworkState(i3);
        IMSLog.i(LOG_TAG, i3, "isNetworkAvailable: isEpdgConnected=" + networkState.isEpdgConnected() + " getDataNetworkType()=" + networkState.getDataNetworkType());
        return (i != 18 || i2 == 1) ? ImsConstants.SystemSettings.AIRPLANE_MODE.get(this.mContext, 0) != ImsConstants.SystemSettings.AIRPLANE_MODE_ON : networkState.isEpdgConnected() || networkState.getDataNetworkType() == 18;
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean isNetworkRequested(PdnEventListener pdnEventListener) {
        return this.mNetworkCallbacks.containsKey(pdnEventListener);
    }

    void notifyDataConnectionState(int i, int i2, boolean z, int i3) {
        String str = LOG_TAG;
        IMSLog.i(str, i3, "notifyDataConnectionState");
        NetworkState networkState = getNetworkState(i3);
        if (NetworkUtil.is3gppPsVoiceNetwork(i)) {
            IMSLog.i(str, i3, "initialize PendedEPDGWeakSignal flag");
            setPendedEPDGWeakSignal(i3, false);
        }
        IMSLog.i(str, i3, "notifyDataConnectionState: needNotify=" + z + " networkType=" + i + " isEpdgConnected=" + networkState.isEpdgConnected() + " dataNetType=" + networkState.getDataNetworkType() + "=>" + i + " dataRegState=" + networkState.getDataRegState() + "=>" + i2);
        if (networkState.isEpdgConnected() && i != 18 && !SimUtil.getSimMno(i3).isOneOf(Mno.TMOUS, Mno.DISH)) {
            networkState.setDataNetworkType(i);
            networkState.setDataRegState(i2);
        }
        if (!z && i == networkState.getDataNetworkType() && i2 == networkState.getDataRegState()) {
            return;
        }
        networkState.setDataNetworkType(i);
        networkState.setDataRegState(i2);
        synchronized (this.mNetworkStateListeners) {
            Iterator<NetworkStateListener> it = this.mNetworkStateListeners.iterator();
            while (it.hasNext()) {
                it.next().onDataConnectionStateChanged(networkState.getDataNetworkType(), isWifiConnected(), i3);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IPdnController
    public boolean isDisconnecting() {
        return this.mIsDisconnecting;
    }

    @Override // android.os.Handler
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (NetworkState networkState : this.mNetworkStates) {
            sb.append(" phoneId: " + networkState.getSimSlot());
            sb.append(" mIsEpdgConnected: " + networkState.isEpdgConnected());
            sb.append(" isWifiConnected: " + isWifiConnected());
            sb.append(" mVopsIndication: " + networkState.getVopsIndication());
            sb.append(" mDataRoaming:  " + networkState.isDataRoaming());
            sb.append(" mDataConnectionState: " + networkState.isDataConnectedState());
            sb.append(" mVoiceRoaming: " + networkState.isVoiceRoaming());
            sb.append(" mEmergencyOnly: " + networkState.isEmergencyOnly());
            sb.append(" mIsDisconnecting: " + this.mIsDisconnecting);
            sb.append(" mPendedEPDGWeakSignal: " + networkState.isPendedEPDGWeakSignal());
            sb.append(" mEmcbsIndication: " + networkState.getEmcBsIndication());
        }
        return sb.toString();
    }

    public void dump() {
        String str = LOG_TAG;
        IMSLog.dump(str, "Dump of " + getClass().getSimpleName());
        IMSLog.increaseIndent(str);
        IMSLog.dump(str, "State: " + toString());
        IMSLog.dump(str, "History of PdnController:");
        IMSLog.increaseIndent(str);
        this.mEventLog.dump();
        IMSLog.decreaseIndent(str);
        IMSLog.decreaseIndent(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (r3.hasCapability(12) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getDefaultNetworkBearer() {
        /*
            r3 = this;
            android.net.ConnectivityManager r0 = r3.mConnectivityManager
            android.net.Network r0 = r0.getActiveNetwork()
            android.net.ConnectivityManager r3 = r3.mConnectivityManager
            android.net.NetworkCapabilities r3 = r3.getNetworkCapabilities(r0)
            if (r3 == 0) goto L1e
            r0 = 1
            boolean r1 = r3.hasTransport(r0)
            if (r1 == 0) goto L1e
            r1 = 12
            boolean r3 = r3.hasCapability(r1)
            if (r3 == 0) goto L1e
            goto L1f
        L1e:
            r0 = 0
        L1f:
            java.lang.String r3 = com.sec.internal.ims.core.PdnController.LOG_TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "getDefaultNetworkBearer: "
            r1.append(r2)
            if (r0 != 0) goto L30
            java.lang.String r2 = "CELLULAR"
            goto L32
        L30:
            java.lang.String r2 = " WIFI"
        L32:
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.i(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.PdnController.getDefaultNetworkBearer():int");
    }

    public int translateNetworkBearer(int i) {
        if (i == 0) {
            return 0;
        }
        if (1 == i) {
            return 1;
        }
        Log.i(LOG_TAG, "Invalid bearer: " + i);
        return -1;
    }

    public int getDataState(int i) {
        if (mDataState.containsKey(Integer.valueOf(i))) {
            return mDataState.get(Integer.valueOf(i)).intValue();
        }
        return -1;
    }

    public void setDataState(int i, int i2) {
        mDataState.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public void setEmergencyQualifiedNetowrk(int i, int i2) {
        this.mEPDNQN[i] = i2;
    }

    protected void applyEmergencyQualifiedNetowrk(int i) {
        removeMessages(112);
        EpdgManager epdgMgr = this.mImsFramework.getWfcEpdgManager().getEpdgMgr();
        if (epdgMgr != null) {
            IMSLog.i(LOG_TAG, i, "setEmergencyRat: set ePDN QN to " + this.mEPDNQN[i]);
            epdgMgr.setEmergencyQualifiedNetwork(i, this.mEPDNQN[i]);
            try {
                Thread.sleep(200L);
                return;
            } catch (InterruptedException e) {
                Log.e(LOG_TAG, "Sleep exception : " + e);
                return;
            }
        }
        IMSLog.i(LOG_TAG, i, "setEmergencyRat: em is null");
    }

    protected static class PdnConnectedEvent {
        private PdnEventListener mListener;
        private Network mNetwork;

        public PdnConnectedEvent(PdnEventListener pdnEventListener, Network network) {
            this.mListener = pdnEventListener;
            this.mNetwork = network;
        }
    }

    /* renamed from: com.sec.internal.ims.core.PdnController$3, reason: invalid class name */
    class AnonymousClass3 extends BroadcastReceiver {
        private final ExecutorService mExecutor = Executors.newFixedThreadPool(1);

        AnonymousClass3() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            IMSLog.i(PdnController.LOG_TAG, "onReceive:" + intent.getAction());
            this.mExecutor.execute(new Runnable() { // from class: com.sec.internal.ims.core.PdnController$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PdnController.AnonymousClass3.this.lambda$onReceive$0(intent);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0(Intent intent) {
            PdnController.this.handlePcscfRestorationIntent(intent);
        }
    }

    protected void handlePcscfRestorationIntent(Intent intent) {
        String str = "";
        if (intent.hasExtra(ImsConstants.Intents.EXTRA_PCSCF_RESTORATION_V4)) {
            str = "" + intent.getStringExtra(ImsConstants.Intents.EXTRA_PCSCF_RESTORATION_V4);
        }
        if (intent.hasExtra(ImsConstants.Intents.EXTRA_PCSCF_RESTORATION_V6)) {
            if (!TextUtils.isEmpty(str)) {
                str = str + ",";
            }
            str = str + intent.getStringExtra(ImsConstants.Intents.EXTRA_PCSCF_RESTORATION_V6);
        }
        final int intExtra = intent.getIntExtra(ImsConstants.Intents.EXTRA_PCSCF_RESTORATION_PHONEID, 0);
        final List asList = Arrays.asList(str.split(","));
        String str2 = LOG_TAG;
        IMSLog.i(str2, "phoneId=" + intExtra + ", pcscfList for restoration=" + asList);
        if (asList.isEmpty()) {
            IMSLog.i(str2, "invalid pcscf restoration intent");
        } else {
            this.mNetworkCallbacks.entrySet().stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.PdnController$$ExternalSyntheticLambda3
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$handlePcscfRestorationIntent$2;
                    lambda$handlePcscfRestorationIntent$2 = PdnController.lambda$handlePcscfRestorationIntent$2(intExtra, (Map.Entry) obj);
                    return lambda$handlePcscfRestorationIntent$2;
                }
            }).map(new Function() { // from class: com.sec.internal.ims.core.PdnController$$ExternalSyntheticLambda4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return (PdnEventListener) ((Map.Entry) obj).getKey();
                }
            }).findFirst().ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.PdnController$$ExternalSyntheticLambda5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((PdnEventListener) obj).onPcscfRestorationNotified(11, asList);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$handlePcscfRestorationIntent$2(int i, Map.Entry entry) {
        return ((NetworkCallback) entry.getValue()).mNetworkType == 11 && ((NetworkCallback) entry.getValue()).mPhoneId == i;
    }
}
