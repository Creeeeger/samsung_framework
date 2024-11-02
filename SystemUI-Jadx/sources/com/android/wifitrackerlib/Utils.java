package com.android.wifitrackerlib;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.TransportInfo;
import android.net.vcn.VcnTransportInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.android.systemui.R;
import com.samsung.android.wifi.SemWifiManager;
import com.samsung.android.wifitrackerlib.SemWifiEntryFlags;
import com.samsung.android.wifitrackerlib.WcmUtils;
import com.sec.ims.extensions.WiFiManagerExt;
import com.sec.ims.settings.ImsProfile;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.StringJoiner;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Utils {
    public static final List defaultSsidList = Arrays.asList("linksys", "netgear", "dlink", "wireless", "2wire", "iptime", "iptime_5g", "sm_base_17f_5g-1");

    public static String getAutoConnectDescription(Context context, WifiEntry wifiEntry) {
        if (context == null || wifiEntry == null || !wifiEntry.canSetAutoJoinEnabled() || wifiEntry.isAutoJoinEnabled()) {
            return "";
        }
        return context.getString(R.string.wifi_auto_reconnect_disabled);
    }

    public static String getBandString(int i, Context context) {
        if (i == 0) {
            return context.getResources().getString(R.string.wifitrackerlib_wifi_band_24_ghz);
        }
        if (i == 1) {
            return context.getResources().getString(R.string.wifitrackerlib_wifi_band_5_ghz);
        }
        if (i == 2) {
            return context.getResources().getString(R.string.wifitrackerlib_wifi_band_6_ghz);
        }
        if (i == 3) {
            return context.getResources().getString(R.string.wifitrackerlib_wifi_band_60_ghz);
        }
        return context.getResources().getString(R.string.wifitrackerlib_wifi_band_unknown);
    }

    public static ScanResult getBestScanResultByLevel(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return (ScanResult) Collections.max(list, Comparator.comparingInt(new Utils$$ExternalSyntheticLambda0()));
    }

    public static String getCarrierNameForSubId(int i, Context context) {
        TelephonyManager telephonyManager;
        TelephonyManager createForSubscriptionId;
        CharSequence simCarrierIdName;
        if (i == -1 || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null || (createForSubscriptionId = telephonyManager.createForSubscriptionId(i)) == null || (simCarrierIdName = createForSubscriptionId.getSimCarrierIdName()) == null) {
            return null;
        }
        return simCarrierIdName.toString();
    }

    public static String getCarrierNetworkOffloadDescription(Context context, WifiEntry wifiEntry, WifiManager wifiManager) {
        WifiConfiguration wifiConfiguration = wifiEntry.getWifiConfiguration();
        if (context == null || wifiConfiguration == null || !wifiEntry.mSemFlags.isCarrierNetwork || wifiManager.isCarrierNetworkOffloadEnabled(wifiConfiguration.subscriptionId, false)) {
            return "";
        }
        return context.getString(R.string.wifi_auto_reconnect_disabled);
    }

    public static String getConnectedDescription(Context context, WifiInfo wifiInfo, WifiConfiguration wifiConfiguration, NetworkCapabilities networkCapabilities) {
        String str;
        StringJoiner stringJoiner = new StringJoiner(context.getString(R.string.wifitrackerlib_summary_separator));
        if (wifiConfiguration != null && (wifiConfiguration.fromWifiNetworkSuggestion || wifiConfiguration.fromWifiNetworkSpecifier)) {
            if (wifiInfo != null) {
                str = wifiInfo.getRequestingPackageName();
            } else {
                str = null;
            }
            if (!TextUtils.isEmpty(str)) {
                String carrierNameForSubId = getCarrierNameForSubId(getSubIdForConfig(context, wifiConfiguration), context);
                String str2 = "";
                if (TextUtils.isEmpty(carrierNameForSubId)) {
                    try {
                        str2 = context.getPackageManager().getApplicationInfo(str, 0).loadLabel(context.getPackageManager()).toString();
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                String currentNetworkCapabilitiesInformation = getCurrentNetworkCapabilitiesInformation(context, networkCapabilities);
                if (currentNetworkCapabilitiesInformation != null && !TextUtils.isEmpty(currentNetworkCapabilitiesInformation)) {
                    return currentNetworkCapabilitiesInformation;
                }
                Object[] objArr = new Object[1];
                if (carrierNameForSubId == null) {
                    carrierNameForSubId = str2;
                }
                objArr[0] = carrierNameForSubId;
                return context.getString(R.string.wifitrackerlib_connected_via_app, objArr);
            }
        }
        String currentNetworkCapabilitiesInformation2 = getCurrentNetworkCapabilitiesInformation(context, networkCapabilities);
        if (!TextUtils.isEmpty(currentNetworkCapabilitiesInformation2)) {
            stringJoiner.add(currentNetworkCapabilitiesInformation2);
        }
        if (stringJoiner.length() == 0) {
            return context.getResources().getStringArray(R.array.wifitrackerlib_wifi_status)[NetworkInfo.DetailedState.CONNECTED.ordinal()];
        }
        return stringJoiner.toString();
    }

    public static String getConnectingDescription(Context context, NetworkInfo networkInfo) {
        if (context == null || networkInfo == null) {
            return "";
        }
        String[] stringArray = context.getResources().getStringArray(R.array.wifitrackerlib_wifi_status);
        int ordinal = NetworkInfo.DetailedState.CONNECTING.ordinal();
        if (ordinal >= stringArray.length) {
            return "";
        }
        return stringArray[ordinal];
    }

    public static String getCurrentNetworkCapabilitiesInformation(Context context, NetworkCapabilities networkCapabilities) {
        boolean z;
        boolean z2;
        boolean z3;
        if (context == null) {
            return "";
        }
        int i = 0;
        if (networkCapabilities == null) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            for (Network network : connectivityManager.getAllNetworks()) {
                if (network != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(network)) != null) {
                    if (networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(6)) {
                        break;
                    }
                    networkCapabilities = null;
                }
            }
            if (networkCapabilities == null) {
                return "";
            }
        }
        SemWifiManager semWifiManager = (SemWifiManager) context.getSystemService(WiFiManagerExt.SEM_WIFI_SERVICE);
        if (networkCapabilities.hasCapability(17)) {
            return context.getString(R.string.wifi_sign_in_to_the_network);
        }
        if (WcmUtils.isWcmSupported == -1) {
            WcmUtils.isWcmSupported = 1;
        }
        if (WcmUtils.isWcmSupported == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z && !networkCapabilities.hasCapability(24)) {
            if (networkCapabilities.hasCapability(16) || networkCapabilities.isPrivateDnsBroken()) {
                return "";
            }
            return context.getString(R.string.wifi_internet_may_not_be_available);
        }
        if (WcmUtils.isWcmSupported == -1) {
            WcmUtils.isWcmSupported = 1;
        }
        if (WcmUtils.isWcmSupported == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            return context.getString(R.string.wifi_internet_may_not_be_available);
        }
        if (semWifiManager != null && semWifiManager.getWcmEverQualityTested() != 1) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (z3) {
            if (semWifiManager != null) {
                i = semWifiManager.getCurrentStatusMode();
            }
            if (i != 1 && i != 2) {
                if (i == 3) {
                    return context.getString(R.string.wifi_reconnecting);
                }
            } else {
                return context.getString(R.string.wifi_internet_may_not_be_available);
            }
        } else {
            return context.getString(R.string.wifi_connected_checking_quality);
        }
        return "";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0100, code lost:
    
        if (r9 != 11) goto L138;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getDisconnectedDescription(android.content.Context r7, android.net.wifi.WifiConfiguration r8, com.samsung.android.wifitrackerlib.SemWifiEntryFlags r9) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wifitrackerlib.Utils.getDisconnectedDescription(android.content.Context, android.net.wifi.WifiConfiguration, com.samsung.android.wifitrackerlib.SemWifiEntryFlags):java.lang.String");
    }

    public static InetAddress getNetworkPart(InetAddress inetAddress, int i) {
        byte[] address = inetAddress.getAddress();
        if (i >= 0 && i <= address.length * 8) {
            int i2 = i / 8;
            byte b = (byte) (255 << (8 - (i % 8)));
            if (i2 < address.length) {
                address[i2] = (byte) (b & address[i2]);
            }
            while (true) {
                i2++;
                if (i2 < address.length) {
                    address[i2] = 0;
                } else {
                    try {
                        return InetAddress.getByAddress(address);
                    } catch (UnknownHostException e) {
                        throw new IllegalArgumentException("getNetworkPart error - " + e.toString());
                    }
                }
            }
        } else {
            throw new IllegalArgumentException("IP address with " + address.length + " bytes has invalid prefix length " + i);
        }
    }

    public static String getNetworkSelectionDescription(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        WifiConfiguration.NetworkSelectionStatus networkSelectionStatus = wifiConfiguration.getNetworkSelectionStatus();
        if (networkSelectionStatus.getNetworkSelectionStatus() != 0) {
            sb.append(" (" + networkSelectionStatus.getNetworkStatusString());
            if (networkSelectionStatus.getDisableTime() > 0) {
                sb.append(" " + DateUtils.formatElapsedTime((System.currentTimeMillis() - networkSelectionStatus.getDisableTime()) / 1000));
            }
            sb.append(")");
        }
        int maxNetworkSelectionDisableReason = WifiConfiguration.NetworkSelectionStatus.getMaxNetworkSelectionDisableReason();
        for (int i = 0; i <= maxNetworkSelectionDisableReason; i++) {
            int disableReasonCounter = networkSelectionStatus.getDisableReasonCounter(i);
            if (disableReasonCounter != 0) {
                sb.append(" ");
                sb.append(WifiConfiguration.NetworkSelectionStatus.getNetworkSelectionDisableReasonString(i));
                sb.append("=");
                sb.append(disableReasonCounter);
            }
        }
        return sb.toString();
    }

    public static List getSecurityTypesFromWifiConfiguration(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration.allowedKeyManagement.get(14)) {
            return Arrays.asList(8);
        }
        if (wifiConfiguration.allowedKeyManagement.get(13)) {
            return Arrays.asList(7);
        }
        if (wifiConfiguration.allowedKeyManagement.get(10)) {
            return Arrays.asList(5);
        }
        if (wifiConfiguration.allowedKeyManagement.get(9)) {
            return Arrays.asList(6);
        }
        if (wifiConfiguration.allowedKeyManagement.get(8)) {
            return Arrays.asList(4);
        }
        if (wifiConfiguration.allowedKeyManagement.get(4)) {
            return Arrays.asList(2);
        }
        if (wifiConfiguration.allowedKeyManagement.get(2)) {
            if (wifiConfiguration.requirePmf && !wifiConfiguration.allowedPairwiseCiphers.get(1) && wifiConfiguration.allowedProtocols.get(1)) {
                return Arrays.asList(9);
            }
            return Arrays.asList(3, 9);
        }
        if (wifiConfiguration.allowedKeyManagement.get(1)) {
            return Arrays.asList(2);
        }
        if (wifiConfiguration.allowedKeyManagement.get(0) && wifiConfiguration.wepKeys != null) {
            int i = 0;
            while (true) {
                String[] strArr = wifiConfiguration.wepKeys;
                if (i >= strArr.length) {
                    break;
                }
                if (strArr[i] != null) {
                    return Arrays.asList(1);
                }
                i++;
            }
        }
        return Arrays.asList(0);
    }

    public static int getSingleSecurityTypeFromMultipleSecurityTypes(List list) {
        if (list.size() == 0) {
            return -1;
        }
        if (list.size() == 1) {
            return ((Integer) list.get(0)).intValue();
        }
        if (list.size() == 2) {
            if (list.contains(0)) {
                return 0;
            }
            if (list.contains(2)) {
                return 2;
            }
            if (list.contains(3)) {
                return 3;
            }
        }
        return ((Integer) list.get(0)).intValue();
    }

    public static String getStandardString(int i, Context context) {
        if (i != 1) {
            switch (i) {
                case 4:
                    return context.getString(R.string.wifitrackerlib_wifi_standard_11n);
                case 5:
                    return context.getString(R.string.wifitrackerlib_wifi_standard_11ac);
                case 6:
                    return context.getString(R.string.wifitrackerlib_wifi_standard_11ax);
                case 7:
                    return context.getString(R.string.wifitrackerlib_wifi_standard_11ad);
                case 8:
                    return context.getString(R.string.wifitrackerlib_wifi_standard_11be);
                default:
                    return context.getString(R.string.wifitrackerlib_wifi_standard_unknown);
            }
        }
        return context.getString(R.string.wifitrackerlib_wifi_standard_legacy);
    }

    public static int getSubIdForConfig(Context context, WifiConfiguration wifiConfiguration) {
        SubscriptionManager subscriptionManager;
        int i = -1;
        if (wifiConfiguration.carrierId == -1 || (subscriptionManager = (SubscriptionManager) context.getSystemService("telephony_subscription_service")) == null) {
            return -1;
        }
        List<SubscriptionInfo> activeSubscriptionInfoList = subscriptionManager.getActiveSubscriptionInfoList();
        if (activeSubscriptionInfoList != null && !activeSubscriptionInfoList.isEmpty()) {
            int defaultDataSubscriptionId = SubscriptionManager.getDefaultDataSubscriptionId();
            for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                if (subscriptionInfo.getCarrierId() == wifiConfiguration.carrierId && (i = subscriptionInfo.getSubscriptionId()) == defaultDataSubscriptionId) {
                    break;
                }
            }
        }
        return i;
    }

    public static String getVerboseLoggingDescription(WifiEntry wifiEntry, SemWifiEntryFlags semWifiEntryFlags) {
        String stringJoiner;
        if (BaseWifiTracker.sVerboseLogging && wifiEntry != null) {
            StringJoiner stringJoiner2 = new StringJoiner(" ");
            StringBuilder sb = new StringBuilder();
            int i = semWifiEntryFlags.wifiStandard;
            if (i != 0) {
                sb.append(i);
                if (semWifiEntryFlags.has6EStandard) {
                    sb.append(ImsProfile.TIMER_NAME_E);
                }
                sb.append(ImsProfile.TIMER_NAME_G);
            }
            if (semWifiEntryFlags.staCount >= 0) {
                sb.append(" STAs:");
                sb.append(semWifiEntryFlags.staCount);
            }
            if (semWifiEntryFlags.passpointConfiguration != null) {
                sb.append(" hs20");
            }
            if (semWifiEntryFlags.hasVHTVSICapabilities) {
                sb.append(" giga");
            }
            if (semWifiEntryFlags.isSamsungMobileHotspot) {
                sb.append(" sec-mhs");
            }
            if (semWifiEntryFlags.isCarrierNetwork) {
                sb.append(" carrier");
            }
            if (semWifiEntryFlags.isOpenRoamingNetwork) {
                sb.append(" oauth");
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                stringJoiner2.add(sb2);
            }
            synchronized (wifiEntry) {
                StringJoiner stringJoiner3 = new StringJoiner(" ");
                if (wifiEntry.getConnectedState() == 2 && wifiEntry.mWifiInfo != null) {
                    stringJoiner3.add("f = " + wifiEntry.mWifiInfo.getFrequency());
                    String bssid = wifiEntry.mWifiInfo.getBSSID();
                    if (bssid != null) {
                        stringJoiner3.add(bssid);
                    }
                    stringJoiner3.add("standard = " + wifiEntry.getStandardString());
                    stringJoiner3.add("rssi = " + wifiEntry.mWifiInfo.getRssi());
                    stringJoiner3.add("score = " + wifiEntry.mWifiInfo.getScore());
                    stringJoiner3.add(String.format(" tx=%.1f,", Double.valueOf(wifiEntry.mWifiInfo.getSuccessfulTxPacketsPerSecond())));
                    stringJoiner3.add(String.format("%.1f,", Double.valueOf(wifiEntry.mWifiInfo.getRetriedTxPacketsPerSecond())));
                    stringJoiner3.add(String.format("%.1f ", Double.valueOf(wifiEntry.mWifiInfo.getLostTxPacketsPerSecond())));
                    stringJoiner3.add(String.format("rx=%.1f", Double.valueOf(wifiEntry.mWifiInfo.getSuccessfulRxPacketsPerSecond())));
                    if (wifiEntry.mWifiInfo.getApMldMacAddress() != null) {
                        stringJoiner3.add("mldMac = " + wifiEntry.mWifiInfo.getApMldMacAddress());
                        stringJoiner3.add("linkId = " + wifiEntry.mWifiInfo.getApMloLinkId());
                        stringJoiner3.add("affLinks = " + Arrays.toString(wifiEntry.mWifiInfo.getAffiliatedMloLinks().toArray()));
                    }
                }
                stringJoiner = stringJoiner3.toString();
            }
            if (!TextUtils.isEmpty(stringJoiner)) {
                stringJoiner2.add(stringJoiner);
            }
            StringBuilder sb3 = new StringBuilder();
            if (wifiEntry.getConnectedState() == 2) {
                sb3.append("hasInternet:");
                sb3.append(wifiEntry.hasInternetAccess());
                sb3.append(", isDefaultNetwork:");
                sb3.append(wifiEntry.mIsDefaultNetwork);
                sb3.append(", isLowQuality:");
                sb3.append(wifiEntry.isLowQuality());
            }
            String sb4 = sb3.toString();
            if (!TextUtils.isEmpty(sb4)) {
                stringJoiner2.add(sb4);
            }
            String scanResultDescription = wifiEntry.getScanResultDescription();
            if (!TextUtils.isEmpty(scanResultDescription)) {
                stringJoiner2.add(scanResultDescription);
            }
            String networkSelectionDescription = wifiEntry.getNetworkSelectionDescription();
            if (!TextUtils.isEmpty(networkSelectionDescription)) {
                stringJoiner2.add(networkSelectionDescription);
            }
            return stringJoiner2.toString();
        }
        return "";
    }

    public static String getWarningDescription(Context context, WifiEntry wifiEntry) {
        if (context != null && wifiEntry != null) {
            if (wifiEntry.getSecurity() == 0) {
                return context.getString(R.string.wifi_open_warning_summary);
            }
            if (wifiEntry.getSecurity() == 1) {
                return context.getString(R.string.wifi_wep_warning_summary);
            }
            if (defaultSsidList.contains(wifiEntry.getTitle().toLowerCase())) {
                return context.getString(R.string.wifi_default_ssid_warning_summary);
            }
        }
        return "";
    }

    public static WifiInfo getWifiInfo(NetworkCapabilities networkCapabilities) {
        TransportInfo transportInfo = networkCapabilities.getTransportInfo();
        if (transportInfo instanceof WifiInfo) {
            return (WifiInfo) transportInfo;
        }
        VcnTransportInfo transportInfo2 = networkCapabilities.getTransportInfo();
        if (transportInfo2 instanceof VcnTransportInfo) {
            return transportInfo2.getWifiInfo();
        }
        return null;
    }

    public static boolean shouldSetHiddenSsid(String str, WifiManager wifiManager) {
        List<WifiConfiguration> configuredNetworks;
        if (TextUtils.isEmpty(str) || wifiManager == null || (configuredNetworks = wifiManager.getConfiguredNetworks()) == null) {
            return false;
        }
        for (WifiConfiguration wifiConfiguration : configuredNetworks) {
            if (wifiConfiguration.hiddenSSID && str.equals(wifiConfiguration.SSID)) {
                return true;
            }
        }
        return false;
    }
}
