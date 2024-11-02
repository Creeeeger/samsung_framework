package com.samsung.android.knox.net.firewall;

import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.knox.AccessController;
import com.samsung.android.knox.AppIdentity;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.KnoxInternalFeature;
import com.samsung.android.knox.license.EnterpriseLicenseManager;
import com.samsung.android.knox.net.firewall.FirewallResponse;
import com.samsung.android.knox.net.firewall.FirewallRule;
import com.samsung.android.knox.net.firewall.IFirewall;
import com.sec.ims.configuration.DATA;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Firewall {
    public static final String ACTION_BLOCKED_DOMAIN = "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN";
    public static final int ADD_OPERATION = 1;
    public static final String EXTRA_BLOCKED_DOMAIN_ISFOREGROUND = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND";
    public static final String EXTRA_BLOCKED_DOMAIN_PACKAGENAME = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME";
    public static final String EXTRA_BLOCKED_DOMAIN_TIMESTAMP = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP";
    public static final String EXTRA_BLOCKED_DOMAIN_UID = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID";
    public static final String EXTRA_BLOCKED_DOMAIN_URL = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL";
    public static final int FIREWALL_ALLOW_RULE = 1;
    public static final String FIREWALL_ALL_PACKAGES = "*";
    public static final int FIREWALL_ALL_RULES = 15;
    public static final int FIREWALL_DENY_RULE = 2;
    public static final int FIREWALL_REDIRECT_EXCEPTION_RULE = 8;
    public static final int FIREWALL_REDIRECT_RULE = 4;
    public static final int REMOVE_OPERATION = -1;
    public ContextInfo mContextInfo;
    public IFirewall mService;
    public static final int MAX_LIST_SIZE_IN_BYTES = IBinder.getSuggestedMaxIpcSizeBytes();
    public static final List<DomainFilterRule> FIREWALL_ALL_DOMAIN_RULES = null;
    public static String TAG = "FirewallSDK";
    public static final Random mRand = new Random();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum AddressType {
        IPV4,
        IPV6
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum Direction {
        INPUT,
        OUTPUT,
        ALL,
        FORWARD
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum NetworkInterface {
        ALL_NETWORKS,
        WIFI_DATA_ONLY,
        MOBILE_DATA_ONLY
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum PortLocation {
        REMOTE,
        LOCAL,
        ALL
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum Protocol {
        TCP,
        UDP,
        ALL
    }

    public Firewall() {
        this(new ContextInfo(Process.myUid()));
    }

    public static int generateToken() {
        return mRand.nextInt(2147483646);
    }

    public final FirewallResponse[] addDomainFilterRules(List<DomainFilterRule> list) {
        Object obj;
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.addDomainFilterRules");
        String str = TAG;
        StringBuilder sb = new StringBuilder("addDomainFilterRules() - rules.size = ");
        if (list != null) {
            obj = Integer.valueOf(list.size());
        } else {
            obj = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN;
        }
        sb.append(obj);
        Log.i(str, sb.toString());
        return evaluateAndProcessRules(list, 1);
    }

    public final FirewallResponse[] addRules(FirewallRule[] firewallRuleArr) {
        Object obj;
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.addRules");
        String str = TAG;
        StringBuilder sb = new StringBuilder("addRules() - FirewallRule[].length = ");
        if (firewallRuleArr != null) {
            obj = Integer.valueOf(firewallRuleArr.length);
        } else {
            obj = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN;
        }
        sb.append(obj);
        Log.i(str, sb.toString());
        if (getService() != null) {
            if (KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 14) {
                try {
                    return this.mService.addRules(this.mContextInfo, firewallRuleArr);
                } catch (RemoteException unused) {
                    Log.e(TAG, "addRules() - RemoteException at addRules method.");
                    return null;
                }
            }
            Log.e(TAG, "Firewall.addRules() : This device doesn't support this API.");
            return null;
        }
        return null;
    }

    public final FirewallResponse[] clearRules(int i) {
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.clearRules");
        Log.i(TAG, "clearRules(bitmask = " + Integer.toBinaryString(i) + ")");
        if (getService() != null) {
            if (KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 14) {
                try {
                    return this.mService.clearRules(this.mContextInfo, i);
                } catch (RemoteException unused) {
                    Log.e(TAG, "clearRules() - RemoteException at clearRules method.");
                    return null;
                }
            }
            Log.e(TAG, "Firewall.clearRules() : This device doesn't support this API.");
            return null;
        }
        return null;
    }

    public final FirewallResponse enableDomainFilterOnIptables(boolean z) {
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.enableDomainFilterOnIptables");
        if (getService() != null && KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 25) {
            try {
                return this.mService.enableDomainFilterOnIptables(this.mContextInfo, z);
            } catch (RemoteException unused) {
                Log.d(TAG, "RemoteException at enableDomainFilterOnIptables method.");
                return null;
            }
        }
        return null;
    }

    public final FirewallResponse enableDomainFilterReport(boolean z) {
        AccessController.throwIfParentInstance(this.mContextInfo, "enableDomainFilterReport");
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.enableDomainFilterReport");
        if (getService() != null && KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 16) {
            try {
                return this.mService.enableDomainFilterReport(this.mContextInfo, z);
            } catch (RemoteException unused) {
                Log.e(TAG, "enableDomainFilterReport() - RemoteException at enableDomainFilterReport method.");
                return null;
            }
        }
        return null;
    }

    public final FirewallResponse enableFirewall(boolean z) {
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.enableFirewall");
        Log.i(TAG, "enableFirewall(enabled = " + String.valueOf(z) + ")");
        if (getService() != null) {
            if (KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 14) {
                try {
                    return this.mService.enableFirewall(this.mContextInfo, z);
                } catch (RemoteException unused) {
                    Log.e(TAG, "enableFirewall() - RemoteException at enableFirewall method.");
                    return null;
                }
            }
            Log.e(TAG, "Firewall.enableFirewall() : This device doesn't support this API.");
            return null;
        }
        return null;
    }

    public final FirewallResponse[] evaluateAndProcessRules(List<DomainFilterRule> list, int i) {
        FirewallResponse[] removeDomainFilterRules;
        if (getService() == null) {
            Log.e(TAG, "evaluateAndProcessRules() - Error in getService()");
            return null;
        }
        int i2 = KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION;
        if (i2 >= 16) {
            ArrayList arrayList = new ArrayList();
            if (i2 < 17 && list != null) {
                DomainFilterRule domainFilterRule = new DomainFilterRule();
                for (int i3 = 0; i3 < list.size(); i3++) {
                    DomainFilterRule domainFilterRule2 = list.get(i3);
                    if (domainFilterRule2 != null && (!TextUtils.isEmpty(domainFilterRule2.mDns1) || !TextUtils.isEmpty(domainFilterRule2.mDns2))) {
                        arrayList.add(Integer.valueOf(i3));
                        list.set(i3, domainFilterRule);
                    }
                }
            }
            try {
                if (i == -1 && list == null) {
                    removeDomainFilterRules = this.mService.clearAllDomainFilterRules(this.mContextInfo);
                } else {
                    if (list != null && !list.isEmpty()) {
                        int generateToken = generateToken();
                        HashMap hashMap = new HashMap();
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<DomainFilterRule> it = list.iterator();
                        while (it.hasNext()) {
                            hashMap.putAll(pageableRule(it.next()));
                        }
                        int i4 = 0;
                        for (Map.Entry entry : hashMap.entrySet()) {
                            int intValue = ((Integer) entry.getValue()).intValue();
                            i4 += intValue;
                            if (i4 <= MAX_LIST_SIZE_IN_BYTES) {
                                arrayList2.add((DomainFilterRule) entry.getKey());
                            } else {
                                Log.i(TAG, "evaluateAndProcessRules() SDK tokenValue: " + String.valueOf(((DomainFilterRule) arrayList2.get(0)).mIpcToken));
                                this.mService.populateDomainFilterBrokenRules(this.mContextInfo, arrayList2, generateToken);
                                Log.i(TAG, "populateDomainFilterBrokenRules - rulePageable = " + arrayList2);
                                arrayList2.clear();
                                arrayList2.add((DomainFilterRule) entry.getKey());
                                i4 = intValue + 0;
                            }
                        }
                        if (!arrayList2.isEmpty()) {
                            this.mService.populateDomainFilterBrokenRules(this.mContextInfo, arrayList2, generateToken);
                            Log.i(TAG, "populateDomainFilterBrokenRules() - rulePageable = " + arrayList2);
                        }
                        if (i == 1) {
                            Log.i(TAG, "populateDomainFilterBrokenRules() - Add Operation = " + i);
                            removeDomainFilterRules = this.mService.addDomainFilterRules(this.mContextInfo, generateToken);
                        } else if (i == -1) {
                            Log.i(TAG, "populateDomainFilterBrokenRules() - Remove Operation = " + i);
                            removeDomainFilterRules = this.mService.removeDomainFilterRules(this.mContextInfo, generateToken);
                        } else {
                            Log.i(TAG, "populateDomainFilterBrokenRules() - Invalid Operation = " + i);
                            return null;
                        }
                    }
                    Log.i(TAG, "evaluateAndProcessRules() - No rule specified");
                    return new FirewallResponse[]{new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.OPERATION_NOT_PERMITTED_ERROR, FirewallResponseMessages.NO_RULE_SPECIFIED)};
                }
                if (removeDomainFilterRules != null && !arrayList.isEmpty()) {
                    for (int i5 = 0; i5 < removeDomainFilterRules.length; i5++) {
                        if (arrayList.contains(Integer.valueOf(i5))) {
                            removeDomainFilterRules[i5] = new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.OPERATION_NOT_PERMITTED_ERROR, FirewallResponseMessages.FAILED_DNS_MDM_VERSION);
                        }
                    }
                }
                return removeDomainFilterRules;
            } catch (RemoteException unused) {
                Log.e(TAG, "evaluateAndProcessRules() - RemoteException at evaluateAndProcessRules method");
            }
        } else {
            Log.e(TAG, "evaluateAndProcessRules() - Not supported");
        }
        return null;
    }

    public final List<DomainFilterReport> getDomainFilterReport(List<String> list) {
        AccessController.throwIfParentInstance(this.mContextInfo, "getDomainFilterReport");
        if (getService() != null && KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 16) {
            try {
                return this.mService.getDomainFilterReport(this.mContextInfo, list);
            } catch (RemoteException unused) {
                Log.e(TAG, "getDomainFilterReport() - RemoteException at getDomainFilterReport method.");
            }
        }
        return null;
    }

    public final List<DomainFilterRule> getDomainFilterRules(List<String> list) {
        List<DomainFilterRule> domainFilterRules;
        ArrayList arrayList = null;
        if (getService() == null || KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION < 16) {
            return null;
        }
        try {
            int generateToken = generateToken();
            ArrayList arrayList2 = new ArrayList();
            do {
                try {
                    domainFilterRules = this.mService.getDomainFilterRules(this.mContextInfo, list, generateToken);
                    if (domainFilterRules != null && !domainFilterRules.isEmpty()) {
                        if (arrayList2.isEmpty()) {
                            arrayList2.addAll(domainFilterRules);
                        } else {
                            DomainFilterRule domainFilterRule = domainFilterRules.get(0);
                            DomainFilterRule updateLastDomainRule = updateLastDomainRule(domainFilterRule, arrayList2);
                            if (updateLastDomainRule != null) {
                                arrayList2.set(arrayList2.size() - 1, updateLastDomainRule);
                            } else {
                                arrayList2.add(domainFilterRule);
                            }
                            domainFilterRules.remove(0);
                            arrayList2.addAll(domainFilterRules);
                        }
                    }
                } catch (RemoteException unused) {
                    arrayList = arrayList2;
                    Log.e(TAG, "getDomainFilterRules() - RemoteException at getDomainFilterRules method.");
                    return arrayList;
                }
            } while (domainFilterRules != null);
            return arrayList2;
        } catch (RemoteException unused2) {
        }
    }

    public final FirewallRule[] getRules(int i, FirewallRule.Status status) {
        if (getService() != null) {
            if (KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 14) {
                try {
                    if (status != null) {
                        return this.mService.getRules(this.mContextInfo, i, status.toString());
                    }
                    return this.mService.getRules(this.mContextInfo, i, null);
                } catch (RemoteException unused) {
                    Log.e(TAG, "getRules() - RemoteException at getRules method.");
                }
            } else {
                Log.e(TAG, "Firewall.getRules() : This device doesn't support this API.");
            }
        }
        return null;
    }

    public final IFirewall getService() {
        if (this.mService == null) {
            this.mService = IFirewall.Stub.asInterface(ServiceManager.getService("firewall"));
        }
        return this.mService;
    }

    public final boolean isDomainFilterOnIptablesEnabled() {
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.isDomainFilterOnIptablesEnabled");
        if (getService() != null && KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 25) {
            try {
                return this.mService.isDomainFilterOnIptablesEnabled(this.mContextInfo);
            } catch (RemoteException unused) {
                Log.e(TAG, "isDomainFilterOnIptablesEnabled() - RemoteException at isDomainFilterOnIptablesEnabled method.");
                return false;
            }
        }
        return false;
    }

    public final boolean isDomainFilterReportEnabled() {
        AccessController.throwIfParentInstance(this.mContextInfo, "isDomainFilterReportEnabled");
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.isDomainFilterReportEnabled", true);
        if (getService() != null && KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 16) {
            try {
                return this.mService.isDomainFilterReportEnabled(this.mContextInfo);
            } catch (RemoteException unused) {
                Log.e(TAG, "isDomainFilterReportEnabled() - RemoteException at isDomainFilterReportEnabled method.");
                return false;
            }
        }
        return false;
    }

    public final boolean isFirewallEnabled() {
        if (getService() != null) {
            if (KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 14) {
                try {
                    return this.mService.isFirewallEnabled(this.mContextInfo);
                } catch (RemoteException unused) {
                    Log.e(TAG, "isFirewallEnabled() - RemoteException at isFirewallEnabled method.");
                    return false;
                }
            }
            Log.e(TAG, "Firewall.isFirewallEnabled() : This device doesn't support this API.");
            return false;
        }
        return false;
    }

    public final String[] listIptablesRules() {
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.listIptablesRules");
        if (getService() != null) {
            if (KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 14) {
                try {
                    return this.mService.listIptablesRules(this.mContextInfo);
                } catch (RemoteException unused) {
                    Log.e(TAG, "listIptablesRules() - RemoteException at listIptablesRules method.");
                    return null;
                }
            }
            Log.i(TAG, "Firewall.listIptablesRules() : This device doesn't support this API.");
            return null;
        }
        return null;
    }

    public final Map<DomainFilterRule, Integer> pageableRule(DomainFilterRule domainFilterRule) {
        int i;
        int i2;
        int i3;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i4;
        int i5;
        HashMap hashMap = new HashMap();
        List<String> list = domainFilterRule.mAllowDomains;
        boolean z = false;
        if (list != null && domainFilterRule.mDenyDomains != null && list.isEmpty() && domainFilterRule.mDenyDomains.isEmpty()) {
            hashMap.put(new DomainFilterRule(domainFilterRule.mAppIdentity, domainFilterRule.mDenyDomains, domainFilterRule.mAllowDomains, domainFilterRule.mDns1, domainFilterRule.mDns2), 0);
            return hashMap;
        }
        int generateToken = generateToken();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        AppIdentity appIdentity = domainFilterRule.mAppIdentity;
        String str = domainFilterRule.mDns1;
        if (str != null) {
            i = str.getBytes(StandardCharsets.UTF_8).length;
        } else {
            i = 0;
        }
        String str2 = domainFilterRule.mDns2;
        if (str2 != null) {
            i2 = str2.getBytes(StandardCharsets.UTF_8).length;
        } else {
            i2 = 0;
        }
        int i6 = i + i2 + 8;
        if (appIdentity != null) {
            String signature = appIdentity.getSignature();
            String packageName = appIdentity.getPackageName();
            if (signature != null) {
                i4 = signature.getBytes(StandardCharsets.UTF_8).length;
            } else {
                i4 = 0;
            }
            if (packageName != null) {
                i5 = packageName.getBytes(StandardCharsets.UTF_8).length;
            } else {
                i5 = 0;
            }
            i6 = i6 + i4 + i5;
        }
        int i7 = i6;
        List<String> list2 = domainFilterRule.mDenyDomains;
        List<String> list3 = domainFilterRule.mAllowDomains;
        if ((list3 == null && list2 == null) || ((list3 == null && list2.size() == 0) || (list2 == null && list3.size() == 0))) {
            DomainFilterRule domainFilterRule2 = new DomainFilterRule(domainFilterRule.mAppIdentity, list2, list3, domainFilterRule.mDns1, domainFilterRule.mDns2);
            domainFilterRule2.mIpcToken = generateToken;
            hashMap.put(domainFilterRule2, Integer.valueOf(i7));
            return hashMap;
        }
        if (list2 != null) {
            i3 = i7;
            for (String str3 : list2) {
                int length = str3.getBytes(StandardCharsets.UTF_8).length;
                int i8 = i3 + length;
                if (i8 <= MAX_LIST_SIZE_IN_BYTES) {
                    arrayList3.add(str3);
                    i3 = i8;
                } else {
                    AppIdentity appIdentity2 = domainFilterRule.mAppIdentity;
                    if (list3 != null) {
                        arrayList2 = arrayList4;
                    } else {
                        arrayList2 = null;
                    }
                    DomainFilterRule domainFilterRule3 = new DomainFilterRule(appIdentity2, arrayList3, arrayList2, domainFilterRule.mDns1, domainFilterRule.mDns2);
                    domainFilterRule3.mIpcToken = generateToken;
                    hashMap.put(domainFilterRule3, Integer.valueOf(i3));
                    arrayList3.clear();
                    arrayList3.add(str3);
                    i3 = i7 + length;
                    z = true;
                }
            }
        } else {
            i3 = i7;
        }
        if (list3 != null) {
            for (String str4 : list3) {
                int length2 = str4.getBytes(StandardCharsets.UTF_8).length;
                int i9 = i3 + length2;
                if (i9 <= MAX_LIST_SIZE_IN_BYTES) {
                    arrayList4.add(str4);
                    i3 = i9;
                } else {
                    AppIdentity appIdentity3 = domainFilterRule.mAppIdentity;
                    if (list2 != null) {
                        arrayList = arrayList3;
                    } else {
                        arrayList = null;
                    }
                    DomainFilterRule domainFilterRule4 = new DomainFilterRule(appIdentity3, arrayList, arrayList4, domainFilterRule.mDns1, domainFilterRule.mDns2);
                    domainFilterRule4.mIpcToken = generateToken;
                    hashMap.put(domainFilterRule4, Integer.valueOf(i3));
                    arrayList3.clear();
                    arrayList4.clear();
                    arrayList4.add(str4);
                    i3 = i7 + length2;
                    z = true;
                }
            }
        }
        if (!arrayList4.isEmpty() || !arrayList3.isEmpty()) {
            DomainFilterRule domainFilterRule5 = new DomainFilterRule(domainFilterRule.mAppIdentity, arrayList3, arrayList4, domainFilterRule.mDns1, domainFilterRule.mDns2);
            if (z) {
                domainFilterRule5.mIpcToken = generateToken;
            }
            hashMap.put(domainFilterRule5, Integer.valueOf(i3));
        }
        return hashMap;
    }

    public final FirewallResponse[] removeDomainFilterRules(List<DomainFilterRule> list) {
        Object obj;
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.removeDomainFilterRules");
        String str = TAG;
        StringBuilder sb = new StringBuilder("removeDomainFilterRules() - rules.size = ");
        if (list != null) {
            obj = Integer.valueOf(list.size());
        } else {
            obj = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN;
        }
        sb.append(obj);
        Log.i(str, sb.toString());
        return evaluateAndProcessRules(list, -1);
    }

    public final FirewallResponse[] removeRules(FirewallRule[] firewallRuleArr) {
        Object obj;
        EnterpriseLicenseManager.log(this.mContextInfo, "Firewall.removeRules");
        String str = TAG;
        StringBuilder sb = new StringBuilder("removeRules() - FirewallRule[].length = ");
        if (firewallRuleArr != null) {
            obj = Integer.valueOf(firewallRuleArr.length);
        } else {
            obj = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN;
        }
        sb.append(obj);
        Log.i(str, sb.toString());
        if (getService() != null) {
            if (KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION >= 14) {
                try {
                    return this.mService.removeRules(this.mContextInfo, firewallRuleArr);
                } catch (RemoteException unused) {
                    Log.e(TAG, "removeRules() - RemoteException at removeRules method.");
                    return null;
                }
            }
            Log.i(TAG, "Firewall.removeRules() : This device doesn't support this API.");
            return null;
        }
        return null;
    }

    public final DomainFilterRule updateLastDomainRule(DomainFilterRule domainFilterRule, List<DomainFilterRule> list) {
        DomainFilterRule domainFilterRule2 = list.get(list.size() - 1);
        if (!domainFilterRule2.mAppIdentity.getPackageName().equals(domainFilterRule.mAppIdentity.getPackageName())) {
            return null;
        }
        List<String> list2 = domainFilterRule.mDenyDomains;
        if (list2 != null && !list2.isEmpty()) {
            List<String> list3 = domainFilterRule2.mDenyDomains;
            list3.addAll(list2);
            domainFilterRule2.setDenyDomains(list3);
        }
        List<String> list4 = domainFilterRule.mAllowDomains;
        if (list4 != null && !list4.isEmpty()) {
            List<String> list5 = domainFilterRule2.mAllowDomains;
            list5.addAll(list4);
            domainFilterRule2.setAllowDomains(list5);
        }
        return domainFilterRule2;
    }

    public Firewall(ContextInfo contextInfo) {
        this.mContextInfo = contextInfo;
    }
}
