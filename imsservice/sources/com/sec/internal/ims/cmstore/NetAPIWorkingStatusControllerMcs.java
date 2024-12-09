package com.sec.internal.ims.cmstore;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.sec.ims.ICentralMsgStoreServiceListener;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.receiver.McsFcmEventListenerReceiver;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.fcm.receiver.McsFcmIntentService;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener;
import com.sec.internal.log.IMSLog;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class NetAPIWorkingStatusControllerMcs extends NetAPIWorkingStatusController {
    protected static final int EVENT_CELLULAR_CONNECTION_CHANGED = 20;
    protected static final int EVENT_WIFI_CONNECTION_CHANGED = 19;
    private static final String FCM_REGISTRATION_TOKEN = "fcmRegistrationToken";
    private static final String FCM_REGISTRATION_TOKEN_REFRESHED = "fcmRegistrationTokenRefreshed";
    private static final String INTENT_RECEIVE_FCM_PUSH_NOTIFICATION = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION";
    private static final String INTENT_RECEIVE_FCM_REGISTRATION_TOKEN = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_REGISTRATION_TOKEN";
    private static final String INTENT_REFRESH_FCM_REGISTRATION_TOKEN = "com.sec.internal.ims.fcm.action.REFRESH_FCM_REGISTRATION_TOKEN";
    private static final String INTENT_RESET_BUFFERDB_MCS = "com.sec.internal.ims.cmstore.mcs.action.RESET_BUFFERDB_MCS";
    private static final String PHONE_ID = "phoneId";
    private static final String SENDER_ID = "senderId";
    private String TAG;
    final ConnectivityManager.NetworkCallback mCellularStateListener;
    private ICentralMsgStoreServiceListener mCentralMsgStoreServiceListener;
    final ConnectivityManager.NetworkCallback mDefaultNetworkListener;
    private boolean mIsMobileConnected;
    private McsFcmEventListenerReceiver mMcsFcmEventListenerReceiver;
    private BroadcastReceiver mMcsFcmInstanceIdServiceReceiver;
    private IntentFilter mMcsFcmIntentFilter;
    private BroadcastReceiver mMcsFcmIntentServiceReceiver;
    private IntentFilter mMcsRestartIntentFilter;
    private BroadcastReceiver mMcsRestartServiceReceiver;
    private IntentFilter mMcsTokenIntentFilter;
    private BroadcastReceiver mMcsTokenValidityTimeoutReceiver;
    private String mMobileIp;
    private String mOldFcmToken;
    private int mPhoneId;
    final ConnectivityManager.NetworkCallback mWifiStateListener;

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    public void resetDataReceiver() {
    }

    public NetAPIWorkingStatusControllerMcs(Looper looper, MessageStoreClient messageStoreClient, IUIEventCallback iUIEventCallback) {
        super(looper, messageStoreClient, iUIEventCallback);
        this.TAG = NetAPIWorkingStatusControllerMcs.class.getSimpleName();
        this.mIsMobileConnected = false;
        this.mOldFcmToken = "";
        ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.5
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                Log.i(NetAPIWorkingStatusControllerMcs.this.TAG, "mDefaultNetworkListener: onAvailable " + network);
                NetAPIWorkingStatusControllerMcs.this.setMobileIp(network);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Log.i(NetAPIWorkingStatusControllerMcs.this.TAG, "mDefaultNetworkListener: onLost " + network);
            }
        };
        this.mDefaultNetworkListener = networkCallback;
        this.mWifiStateListener = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.6
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "onAvailable wifi");
                NetAPIWorkingStatusControllerMcs.this.sendNetworkChangeMsg(true, 19);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "onLost wifi");
                NetAPIWorkingStatusControllerMcs.this.sendNetworkChangeMsg(false, 19);
            }
        };
        this.mCellularStateListener = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.7
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "onAvailable cellular");
                NetAPIWorkingStatusControllerMcs.this.sendNetworkChangeMsg(true, 20);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "onLost cellular");
                NetAPIWorkingStatusControllerMcs.this.sendNetworkChangeMsg(false, 20);
            }
        };
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mPhoneId = messageStoreClient.getClientID();
        this.mContext = messageStoreClient.getContext();
        IntentFilter intentFilter = new IntentFilter();
        this.mMcsFcmIntentFilter = intentFilter;
        intentFilter.addAction(INTENT_RECEIVE_FCM_REGISTRATION_TOKEN);
        this.mMcsFcmIntentFilter.addAction(INTENT_RECEIVE_FCM_PUSH_NOTIFICATION);
        this.mMcsFcmIntentFilter.addAction(INTENT_REFRESH_FCM_REGISTRATION_TOKEN);
        IntentFilter intentFilter2 = new IntentFilter();
        this.mMcsTokenIntentFilter = intentFilter2;
        intentFilter2.addAction(McsConstants.McsActions.INTENT_ACCESS_TOKEN_VALIDITY_TIMEOUT);
        this.mMcsTokenIntentFilter.addAction(McsConstants.McsActions.INTENT_REFRESH_TOKEN_VALIDITY_TIMEOUT);
        IntentFilter intentFilter3 = new IntentFilter();
        this.mMcsRestartIntentFilter = intentFilter3;
        intentFilter3.addAction(INTENT_RESET_BUFFERDB_MCS);
        registerMcsRestartServiceReceiver();
        registerDefaultSmsPackageChangeReceiver(this.mContext);
        ((ConnectivityManager) this.mContext.getSystemService("connectivity")).registerDefaultNetworkCallback(networkCallback);
        registerAirplaneMode(this.mContext);
    }

    private void registerMcsRestartServiceReceiver() {
        unregisterMcsRestartServiceReceiver();
        BroadcastReceiver mcsRestartServiceReceiver = getMcsRestartServiceReceiver();
        this.mMcsRestartServiceReceiver = mcsRestartServiceReceiver;
        this.mContext.registerReceiver(mcsRestartServiceReceiver, this.mMcsRestartIntentFilter);
    }

    public void unregisterMcsRestartServiceReceiver() {
        BroadcastReceiver broadcastReceiver = this.mMcsRestartServiceReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
            this.mMcsRestartServiceReceiver = null;
        }
    }

    private BroadcastReceiver getMcsRestartServiceReceiver() {
        return new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (NetAPIWorkingStatusControllerMcs.INTENT_RESET_BUFFERDB_MCS.equals(intent.getAction())) {
                    IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "getMcsRestartServiceReceiver: onReceive: " + intent.getAction());
                    if (intent.getIntExtra("slot", -1) == NetAPIWorkingStatusControllerMcs.this.mPhoneId && NetAPIWorkingStatusControllerMcs.this.mStoreClient.getPrerenceManager().isDebugEnable()) {
                        NetAPIWorkingStatusControllerMcs.this.onRestartService();
                    }
                }
            }
        };
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    public void resetMcsRestartReceiver() {
        Log.i(this.TAG, "resetMcsRestartReceiver");
        unregisterMcsRestartServiceReceiver();
        if (this.mStoreClient.getPrerenceManager().isDebugEnable()) {
            registerMcsRestartServiceReceiver();
        }
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController, com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onRestartService() {
        Log.i(this.TAG, "Entry restartService Internal Restart case:");
        this.mStoreClient.getMcsRetryMapAdapter().clearRetryHistory();
        this.mStoreClient.getHttpController().getCookieJar().removeAll();
        onCleanBufferDbRequired();
        Toast.makeText(this.mContext, "Buffer DB delete request Triggered", 0).show();
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    public void init() {
        initDeviceID();
        this.mStoreClient.getCloudMessageStrategyManager().createStrategy();
        registerWifiStateListener();
        registerCellularStateListener();
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    public void clearData() {
        IMSLog.i(this.TAG, "clearData");
        this.mStoreClient.getPrerenceManager().clearAll();
        this.mStoreClient.getHttpController().getCookieJar().removeAll();
        onCleanBufferDbRequired();
        this.mHasNotifiedBufferDBProvisionSuccess = false;
    }

    public void clearData(String str) {
        IMSLog.i(this.TAG, "clearData");
        this.mStoreClient.getPrerenceManager().clearAll();
        this.mStoreClient.getHttpController().getCookieJar().removeAll();
        this.mStoreClient.getCloudMessageBufferSchedulingHandler().cleanAllBufferDB(str);
        this.mHasNotifiedBufferDBProvisionSuccess = false;
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    public void setCmsProfileEnabled(boolean z) {
        IMSLog.i(this.TAG, "setCmsProfileEnabled: mIsCmsProfileEnabled: " + this.mIsCmsProfileEnabled + " value: " + z);
        if (this.mIsCmsProfileEnabled && z) {
            return;
        }
        this.mIsCmsProfileEnabled = z;
        if (z) {
            init();
            onNetworkChangeDetected();
            this.mIsDefaultMsgAppNative = CmsUtil.isDefaultMessageAppInUse(this.mContext);
            this.mStoreClient.getPrerenceManager().saveNativeMsgAppIsDefault(this.mIsDefaultMsgAppNative);
            return;
        }
        unregisterNetworkChangeListener();
        stopCMNWorking();
    }

    protected void unregisterNetworkChangeListener() {
        Log.i(this.TAG, "unregisterNetworkChangeListener");
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        this.mIsWifiConnected = false;
        this.mIsNetworkValid = false;
        this.mIsMobileConnected = false;
        try {
            connectivityManager.unregisterNetworkCallback(this.mWifiStateListener);
            connectivityManager.unregisterNetworkCallback(this.mCellularStateListener);
        } catch (RuntimeException e) {
            Log.e(this.TAG, e.getMessage());
        }
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController, com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onOmaProvisionFailed(ParamOMAresponseforBufDB paramOMAresponseforBufDB, long j) {
        Class<? extends IHttpAPICommonInterface> lastFailedApi = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getLastFailedApi();
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onOmaProvisionFailed: ");
        sb.append(paramOMAresponseforBufDB);
        sb.append(" lastFailedApi ");
        sb.append(lastFailedApi != null ? lastFailedApi.getSimpleName() : "");
        Log.d(str, sb.toString());
        this.mStoreClient.getMcsRetryMapAdapter().clearRetryHistory();
        this.mStoreClient.updateDelay(4, j);
    }

    private ICentralMsgStoreServiceListener getCentralMsgStoreServiceListener() {
        return new ICentralMsgStoreServiceListener.Stub() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.2
            public void onCmsAccountInfoDelivered(String str, String str2, int i) {
            }

            public void onCmsPushMessageReceived(String str, String str2, String str3) {
            }

            public void onCmsSdChanged(boolean z, String str, int i) {
            }

            public void onCmsSdManagementCompleted(int i, String str, int i2, int i3) {
            }

            public void onCmsRegistrationCompleted(int i, int i2) {
                IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "getCentralMsgStoreServiceListener: onCmsRegistrationCompleted: result: " + i + " details: " + i2);
                if (i != 100 || i2 == 1) {
                    return;
                }
                EventLogHelper.add(NetAPIWorkingStatusControllerMcs.this.TAG, NetAPIWorkingStatusControllerMcs.this.mPhoneId, "MCS registration completed. details: " + i2);
                NetAPIWorkingStatusControllerMcs.this.removeMessages(12);
                NetAPIWorkingStatusControllerMcs.this.sendEmptyMessage(12);
                NetAPIWorkingStatusControllerMcs.this.onCmsRegistrationCompletedEvent();
            }

            public void onCmsDeRegistrationCompleted(int i) {
                IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "getCentralMsgStoreServiceListener: onCmsDeRegistrationCompleted: result: " + i);
                if (i == 100) {
                    EventLogHelper.add(NetAPIWorkingStatusControllerMcs.this.TAG, NetAPIWorkingStatusControllerMcs.this.mPhoneId, "MCS deregistration completed");
                    NetAPIWorkingStatusControllerMcs.this.removeMessages(13);
                    NetAPIWorkingStatusControllerMcs.this.sendEmptyMessage(13);
                }
            }
        };
    }

    public void registerCentralMsgStoreServiceListener() {
        unregisterCentralMsgStoreServiceListener();
        ICentralMsgStoreServiceListener centralMsgStoreServiceListener = getCentralMsgStoreServiceListener();
        this.mCentralMsgStoreServiceListener = centralMsgStoreServiceListener;
        this.mStoreClient.registerCmsProvisioningListener(centralMsgStoreServiceListener, false);
    }

    public void unregisterCentralMsgStoreServiceListener() {
        ICentralMsgStoreServiceListener iCentralMsgStoreServiceListener = this.mCentralMsgStoreServiceListener;
        if (iCentralMsgStoreServiceListener != null) {
            this.mStoreClient.unregisterCmsProvisioningListener(iCentralMsgStoreServiceListener);
            this.mCentralMsgStoreServiceListener = null;
        }
    }

    private BroadcastReceiver getMcsFcmIntentServiceReceiver() {
        return new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int intExtra = intent.getIntExtra("phoneId", -1);
                IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "getMcsFcmIntentServiceReceiver: onReceive: phoneId: " + intExtra + " mPhoneId: " + NetAPIWorkingStatusControllerMcs.this.mPhoneId + " Action:" + intent.getAction());
                if (NetAPIWorkingStatusControllerMcs.INTENT_RECEIVE_FCM_REGISTRATION_TOKEN.equals(intent.getAction()) && intExtra == NetAPIWorkingStatusControllerMcs.this.mPhoneId) {
                    IMSLog.c(LogClass.MCS_NC_FCM_REGI_TOKEN_RECEIVE, NetAPIWorkingStatusControllerMcs.this.mPhoneId + ",NC:REG_TK_RCV");
                    String stringExtra = intent.getStringExtra("senderId");
                    String fcmSenderId = NetAPIWorkingStatusControllerMcs.this.mStoreClient.getPrerenceManager().getFcmSenderId();
                    String stringExtra2 = intent.getStringExtra(NetAPIWorkingStatusControllerMcs.FCM_REGISTRATION_TOKEN);
                    boolean z = false;
                    boolean booleanExtra = intent.getBooleanExtra(NetAPIWorkingStatusControllerMcs.FCM_REGISTRATION_TOKEN_REFRESHED, false);
                    if (!TextUtils.isEmpty(stringExtra) && stringExtra.equals(fcmSenderId) && !TextUtils.isEmpty(stringExtra2)) {
                        z = true;
                    }
                    EventLogHelper.add(NetAPIWorkingStatusControllerMcs.this.TAG, intExtra, "Receive FCM registration token, isValidRegi: " + z);
                    IMSLog.s(NetAPIWorkingStatusControllerMcs.this.TAG, "getMcsFcmIntentServiceReceiver: onReceive: senderId: " + stringExtra + " cursenderId: " + fcmSenderId + " token: " + stringExtra2 + " isFcmRegistrationTokenRefreshed: " + booleanExtra + " oldFcmTokenEmpty: " + TextUtils.isEmpty(NetAPIWorkingStatusControllerMcs.this.mOldFcmToken));
                    if (z) {
                        NetAPIWorkingStatusControllerMcs.this.mOldFcmToken = "";
                        NetAPIWorkingStatusControllerMcs.this.sendFcmRegistrationSuccess(stringExtra2, booleanExtra);
                        return;
                    }
                    int fcmRetryCount = NetAPIWorkingStatusControllerMcs.this.mStoreClient.getPrerenceManager().getFcmRetryCount();
                    EventLogHelper.add(NetAPIWorkingStatusControllerMcs.this.TAG, intExtra, "getMcsFcmIntentServiceReceiver: onReceive: EVENT_RECEIVE_FCM_REGISTRATION_TOKEN failure retryCount: " + fcmRetryCount);
                    if (fcmRetryCount < 3) {
                        int i = fcmRetryCount + 1;
                        NetAPIWorkingStatusControllerMcs.this.mStoreClient.getPrerenceManager().saveFcmRetryCount(i);
                        NetAPIWorkingStatusControllerMcs netAPIWorkingStatusControllerMcs = NetAPIWorkingStatusControllerMcs.this;
                        netAPIWorkingStatusControllerMcs.sendMessageDelayed(netAPIWorkingStatusControllerMcs.obtainMessage(14, Boolean.FALSE), ((long) (Math.pow(5.0d, i) * 1000.0d)) + 5);
                        return;
                    }
                    IMSLog.c(LogClass.MCS_NC_FCM_REGI_TOKEN_FAILURE, NetAPIWorkingStatusControllerMcs.this.mPhoneId + ",NC:REG_TK_FAIL");
                    if (TextUtils.isEmpty(NetAPIWorkingStatusControllerMcs.this.mOldFcmToken)) {
                        return;
                    }
                    NetAPIWorkingStatusControllerMcs netAPIWorkingStatusControllerMcs2 = NetAPIWorkingStatusControllerMcs.this;
                    netAPIWorkingStatusControllerMcs2.sendFcmRegistrationSuccess(netAPIWorkingStatusControllerMcs2.mOldFcmToken, booleanExtra);
                }
            }
        };
    }

    public void sendFcmRegistrationSuccess(String str, boolean z) {
        this.mStoreClient.getPrerenceManager().saveFcmRetryCount(0);
        Bundle bundle = new Bundle();
        bundle.putString(FCM_REGISTRATION_TOKEN, str);
        bundle.putBoolean(FCM_REGISTRATION_TOKEN_REFRESHED, z);
        IMSLog.i(this.TAG, "getMcsFcmIntentServiceReceiver: send EVENT_RECEIVE_FCM_REGISTRATION_TOKEN");
        removeMessages(15);
        sendMessage(obtainMessage(15, bundle));
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController, com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onStartFcmRetry() {
        removeMessages(14);
        sendMessage(obtainMessage(14, Boolean.FALSE));
    }

    public void registerMcsFcmIntentServiceReceiver() {
        unregisterMcsFcmIntentServiceReceiver();
        BroadcastReceiver mcsFcmIntentServiceReceiver = getMcsFcmIntentServiceReceiver();
        this.mMcsFcmIntentServiceReceiver = mcsFcmIntentServiceReceiver;
        this.mContext.registerReceiver(mcsFcmIntentServiceReceiver, this.mMcsFcmIntentFilter);
    }

    public void unregisterMcsFcmIntentServiceReceiver() {
        BroadcastReceiver broadcastReceiver = this.mMcsFcmIntentServiceReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
            this.mMcsFcmIntentServiceReceiver = null;
        }
    }

    private BroadcastReceiver getMcsFcmInstanceIdServiceReceiver() {
        return new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (NetAPIWorkingStatusControllerMcs.INTENT_REFRESH_FCM_REGISTRATION_TOKEN.equals(intent.getAction())) {
                    IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "getMcsFcmInstanceIdServiceReceiver: onReceive: INTENT_REFRESH_FCM_REGISTRATION_TOKEN");
                    EventLogHelper.add(NetAPIWorkingStatusControllerMcs.this.TAG, NetAPIWorkingStatusControllerMcs.this.mPhoneId, "Refresh FCM registration token");
                    IMSLog.c(LogClass.MCS_NC_FCM_REGI_TOKEN_REFRESH, NetAPIWorkingStatusControllerMcs.this.mPhoneId + ",NC:REG_TK_REF");
                    NetAPIWorkingStatusControllerMcs.this.removeMessages(16);
                    NetAPIWorkingStatusControllerMcs.this.sendEmptyMessage(16);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMobileIp(Network network) {
        LinkProperties linkProperties = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getLinkProperties(network);
        if (linkProperties != null) {
            List<LinkAddress> linkAddresses = linkProperties.getLinkAddresses();
            Iterator<LinkAddress> it = linkAddresses.iterator();
            while (it.hasNext()) {
                InetAddress address = it.next().getAddress();
                if (!address.isLoopbackAddress() && (address instanceof Inet6Address)) {
                    this.mMobileIp = decompressIpv6Address(address.getHostAddress()) + "::/64";
                    Log.i(this.TAG, "setMobileIp: IPv6 decompressed address");
                    return;
                }
            }
            Iterator<LinkAddress> it2 = linkAddresses.iterator();
            while (it2.hasNext()) {
                InetAddress address2 = it2.next().getAddress();
                if (!address2.isLoopbackAddress() && (address2 instanceof Inet4Address)) {
                    this.mMobileIp = address2.getHostAddress();
                    Log.i(this.TAG, "setMobileIp: IPv4 address");
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNetworkChangeMsg(boolean z, int i) {
        Message message = new Message();
        message.obj = Boolean.valueOf(z);
        message.what = i;
        sendMessage(message);
    }

    private void registerWifiStateListener() {
        ((ConnectivityManager) this.mContext.getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).addCapability(12).build(), this.mWifiStateListener);
    }

    private void registerCellularStateListener() {
        ((ConnectivityManager) this.mContext.getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().addTransportType(0).addCapability(12).build(), this.mCellularStateListener);
    }

    public String decompressIpv6Address(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        StringBuilder sb = new StringBuilder();
        String[] split = trim.split(":");
        int length = split.length;
        for (int i = 0; i < length; i++) {
            String str2 = split[i];
            if ("".equals(str2)) {
                for (int i2 = 0; i2 <= 8 - split.length; i2++) {
                    sb.append("0000:");
                }
            } else {
                while (str2.length() != 4) {
                    str2 = "0" + str2;
                }
                sb.append(str2 + ":");
            }
        }
        return sb.length() > 19 ? sb.substring(0, 19) : sb.toString();
    }

    public String getMobileIp() {
        return this.mMobileIp;
    }

    public void registerMcsFcmInstanceIdServiceReceiver() {
        unregisterMcsFcmInstanceIdServiceReceiver();
        BroadcastReceiver mcsFcmInstanceIdServiceReceiver = getMcsFcmInstanceIdServiceReceiver();
        this.mMcsFcmInstanceIdServiceReceiver = mcsFcmInstanceIdServiceReceiver;
        this.mContext.registerReceiver(mcsFcmInstanceIdServiceReceiver, this.mMcsFcmIntentFilter);
    }

    public void unregisterMcsFcmInstanceIdServiceReceiver() {
        BroadcastReceiver broadcastReceiver = this.mMcsFcmInstanceIdServiceReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
            this.mMcsFcmInstanceIdServiceReceiver = null;
        }
    }

    public void registerMcsFcmEventListenerReceiver() {
        unregisterMcsFcmEventListenerReceiver();
        McsFcmEventListenerReceiver mcsFcmEventListenerReceiver = new McsFcmEventListenerReceiver(this.mContext, this.mPhoneId, this.mStoreClient);
        this.mMcsFcmEventListenerReceiver = mcsFcmEventListenerReceiver;
        this.mContext.registerReceiver(mcsFcmEventListenerReceiver, this.mMcsFcmIntentFilter);
    }

    public void unregisterMcsFcmEventListenerReceiver() {
        McsFcmEventListenerReceiver mcsFcmEventListenerReceiver = this.mMcsFcmEventListenerReceiver;
        if (mcsFcmEventListenerReceiver != null) {
            this.mContext.unregisterReceiver(mcsFcmEventListenerReceiver);
            this.mMcsFcmEventListenerReceiver = null;
        }
    }

    private BroadcastReceiver getMcsTokenValidityTimeoutReceiver() {
        return new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.8
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (McsConstants.McsActions.INTENT_ACCESS_TOKEN_VALIDITY_TIMEOUT.equals(intent.getAction()) || McsConstants.McsActions.INTENT_REFRESH_TOKEN_VALIDITY_TIMEOUT.equals(intent.getAction())) {
                    IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "getMcsTokenValidityTimeoutReceiver: onReceive: " + intent.getAction());
                    NetAPIWorkingStatusControllerMcs.this.removeMessages(18);
                    NetAPIWorkingStatusControllerMcs.this.sendEmptyMessage(18);
                }
            }
        };
    }

    public void registerTokenValidityTimeoutReceiver() {
        unregisterTokenValidityTimeoutReceiver();
        BroadcastReceiver mcsTokenValidityTimeoutReceiver = getMcsTokenValidityTimeoutReceiver();
        this.mMcsTokenValidityTimeoutReceiver = mcsTokenValidityTimeoutReceiver;
        this.mContext.registerReceiver(mcsTokenValidityTimeoutReceiver, this.mMcsTokenIntentFilter);
    }

    public void unregisterTokenValidityTimeoutReceiver() {
        BroadcastReceiver broadcastReceiver = this.mMcsTokenValidityTimeoutReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
            this.mMcsTokenValidityTimeoutReceiver = null;
        }
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    protected void setNetworkStatus(boolean z) {
        IMSLog.i(this.TAG, "setNetworkStatus: " + z + " mIsNetworkValid:" + this.mIsNetworkValid + " mIsCMNWorkingStarted:" + this.mIsCMNWorkingStarted + " provisionStatus:" + this.mStoreClient.getProvisionStatus() + " ProfileActive:" + isCmsProfileActive() + " mIsCmsProfileEnabled:" + this.mIsCmsProfileEnabled + " isMobileConnected:" + this.mIsMobileConnected + " isWifiConnected:" + this.mIsWifiConnected);
        if (this.mIsCmsProfileEnabled || !z) {
            boolean z2 = this.mIsNetworkValid;
            if (z2 && !z) {
                EventLogHelper.add(this.TAG, this.mPhoneId, "Network changed: " + z);
                pauseCMNWorkingForDeregi();
                this.mIsNetworkValid = z;
                return;
            }
            if (z2 == z) {
                IMSLog.d(this.TAG, "same network state, nothing to be done");
                return;
            }
            this.mIsNetworkValid = z;
            if (this.mStoreClient.getProvisionStatus() && isCmsProfileActive() && this.mIsDefaultMsgAppNative) {
                EventLogHelper.add(this.TAG, this.mPhoneId, "Network changed: " + z + ", mIsCMNWorkingStarted: " + this.mIsCMNWorkingStarted);
                if (!this.mIsCMNWorkingStarted) {
                    this.mIsCMNWorkingStarted = true;
                    startCMNWorking();
                } else {
                    resumeCMNWorking();
                }
            }
        }
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    protected void startCMNWorking() {
        IMSLog.i(this.TAG, "startCMNWorking");
        this.mIsCMNWorkingStarted = true;
        this.mNetAPIHandler.startforMcs();
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    public void stopCMNWorking() {
        IMSLog.i(this.TAG, "stopCMNWorking");
        this.mIsCMNWorkingStarted = false;
        this.mNetAPIHandler.stopforMcs();
    }

    protected void pauseCMNWorkingForDeregi() {
        IMSLog.i(this.TAG, "pauseCMNWorkingForDeregi");
        this.mNetAPIHandler.pauseMcsForDeregi();
        pauseCMNWorking();
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    protected void pauseCMNWorking() {
        IMSLog.i(this.TAG, "pauseCMNWorking");
        this.mIsOMAAPIRunning = false;
        this.mNetAPIHandler.pauseforMcs();
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    protected void resumeCMNWorking() {
        IMSLog.i(this.TAG, "resumeCMNWorking");
        if (!this.mIsCMNWorkingStarted) {
            IMSLog.i(this.TAG, "resume called before starting. This should not be processed");
        } else {
            this.mIsOMAAPIRunning = true;
            this.mNetAPIHandler.resumeforMcs(false);
        }
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController, android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(this.TAG, "handleMessage: msg: " + message.what);
        int i = message.what;
        if (i == 1) {
            handleEventMessageAppChanged();
            return;
        }
        if (i == 2) {
            this.mIsAirPlaneModeOn = Settings.System.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) != 0;
            if (!this.mIsMobileConnected && !this.mIsWifiConnected) {
                r1 = false;
            }
            Log.d(this.TAG, "Network available: " + r1 + " mobile:" + this.mIsMobileConnected + " wifi:" + this.mIsWifiConnected);
            if (this.mIsNetworkValid && !r1) {
                Log.i(this.TAG, "no available network, reset channel state.");
                this.mNetAPIHandler.resetChannelState();
            }
            setNetworkStatus(r1);
            return;
        }
        if (i != 8) {
            switch (i) {
                case 12:
                    registerTokenValidityTimeoutReceiver();
                    this.mStoreClient.getPrerenceManager().saveFcmRetryCount(0);
                    removeMessages(14);
                    sendMessage(obtainMessage(14, Boolean.FALSE));
                    startInitSync();
                    break;
                case 13:
                    unregisterMcsFcmIntentServiceReceiver();
                    unregisterMcsFcmInstanceIdServiceReceiver();
                    unregisterMcsFcmEventListenerReceiver();
                    unregisterTokenValidityTimeoutReceiver();
                    pauseCMNWorkingForDeregi();
                    break;
                case 14:
                    EventLogHelper.add(this.TAG, this.mPhoneId, "Request FCM registration token");
                    IMSLog.c(LogClass.MCS_NC_FCM_REGI_TOKEN_REQUEST, this.mPhoneId + ",NC:REG_TK_REQ");
                    registerMcsFcmEventListenerReceiver();
                    Object obj = message.obj;
                    r1 = obj != null && ((Boolean) obj).booleanValue();
                    String fcmSenderId = this.mStoreClient.getPrerenceManager().getFcmSenderId();
                    IMSLog.s(this.TAG, "handleMessage: EVENT_REQUEST_FCM_REGISTRATION_TOKEN: senderId: " + fcmSenderId + " isFcmRegistrationTokenRefreshed:" + r1);
                    if (!r1) {
                        this.mOldFcmToken = this.mStoreClient.getPrerenceManager().getFcmRegistrationToken();
                        this.mStoreClient.getPrerenceManager().saveFcmRegistrationToken("");
                    }
                    if (!TextUtils.isEmpty(fcmSenderId)) {
                        registerMcsFcmIntentServiceReceiver();
                        registerMcsFcmInstanceIdServiceReceiver();
                        Intent intent = new Intent(this.mContext, (Class<?>) McsFcmIntentService.class);
                        intent.putExtra("phoneId", this.mPhoneId);
                        intent.putExtra("senderId", fcmSenderId);
                        intent.putExtra(FCM_REGISTRATION_TOKEN_REFRESHED, r1);
                        intent.addFlags(IntentUtil.FLAG_RECEIVER_INCLUDE_BACKGROUND);
                        IMSLog.i(this.TAG, "handleMessage: EVENT_REQUEST_FCM_REGISTRATION_TOKEN: sendBroadcast McsFcmIntentService");
                        this.mContext.startService(intent);
                        break;
                    }
                    break;
                case 15:
                    unregisterMcsFcmIntentServiceReceiver();
                    Object obj2 = message.obj;
                    String string = obj2 != null ? ((Bundle) obj2).getString(FCM_REGISTRATION_TOKEN) : "";
                    String fcmRegistrationToken = this.mStoreClient.getPrerenceManager().getFcmRegistrationToken();
                    Object obj3 = message.obj;
                    r1 = obj3 != null && ((Bundle) obj3).getBoolean(FCM_REGISTRATION_TOKEN_REFRESHED);
                    IMSLog.i(this.TAG, "handleMessage: EVENT_RECEIVE_FCM_REGISTRATION_TOKEN: token: " + IMSLog.checker(string) + " isFcmRegistrationTokenRefreshed: " + r1 + " " + this.mIsNetworkValid + " " + this.mStoreClient.getProvisionStatus() + "  " + isCmsProfileActive());
                    if (TextUtils.equals(string, fcmRegistrationToken)) {
                        IMSLog.d(this.TAG, "token remained same after refresh, do nothing");
                        break;
                    } else {
                        this.mStoreClient.getPrerenceManager().saveFcmRegistrationToken(string);
                        if (this.mIsNetworkValid && this.mStoreClient.getProvisionStatus() && isCmsProfileActive() && this.mIsDefaultMsgAppNative) {
                            if (!r1 && !this.mIsCMNWorkingStarted) {
                                startCMNWorking();
                                break;
                            } else {
                                resumeCMNWorkingForTokenRefresh();
                                break;
                            }
                        }
                    }
                    break;
                case 16:
                    removeMessages(14);
                    sendMessage(obtainMessage(14, Boolean.TRUE));
                    break;
                default:
                    switch (i) {
                        case 18:
                            EventLogHelper.add(this.TAG, this.mPhoneId, "Token validity timed out");
                            unregisterMcsFcmIntentServiceReceiver();
                            unregisterMcsFcmInstanceIdServiceReceiver();
                            unregisterMcsFcmEventListenerReceiver();
                            unregisterTokenValidityTimeoutReceiver();
                            stopCMNWorking();
                            break;
                        case 19:
                            this.mIsWifiConnected = ((Boolean) message.obj).booleanValue();
                            sendMessage(obtainMessage(2));
                            break;
                        case 20:
                            this.mIsMobileConnected = ((Boolean) message.obj).booleanValue();
                            sendMessage(obtainMessage(2));
                            break;
                        default:
                            IMSLog.i(this.TAG, "handleMessage: unknown msg");
                            super.handleMessage(message);
                            break;
                    }
            }
            return;
        }
        this.mIsAirPlaneModeOn = Settings.System.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) != 0;
        IMSLog.i(this.TAG, "airplane mode change :" + this.mIsAirPlaneModeOn + " oldMobile:" + this.mIsMobileConnected + " oldWifi:" + this.mIsWifiConnected);
        String str = this.TAG;
        int i2 = this.mPhoneId;
        StringBuilder sb = new StringBuilder();
        sb.append("AirplaneMode changed: ");
        sb.append(this.mIsAirPlaneModeOn);
        EventLogHelper.add(str, i2, sb.toString());
        if (this.mIsAirPlaneModeOn) {
            setNetworkStatus(false);
            this.mIsWifiConnected = false;
            this.mIsMobileConnected = false;
        }
    }

    private void resumeCMNWorkingForTokenRefresh() {
        IMSLog.i(this.TAG, "resumeCMNWorkingForTokenRefresh");
        this.mIsOMAAPIRunning = true;
        this.mNetAPIHandler.resumeforMcs(true);
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController, com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void registerForUpdateFromCloud(Handler handler, int i, Object obj) {
        this.mNetAPIHandler.registerForUpdateFromCloud(handler, i, obj);
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    protected void registerDefaultSmsPackageChangeReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL");
        context.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.9
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String str;
                if (intent == null || !"android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL".equals(intent.getAction())) {
                    return;
                }
                try {
                    str = Telephony.Sms.getDefaultSmsPackage(NetAPIWorkingStatusControllerMcs.this.mContext);
                } catch (Exception e) {
                    IMSLog.e(NetAPIWorkingStatusControllerMcs.this.TAG, "registerDefaultSmsPackageChangeReceiver: onReceive: fail to get currentPackage: " + e);
                    str = null;
                }
                IMSLog.i(NetAPIWorkingStatusControllerMcs.this.TAG, "registerDefaultSmsPackageChangeReceiver: onReceive: MessageApplication is changed: " + str);
                if (str != null) {
                    NetAPIWorkingStatusControllerMcs.this.removeMessages(1);
                    NetAPIWorkingStatusControllerMcs.this.sendEmptyMessage(1);
                }
            }
        }, intentFilter);
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    protected void registerAirplaneMode(Context context) {
        boolean z = Settings.System.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) != 0;
        this.mIsAirPlaneModeOn = z;
        this.mIsNetworkValid = !z;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ImsConstants.Intents.ACTION_AIRPLANE_MODE);
        context.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs.10
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                Log.d(NetAPIWorkingStatusControllerMcs.this.TAG, "registerAirplaneMode, BroadcastReceiver, action: " + action);
                if (ImsConstants.Intents.ACTION_AIRPLANE_MODE.equals(action)) {
                    NetAPIWorkingStatusControllerMcs netAPIWorkingStatusControllerMcs = NetAPIWorkingStatusControllerMcs.this;
                    netAPIWorkingStatusControllerMcs.sendMessage(netAPIWorkingStatusControllerMcs.obtainMessage(8));
                }
            }
        }, intentFilter);
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController
    protected void handleEventMessageAppChanged() {
        boolean isDefaultMessageAppInUse = CmsUtil.isDefaultMessageAppInUse(this.mContext);
        IMSLog.i(this.TAG, "handleEventMessageAppChanged: mIsCmsProfileEnabled:" + this.mIsCmsProfileEnabled + " mIsDefaultMsgAppNative:" + this.mIsDefaultMsgAppNative + " isDefaultMessageApp:" + isDefaultMessageAppInUse);
        if (this.mIsCmsProfileEnabled && this.mIsDefaultMsgAppNative != isDefaultMessageAppInUse) {
            this.mIsDefaultMsgAppNative = isDefaultMessageAppInUse;
            EventLogHelper.add(this.TAG, this.mPhoneId, "Default Message App changed. isNative: " + this.mIsDefaultMsgAppNative);
            if (!this.mIsDefaultMsgAppNative) {
                this.mStoreClient.getPrerenceManager().saveNativeMsgAppIsDefault(false);
                this.mNetAPIHandler.deleteNotificationForDMAChange();
                pauseCMNWorking();
                return;
            }
            this.mStoreClient.getPrerenceManager().saveNativeMsgAppIsDefault(true);
            this.mWorkingStatus.notifyRegistrants(new AsyncResult(null, IWorkingStatusProvisionListener.WorkingStatus.DEFAULT_MSGAPP_CHGTO_NATIVE, null));
            IMSLog.i(this.TAG, "handleEventMessageAppChanged validNetwork:" + this.mIsNetworkValid + " provisionStatus:" + this.mStoreClient.getProvisionStatus() + " profileActive:" + isCmsProfileActive());
            if (this.mIsNetworkValid && this.mStoreClient.getProvisionStatus() && isCmsProfileActive()) {
                resumeCMNWorking();
            }
            this.mStoreClient.getPrerenceManager().setForceInitFullSync(true);
        }
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController, com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener
    public void onChannelLifetimeUpdateComplete() {
        IMSLog.i(this.TAG, "onChannelLifetimeUpdateComplete");
        removeMessages(14);
        sendMessage(obtainMessage(14, Boolean.FALSE));
    }

    @Override // com.sec.internal.ims.cmstore.NetAPIWorkingStatusController, com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener
    public void onForceInitSyncStart() {
        Log.i(this.TAG, "onForceInitSyncStart validNetwork: " + this.mIsNetworkValid + " provision: " + this.mStoreClient.getProvisionStatus());
        if (this.mIsNetworkValid && this.mStoreClient.getProvisionStatus()) {
            startCMNWorkingResetBox();
        }
    }
}
