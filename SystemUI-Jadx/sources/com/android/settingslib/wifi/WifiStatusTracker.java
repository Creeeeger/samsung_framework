package com.android.settingslib.wifi;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkKey;
import android.net.NetworkRequest;
import android.net.NetworkScoreManager;
import android.net.vcn.VcnTransportInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiNetworkScoreCache;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import com.samsung.android.wifi.SemOpBrandingLoader;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WifiStatusTracker {
    public static final SimpleDateFormat SSDF = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
    public boolean connected;
    public boolean enabled;
    public boolean isCaptivePortal;
    public boolean isCarrierMerged;
    public boolean isDefaultNetwork;
    public int level;
    public final AnonymousClass3 mCacheListener;
    public final Runnable mCallback;
    public final ConnectivityManager mConnectivityManager;
    public final Context mContext;
    public final AnonymousClass2 mDefaultNetworkCallback;
    public NetworkCapabilities mDefaultNetworkCapabilities;
    public final Handler mHandler;
    public final String[] mHistory;
    public int mHistoryIndex;
    public final Handler mMainThreadHandler;
    public final AnonymousClass1 mNetworkCallback;
    public final NetworkRequest mNetworkRequest;
    public final NetworkScoreManager mNetworkScoreManager;
    public final Set mNetworks;
    public int mPrimaryNetworkId;
    public WifiInfo mWifiInfo;
    public final WifiManager mWifiManager;
    public final WifiNetworkScoreCache mWifiNetworkScoreCache;
    public int rssi;
    public String ssid;
    public String statusLabel;
    public int subId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.settingslib.wifi.WifiStatusTracker$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ConnectivityManager.NetworkCallback {
        public AnonymousClass1(int i) {
            super(i);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            boolean z;
            WifiStatusTracker wifiStatusTracker = WifiStatusTracker.this;
            SimpleDateFormat simpleDateFormat = WifiStatusTracker.SSDF;
            WifiInfo mainOrUnderlyingWifiInfo = wifiStatusTracker.getMainOrUnderlyingWifiInfo(networkCapabilities);
            WifiStatusTracker.this.getClass();
            if (networkCapabilities == null || (mainOrUnderlyingWifiInfo == null && !networkCapabilities.hasTransport(1))) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                String str = WifiStatusTracker.SSDF.format(Long.valueOf(System.currentTimeMillis())) + ",onCapabilitiesChanged: network=" + network + ",networkCapabilities=" + networkCapabilities;
                WifiStatusTracker wifiStatusTracker2 = WifiStatusTracker.this;
                int i = wifiStatusTracker2.mHistoryIndex;
                wifiStatusTracker2.mHistory[i] = str;
                wifiStatusTracker2.mHistoryIndex = (i + 1) % 32;
            }
            if (mainOrUnderlyingWifiInfo == null) {
                return;
            }
            if (!mainOrUnderlyingWifiInfo.isPrimary()) {
                if (((HashSet) WifiStatusTracker.this.mNetworks).contains(Integer.valueOf(network.getNetId()))) {
                    ((HashSet) WifiStatusTracker.this.mNetworks).remove(Integer.valueOf(network.getNetId()));
                    return;
                }
                return;
            }
            if (!((HashSet) WifiStatusTracker.this.mNetworks).contains(Integer.valueOf(network.getNetId()))) {
                ((HashSet) WifiStatusTracker.this.mNetworks).add(Integer.valueOf(network.getNetId()));
            }
            WifiStatusTracker.this.mPrimaryNetworkId = network.getNetId();
            WifiStatusTracker.m68$$Nest$mupdateWifiInfo(WifiStatusTracker.this, mainOrUnderlyingWifiInfo);
            WifiStatusTracker.this.updateStatusLabel();
            WifiStatusTracker.this.mMainThreadHandler.post(new WifiStatusTracker$1$$ExternalSyntheticLambda0(this, 0));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            String str = WifiStatusTracker.SSDF.format(Long.valueOf(System.currentTimeMillis())) + ",onLost: network=" + network;
            WifiStatusTracker wifiStatusTracker = WifiStatusTracker.this;
            int i = wifiStatusTracker.mHistoryIndex;
            wifiStatusTracker.mHistory[i] = str;
            wifiStatusTracker.mHistoryIndex = (i + 1) % 32;
            if (((HashSet) wifiStatusTracker.mNetworks).contains(Integer.valueOf(network.getNetId()))) {
                ((HashSet) WifiStatusTracker.this.mNetworks).remove(Integer.valueOf(network.getNetId()));
            }
            int netId = network.getNetId();
            WifiStatusTracker wifiStatusTracker2 = WifiStatusTracker.this;
            if (netId != wifiStatusTracker2.mPrimaryNetworkId) {
                return;
            }
            WifiStatusTracker.m68$$Nest$mupdateWifiInfo(wifiStatusTracker2, null);
            WifiStatusTracker.this.updateStatusLabel();
            WifiStatusTracker.this.mMainThreadHandler.post(new WifiStatusTracker$1$$ExternalSyntheticLambda0(this, 1));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.settingslib.wifi.WifiStatusTracker$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends ConnectivityManager.NetworkCallback {
        public AnonymousClass2(int i) {
            super(i);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            WifiStatusTracker wifiStatusTracker = WifiStatusTracker.this;
            SimpleDateFormat simpleDateFormat = WifiStatusTracker.SSDF;
            wifiStatusTracker.getClass();
            WifiStatusTracker wifiStatusTracker2 = WifiStatusTracker.this;
            wifiStatusTracker2.mDefaultNetworkCapabilities = networkCapabilities;
            wifiStatusTracker2.updateStatusLabel();
            WifiStatusTracker.this.mMainThreadHandler.post(new WifiStatusTracker$2$$ExternalSyntheticLambda0(this, 0));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            WifiStatusTracker wifiStatusTracker = WifiStatusTracker.this;
            SimpleDateFormat simpleDateFormat = WifiStatusTracker.SSDF;
            wifiStatusTracker.getClass();
            WifiStatusTracker wifiStatusTracker2 = WifiStatusTracker.this;
            wifiStatusTracker2.mDefaultNetworkCapabilities = null;
            wifiStatusTracker2.updateStatusLabel();
            WifiStatusTracker.this.mMainThreadHandler.post(new WifiStatusTracker$2$$ExternalSyntheticLambda0(this, 1));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.settingslib.wifi.WifiStatusTracker$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends WifiNetworkScoreCache.CacheListener {
        public AnonymousClass3(Handler handler) {
            super(handler);
        }

        public final void networkCacheUpdated(List list) {
            WifiStatusTracker wifiStatusTracker = WifiStatusTracker.this;
            SimpleDateFormat simpleDateFormat = WifiStatusTracker.SSDF;
            wifiStatusTracker.updateStatusLabel();
            WifiStatusTracker.this.mMainThreadHandler.post(new WifiStatusTracker$$ExternalSyntheticLambda0(this, 1));
        }
    }

    /* renamed from: -$$Nest$mupdateWifiInfo, reason: not valid java name */
    public static void m68$$Nest$mupdateWifiInfo(WifiStatusTracker wifiStatusTracker, WifiInfo wifiInfo) {
        boolean z;
        wifiStatusTracker.updateWifiState();
        if (wifiInfo != null) {
            z = true;
        } else {
            z = false;
        }
        wifiStatusTracker.connected = z;
        wifiStatusTracker.mWifiInfo = wifiInfo;
        String str = null;
        wifiStatusTracker.ssid = null;
        if (wifiInfo != null) {
            if (!wifiInfo.isPasspointAp() && !wifiStatusTracker.mWifiInfo.isOsuAp()) {
                String ssid = wifiStatusTracker.mWifiInfo.getSSID();
                if (ssid != null && !"<unknown ssid>".equals(ssid)) {
                    str = ssid;
                }
                wifiStatusTracker.ssid = str;
            } else {
                wifiStatusTracker.ssid = wifiStatusTracker.mWifiInfo.getPasspointProviderFriendlyName();
            }
            wifiStatusTracker.isCarrierMerged = wifiStatusTracker.mWifiInfo.isCarrierMerged();
            wifiStatusTracker.subId = wifiStatusTracker.mWifiInfo.getSubscriptionId();
            wifiStatusTracker.updateRssi(wifiStatusTracker.mWifiInfo.getRssi());
            NetworkKey createFromWifiInfo = NetworkKey.createFromWifiInfo(wifiStatusTracker.mWifiInfo);
            if (wifiStatusTracker.mWifiNetworkScoreCache.getScoredNetwork(createFromWifiInfo) == null) {
                wifiStatusTracker.mNetworkScoreManager.requestScores(new NetworkKey[]{createFromWifiInfo});
            }
            if (SemOpBrandingLoader.SemVendor.KTT == SemOpBrandingLoader.getInstance().getOpBranding()) {
                updateCarrierWifi(wifiStatusTracker.mWifiInfo);
            }
        }
    }

    public WifiStatusTracker(Context context, WifiManager wifiManager, NetworkScoreManager networkScoreManager, ConnectivityManager connectivityManager, Runnable runnable) {
        this(context, wifiManager, networkScoreManager, connectivityManager, runnable, null, null);
    }

    public static WifiInfo getMainWifiInfo(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return null;
        }
        boolean z = true;
        if (!networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(0)) {
            z = false;
        }
        if (!z) {
            return null;
        }
        VcnTransportInfo transportInfo = networkCapabilities.getTransportInfo();
        if (transportInfo instanceof VcnTransportInfo) {
            return transportInfo.getWifiInfo();
        }
        if (!(transportInfo instanceof WifiInfo)) {
            return null;
        }
        return (WifiInfo) transportInfo;
    }

    public static void updateCarrierWifi(WifiInfo wifiInfo) {
        boolean z;
        if (wifiInfo == null) {
            Log.d("WifiStatusTracker", "updateCarrierWifi - wifiInfo is null");
            return;
        }
        List<ScanResult.InformationElement> informationElements = wifiInfo.getInformationElements();
        if (informationElements != null) {
            for (ScanResult.InformationElement informationElement : informationElements) {
                int id = informationElement.getId();
                if (id == 221) {
                    try {
                        int frequency = wifiInfo.getFrequency();
                        if (frequency >= 5160 && frequency <= 5885) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            ByteBuffer order = informationElement.getBytes().order(ByteOrder.LITTLE_ENDIAN);
                            if (order.getInt() == 297998080) {
                                int remaining = order.remaining();
                                byte[] bArr = new byte[remaining];
                                order.get(bArr);
                                if (remaining > 24) {
                                    byte b = bArr[24];
                                }
                            }
                        }
                    } catch (BufferUnderflowException unused) {
                        Log.e("WifiStatusTracker", wifiInfo.getSSID() + " BufferUnderflowException ie:" + id);
                    }
                }
            }
            return;
        }
        Log.d("WifiStatusTracker", "not exist current network's InformationElement");
    }

    public final WifiInfo getMainOrUnderlyingWifiInfo(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return null;
        }
        WifiInfo mainWifiInfo = getMainWifiInfo(networkCapabilities);
        if (mainWifiInfo != null) {
            return mainWifiInfo;
        }
        if (!networkCapabilities.hasTransport(0)) {
            return mainWifiInfo;
        }
        List underlyingNetworks = networkCapabilities.getUnderlyingNetworks();
        if (underlyingNetworks == null) {
            return null;
        }
        Iterator it = underlyingNetworks.iterator();
        while (it.hasNext()) {
            WifiInfo mainWifiInfo2 = getMainWifiInfo(this.mConnectivityManager.getNetworkCapabilities((Network) it.next()));
            if (mainWifiInfo2 != null) {
                return mainWifiInfo2;
            }
        }
        return null;
    }

    public final void postResults() {
        this.mCallback.run();
    }

    public final void updateRssi(int i) {
        int i2;
        this.rssi = i;
        if (i <= -89) {
            i2 = 0;
        } else if (i > -89 && i <= -83) {
            i2 = 1;
        } else if (i > -83 && i <= -75) {
            i2 = 2;
        } else if (i > -75 && i <= -64) {
            i2 = 3;
        } else {
            i2 = 4;
        }
        this.level = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateStatusLabel() {
        /*
            r5 = this;
            android.net.wifi.WifiManager r0 = r5.mWifiManager
            if (r0 != 0) goto L5
            return
        L5:
            android.net.NetworkCapabilities r1 = r5.mDefaultNetworkCapabilities
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1f
            android.net.wifi.WifiInfo r4 = r5.getMainOrUnderlyingWifiInfo(r1)
            if (r4 != 0) goto L1a
            boolean r1 = r1.hasTransport(r2)
            if (r1 == 0) goto L18
            goto L1a
        L18:
            r1 = r3
            goto L1b
        L1a:
            r1 = r2
        L1b:
            if (r1 == 0) goto L1f
            r1 = r2
            goto L20
        L1f:
            r1 = r3
        L20:
            r5.isDefaultNetwork = r1
            if (r1 == 0) goto L27
            android.net.NetworkCapabilities r0 = r5.mDefaultNetworkCapabilities
            goto L31
        L27:
            android.net.ConnectivityManager r1 = r5.mConnectivityManager
            android.net.Network r0 = r0.getCurrentNetwork()
            android.net.NetworkCapabilities r0 = r1.getNetworkCapabilities(r0)
        L31:
            r5.isCaptivePortal = r3
            android.content.Context r1 = r5.mContext
            if (r0 == 0) goto La1
            r4 = 17
            boolean r4 = r0.hasCapability(r4)
            if (r4 == 0) goto L4b
            r0 = 2131956414(0x7f1312be, float:1.9549383E38)
            java.lang.String r0 = r1.getString(r0)
            r5.statusLabel = r0
            r5.isCaptivePortal = r2
            return
        L4b:
            r2 = 24
            boolean r2 = r0.hasCapability(r2)
            if (r2 == 0) goto L5d
            r0 = 2131956345(0x7f131279, float:1.9549243E38)
            java.lang.String r0 = r1.getString(r0)
            r5.statusLabel = r0
            return
        L5d:
            r2 = 16
            boolean r2 = r0.hasCapability(r2)
            if (r2 != 0) goto L89
            android.content.ContentResolver r2 = r1.getContentResolver()
            java.lang.String r3 = "private_dns_mode"
            android.provider.Settings.Global.getString(r2, r3)
            boolean r0 = r0.isPrivateDnsBroken()
            if (r0 == 0) goto L7f
            r0 = 2131954906(0x7f130cda, float:1.9546324E38)
            java.lang.String r0 = r1.getString(r0)
            r5.statusLabel = r0
            goto L88
        L7f:
            r0 = 2131956413(0x7f1312bd, float:1.954938E38)
            java.lang.String r0 = r1.getString(r0)
            r5.statusLabel = r0
        L88:
            return
        L89:
            boolean r0 = r5.isDefaultNetwork
            if (r0 != 0) goto La1
            android.net.NetworkCapabilities r0 = r5.mDefaultNetworkCapabilities
            if (r0 == 0) goto La1
            boolean r0 = r0.hasTransport(r3)
            if (r0 == 0) goto La1
            r0 = 2131956313(0x7f131259, float:1.9549178E38)
            java.lang.String r0 = r1.getString(r0)
            r5.statusLabel = r0
            return
        La1:
            android.net.wifi.WifiNetworkScoreCache r0 = r5.mWifiNetworkScoreCache
            android.net.wifi.WifiInfo r2 = r5.mWifiInfo
            android.net.NetworkKey r2 = android.net.NetworkKey.createFromWifiInfo(r2)
            android.net.ScoredNetwork r0 = r0.getScoredNetwork(r2)
            if (r0 != 0) goto Lb1
            r0 = 0
            goto Ld6
        Lb1:
            int r2 = r5.rssi
            int r4 = com.android.settingslib.wifi.AccessPoint.$r8$clinit
            int r0 = r0.calculateBadge(r2)
            r2 = 5
            if (r0 >= r2) goto Lbd
            goto Ld2
        Lbd:
            r3 = 7
            if (r0 >= r3) goto Lc2
            r3 = r2
            goto Ld2
        Lc2:
            r2 = 15
            if (r0 >= r2) goto Lc9
            r3 = 10
            goto Ld2
        Lc9:
            r2 = 25
            if (r0 >= r2) goto Ld0
            r3 = 20
            goto Ld2
        Ld0:
            r3 = 30
        Ld2:
            java.lang.String r0 = com.android.settingslib.wifi.AccessPoint.getSpeedLabel(r3, r1)
        Ld6:
            r5.statusLabel = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.wifi.WifiStatusTracker.updateStatusLabel():void");
    }

    public final void updateWifiState() {
        boolean z;
        if (this.mWifiManager.getWifiState() == 3) {
            z = true;
        } else {
            z = false;
        }
        this.enabled = z;
    }

    public WifiStatusTracker(Context context, WifiManager wifiManager, NetworkScoreManager networkScoreManager, ConnectivityManager connectivityManager, Runnable runnable, Handler handler, Handler handler2) {
        this.mNetworks = new HashSet();
        this.mHistory = new String[32];
        this.mNetworkRequest = new NetworkRequest.Builder().clearCapabilities().addCapability(15).addTransportType(1).addTransportType(0).build();
        this.mNetworkCallback = new AnonymousClass1(1);
        this.mDefaultNetworkCallback = new AnonymousClass2(1);
        this.mDefaultNetworkCapabilities = null;
        this.mContext = context;
        this.mWifiManager = wifiManager;
        this.mWifiNetworkScoreCache = new WifiNetworkScoreCache(context);
        this.mNetworkScoreManager = networkScoreManager;
        this.mConnectivityManager = connectivityManager;
        this.mCallback = runnable;
        if (handler2 == null) {
            HandlerThread handlerThread = new HandlerThread("WifiStatusTrackerHandler");
            handlerThread.start();
            this.mHandler = new Handler(handlerThread.getLooper());
        } else {
            this.mHandler = handler2;
        }
        this.mMainThreadHandler = handler == null ? new Handler(Looper.getMainLooper()) : handler;
        this.mCacheListener = new AnonymousClass3(this.mHandler);
    }
}
