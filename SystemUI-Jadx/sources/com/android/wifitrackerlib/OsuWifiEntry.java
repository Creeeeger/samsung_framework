package com.android.wifitrackerlib;

import android.content.Context;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.hotspot2.OsuProvider;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.net.wifi.hotspot2.ProvisioningCallback;
import android.os.Handler;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Pair;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.util.Preconditions;
import com.android.systemui.R;
import com.android.wifitrackerlib.WifiEntry;
import com.samsung.android.wifi.SemWifiManager;
import com.samsung.android.wifitrackerlib.SemWifiUtils;
import com.samsung.android.wifitrackerlib.WifiIssueDetectorUtil;
import com.sec.ims.extensions.WiFiManagerExt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OsuWifiEntry extends WifiEntry {
    public final Context mContext;
    public final List mCurrentScanResults;
    public final boolean mHasAddConfigUserRestriction;
    public boolean mIsAlreadyProvisioned;
    public final String mKey;
    public final OsuProvider mOsuProvider;
    public String mOsuStatusString;
    public SemWifiManager mSemWifiManager;
    public String mSsid;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OsuWifiEntryProvisioningCallback extends ProvisioningCallback {
        public OsuWifiEntryProvisioningCallback() {
        }

        public final void onProvisioningComplete() {
            ScanResult bestScanResultByLevel;
            synchronized (OsuWifiEntry.this) {
                OsuWifiEntry osuWifiEntry = OsuWifiEntry.this;
                osuWifiEntry.mOsuStatusString = osuWifiEntry.mContext.getString(R.string.wifitrackerlib_osu_sign_up_complete);
            }
            OsuWifiEntry.this.notifyOnUpdated();
            OsuWifiEntry osuWifiEntry2 = OsuWifiEntry.this;
            PasspointConfiguration passpointConfiguration = (PasspointConfiguration) osuWifiEntry2.mWifiManager.getMatchingPasspointConfigsForOsuProviders(Collections.singleton(osuWifiEntry2.mOsuProvider)).get(OsuWifiEntry.this.mOsuProvider);
            WifiEntry.ConnectCallback connectCallback = OsuWifiEntry.this.mConnectCallback;
            if (passpointConfiguration == null) {
                if (connectCallback != null) {
                    connectCallback.onConnectResult(2);
                    return;
                }
                return;
            }
            String uniqueId = passpointConfiguration.getUniqueId();
            WifiManager wifiManager = OsuWifiEntry.this.mWifiManager;
            Iterator it = wifiManager.getAllMatchingWifiConfigs(wifiManager.getScanResults()).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Pair pair = (Pair) it.next();
                WifiConfiguration wifiConfiguration = (WifiConfiguration) pair.first;
                if (TextUtils.equals(wifiConfiguration.getKey(), uniqueId)) {
                    List list = (List) ((Map) pair.second).get(0);
                    List list2 = (List) ((Map) pair.second).get(1);
                    if (list != null && !list.isEmpty()) {
                        bestScanResultByLevel = Utils.getBestScanResultByLevel(list);
                    } else if (list2 != null && !list2.isEmpty()) {
                        bestScanResultByLevel = Utils.getBestScanResultByLevel(list2);
                    }
                    wifiConfiguration.SSID = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("\""), bestScanResultByLevel.SSID, "\"");
                    new WifiIssueDetectorUtil(OsuWifiEntry.this.mContext).reportConnectNetwork(wifiConfiguration);
                    OsuWifiEntry.this.mWifiManager.connect(wifiConfiguration, null);
                    OsuWifiEntry osuWifiEntry3 = OsuWifiEntry.this;
                    if (osuWifiEntry3.mSemWifiManager == null) {
                        osuWifiEntry3.mSemWifiManager = (SemWifiManager) osuWifiEntry3.mContext.getSystemService(WiFiManagerExt.SEM_WIFI_SERVICE);
                    }
                    osuWifiEntry3.mSemWifiManager.notifyConnect(wifiConfiguration.networkId, wifiConfiguration.getKey());
                    return;
                }
            }
            if (connectCallback != null) {
                connectCallback.onConnectResult(2);
            }
        }

        public final void onProvisioningFailure(int i) {
            synchronized (OsuWifiEntry.this) {
                OsuWifiEntry osuWifiEntry = OsuWifiEntry.this;
                if (TextUtils.equals(osuWifiEntry.mOsuStatusString, osuWifiEntry.mContext.getString(R.string.wifitrackerlib_osu_completing_sign_up))) {
                    OsuWifiEntry osuWifiEntry2 = OsuWifiEntry.this;
                    osuWifiEntry2.mOsuStatusString = osuWifiEntry2.mContext.getString(R.string.wifitrackerlib_osu_sign_up_failed);
                } else {
                    OsuWifiEntry osuWifiEntry3 = OsuWifiEntry.this;
                    osuWifiEntry3.mOsuStatusString = osuWifiEntry3.mContext.getString(R.string.wifitrackerlib_osu_connect_failed);
                }
            }
            WifiEntry.ConnectCallback connectCallback = OsuWifiEntry.this.mConnectCallback;
            if (connectCallback != null) {
                connectCallback.onConnectResult(2);
            }
            OsuWifiEntry.this.notifyOnUpdated();
        }

        public final void onProvisioningStatus(int i) {
            String format;
            boolean z;
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    format = String.format(OsuWifiEntry.this.mContext.getString(R.string.wifitrackerlib_osu_opening_provider), OsuWifiEntry.this.getTitle());
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                    format = OsuWifiEntry.this.mContext.getString(R.string.wifitrackerlib_osu_completing_sign_up);
                    break;
                default:
                    format = null;
                    break;
            }
            synchronized (OsuWifiEntry.this) {
                if (!TextUtils.equals(OsuWifiEntry.this.mOsuStatusString, format)) {
                    z = true;
                } else {
                    z = false;
                }
                OsuWifiEntry osuWifiEntry = OsuWifiEntry.this;
                osuWifiEntry.mOsuStatusString = format;
                if (z) {
                    osuWifiEntry.notifyOnUpdated();
                }
            }
        }
    }

    public OsuWifiEntry(WifiTrackerInjector wifiTrackerInjector, Context context, Handler handler, OsuProvider osuProvider, WifiManager wifiManager, boolean z) {
        super(handler, wifiManager, z);
        this.mCurrentScanResults = new ArrayList();
        this.mIsAlreadyProvisioned = false;
        this.mHasAddConfigUserRestriction = false;
        Preconditions.checkNotNull(osuProvider, "Cannot construct with null osuProvider!");
        this.mContext = context;
        this.mOsuProvider = osuProvider;
        this.mKey = osuProviderToOsuWifiEntryKey(osuProvider);
        UserManager userManager = wifiTrackerInjector.mUserManager;
        if (userManager != null) {
            this.mHasAddConfigUserRestriction = userManager.hasUserRestriction("no_add_wifi_config");
        }
    }

    public static String osuProviderToOsuWifiEntryKey(OsuProvider osuProvider) {
        Preconditions.checkNotNull(osuProvider, "Cannot create key with null OsuProvider!");
        return "OsuWifiEntry:" + osuProvider.getFriendlyName() + "," + osuProvider.getServerUri().toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001b, code lost:
    
        if (getConnectedState() == 0) goto L18;
     */
    @Override // com.android.wifitrackerlib.WifiEntry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean canConnect() {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = r4.mHasAddConfigUserRestriction     // Catch: java.lang.Throwable -> L21
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Ld
            boolean r0 = r4.mIsAlreadyProvisioned     // Catch: java.lang.Throwable -> L21
            if (r0 != 0) goto Ld
            r0 = r1
            goto Le
        Ld:
            r0 = r2
        Le:
            if (r0 == 0) goto L12
            monitor-exit(r4)
            return r2
        L12:
            int r0 = r4.mLevel     // Catch: java.lang.Throwable -> L21
            r3 = -1
            if (r0 == r3) goto L1e
            int r0 = r4.getConnectedState()     // Catch: java.lang.Throwable -> L21
            if (r0 != 0) goto L1e
            goto L1f
        L1e:
            r1 = r2
        L1f:
            monitor-exit(r4)
            return r1
        L21:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wifitrackerlib.OsuWifiEntry.canConnect():boolean");
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized void connect(WifiEntry.ConnectCallback connectCallback) {
        this.mConnectCallback = connectCallback;
        this.mWifiManager.stopRestrictingAutoJoinToSubscriptionId();
        this.mWifiManager.startSubscriptionProvisioning(this.mOsuProvider, this.mContext.getMainExecutor(), new OsuWifiEntryProvisioningCallback());
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final boolean connectionInfoMatches(WifiInfo wifiInfo) {
        if (wifiInfo.isOsuAp() && TextUtils.equals(wifiInfo.getPasspointProviderFriendlyName(), this.mOsuProvider.getFriendlyName())) {
            return true;
        }
        return false;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final String getKey() {
        return this.mKey;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final String getScanResultDescription() {
        return "";
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized String getSsid() {
        return this.mSsid;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized String getSummary(boolean z) {
        boolean z2;
        String string;
        if (this.mHasAddConfigUserRestriction && !this.mIsAlreadyProvisioned) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return this.mContext.getString(R.string.wifitrackerlib_admin_restricted_network);
        }
        String str = this.mOsuStatusString;
        if (str != null) {
            return str;
        }
        synchronized (this) {
            if (this.mIsAlreadyProvisioned) {
                if (z) {
                    string = this.mContext.getString(R.string.wifitrackerlib_wifi_passpoint_expired);
                } else {
                    string = this.mContext.getString(R.string.wifitrackerlib_tap_to_renew_subscription_and_connect);
                }
                return string;
            }
            return this.mContext.getString(R.string.wifitrackerlib_tap_to_sign_up);
        }
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized String getTitle() {
        String friendlyName = this.mOsuProvider.getFriendlyName();
        if (!TextUtils.isEmpty(friendlyName)) {
            return friendlyName;
        }
        if (!TextUtils.isEmpty(this.mSsid)) {
            return this.mSsid;
        }
        Uri serverUri = this.mOsuProvider.getServerUri();
        if (serverUri != null) {
            return serverUri.toString();
        }
        return "";
    }

    public final synchronized void updateScanResultInfo(List list) {
        if (list == null) {
            list = new ArrayList();
        }
        ((ArrayList) this.mCurrentScanResults).clear();
        ((ArrayList) this.mCurrentScanResults).addAll(list);
        ScanResult bestScanResultByLevel = Utils.getBestScanResultByLevel(list);
        if (bestScanResultByLevel != null) {
            this.mSsid = bestScanResultByLevel.SSID;
            if (getConnectedState() == 0) {
                this.mLevel = SemWifiUtils.calculateSignalLevel(this.mRssi);
            }
            updateBestRssi(bestScanResultByLevel);
            setBand(bestScanResultByLevel.frequency);
            this.mFrequency = bestScanResultByLevel.frequency;
            this.mBssid = bestScanResultByLevel.BSSID;
        } else {
            this.mLevel = -1;
            this.mRssi = -127;
        }
        notifyOnUpdated();
    }
}
