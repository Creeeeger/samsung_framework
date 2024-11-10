package com.android.server.asks;

import android.os.SystemProperties;
import android.util.Slog;
import com.samsung.android.knox.zt.devicetrust.EndpointMonitorConst;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class UnknownStore {
    public String KEY_VALUE = null;
    public String PKGNAME = null;
    public String SIGHASH = null;
    public String PKGSIGHASH = null;
    public String BASE_CODE_PATH = null;
    public HashMap blockPermissions = null;
    public HashMap warningPermissions = null;
    public ArrayList blockPermGroup = null;
    public ArrayList warningPermGroup = null;
    public HashMap certPolicies = null;
    public ArrayList executeBlockPkgName = null;
    public ArrayList exceptPkgName = null;
    public ArrayList regexDomainRule = null;
    public ArrayList regexPackageRule = null;
    public HashMap unknownAppsList = null;
    public PKGINFO defaultCertPolicy = null;

    public void setKey(String str) {
        this.KEY_VALUE = str;
    }

    public void setPkgSigHash(String str) {
        this.PKGSIGHASH = str;
    }

    public void setSigHash(String str) {
        this.SIGHASH = str;
    }

    public void setPkgName(String str) {
        this.PKGNAME = str;
    }

    public void setBaseCodePath(String str) {
        this.BASE_CODE_PATH = str;
    }

    public String getKey() {
        return this.KEY_VALUE;
    }

    public ArrayList getRegexDomainList() {
        return this.regexDomainRule;
    }

    public ArrayList getExcuteBlockList() {
        return this.executeBlockPkgName;
    }

    public ArrayList getExceptList() {
        return this.exceptPkgName;
    }

    public HashMap getUnknownAppsList() {
        return this.unknownAppsList;
    }

    public boolean checkDomain(String str, RETVALUE retvalue) {
        HashMap hashMap;
        if (isDevDevice()) {
            Slog.d("PackageInformationStore", " checkDomain() : " + str);
        }
        if (str == null || (hashMap = this.certPolicies) == null || !hashMap.containsKey(str)) {
            return false;
        }
        HashMap hashMap2 = (HashMap) this.certPolicies.get(str);
        if (hashMap2 != null && hashMap2.containsKey("ALL")) {
            PKGINFO pkginfo = (PKGINFO) hashMap2.get("ALL");
            if (pkginfo == null) {
                return false;
            }
            Slog.i("PackageInformationStore", "checkPolicyWithDetail() : Target");
            retvalue.set(0, pkginfo.policy, pkginfo.SA, pkginfo.isExecuteBlock, pkginfo.policyTarget, pkginfo.reportedTarget);
            return true;
        }
        Slog.d("PackageInformationStore", " no");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean checkRegexTarget(java.lang.String r11, com.android.server.asks.RETVALUE r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.UnknownStore.checkRegexTarget(java.lang.String, com.android.server.asks.RETVALUE, boolean):boolean");
    }

    public final void addDefaultPolicy(int i, int i2, int i3, int i4, int i5, String str, String str2, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12 = i;
        if (this.defaultCertPolicy == null) {
            this.defaultCertPolicy = new PKGINFO();
            if (i12 == 500) {
                i12 = 505;
            } else if (i12 == 504) {
                if (this.executeBlockPkgName == null) {
                    this.executeBlockPkgName = new ArrayList();
                }
                if (!this.executeBlockPkgName.contains("ALL")) {
                    this.executeBlockPkgName.add("ALL");
                    this.executeBlockPkgName.add(str);
                }
            }
            int i13 = i12;
            if (i6 == 500) {
                i7 = 500;
            } else {
                int i14 = 503;
                if (i6 != 503) {
                    i14 = EndpointMonitorConst.TRACE_EVENT_SCHED_CLS_EGRESS;
                    if (i6 != 502) {
                        i7 = i6;
                    }
                }
                i7 = i14;
            }
            if (i4 == 500) {
                i9 = i5;
                i8 = 501;
            } else {
                i8 = i4;
                i9 = i5;
            }
            if (i9 == 500) {
                i11 = 501;
                i10 = i2;
            } else {
                i10 = i2;
                i11 = i9;
            }
            if (i10 == 500) {
                i10 = 0;
            }
            int i15 = i10;
            if (i3 == 0) {
                if (this.exceptPkgName == null) {
                    this.exceptPkgName = new ArrayList();
                }
                if (!this.exceptPkgName.contains("ALL")) {
                    this.exceptPkgName.add("ALL");
                    this.exceptPkgName.add(str);
                }
            }
            if (this.unknownAppsList == null) {
                this.unknownAppsList = new HashMap();
            }
            if (!this.unknownAppsList.containsKey(str)) {
                this.unknownAppsList.put(str, str2);
            }
            this.defaultCertPolicy.set(i3, i13, i15, i8, i11, i7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void addCertPolicy(java.lang.String r14, int r15, int r16, int r17, java.lang.String r18, int r19, int r20, java.lang.String r21, java.lang.String r22, int r23) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.UnknownStore.addCertPolicy(java.lang.String, int, int, int, java.lang.String, int, int, java.lang.String, java.lang.String, int):void");
    }

    public void addPermissionGroup(boolean z) {
        if (this.blockPermGroup == null) {
            this.blockPermGroup = new ArrayList();
        }
        if (this.warningPermGroup == null) {
            this.warningPermGroup = new ArrayList();
        }
        HashMap hashMap = new HashMap();
        if (z) {
            this.blockPermGroup.add(hashMap);
        } else {
            this.warningPermGroup.add(hashMap);
        }
    }

    public void addPermission(String str, boolean z, int i, int i2, int i3, int i4, int i5, int i6, boolean z2, String str2, int i7) {
        HashMap hashMap;
        if (this.blockPermGroup == null) {
            this.blockPermGroup = new ArrayList();
        }
        if (this.warningPermGroup == null) {
            this.warningPermGroup = new ArrayList();
        }
        if (this.blockPermissions == null) {
            this.blockPermissions = new HashMap();
        }
        if (this.warningPermissions == null) {
            this.warningPermissions = new HashMap();
        }
        if (z) {
            if (z2) {
                int size = this.blockPermGroup.size();
                if (size > 0) {
                    hashMap = (HashMap) this.blockPermGroup.get(size - 1);
                } else {
                    hashMap = new HashMap();
                }
            } else {
                hashMap = this.blockPermissions;
            }
        } else if (z2) {
            int size2 = this.warningPermGroup.size();
            if (size2 > 0) {
                hashMap = (HashMap) this.warningPermGroup.get(size2 - 1);
            } else {
                hashMap = new HashMap();
            }
        } else {
            hashMap = this.warningPermissions;
        }
        if (hashMap == null || hashMap.containsKey(str)) {
            return;
        }
        PEMINFO peminfo = new PEMINFO();
        peminfo.set(i2, i3, i, i4, i5, i6);
        if (str2 != null && i7 != -1) {
            peminfo.setMoreRules(str2, i7);
        }
        hashMap.put(str, peminfo);
    }

    public void checkPolicy(String str, RETVALUE retvalue) {
        HashMap hashMap;
        PKGINFO pkginfo;
        HashMap hashMap2 = this.certPolicies;
        if (hashMap2 == null && this.blockPermissions == null && this.warningPermissions == null && this.blockPermGroup == null && this.warningPermGroup == null && (pkginfo = this.defaultCertPolicy) != null) {
            retvalue.set(0, pkginfo.policy, pkginfo.SA, pkginfo.isExecuteBlock, pkginfo.policyTarget, pkginfo.reportedTarget);
            return;
        }
        if (str != null && retvalue != null) {
            if (hashMap2 != null && hashMap2.containsKey(str) && (hashMap = (HashMap) this.certPolicies.get(str)) != null) {
                if (hashMap.size() == 1 && hashMap.containsKey("ALL")) {
                    PKGINFO pkginfo2 = (PKGINFO) hashMap.get("ALL");
                    if (pkginfo2 != null) {
                        Slog.i("PackageInformationStore", "checkPolicy() : Target");
                        retvalue.set(0, pkginfo2.policy, pkginfo2.SA, pkginfo2.isExecuteBlock, pkginfo2.policyTarget, pkginfo2.reportedTarget);
                        return;
                    }
                } else {
                    retvalue.set(1, 0, 0, 0, 0, 0);
                    return;
                }
            }
            if (this.blockPermissions != null && this.warningPermissions != null && this.blockPermGroup != null && this.warningPermGroup != null) {
                retvalue.set(2, 0, 0, 0, 0, 0);
                return;
            } else if (this.defaultCertPolicy != null) {
                Slog.i("PackageInformationStore", "checkPolicy() : Default");
                PKGINFO pkginfo3 = this.defaultCertPolicy;
                retvalue.set(0, pkginfo3.policy, pkginfo3.SA, pkginfo3.isExecuteBlock, pkginfo3.policyTarget, pkginfo3.reportedTarget);
                return;
            }
        }
        if (retvalue != null) {
            retvalue.set(4, 0, 0, 0, 0, 0);
        }
    }

    public void checkPolicyWithAppHash(String str, String str2, RETVALUE retvalue) {
        HashMap hashMap;
        PKGINFO pkginfo;
        HashMap hashMap2 = this.certPolicies;
        if (hashMap2 == null || str == null || str2 == null || retvalue == null || !hashMap2.containsKey(str) || (hashMap = (HashMap) this.certPolicies.get(str)) == null) {
            return;
        }
        if (hashMap.containsKey(str2)) {
            PKGINFO pkginfo2 = (PKGINFO) hashMap.get(str2);
            if (pkginfo2 != null) {
                Slog.i("PackageInformationStore", "checkPolicyWithDetail() : Target");
                retvalue.set(0, pkginfo2.policy, pkginfo2.SA, pkginfo2.isExecuteBlock, pkginfo2.policyTarget, pkginfo2.reportedTarget);
                return;
            }
            return;
        }
        if (this.blockPermissions != null && this.warningPermissions != null && this.blockPermGroup != null && this.warningPermGroup != null) {
            retvalue.set(2, 0, 0, 0, 0, 0);
        } else {
            if (!hashMap.containsKey("ALL") || (pkginfo = (PKGINFO) hashMap.get("ALL")) == null) {
                return;
            }
            Slog.i("PackageInformationStore", "checkPolicyWithDetail() : Target");
            retvalue.set(0, pkginfo.policy, pkginfo.SA, pkginfo.isExecuteBlock, pkginfo.policyTarget, pkginfo.reportedTarget);
        }
    }

    public final void checkMoreRule(PEMINFO peminfo, RETVALUE retvalue) {
        if (retvalue != null) {
            retvalue.setStatus(3);
        }
        if (peminfo != null && peminfo.moreRules != null) {
            Slog.i("PackageInformationStore", "checkMoreRule() : [" + peminfo.moreRules.check_moreRule_RANK + "][" + peminfo.moreRules.check_moreRule_RandomPkg + "][" + peminfo.moreRules.check_moreRule_Malformed + "]");
            if (peminfo.moreRules.check_moreRule_RANK) {
                if (isDevDevice()) {
                    Slog.i("PackageInformationStore", "check_moreRule_RANK =" + peminfo.moreRules.moreRulePolicy);
                }
                if (new MoreRuleRANK().getResult(this.SIGHASH, this.PKGSIGHASH) == 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("It is target of rank. ");
                    sb.append(isDevDevice() ? Integer.valueOf(peminfo.moreRules.moreRulePolicy) : "");
                    Slog.e("PackageInformationStore", sb.toString());
                    retvalue.setStatus(0);
                } else {
                    retvalue.setStatus(3);
                    return;
                }
            }
            if (peminfo.moreRules.check_moreRule_RandomPkg) {
                if (isDevDevice()) {
                    Slog.i("PackageInformationStore", "check_moreRule_RandomPkg" + peminfo.moreRules.moreRulePolicy);
                }
                if (new MoreRuleRandomPkg().getResult(this.PKGNAME) == 0) {
                    if (isDevDevice()) {
                        Slog.i("PackageInformationStore", "It is target of randomPkg. " + peminfo.moreRules.moreRulePolicy);
                    }
                    retvalue.setStatus(0);
                } else {
                    retvalue.setStatus(3);
                    return;
                }
            }
            if (peminfo.moreRules.check_moreRule_Malformed) {
                if (isDevDevice()) {
                    Slog.i("PackageInformationStore", "check_moreRule_MALFORMED:" + peminfo.moreRules.moreRulePolicy);
                }
                int[] analyzeZipFile = ZipAnalyzerUtil.analyzeZipFile(this.BASE_CODE_PATH);
                if (analyzeZipFile != null) {
                    if (Arrays.stream(analyzeZipFile).sum() > 0) {
                        Slog.i("PackageInformationStore", "Zip broken");
                        retvalue.set(0, 0, 0, 0, 0, 0);
                        return;
                    } else {
                        Slog.i("PackageInformationStore", "Zip Success");
                        retvalue.setStatus(3);
                        return;
                    }
                }
                return;
            }
            return;
        }
        retvalue.setStatus(3);
        Slog.i("PackageInformationStore", "The moreRule targetPolicy may be NULL.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:150:0x02a3, code lost:
    
        if (r8 != 3) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00d5, code lost:
    
        if (r7 != 3) goto L65;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void checkPolicyWithPEM(java.lang.String[] r17, int r18, boolean r19, com.android.server.asks.RETVALUE r20) {
        /*
            Method dump skipped, instructions count: 1010
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.UnknownStore.checkPolicyWithPEM(java.lang.String[], int, boolean, com.android.server.asks.RETVALUE):void");
    }

    public final boolean isDevDevice() {
        return "0x1".equals(SystemProperties.get("ro.boot.em.status"));
    }
}
