package com.android.wifitrackerlib;

import android.app.admin.DevicePolicyManager;
import android.app.admin.WifiSsidPolicy;
import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.wifi.MloLink;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiEnterpriseConfig;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiSsid;
import android.os.Handler;
import android.os.SystemClock;
import android.os.UserManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import com.samsung.android.knox.ex.knoxAI.KnoxAiManagerInternal;
import com.samsung.android.wifi.SemWifiConfiguration;
import com.samsung.android.wifi.SemWifiManager;
import com.samsung.android.wifitrackerlib.SemWifiEntryFlags;
import com.samsung.android.wifitrackerlib.SemWifiUtils;
import com.samsung.android.wifitrackerlib.WifiQoSScoredCache;
import com.samsung.android.wifitrackerlib.WifiScoredNetwork;
import com.sec.ims.extensions.WiFiManagerExt;
import com.sec.ims.settings.ImsProfile;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.StringJoiner;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class StandardWifiEntry extends WifiEntry {
    public final Context mContext;
    public final DevicePolicyManager mDevicePolicyManager;
    public boolean mHasAddConfigUserRestriction;
    public boolean mIsAdminRestricted;
    public final boolean mIsEnhancedOpenSupported;
    public boolean mIsUserShareable;
    public final boolean mIsWpa3SaeSupported;
    public final boolean mIsWpa3SuiteBSupported;
    public final StandardWifiEntryKey mKey;
    public final Map mMatchingScanResults;
    public final Map mMatchingWifiConfigs;
    public SemWifiManager mSemWifiManager;
    public final boolean mShowBandSummary;
    public final List mTargetScanResults;
    public final List mTargetSecurityTypes;
    public WifiConfiguration mTargetWifiConfig;
    public final UserManager mUserManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class StandardWifiEntryKey {
        public final boolean mIsNetworkRequest;
        public final boolean mIsTargetingNewNetworks;
        public final ScanResultKey mScanResultKey;
        public final String mSuggestionProfileKey;

        public StandardWifiEntryKey(ScanResultKey scanResultKey) {
            this(scanResultKey, false);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || StandardWifiEntryKey.class != obj.getClass()) {
                return false;
            }
            StandardWifiEntryKey standardWifiEntryKey = (StandardWifiEntryKey) obj;
            if (Objects.equals(this.mScanResultKey, standardWifiEntryKey.mScanResultKey) && TextUtils.equals(this.mSuggestionProfileKey, standardWifiEntryKey.mSuggestionProfileKey) && this.mIsNetworkRequest == standardWifiEntryKey.mIsNetworkRequest) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.mScanResultKey, this.mSuggestionProfileKey, Boolean.valueOf(this.mIsNetworkRequest));
        }

        public final String toString() {
            JSONObject jSONObject = new JSONObject();
            try {
                ScanResultKey scanResultKey = this.mScanResultKey;
                if (scanResultKey != null) {
                    jSONObject.put("SCAN_RESULT_KEY", scanResultKey.toString());
                }
                String str = this.mSuggestionProfileKey;
                if (str != null) {
                    jSONObject.put("SUGGESTION_PROFILE_KEY", str);
                }
                boolean z = this.mIsNetworkRequest;
                if (z) {
                    jSONObject.put("IS_NETWORK_REQUEST", z);
                }
                boolean z2 = this.mIsTargetingNewNetworks;
                if (z2) {
                    jSONObject.put("IS_TARGETING_NEW_NETWORKS", z2);
                }
            } catch (JSONException e) {
                Log.wtf("StandardWifiEntry", "JSONException while converting StandardWifiEntryKey to string: " + e);
            }
            return "StandardWifiEntry:" + jSONObject.toString();
        }

        public StandardWifiEntryKey(ScanResultKey scanResultKey, boolean z) {
            this.mIsTargetingNewNetworks = false;
            this.mScanResultKey = scanResultKey;
            this.mIsTargetingNewNetworks = z;
        }

        public StandardWifiEntryKey(WifiConfiguration wifiConfiguration) {
            this(wifiConfiguration, false);
        }

        public StandardWifiEntryKey(WifiConfiguration wifiConfiguration, boolean z) {
            this.mIsTargetingNewNetworks = false;
            this.mScanResultKey = new ScanResultKey(wifiConfiguration);
            if (wifiConfiguration.fromWifiNetworkSuggestion) {
                this.mSuggestionProfileKey = new StringJoiner(",").add(wifiConfiguration.creatorName).add(String.valueOf(wifiConfiguration.carrierId)).add(String.valueOf(wifiConfiguration.subscriptionId)).toString();
            } else if (wifiConfiguration.fromWifiNetworkSpecifier) {
                this.mIsNetworkRequest = true;
            }
            this.mIsTargetingNewNetworks = z;
        }

        public StandardWifiEntryKey(String str) {
            this.mIsTargetingNewNetworks = false;
            this.mScanResultKey = new ScanResultKey();
            if (!str.startsWith("StandardWifiEntry:")) {
                Log.e("StandardWifiEntry", "String key does not start with key prefix!");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str.substring(18));
                if (jSONObject.has("SCAN_RESULT_KEY")) {
                    this.mScanResultKey = new ScanResultKey(jSONObject.getString("SCAN_RESULT_KEY"));
                }
                if (jSONObject.has("SUGGESTION_PROFILE_KEY")) {
                    this.mSuggestionProfileKey = jSONObject.getString("SUGGESTION_PROFILE_KEY");
                }
                if (jSONObject.has("IS_NETWORK_REQUEST")) {
                    this.mIsNetworkRequest = jSONObject.getBoolean("IS_NETWORK_REQUEST");
                }
                if (jSONObject.has("IS_TARGETING_NEW_NETWORKS")) {
                    this.mIsTargetingNewNetworks = jSONObject.getBoolean("IS_TARGETING_NEW_NETWORKS");
                }
            } catch (JSONException e) {
                Log.e("StandardWifiEntry", "JSONException while converting StandardWifiEntryKey to string: " + e);
            }
        }
    }

    public StandardWifiEntry(WifiTrackerInjector wifiTrackerInjector, Context context, Handler handler, StandardWifiEntryKey standardWifiEntryKey, WifiManager wifiManager, boolean z) {
        super(handler, wifiManager, z);
        this.mMatchingScanResults = new ArrayMap();
        this.mMatchingWifiConfigs = new ArrayMap();
        this.mTargetScanResults = new ArrayList();
        this.mTargetSecurityTypes = new ArrayList();
        boolean z2 = false;
        this.mIsUserShareable = false;
        this.mIsAdminRestricted = false;
        this.mHasAddConfigUserRestriction = false;
        this.mContext = context;
        this.mKey = standardWifiEntryKey;
        WifiManager wifiManager2 = this.mWifiManager;
        if (SemWifiEntryFlags.isWpa3SaeSupported == -1 && wifiManager2.isWifiEnabled()) {
            SemWifiEntryFlags.isWpa3SaeSupported = wifiManager2.isWpa3SaeSupported() ? 1 : 0;
        }
        this.mIsWpa3SaeSupported = SemWifiEntryFlags.isWpa3SaeSupported == 1;
        WifiManager wifiManager3 = this.mWifiManager;
        if (SemWifiEntryFlags.isWpa3SuiteBSupported == -1 && wifiManager3.isWifiEnabled()) {
            SemWifiEntryFlags.isWpa3SuiteBSupported = wifiManager3.isWpa3SuiteBSupported() ? 1 : 0;
        }
        this.mIsWpa3SuiteBSupported = SemWifiEntryFlags.isWpa3SuiteBSupported == 1;
        WifiManager wifiManager4 = this.mWifiManager;
        if (SemWifiEntryFlags.isWpa3OweSupported == -1 && wifiManager4.isWifiEnabled()) {
            SemWifiEntryFlags.isWpa3OweSupported = wifiManager4.isEnhancedOpenSupported() ? 1 : 0;
        }
        this.mIsEnhancedOpenSupported = SemWifiEntryFlags.isWpa3OweSupported == 1;
        if (SemWifiEntryFlags.isWifiDeveloperOptionOn(context) && SemWifiEntryFlags.isShowBandInfoOn(context)) {
            z2 = true;
        }
        this.mShowBandSummary = z2;
        this.mSemFlags.getClass();
        int i = SemWifiUtils.$r8$clinit;
        TextUtils.isEmpty(((WifiManager) context.getSystemService(ImsProfile.PDN_WIFI)).getCountryCode());
        this.mUserManager = wifiTrackerInjector.mUserManager;
        this.mDevicePolicyManager = wifiTrackerInjector.mDevicePolicyManager;
        updateSecurityTypes();
        updateAdminRestrictions();
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public synchronized boolean canConnect() {
        boolean z;
        WifiConfiguration wifiConfiguration;
        WifiEnterpriseConfig wifiEnterpriseConfig;
        if (this.mLevel != -1 && getConnectedState() == 0) {
            if ((this.mHasAddConfigUserRestriction && !isSaved() && !isSuggestion()) || this.mIsAdminRestricted) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return false;
            }
            if (!((ArrayList) this.mTargetSecurityTypes).contains(3) || (wifiConfiguration = this.mTargetWifiConfig) == null || (wifiEnterpriseConfig = wifiConfiguration.enterpriseConfig) == null) {
                return true;
            }
            if (!wifiEnterpriseConfig.isAuthenticationSimBased()) {
                return true;
            }
            List<SubscriptionInfo> activeSubscriptionInfoList = ((SubscriptionManager) this.mContext.getSystemService(SubscriptionManager.class)).getActiveSubscriptionInfoList();
            if (activeSubscriptionInfoList != null && activeSubscriptionInfoList.size() != 0) {
                if (this.mTargetWifiConfig.carrierId == -1) {
                    return true;
                }
                Iterator<SubscriptionInfo> it = activeSubscriptionInfoList.iterator();
                while (it.hasNext()) {
                    if (it.next().getCarrierId() == this.mTargetWifiConfig.carrierId) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final boolean canDisconnect() {
        if (getConnectedState() == 2) {
            return true;
        }
        return false;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public boolean canSetAutoJoinEnabled() {
        if (!isSaved() && !isSuggestion()) {
            return false;
        }
        return true;
    }

    public boolean canSetMeteredChoice() {
        if (getWifiConfiguration() != null) {
            return true;
        }
        return false;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized boolean canSignIn() {
        boolean z;
        NetworkCapabilities networkCapabilities;
        if (this.mNetwork != null && (networkCapabilities = this.mNetworkCapabilities) != null) {
            if (networkCapabilities.hasCapability(17)) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0171  */
    @Override // com.android.wifitrackerlib.WifiEntry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void connect(final com.android.wifitrackerlib.WifiEntry.ConnectCallback r9) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wifitrackerlib.StandardWifiEntry.connect(com.android.wifitrackerlib.WifiEntry$ConnectCallback):void");
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public synchronized boolean connectionInfoMatches(WifiInfo wifiInfo) {
        if (!wifiInfo.isPasspointAp() && !wifiInfo.isOsuAp()) {
            Iterator it = ((ArrayMap) this.mMatchingWifiConfigs).values().iterator();
            while (it.hasNext()) {
                if (((WifiConfiguration) it.next()).networkId == wifiInfo.getNetworkId()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final String getBandSummary(int i, WifiInfo wifiInfo) {
        String stringJoiner;
        String bandString;
        String bandString2;
        if (i == 2) {
            setBand(wifiInfo.getFrequency());
            synchronized (this) {
                bandString2 = Utils.getBandString(this.mBand, this.mContext);
            }
            return bandString2;
        }
        if (((ArrayList) this.mTargetScanResults).isEmpty()) {
            synchronized (this) {
                bandString = Utils.getBandString(this.mBand, this.mContext);
            }
            return bandString;
        }
        Context context = this.mContext;
        ScanResult scanResult = (ScanResult) ((ArrayList) this.mTargetScanResults).get(0);
        List list = Utils.defaultSsidList;
        synchronized (Utils.class) {
            StringJoiner stringJoiner2 = new StringJoiner(" + ");
            if (scanResult.getWifiStandard() == 8) {
                Iterator<MloLink> it = scanResult.getAffiliatedMloLinks().iterator();
                while (it.hasNext()) {
                    int band = it.next().getBand();
                    int i2 = 1;
                    if (band != 1) {
                        if (band != 2) {
                            if (band != 8) {
                                if (band != 16) {
                                    i2 = -1;
                                } else {
                                    i2 = 3;
                                }
                            } else {
                                i2 = 2;
                            }
                        }
                    } else {
                        i2 = 0;
                    }
                    stringJoiner2.add(Utils.getBandString(i2, context));
                }
            }
            stringJoiner = stringJoiner2.toString();
        }
        if (TextUtils.isEmpty(stringJoiner)) {
            synchronized (this) {
                stringJoiner = Utils.getBandString(this.mBand, this.mContext);
            }
        }
        return stringJoiner;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final String getKey() {
        return this.mKey.toString();
    }

    public synchronized int getMeteredChoice() {
        WifiConfiguration wifiConfiguration;
        if (!isSuggestion() && (wifiConfiguration = this.mTargetWifiConfig) != null) {
            int i = wifiConfiguration.meteredOverride;
            if (i == 1) {
                return 1;
            }
            if (i == 2) {
                return 2;
            }
        }
        return 0;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final String getNetworkSelectionDescription() {
        return Utils.getNetworkSelectionDescription(getWifiConfiguration());
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized String getScanResultDescription() {
        if (((ArrayList) this.mTargetScanResults).size() == 0) {
            return "";
        }
        return "[" + getScanResultDescription(2400, KnoxAiManagerInternal.CONN_MAX_WAIT_TIME) + ";" + getScanResultDescription(4900, 5900) + ";" + getScanResultDescription(5925, 7125) + ";" + getScanResultDescription(58320, 70200) + "]";
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized List getSecurityTypes() {
        return new ArrayList(this.mTargetSecurityTypes);
    }

    public final SemWifiManager getSemWifiManager() {
        if (this.mSemWifiManager == null) {
            this.mSemWifiManager = (SemWifiManager) this.mContext.getSystemService(WiFiManagerExt.SEM_WIFI_SERVICE);
        }
        return this.mSemWifiManager;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final String getSsid() {
        return this.mKey.mScanResultKey.mSsid;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized String getStandardString() {
        WifiInfo wifiInfo = this.mWifiInfo;
        if (wifiInfo != null) {
            return Utils.getStandardString(wifiInfo.getWifiStandard(), this.mContext);
        }
        if (!((ArrayList) this.mTargetScanResults).isEmpty()) {
            return Utils.getStandardString(((ScanResult) ((ArrayList) this.mTargetScanResults).get(0)).getWifiStandard(), this.mContext);
        }
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:97:0x0174 A[Catch: all -> 0x0222, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x000f, B:12:0x001e, B:16:0x0029, B:20:0x0042, B:21:0x0075, B:23:0x0079, B:24:0x0082, B:26:0x0088, B:28:0x008f, B:30:0x0095, B:32:0x0099, B:36:0x00a6, B:38:0x00b2, B:39:0x00b5, B:43:0x00bb, B:45:0x00c1, B:47:0x00cd, B:48:0x00d0, B:50:0x00d6, B:52:0x00df, B:54:0x00e5, B:56:0x00eb, B:58:0x00ef, B:60:0x00f5, B:63:0x00fa, B:72:0x010b, B:73:0x0113, B:74:0x011b, B:75:0x0123, B:77:0x012a, B:79:0x0130, B:80:0x0133, B:82:0x0139, B:84:0x013f, B:86:0x0145, B:88:0x0149, B:90:0x014d, B:94:0x0154, B:95:0x016e, B:97:0x0174, B:98:0x0160, B:101:0x0179, B:103:0x017f, B:105:0x0193, B:106:0x0197, B:108:0x019d, B:109:0x01a1, B:111:0x01ad, B:112:0x01b0, B:114:0x01b8, B:116:0x01be, B:119:0x01c5, B:121:0x01ce, B:122:0x01d3, B:124:0x01d9, B:125:0x01e1, B:127:0x01e7, B:128:0x01eb, B:130:0x01f1, B:132:0x01f7, B:133:0x020d, B:135:0x0219, B:136:0x021c, B:139:0x0055, B:140:0x0062, B:141:0x006b, B:142:0x0015), top: B:3:0x0003 }] */
    @Override // com.android.wifitrackerlib.WifiEntry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized java.lang.String getSummary(boolean r11) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wifitrackerlib.StandardWifiEntry.getSummary(boolean):java.lang.String");
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final String getTitle() {
        return this.mKey.mScanResultKey.mSsid;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public synchronized WifiConfiguration getWifiConfiguration() {
        return this.mTargetWifiConfig;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public synchronized boolean isAutoJoinEnabled() {
        WifiConfiguration wifiConfiguration = this.mTargetWifiConfig;
        if (wifiConfiguration == null) {
            return true;
        }
        return wifiConfiguration.allowAutojoin;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r0.meteredHint != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isMetered() {
        /*
            r2 = this;
            monitor-enter(r2)
            int r0 = r2.getMeteredChoice()     // Catch: java.lang.Throwable -> L14
            r1 = 1
            if (r0 == r1) goto L12
            android.net.wifi.WifiConfiguration r0 = r2.mTargetWifiConfig     // Catch: java.lang.Throwable -> L14
            if (r0 == 0) goto L11
            boolean r0 = r0.meteredHint     // Catch: java.lang.Throwable -> L14
            if (r0 == 0) goto L11
            goto L12
        L11:
            r1 = 0
        L12:
            monitor-exit(r2)
            return r1
        L14:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wifitrackerlib.StandardWifiEntry.isMetered():boolean");
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public synchronized boolean isSaved() {
        boolean z;
        if (this.mTargetWifiConfig != null) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public synchronized boolean isSuggestion() {
        boolean z;
        WifiConfiguration wifiConfiguration = this.mTargetWifiConfig;
        if (wifiConfiguration != null) {
            if (wifiConfiguration.fromWifiNetworkSuggestion) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized void onNetworkCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        super.onNetworkCapabilitiesChanged(network, networkCapabilities);
        canSignIn();
    }

    public final synchronized void semUpdateScores(WifiQoSScoredCache wifiQoSScoredCache) {
        WifiScoredNetwork wifiScoredNetwork;
        Iterator it = ((ArrayList) this.mTargetScanResults).iterator();
        while (it.hasNext()) {
            ScanResult scanResult = (ScanResult) it.next();
            wifiQoSScoredCache.getClass();
            String str = scanResult.BSSID;
            if (TextUtils.isEmpty(str)) {
                wifiScoredNetwork = null;
            } else {
                synchronized (wifiQoSScoredCache.mLock) {
                    wifiScoredNetwork = (WifiScoredNetwork) ((HashMap) wifiQoSScoredCache.mCache).get(str);
                }
            }
            if (wifiScoredNetwork != null) {
                ((HashMap) this.mSemFlags.qosScoredNetworkCache).put(scanResult.BSSID, wifiScoredNetwork);
            }
        }
    }

    public final synchronized void semUpdateSemWifiConfig(Map map) {
        WifiConfiguration wifiConfiguration = this.mTargetWifiConfig;
        if (wifiConfiguration != null) {
            semUpdateFlags((SemWifiConfiguration) map.get(wifiConfiguration.getKey()));
        }
        notifyOnUpdated();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
    
        if (r0.getDisableReasonCounter(5) > 0) goto L21;
     */
    @Override // com.android.wifitrackerlib.WifiEntry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean shouldEditBeforeConnect() {
        /*
            r3 = this;
            monitor-enter(r3)
            android.net.wifi.WifiConfiguration r0 = r3.getWifiConfiguration()     // Catch: java.lang.Throwable -> L36
            r1 = 0
            if (r0 != 0) goto La
            monitor-exit(r3)
            return r1
        La:
            android.net.wifi.WifiConfiguration$NetworkSelectionStatus r0 = r0.getNetworkSelectionStatus()     // Catch: java.lang.Throwable -> L36
            int r2 = r0.getNetworkSelectionStatus()     // Catch: java.lang.Throwable -> L36
            if (r2 != 0) goto L1a
            boolean r2 = r0.hasEverConnected()     // Catch: java.lang.Throwable -> L36
            if (r2 != 0) goto L31
        L1a:
            r2 = 2
            int r2 = r0.getDisableReasonCounter(r2)     // Catch: java.lang.Throwable -> L36
            if (r2 > 0) goto L33
            r2 = 8
            int r2 = r0.getDisableReasonCounter(r2)     // Catch: java.lang.Throwable -> L36
            if (r2 > 0) goto L33
            r2 = 5
            int r0 = r0.getDisableReasonCounter(r2)     // Catch: java.lang.Throwable -> L36
            if (r0 <= 0) goto L31
            goto L33
        L31:
            monitor-exit(r3)
            return r1
        L33:
            monitor-exit(r3)
            r3 = 1
            return r3
        L36:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wifitrackerlib.StandardWifiEntry.shouldEditBeforeConnect():boolean");
    }

    public final void updateAdminRestrictions() {
        boolean z;
        int i;
        UserManager userManager = this.mUserManager;
        if (userManager != null) {
            this.mHasAddConfigUserRestriction = userManager.hasUserRestriction("no_add_wifi_config");
        }
        DevicePolicyManager devicePolicyManager = this.mDevicePolicyManager;
        if (devicePolicyManager != null) {
            int minimumRequiredWifiSecurityLevel = devicePolicyManager.getMinimumRequiredWifiSecurityLevel();
            if (minimumRequiredWifiSecurityLevel != 0) {
                Iterator it = ((ArrayList) getSecurityTypes()).iterator();
                while (true) {
                    if (it.hasNext()) {
                        int intValue = ((Integer) it.next()).intValue();
                        List list = Utils.defaultSsidList;
                        switch (intValue) {
                            case 0:
                            case 6:
                                i = 0;
                                break;
                            case 1:
                            case 2:
                            case 4:
                            case 7:
                                i = 1;
                                break;
                            case 3:
                            case 8:
                            case 9:
                            case 11:
                            case 12:
                                i = 2;
                                break;
                            case 5:
                                i = 3;
                                break;
                            case 10:
                            default:
                                i = -1;
                                break;
                        }
                        if (i != -1 && minimumRequiredWifiSecurityLevel <= i) {
                            z = true;
                        }
                    } else {
                        z = false;
                    }
                }
                if (!z) {
                    this.mIsAdminRestricted = true;
                    return;
                }
            }
            WifiSsidPolicy wifiSsidPolicy = devicePolicyManager.getWifiSsidPolicy();
            if (wifiSsidPolicy != null) {
                int policyType = wifiSsidPolicy.getPolicyType();
                Set<WifiSsid> ssids = wifiSsidPolicy.getSsids();
                if (policyType == 0 && !ssids.contains(WifiSsid.fromBytes(getSsid().getBytes(StandardCharsets.UTF_8)))) {
                    this.mIsAdminRestricted = true;
                    return;
                } else if (policyType == 1 && ssids.contains(WifiSsid.fromBytes(getSsid().getBytes(StandardCharsets.UTF_8)))) {
                    this.mIsAdminRestricted = true;
                    return;
                }
            }
        }
        this.mIsAdminRestricted = false;
    }

    public final synchronized void updateConfig(List list) {
        boolean z;
        if (list == null) {
            list = Collections.emptyList();
        }
        ScanResultKey scanResultKey = this.mKey.mScanResultKey;
        String str = scanResultKey.mSsid;
        Set set = scanResultKey.mSecurityTypes;
        ((ArrayMap) this.mMatchingWifiConfigs).clear();
        Iterator it = list.iterator();
        while (true) {
            boolean z2 = true;
            if (it.hasNext()) {
                WifiConfiguration wifiConfiguration = (WifiConfiguration) it.next();
                if (TextUtils.equals(str, WifiInfo.sanitizeSsid(wifiConfiguration.SSID))) {
                    Iterator it2 = Utils.getSecurityTypesFromWifiConfiguration(wifiConfiguration).iterator();
                    while (it2.hasNext()) {
                        int intValue = ((Integer) it2.next()).intValue();
                        ArraySet arraySet = (ArraySet) set;
                        if (arraySet.contains(Integer.valueOf(intValue))) {
                            if (intValue != 4) {
                                if (intValue != 5) {
                                    if (intValue != 6) {
                                        z = true;
                                    } else {
                                        z = this.mIsEnhancedOpenSupported;
                                    }
                                } else {
                                    z = this.mIsWpa3SuiteBSupported;
                                }
                            } else {
                                z = this.mIsWpa3SaeSupported;
                            }
                            if (z) {
                                ((ArrayMap) this.mMatchingWifiConfigs).put(Integer.valueOf(intValue), wifiConfiguration);
                            }
                        } else {
                            throw new IllegalArgumentException("Attempted to update with wrong security! Expected one of: " + arraySet + ", Actual: " + intValue + ", Config: " + wifiConfiguration);
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Attempted to update with wrong SSID! Expected: " + str + ", Actual: " + WifiInfo.sanitizeSsid(wifiConfiguration.SSID) + ", Config: " + wifiConfiguration);
                }
            } else {
                updateSecurityTypes();
                updateTargetScanResultInfo();
                WifiConfiguration wifiConfiguration2 = this.mTargetWifiConfig;
                if (wifiConfiguration2 != null) {
                    if (wifiConfiguration2.carrierId == -1 || !wifiConfiguration2.isEphemeral() || !wifiConfiguration2.fromWifiNetworkSuggestion) {
                        z2 = false;
                    }
                    this.mSemFlags.isCarrierNetwork = z2;
                }
                notifyOnUpdated();
            }
        }
    }

    public final synchronized void updateScanResultInfo(List list) {
        boolean z;
        if (list == null) {
            list = new ArrayList();
        }
        SemWifiEntryFlags semWifiEntryFlags = this.mSemFlags;
        semWifiEntryFlags.hasVHTVSICapabilities = false;
        semWifiEntryFlags.wifiStandard = 0;
        semWifiEntryFlags.has6EStandard = false;
        semWifiEntryFlags.staCount = -1;
        String str = this.mKey.mScanResultKey.mSsid;
        int i = 0;
        for (ScanResult scanResult : list) {
            if (TextUtils.equals(scanResult.SSID, str)) {
                semUpdateFlags(scanResult);
                int i2 = scanResult.frequency;
                if (i < i2) {
                    setBand(i2);
                    this.mFrequency = i2;
                    i = i2;
                }
            } else {
                throw new IllegalArgumentException("Attempted to update with wrong SSID! Expected: " + str + ", Actual: " + scanResult.SSID + ", ScanResult: " + scanResult);
            }
        }
        ((ArrayMap) this.mMatchingScanResults).clear();
        Set set = this.mKey.mScanResultKey.mSecurityTypes;
        for (ScanResult scanResult2 : list) {
            List list2 = Utils.defaultSsidList;
            ArrayList arrayList = new ArrayList();
            for (int i3 : scanResult2.getSecurityTypes()) {
                arrayList.add(Integer.valueOf(i3));
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                int intValue = ((Integer) it.next()).intValue();
                if (((ArraySet) set).contains(Integer.valueOf(intValue))) {
                    if (intValue != 4) {
                        if (intValue != 5) {
                            if (intValue != 6) {
                                z = true;
                            } else {
                                z = this.mIsEnhancedOpenSupported;
                            }
                        } else {
                            z = this.mIsWpa3SuiteBSupported;
                        }
                    } else {
                        z = this.mIsWpa3SaeSupported;
                    }
                    if (z) {
                        if (!((ArrayMap) this.mMatchingScanResults).containsKey(Integer.valueOf(intValue))) {
                            ((ArrayMap) this.mMatchingScanResults).put(Integer.valueOf(intValue), new ArrayList());
                        }
                        ((List) ((ArrayMap) this.mMatchingScanResults).get(Integer.valueOf(intValue))).add(scanResult2);
                    }
                }
            }
        }
        updateSecurityTypes();
        updateTargetScanResultInfo();
        notifyOnUpdated();
    }

    @Override // com.android.wifitrackerlib.WifiEntry
    public final synchronized void updateSecurityTypes() {
        boolean z;
        this.mTargetSecurityTypes.clear();
        WifiInfo wifiInfo = this.mWifiInfo;
        if (wifiInfo != null && wifiInfo.getCurrentSecurityType() != -1) {
            this.mTargetSecurityTypes.add(Integer.valueOf(this.mWifiInfo.getCurrentSecurityType()));
        }
        Set keySet = this.mMatchingWifiConfigs.keySet();
        if (this.mTargetSecurityTypes.isEmpty() && this.mKey.mIsTargetingNewNetworks) {
            Set keySet2 = this.mMatchingScanResults.keySet();
            Iterator it = keySet.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (keySet2.contains(Integer.valueOf(((Integer) it.next()).intValue()))) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                this.mTargetSecurityTypes.addAll(keySet2);
            }
        }
        if (this.mTargetSecurityTypes.isEmpty()) {
            this.mTargetSecurityTypes.addAll(keySet);
        }
        if (this.mTargetSecurityTypes.isEmpty()) {
            this.mTargetSecurityTypes.addAll(this.mKey.mScanResultKey.mSecurityTypes);
        }
        this.mTargetWifiConfig = (WifiConfiguration) this.mMatchingWifiConfigs.get(Integer.valueOf(Utils.getSingleSecurityTypeFromMultipleSecurityTypes(this.mTargetSecurityTypes)));
        ArraySet arraySet = new ArraySet();
        Iterator it2 = this.mTargetSecurityTypes.iterator();
        while (it2.hasNext()) {
            int intValue = ((Integer) it2.next()).intValue();
            if (this.mMatchingScanResults.containsKey(Integer.valueOf(intValue))) {
                arraySet.addAll((Collection) this.mMatchingScanResults.get(Integer.valueOf(intValue)));
            }
        }
        this.mTargetScanResults.clear();
        this.mTargetScanResults.addAll(arraySet);
    }

    public final synchronized void updateTargetScanResultInfo() {
        int i;
        ScanResult bestScanResultByLevel = Utils.getBestScanResultByLevel(this.mTargetScanResults);
        if (bestScanResultByLevel != null) {
            updateBestRssi(bestScanResultByLevel);
            this.mBssid = bestScanResultByLevel.BSSID;
        }
        if (getConnectedState() == 0) {
            if (bestScanResultByLevel != null) {
                i = SemWifiUtils.calculateSignalLevel(this.mRssi);
            } else {
                i = -1;
            }
            this.mLevel = i;
            if (i == -1) {
                this.mRssi = -127;
            }
        }
        semUpdateQoSInformation();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ScanResultKey {
        public final Set mSecurityTypes;
        public final String mSsid;

        public ScanResultKey() {
            this.mSecurityTypes = new ArraySet();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ScanResultKey.class != obj.getClass()) {
                return false;
            }
            ScanResultKey scanResultKey = (ScanResultKey) obj;
            if (TextUtils.equals(this.mSsid, scanResultKey.mSsid) && this.mSecurityTypes.equals(scanResultKey.mSecurityTypes)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.mSsid, this.mSecurityTypes);
        }

        public final String toString() {
            Set set = this.mSecurityTypes;
            JSONObject jSONObject = new JSONObject();
            try {
                String str = this.mSsid;
                if (str != null) {
                    jSONObject.put("SSID", str);
                }
                if (!set.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(((Integer) it.next()).intValue());
                    }
                    jSONObject.put("SECURITY_TYPES", jSONArray);
                }
            } catch (JSONException e) {
                Log.e("StandardWifiEntry", "JSONException while converting ScanResultKey to string: " + e);
            }
            return jSONObject.toString();
        }

        public ScanResultKey(String str, List<Integer> list) {
            this.mSecurityTypes = new ArraySet();
            this.mSsid = str;
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                if (intValue == 0) {
                    this.mSecurityTypes.add(6);
                } else if (intValue == 6) {
                    this.mSecurityTypes.add(0);
                } else if (intValue == 9) {
                    this.mSecurityTypes.add(3);
                } else if (intValue == 2) {
                    this.mSecurityTypes.add(4);
                } else if (intValue == 3) {
                    this.mSecurityTypes.add(9);
                } else if (intValue == 4) {
                    this.mSecurityTypes.add(2);
                } else if (intValue != 11 && intValue != 12) {
                }
                this.mSecurityTypes.add(Integer.valueOf(intValue));
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public ScanResultKey(android.net.wifi.ScanResult r6) {
            /*
                r5 = this;
                java.lang.String r0 = r6.SSID
                java.util.List r1 = com.android.wifitrackerlib.Utils.defaultSsidList
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>()
                int[] r6 = r6.getSecurityTypes()
                int r2 = r6.length
                r3 = 0
            Lf:
                if (r3 >= r2) goto L1d
                r4 = r6[r3]
                java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                r1.add(r4)
                int r3 = r3 + 1
                goto Lf
            L1d:
                r5.<init>(r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wifitrackerlib.StandardWifiEntry.ScanResultKey.<init>(android.net.wifi.ScanResult):void");
        }

        public ScanResultKey(WifiConfiguration wifiConfiguration) {
            this(WifiInfo.sanitizeSsid(wifiConfiguration.SSID), Utils.getSecurityTypesFromWifiConfiguration(wifiConfiguration));
        }

        public ScanResultKey(String str) {
            this.mSecurityTypes = new ArraySet();
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.mSsid = jSONObject.getString("SSID");
                JSONArray jSONArray = jSONObject.getJSONArray("SECURITY_TYPES");
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.mSecurityTypes.add(Integer.valueOf(jSONArray.getInt(i)));
                }
            } catch (JSONException e) {
                Log.wtf("StandardWifiEntry", "JSONException while constructing ScanResultKey from string: " + e);
            }
        }
    }

    public final synchronized String getScanResultDescription(final int i, final int i2) {
        final int i3 = 0;
        List list = (List) this.mTargetScanResults.stream().filter(new Predicate() { // from class: com.android.wifitrackerlib.StandardWifiEntry$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                int i4 = i;
                int i5 = i2;
                int i6 = ((ScanResult) obj).frequency;
                if (i6 >= i4 && i6 <= i5) {
                    return true;
                }
                return false;
            }
        }).sorted(Comparator.comparingInt(new ToIntFunction() { // from class: com.android.wifitrackerlib.StandardWifiEntry$$ExternalSyntheticLambda1
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                switch (i3) {
                    case 0:
                        return ((ScanResult) obj).level * (-1);
                    default:
                        return ((ScanResult) obj).level;
                }
            }
        })).collect(Collectors.toList());
        int size = list.size();
        if (size == 0) {
            return "";
        }
        final StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(size);
        sb.append(")");
        if (size > 4) {
            final int i4 = 1;
            int asInt = list.stream().mapToInt(new ToIntFunction() { // from class: com.android.wifitrackerlib.StandardWifiEntry$$ExternalSyntheticLambda1
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    switch (i4) {
                        case 0:
                            return ((ScanResult) obj).level * (-1);
                        default:
                            return ((ScanResult) obj).level;
                    }
                }
            }).max().getAsInt();
            sb.append("max=");
            sb.append(asInt);
            sb.append(",");
        }
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        list.forEach(new Consumer() { // from class: com.android.wifitrackerlib.StandardWifiEntry$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                String sb2;
                StandardWifiEntry standardWifiEntry = StandardWifiEntry.this;
                StringBuilder sb3 = sb;
                long j = elapsedRealtime;
                ScanResult scanResult = (ScanResult) obj;
                synchronized (standardWifiEntry) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(" \n{");
                    sb4.append(scanResult.BSSID);
                    WifiInfo wifiInfo = standardWifiEntry.mWifiInfo;
                    if (wifiInfo != null && scanResult.BSSID.equals(wifiInfo.getBSSID())) {
                        sb4.append("*");
                    }
                    sb4.append("=");
                    sb4.append(scanResult.frequency);
                    sb4.append(",");
                    sb4.append(scanResult.level);
                    int wifiStandard = scanResult.getWifiStandard();
                    sb4.append(",");
                    sb4.append(Utils.getStandardString(wifiStandard, standardWifiEntry.mContext));
                    if (wifiStandard == 8) {
                        sb4.append(",mldMac=");
                        sb4.append(scanResult.getApMldMacAddress());
                        sb4.append(",linkId=");
                        sb4.append(scanResult.getApMloLinkId());
                        sb4.append(",affLinks=");
                        StringJoiner stringJoiner = new StringJoiner(",", "[", "]");
                        for (MloLink mloLink : scanResult.getAffiliatedMloLinks()) {
                            int band = mloLink.getBand();
                            int i5 = 1;
                            if (band != 1) {
                                i5 = 2;
                                if (band != 2) {
                                    if (band != 8) {
                                        i5 = 16;
                                        if (band != 16) {
                                            Log.e("StandardWifiEntry", "Unknown MLO link band: " + mloLink.getBand());
                                            i5 = -1;
                                        }
                                    } else {
                                        i5 = 8;
                                    }
                                }
                            }
                            stringJoiner.add(new StringJoiner(",", "{", "}").add("apMacAddr=" + mloLink.getApMacAddress()).add("freq=" + ScanResult.convertChannelToFrequencyMhzIfSupported(mloLink.getChannel(), i5)).toString());
                        }
                        sb4.append(stringJoiner.toString());
                    }
                    int i6 = ((int) (j - (scanResult.timestamp / 1000))) / 1000;
                    sb4.append(",");
                    sb4.append(i6);
                    sb4.append("s");
                    sb4.append("}");
                    sb2 = sb4.toString();
                }
                sb3.append(sb2);
            }
        });
        return sb.toString();
    }

    public StandardWifiEntry(WifiTrackerInjector wifiTrackerInjector, Context context, Handler handler, StandardWifiEntryKey standardWifiEntryKey, List<WifiConfiguration> list, List<ScanResult> list2, WifiManager wifiManager, boolean z) {
        this(wifiTrackerInjector, context, handler, standardWifiEntryKey, wifiManager, z);
        if (list != null && !list.isEmpty()) {
            updateConfig(list);
        }
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        updateScanResultInfo(list2);
    }
}
