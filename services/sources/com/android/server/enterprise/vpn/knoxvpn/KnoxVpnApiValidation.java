package com.android.server.enterprise.vpn.knoxvpn;

import android.content.Context;
import android.content.pm.UserInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.sec.enterprise.auditlog.AuditLog;
import android.util.Log;
import com.android.server.enterprise.storage.EdmStorageProvider;
import com.android.server.enterprise.vpn.knoxvpn.profile.VpnProfileConfig;
import com.android.server.enterprise.vpn.knoxvpn.profile.VpnProfileInfo;
import com.samsung.android.knox.IEnterpriseDeviceManager;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.net.vpn.KnoxVpnContext;
import com.samsung.android.knox.zt.devicetrust.EndpointMonitorConst;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.KeyStore;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;

/* loaded from: classes2.dex */
public class KnoxVpnApiValidation {
    public KnoxVpnHelper mKnoxVpnHelper;
    public UserManager mUserMgr = null;
    public VpnProfileConfig vpnConfig;
    public static final boolean DBG = Debug.semIsProductDev();
    public static KnoxVpnApiValidation mKnoxVpnApiValidation = null;
    public static SemPersonaManager mPersonaManager = null;
    public static IEnterpriseDeviceManager mEnterpriseDeviceManager = null;
    public static EdmStorageProvider mEdmStorageProvider = null;
    public static Context mContext = null;
    public static KnoxVpnPacProcessor mKnoxVpnPacProcessor = null;

    public KnoxVpnApiValidation(Context context) {
        this.mKnoxVpnHelper = null;
        mContext = context;
        this.vpnConfig = VpnProfileConfig.getInstance();
        mEdmStorageProvider = new EdmStorageProvider(context);
        this.mKnoxVpnHelper = KnoxVpnHelper.getInstance(context);
    }

    public static synchronized KnoxVpnApiValidation getInstance(Context context) {
        KnoxVpnApiValidation knoxVpnApiValidation;
        synchronized (KnoxVpnApiValidation.class) {
            if (mKnoxVpnApiValidation == null) {
                mKnoxVpnApiValidation = new KnoxVpnApiValidation(context);
            }
            knoxVpnApiValidation = mKnoxVpnApiValidation;
        }
        return knoxVpnApiValidation;
    }

    public static SemPersonaManager getPersonaManager() {
        if (mPersonaManager == null) {
            mPersonaManager = (SemPersonaManager) mContext.getSystemService("persona");
        }
        return mPersonaManager;
    }

    public final UserManager getUserManager() {
        if (this.mUserMgr == null) {
            this.mUserMgr = (UserManager) mContext.getSystemService("user");
        }
        return this.mUserMgr;
    }

    public final boolean isUserTypeAppSeparation(int i) {
        boolean z;
        getUserManager();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UserInfo userInfo = this.mUserMgr.getUserInfo(i);
            if (userInfo != null) {
                if (userInfo.isUserTypeAppSeparation()) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x02d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int createVpnProfileValidation(com.samsung.android.knox.net.vpn.KnoxVpnContext r27, java.lang.String r28) {
        /*
            Method dump skipped, instructions count: 886
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.vpn.knoxvpn.KnoxVpnApiValidation.createVpnProfileValidation(com.samsung.android.knox.net.vpn.KnoxVpnContext, java.lang.String):int");
    }

    public String getVpnProfileValidation(KnoxVpnContext knoxVpnContext, String str) {
        if (str != null) {
            try {
            } catch (Exception e) {
                Log.e("KnoxVpnApiValidation", "Exception at getVpnProfileValidation API " + Log.getStackTraceString(e));
            }
            if (knoxVpnContext.vendorName != null) {
                VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
                if (profileEntry == null) {
                    Log.d("KnoxVpnApiValidation", "getVpnProfileValidation: profileInfo value is null");
                    return null;
                }
                if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
                    Log.d("KnoxVpnApiValidation", "getVpnProfileValidation: Not the same admin");
                    return null;
                }
                return str;
            }
        }
        Log.d("KnoxVpnApiValidation", "getVpnProfileValidation: profileName value is null");
        return null;
    }

    public int removeVpnProfileValidation(KnoxVpnContext knoxVpnContext, String str) {
        int i;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at removeVpnProfileValidation API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        i = (profileEntry.getRouteType() == 1 && profileEntry.getActivateState() == 1) ? 125 : 100;
        Log.d("KnoxVpnApiValidation", "removeVpnProfileValidation : validationResult value is " + i);
        return i;
    }

    public int addPackagesToVpnValidation(KnoxVpnContext knoxVpnContext, String[] strArr, String str) {
        int i;
        if (str == null || strArr == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at addPackagesToVpnValidation API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (strArr.length >= 1 && knoxVpnContext.vendorName != null) {
            VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
            if (profileEntry == null) {
                return 108;
            }
            if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
                return 112;
            }
            int userId = UserHandle.getUserId(profileEntry.getAdminId());
            int personaId = knoxVpnContext.getPersonaId();
            if (userId != 0 && personaId == 0) {
                Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
                return 114;
            }
            if (profileEntry.getRouteType() == 0) {
                return 109;
            }
            for (String str2 : strArr) {
                if (str2.equalsIgnoreCase(this.mKnoxVpnHelper.getPersonifiedName(knoxVpnContext.personaId, "ADD_ALL_PACKAGES"))) {
                    return 137;
                }
                VpnProfileInfo profileEntry2 = this.vpnConfig.getProfileEntry(this.mKnoxVpnHelper.getProfileOwningThePackage(this.mKnoxVpnHelper.getPersonifiedName(knoxVpnContext.personaId, str2)));
                if (profileEntry2 != null && !profileEntry2.getProfileName().equalsIgnoreCase(str)) {
                    if (profileEntry2.getAdminId() == knoxVpnContext.adminId) {
                        return 135;
                    }
                    if (profileEntry2.getAdminId() != knoxVpnContext.adminId) {
                        return 136;
                    }
                }
                if (profileEntry2 != null && profileEntry2.getProfileName().equalsIgnoreCase(str) && profileEntry2.getAdminId() == knoxVpnContext.adminId) {
                    return 135;
                }
                int uIDForPackage = this.mKnoxVpnHelper.getUIDForPackage(knoxVpnContext.personaId, str2);
                if (uIDForPackage > 0) {
                    String profileOwningTheUid = this.mKnoxVpnHelper.getProfileOwningTheUid(uIDForPackage);
                    if (profileOwningTheUid != null && !profileOwningTheUid.equalsIgnoreCase(str)) {
                        return 139;
                    }
                    String profileOwningTheUidWithNoInternetPermission = this.mKnoxVpnHelper.getProfileOwningTheUidWithNoInternetPermission(uIDForPackage);
                    if (profileOwningTheUidWithNoInternetPermission != null && !profileOwningTheUidWithNoInternetPermission.equalsIgnoreCase(str)) {
                        return 139;
                    }
                }
                if (this.mKnoxVpnHelper.checkIfUidIsBlackListed(uIDForPackage, knoxVpnContext.personaId) || str2.equalsIgnoreCase("com.knox.vpn.proxyhandler")) {
                    return 137;
                }
                if (str2.trim().equals("")) {
                    return 134;
                }
            }
            i = 100;
            if (this.mKnoxVpnHelper.isWideVpnExists(knoxVpnContext.personaId)) {
                if (this.mKnoxVpnHelper.getAdminIdForUserVpn(knoxVpnContext.personaId) != knoxVpnContext.adminId) {
                    return 120;
                }
                KnoxVpnHelper knoxVpnHelper = this.mKnoxVpnHelper;
                String profileOwningThePackage = knoxVpnHelper.getProfileOwningThePackage(knoxVpnHelper.getPersonifiedName(knoxVpnContext.personaId, "ADD_ALL_PACKAGES"));
                if (profileOwningThePackage != null) {
                    if (!profileOwningThePackage.equalsIgnoreCase(str)) {
                        return this.mKnoxVpnHelper.checkIfProfileHasChainingFeature(profileOwningThePackage) != 1 ? 119 : 100;
                    }
                    if (profileEntry.getActivateState() == 1) {
                        return 115;
                    }
                    HashSet exemptPackageList = profileEntry.getExemptPackageList();
                    if (exemptPackageList.isEmpty()) {
                        return 119;
                    }
                    for (String str3 : strArr) {
                        int uIDForPackage2 = this.mKnoxVpnHelper.getUIDForPackage(knoxVpnContext.personaId, str3);
                        if (uIDForPackage2 != -1 && exemptPackageList.contains(Integer.valueOf(uIDForPackage2))) {
                            profileEntry.removeUidFromExemptList(uIDForPackage2);
                            Log.d("KnoxVpnApiValidation", "user wide vpn was configured " + knoxVpnContext.personaId + "removing uid from exempt list " + uIDForPackage2 + " " + this.mKnoxVpnHelper.removeExemptedListToDatabase(str, uIDForPackage2));
                            AuditLog.logAsUser(5, 5, true, Process.myPid(), "KnoxVpnApiValidation", String.format("Package name %s added to vpn for profile %s. Removed from exempt list", str3, str), knoxVpnContext.personaId);
                        }
                    }
                    this.mKnoxVpnHelper.updateUidsToVpnUidRange(str);
                }
            }
            Log.d("KnoxVpnApiValidation", "addPackagesToVpnValidation : validationResult value is " + i);
            return i;
        }
        return 104;
    }

    public int removePackagesFromVpnValidation(KnoxVpnContext knoxVpnContext, String[] strArr, String str) {
        int i;
        if (str == null || strArr == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at removePackagesFromVpnValidation API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (strArr.length >= 1 && knoxVpnContext.vendorName != null) {
            VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
            if (profileEntry == null) {
                return 108;
            }
            if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
                return 112;
            }
            int userId = UserHandle.getUserId(profileEntry.getAdminId());
            int personaId = knoxVpnContext.getPersonaId();
            if (userId != 0 && personaId == 0) {
                Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
                return 114;
            }
            if (profileEntry.getRouteType() == 0) {
                return 109;
            }
            if (this.mKnoxVpnHelper.isUsingKnoxPackageExists(knoxVpnContext.personaId)) {
                for (String str2 : strArr) {
                    String personifiedName = this.mKnoxVpnHelper.getPersonifiedName(knoxVpnContext.personaId, str2);
                    String profileNameForPackage = this.vpnConfig.getProfileNameForPackage(personifiedName);
                    if (personifiedName != null && profileNameForPackage != null && !profileNameForPackage.equalsIgnoreCase(str)) {
                        return 129;
                    }
                    int uIDForPackage = this.mKnoxVpnHelper.getUIDForPackage(knoxVpnContext.personaId, str2);
                    if (uIDForPackage > 0) {
                        String profileOwningTheUid = this.mKnoxVpnHelper.getProfileOwningTheUid(uIDForPackage);
                        if (profileOwningTheUid != null && !profileOwningTheUid.equalsIgnoreCase(str)) {
                            return 139;
                        }
                        String profileOwningTheUidWithNoInternetPermission = this.mKnoxVpnHelper.getProfileOwningTheUidWithNoInternetPermission(uIDForPackage);
                        if (profileOwningTheUidWithNoInternetPermission != null && !profileOwningTheUidWithNoInternetPermission.equalsIgnoreCase(str)) {
                            return 139;
                        }
                    }
                }
            }
            if (this.mKnoxVpnHelper.isWideVpnExists(knoxVpnContext.personaId)) {
                if (this.mKnoxVpnHelper.getAdminIdForUserVpn(knoxVpnContext.personaId) != knoxVpnContext.adminId) {
                    return 122;
                }
                KnoxVpnHelper knoxVpnHelper = this.mKnoxVpnHelper;
                String profileOwningThePackage = knoxVpnHelper.getProfileOwningThePackage(knoxVpnHelper.getPersonifiedName(knoxVpnContext.personaId, "ADD_ALL_PACKAGES"));
                if (profileOwningThePackage != null) {
                    if (!profileOwningThePackage.equalsIgnoreCase(str)) {
                        return this.mKnoxVpnHelper.checkIfProfileHasChainingFeature(profileOwningThePackage) != 1 ? 121 : 100;
                    }
                    HashSet exemptPackageList = profileEntry.getExemptPackageList();
                    for (String str3 : strArr) {
                        int uIDForPackage2 = this.mKnoxVpnHelper.getUIDForPackage(knoxVpnContext.personaId, str3);
                        if (knoxVpnContext.personaId == 0 && str3.equalsIgnoreCase("com.android.networkstack")) {
                            Log.d("KnoxVpnApiValidation", "network stack uid is exempted by the Admin");
                            uIDForPackage2 = 1073;
                        }
                        if (uIDForPackage2 != -1) {
                            exemptPackageList.add(Integer.valueOf(uIDForPackage2));
                            Log.d("KnoxVpnApiValidation", "user wide vpn was configured " + knoxVpnContext.personaId + "adding uid to exempt list " + uIDForPackage2 + " " + this.mKnoxVpnHelper.addExemptedListToDatabase(str, this.mKnoxVpnHelper.getPersonifiedName(knoxVpnContext.personaId, str3), uIDForPackage2));
                            AuditLog.logAsUser(5, 5, true, Process.myPid(), "KnoxVpnApiValidation", String.format("Package name %s removed from vpn for profile %s. Added to exempt list", str3, str), knoxVpnContext.personaId);
                        } else {
                            Log.d("KnoxVpnApiValidation", "user wide vpn was configured " + knoxVpnContext.personaId + "adding uid to exempt list " + uIDForPackage2 + " " + this.mKnoxVpnHelper.addExemptedListToDatabase(str, this.mKnoxVpnHelper.getPersonifiedName(knoxVpnContext.personaId, str3), uIDForPackage2));
                            AuditLog.logAsUser(5, 5, true, Process.myPid(), "KnoxVpnApiValidation", String.format("Package name %s removed from vpn for profile %s. Added to exempt list", str3, str), knoxVpnContext.personaId);
                        }
                    }
                    this.mKnoxVpnHelper.updateUidsToVpnUidRange(str);
                }
            }
            i = 100;
            Log.d("KnoxVpnApiValidation", "removePackagesFromVpnValidation : validationResult value is " + i);
            return i;
        }
        return 104;
    }

    public int activateVpnProfileValidation(KnoxVpnContext knoxVpnContext, String str, boolean z) {
        int i;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at activateVpnProfileValidation API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        if (profileEntry.getRouteType() == 0) {
            return 109;
        }
        if (z) {
            if (profileEntry.getActivateState() == 1) {
                return 115;
            }
        } else if (profileEntry.getActivateState() == 0) {
            return 116;
        }
        i = 100;
        Log.d("KnoxVpnApiValidation", "activateVpnProfileValidation : validationResult value is " + i);
        return i;
    }

    public String getAllPackagesInVpnProfileValidation(KnoxVpnContext knoxVpnContext, String str) {
        if (str != null) {
            try {
                if (knoxVpnContext.vendorName != null) {
                    VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
                    if (profileEntry == null) {
                        Log.d("KnoxVpnApiValidation", "getAllPackagesInVpnProfileValidation: profileInfo value is null");
                        return null;
                    }
                    if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
                        Log.d("KnoxVpnApiValidation", "getAllPackagesInVpnProfileValidation: Not the same Admin");
                        return null;
                    }
                    int userId = UserHandle.getUserId(profileEntry.getAdminId());
                    int personaId = knoxVpnContext.getPersonaId();
                    if (userId != 0 && personaId == 0) {
                        Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
                        return null;
                    }
                    if (profileEntry.getRouteType() != 0) {
                        return str;
                    }
                    Log.d("KnoxVpnApiValidation", "getAllPackagesInVpnProfileValidation: profile is of system type");
                    return null;
                }
            } catch (Exception e) {
                Log.e("KnoxVpnApiValidation", "Exception at getAllPackagesInVpnProfileValidation API " + Log.getStackTraceString(e));
                return null;
            }
        }
        Log.d("KnoxVpnApiValidation", "getAllPackagesInVpnProfileValidation: profileName value is null");
        return null;
    }

    public int addContainerPackagesToVpnValidation(KnoxVpnContext knoxVpnContext, int i, String[] strArr, String str) {
        int i2;
        if (str == null || strArr == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at addContainerPackagesToVpnValidation API " + Log.getStackTraceString(e));
            i2 = 101;
        }
        if (strArr.length >= 1 && knoxVpnContext.vendorName != null) {
            VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
            if (profileEntry == null) {
                return 108;
            }
            if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
                return 112;
            }
            int userId = UserHandle.getUserId(profileEntry.getAdminId());
            int personaId = knoxVpnContext.getPersonaId();
            if (userId != 0 && personaId == 0) {
                Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
                return 114;
            }
            if (profileEntry.getRouteType() == 0) {
                return 109;
            }
            if (!isUserTypeAppSeparation(i)) {
                if (getPersonaManager() != null && !getPersonaManager().exists(i)) {
                    return 113;
                }
                if (UserHandle.getAppId(mEdmStorageProvider.getMUMContainerOwnerUid(i)) != UserHandle.getAppId(knoxVpnContext.adminId)) {
                    return 114;
                }
                if (getPersonaManager() != null && getPersonaManager().exists(knoxVpnContext.getPersonaId()) && profileEntry.getPersonaId() != i) {
                    return 113;
                }
            }
            for (String str2 : strArr) {
                if (str2.equalsIgnoreCase(this.mKnoxVpnHelper.getPersonifiedName(i, "ADD_ALL_PACKAGES"))) {
                    return 137;
                }
                VpnProfileInfo profileEntry2 = this.vpnConfig.getProfileEntry(this.mKnoxVpnHelper.getProfileOwningThePackage(this.mKnoxVpnHelper.getPersonifiedName(i, str2)));
                if (profileEntry2 != null && !profileEntry2.getProfileName().equalsIgnoreCase(str)) {
                    if (profileEntry2.getAdminId() == knoxVpnContext.adminId) {
                        return 135;
                    }
                    if (profileEntry2.getAdminId() != knoxVpnContext.adminId) {
                        return 136;
                    }
                }
                if (profileEntry2 != null && profileEntry2.getProfileName().equalsIgnoreCase(str) && profileEntry2.getAdminId() == knoxVpnContext.adminId) {
                    return 135;
                }
                int uIDForPackage = this.mKnoxVpnHelper.getUIDForPackage(i, str2);
                if (uIDForPackage > 0) {
                    String profileOwningTheUid = this.mKnoxVpnHelper.getProfileOwningTheUid(uIDForPackage);
                    if (profileOwningTheUid != null && !profileOwningTheUid.equalsIgnoreCase(str)) {
                        return 139;
                    }
                    String profileOwningTheUidWithNoInternetPermission = this.mKnoxVpnHelper.getProfileOwningTheUidWithNoInternetPermission(uIDForPackage);
                    if (profileOwningTheUidWithNoInternetPermission != null && !profileOwningTheUidWithNoInternetPermission.equalsIgnoreCase(str)) {
                        return 139;
                    }
                }
                if (this.mKnoxVpnHelper.checkIfUidIsBlackListed(uIDForPackage, i) || str2.equalsIgnoreCase("com.knox.vpn.proxyhandler")) {
                    return 137;
                }
                if (str2.trim().equals("")) {
                    return 134;
                }
            }
            i2 = 100;
            if (this.mKnoxVpnHelper.isWideVpnExists(i)) {
                if (this.mKnoxVpnHelper.getAdminIdForUserVpn(i) != knoxVpnContext.adminId) {
                    return 120;
                }
                KnoxVpnHelper knoxVpnHelper = this.mKnoxVpnHelper;
                String profileOwningThePackage = knoxVpnHelper.getProfileOwningThePackage(knoxVpnHelper.getPersonifiedName(i, "ADD_ALL_PACKAGES"));
                if (profileOwningThePackage != null) {
                    if (!profileOwningThePackage.equalsIgnoreCase(str)) {
                        return this.mKnoxVpnHelper.checkIfProfileHasChainingFeature(profileOwningThePackage) != 1 ? 119 : 100;
                    }
                    if (profileEntry.getActivateState() == 1) {
                        return 115;
                    }
                    HashSet exemptPackageList = profileEntry.getExemptPackageList();
                    if (exemptPackageList.isEmpty()) {
                        return 119;
                    }
                    for (String str3 : strArr) {
                        int uIDForPackage2 = this.mKnoxVpnHelper.getUIDForPackage(i, str3);
                        if (uIDForPackage2 != -1 && exemptPackageList.contains(Integer.valueOf(uIDForPackage2))) {
                            profileEntry.removeUidFromExemptList(uIDForPackage2);
                            this.mKnoxVpnHelper.removeExemptedListToDatabase(str, uIDForPackage2);
                            Log.d("KnoxVpnApiValidation", "user wide vpn was configured " + i + "removing uid from exempt list " + uIDForPackage2);
                        }
                    }
                    this.mKnoxVpnHelper.updateUidsToVpnUidRange(str);
                }
            }
            Log.d("KnoxVpnApiValidation", "addContainerPackagesToVpnValidation : validationResult value is " + i2);
            return i2;
        }
        return 104;
    }

    public int removeContainerPackagesFromVpnValidation(KnoxVpnContext knoxVpnContext, int i, String[] strArr, String str) {
        int i2;
        if (str == null || strArr == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at removeContainerPackagesFromVpnValidation API " + Log.getStackTraceString(e));
            i2 = 101;
        }
        if (strArr.length >= 1 && knoxVpnContext.vendorName != null) {
            VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
            if (profileEntry == null) {
                return 108;
            }
            if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
                return 112;
            }
            int userId = UserHandle.getUserId(profileEntry.getAdminId());
            int personaId = knoxVpnContext.getPersonaId();
            if (userId != 0 && personaId == 0) {
                Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
                return 114;
            }
            if (profileEntry.getRouteType() == 0) {
                return 109;
            }
            if (!isUserTypeAppSeparation(i)) {
                if (getPersonaManager() != null && !getPersonaManager().exists(i)) {
                    return 113;
                }
                if (UserHandle.getAppId(mEdmStorageProvider.getMUMContainerOwnerUid(i)) != UserHandle.getAppId(knoxVpnContext.adminId)) {
                    return 114;
                }
                if (getPersonaManager() != null && getPersonaManager().exists(knoxVpnContext.getPersonaId()) && profileEntry.getPersonaId() != i) {
                    return 113;
                }
            }
            if (this.mKnoxVpnHelper.isUsingKnoxPackageExists(i)) {
                for (String str2 : strArr) {
                    String personifiedName = this.mKnoxVpnHelper.getPersonifiedName(i, str2);
                    String profileNameForPackage = this.vpnConfig.getProfileNameForPackage(personifiedName);
                    if (personifiedName != null && profileNameForPackage != null && !profileNameForPackage.equalsIgnoreCase(str)) {
                        return 129;
                    }
                    int uIDForPackage = this.mKnoxVpnHelper.getUIDForPackage(i, str2);
                    if (uIDForPackage > 0) {
                        String profileOwningTheUid = this.mKnoxVpnHelper.getProfileOwningTheUid(uIDForPackage);
                        if (profileOwningTheUid != null && !profileOwningTheUid.equalsIgnoreCase(str)) {
                            return 139;
                        }
                        String profileOwningTheUidWithNoInternetPermission = this.mKnoxVpnHelper.getProfileOwningTheUidWithNoInternetPermission(uIDForPackage);
                        if (profileOwningTheUidWithNoInternetPermission != null && !profileOwningTheUidWithNoInternetPermission.equalsIgnoreCase(str)) {
                            return 139;
                        }
                    }
                }
            }
            i2 = 100;
            if (this.mKnoxVpnHelper.isWideVpnExists(i)) {
                if (this.mKnoxVpnHelper.getAdminIdForUserVpn(i) != knoxVpnContext.adminId) {
                    return 122;
                }
                KnoxVpnHelper knoxVpnHelper = this.mKnoxVpnHelper;
                String profileOwningThePackage = knoxVpnHelper.getProfileOwningThePackage(knoxVpnHelper.getPersonifiedName(i, "ADD_ALL_PACKAGES"));
                if (profileOwningThePackage != null) {
                    if (!profileOwningThePackage.equalsIgnoreCase(str)) {
                        return this.mKnoxVpnHelper.checkIfProfileHasChainingFeature(profileOwningThePackage) != 1 ? 121 : 100;
                    }
                    HashSet exemptPackageList = profileEntry.getExemptPackageList();
                    for (String str3 : strArr) {
                        int uIDForPackage2 = this.mKnoxVpnHelper.getUIDForPackage(i, str3);
                        if (uIDForPackage2 != -1) {
                            exemptPackageList.add(Integer.valueOf(uIDForPackage2));
                            this.mKnoxVpnHelper.addExemptedListToDatabase(str, this.mKnoxVpnHelper.getPersonifiedName(i, str3), uIDForPackage2);
                            Log.d("KnoxVpnApiValidation", "user wide vpn was configured " + i + "adding uid to exempt list " + uIDForPackage2);
                        } else {
                            this.mKnoxVpnHelper.addExemptedListToDatabase(str, this.mKnoxVpnHelper.getPersonifiedName(i, str3), uIDForPackage2);
                            Log.d("KnoxVpnApiValidation", "user wide vpn was configured " + i + "adding uid to exempt list " + uIDForPackage2);
                        }
                    }
                    this.mKnoxVpnHelper.updateUidsToVpnUidRange(str);
                }
            }
            Log.d("KnoxVpnApiValidation", "removeContainerPackagesFromVpnValidation : validationResult value is " + i2);
            return i2;
        }
        return 104;
    }

    public String getAllContainerPackagesInVpnProfileValidation(KnoxVpnContext knoxVpnContext, int i, String str) {
        if (str != null) {
            try {
                if (knoxVpnContext.vendorName != null) {
                    VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
                    if (profileEntry == null) {
                        Log.d("KnoxVpnApiValidation", "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null");
                        return null;
                    }
                    if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
                        Log.d("KnoxVpnApiValidation", "getAllContainerPackagesInVpnProfileValidation: Not the same admin");
                        return null;
                    }
                    int userId = UserHandle.getUserId(profileEntry.getAdminId());
                    int personaId = knoxVpnContext.getPersonaId();
                    if (userId != 0 && personaId == 0) {
                        Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
                        return null;
                    }
                    if (profileEntry.getRouteType() == 0) {
                        Log.d("KnoxVpnApiValidation", "getAllContainerPackagesInVpnProfileValidation: profile is of system type");
                        return null;
                    }
                    if (!isUserTypeAppSeparation(i)) {
                        if (getPersonaManager() != null && !getPersonaManager().exists(i)) {
                            Log.d("KnoxVpnApiValidation", "getAllContainerPackagesInVpnProfileValidation: user id is not valid");
                            return null;
                        }
                        if (UserHandle.getAppId(mEdmStorageProvider.getMUMContainerOwnerUid(i)) != UserHandle.getAppId(knoxVpnContext.adminId)) {
                            Log.d("KnoxVpnApiValidation", "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container");
                            return null;
                        }
                    }
                    return str;
                }
            } catch (Exception e) {
                Log.e("KnoxVpnApiValidation", "Exception at getAllContainerPackagesInVpnProfileValidation API " + Log.getStackTraceString(e));
                return null;
            }
        }
        Log.d("KnoxVpnApiValidation", "getAllContainerPackagesInVpnProfileValidation: profileName value is null");
        return null;
    }

    public int addAllContainerPackagesToVpnValidation(KnoxVpnContext knoxVpnContext, int i, String str) {
        int i2;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at addAllContainerPackagesToVpnValidation API " + Log.getStackTraceString(e));
            i2 = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        int userId = UserHandle.getUserId(profileEntry.getAdminId());
        int personaId = knoxVpnContext.getPersonaId();
        if (userId != 0 && personaId == 0) {
            Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
            return 114;
        }
        if (profileEntry.getRouteType() == 0) {
            return 109;
        }
        if (profileEntry.getVpnConnectionType() == 1) {
            return 702;
        }
        if (profileEntry.getChainingEnabled() == 0) {
            return EndpointMonitorConst.TRACE_EVENT_SCHED_CLS_INGRESS;
        }
        if (!isUserTypeAppSeparation(i)) {
            if (getPersonaManager() != null && !getPersonaManager().exists(i)) {
                return 113;
            }
            if (UserHandle.getAppId(mEdmStorageProvider.getMUMContainerOwnerUid(i)) != UserHandle.getAppId(knoxVpnContext.adminId)) {
                return 114;
            }
            if (getPersonaManager() != null && getPersonaManager().exists(knoxVpnContext.getPersonaId()) && profileEntry.getPersonaId() != i) {
                return 113;
            }
        }
        if (this.mKnoxVpnHelper.isUsingKnoxPackageExists(i) && !this.mKnoxVpnHelper.chainingForAddAll(str, knoxVpnContext.personaId)) {
            return 123;
        }
        if (this.mKnoxVpnHelper.isWideVpnExists(i)) {
            return this.mKnoxVpnHelper.getAdminIdForUserVpn(i) == knoxVpnContext.adminId ? 117 : 118;
        }
        i2 = 100;
        Log.d("KnoxVpnApiValidation", "addAllContainerPackagesToVpnValidation : validationResult value is " + i2);
        return i2;
    }

    public int removeAllContainerPackagesFromVpnValidation(KnoxVpnContext knoxVpnContext, int i, String str) {
        int i2;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at removeAllPackagesFromVpnValidation API " + Log.getStackTraceString(e));
            i2 = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        int userId = UserHandle.getUserId(profileEntry.getAdminId());
        int personaId = knoxVpnContext.getPersonaId();
        if (userId != 0 && personaId == 0) {
            Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
            return 114;
        }
        if (profileEntry.getRouteType() == 0) {
            return 109;
        }
        if (!isUserTypeAppSeparation(i)) {
            if (getPersonaManager() != null && !getPersonaManager().exists(i)) {
                return 113;
            }
            if (UserHandle.getAppId(mEdmStorageProvider.getMUMContainerOwnerUid(i)) != UserHandle.getAppId(knoxVpnContext.adminId)) {
                return 114;
            }
            if (getPersonaManager() != null && getPersonaManager().exists(knoxVpnContext.getPersonaId()) && profileEntry.getPersonaId() != i) {
                return 113;
            }
        }
        i2 = 100;
        Log.d("KnoxVpnApiValidation", "removeAllPackagesFromVpnValidation : validationResult value is " + i2);
        return i2;
    }

    public int addAllPackagesToVpnValidation(KnoxVpnContext knoxVpnContext, String str) {
        int i;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at addAllPackagesToVpnValidation API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        int userId = UserHandle.getUserId(profileEntry.getAdminId());
        int personaId = knoxVpnContext.getPersonaId();
        if (userId != 0 && personaId == 0) {
            Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
            return 114;
        }
        if (profileEntry.getRouteType() == 0) {
            return 109;
        }
        if (profileEntry.getVpnConnectionType() == 1) {
            return 702;
        }
        if (profileEntry.getChainingEnabled() == 0) {
            return EndpointMonitorConst.TRACE_EVENT_SCHED_CLS_INGRESS;
        }
        if (this.mKnoxVpnHelper.isUsingKnoxPackageExists(knoxVpnContext.personaId) && !this.mKnoxVpnHelper.chainingForAddAll(str, knoxVpnContext.personaId)) {
            return 123;
        }
        if (this.mKnoxVpnHelper.isWideVpnExists(knoxVpnContext.personaId)) {
            return this.mKnoxVpnHelper.getAdminIdForUserVpn(knoxVpnContext.personaId) == knoxVpnContext.adminId ? 117 : 118;
        }
        i = 100;
        Log.d("KnoxVpnApiValidation", "addAllPackagesToVpnValidation : validationResult value is " + i);
        return i;
    }

    public int removeAllPackagesFromVpnValidation(KnoxVpnContext knoxVpnContext, String str) {
        int i;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at removeAllPackagesFromVpnValidation API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        int userId = UserHandle.getUserId(profileEntry.getAdminId());
        int personaId = knoxVpnContext.getPersonaId();
        if (userId != 0 && personaId == 0) {
            Log.e("KnoxVpnApiValidation", "EMM present in work profile trying to configure vpn for user 0");
            return 114;
        }
        if (profileEntry.getRouteType() == 0) {
            return 109;
        }
        i = 100;
        Log.d("KnoxVpnApiValidation", "removeAllPackagesFromVpnValidation : validationResult value is " + i);
        return i;
    }

    public int getStateValidation(KnoxVpnContext knoxVpnContext, String str) {
        int i;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at getStateValidation API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        i = 100;
        Log.d("KnoxVpnApiValidation", "getStateValidation : validationResult value is " + i);
        return i;
    }

    public String getErrorStringValidation(KnoxVpnContext knoxVpnContext, String str) {
        if (str != null) {
            try {
            } catch (Exception e) {
                Log.e("KnoxVpnApiValidation", "Exception at getErrorStringValidation API " + Log.getStackTraceString(e));
            }
            if (knoxVpnContext.vendorName != null) {
                VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
                if (profileEntry == null) {
                    Log.d("KnoxVpnApiValidation", "getErrorStringValidation: profileInfo value is null");
                    return null;
                }
                if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
                    Log.d("KnoxVpnApiValidation", "getErrorStringValidation: Not the same admin");
                    return null;
                }
                return str;
            }
        }
        Log.d("KnoxVpnApiValidation", "getErrorStringValidation: profileName value is null");
        return null;
    }

    public int setVpnModeOfOperationValidation(KnoxVpnContext knoxVpnContext, String str, int i) {
        int i2;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at setVpnModeOfOperationValidation API " + Log.getStackTraceString(e));
            i2 = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        if (i != 0 && i != 1) {
            return 138;
        }
        i2 = 100;
        Log.d("KnoxVpnApiValidation", "setVpnModeOfOperationValidation : validationResult value is " + i2);
        return i2;
    }

    public int getVpnModeOfOperationValidation(KnoxVpnContext knoxVpnContext, String str) {
        int i;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at getVpnModeOfOperationValidation API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        i = 100;
        Log.d("KnoxVpnApiValidation", "getVpnModeOfOperationValidation : validationResult value is " + i);
        return i;
    }

    public int allowUsbTetheringValidation(KnoxVpnContext knoxVpnContext, String str, Bundle bundle) {
        String str2;
        String str3;
        int i;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            e = e;
            str2 = "KnoxVpnApiValidation";
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        str2 = "KnoxVpnApiValidation";
        try {
        } catch (Exception e2) {
            e = e2;
            str3 = str2;
            Log.e(str3, "Exception at enableUsbTethering API " + Log.getStackTraceString(e));
            i = 101;
            Log.d(str3, "enableUsbTethering : validationResult value is " + i);
            return i;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        if (profileEntry.getRouteType() == 0) {
            return 109;
        }
        if (profileEntry.getChainingEnabled() == 0 || profileEntry.getVpnConnectionType() == 1 || profileEntry.getUidPidSearchEnabled() == 1) {
            return 901;
        }
        Collection profileEntries = this.vpnConfig.getProfileEntries();
        if (profileEntries != null && profileEntries.size() > 0) {
            for (VpnProfileInfo vpnProfileInfo : this.vpnConfig.getProfileEntries()) {
                if (vpnProfileInfo.getUsbTethering() == 1) {
                    return !str.equalsIgnoreCase(vpnProfileInfo.getProfileName()) ? 901 : 100;
                }
            }
        }
        i = 100;
        if (bundle != null && !bundle.isEmpty()) {
            if (!this.mKnoxVpnHelper.isPackageInstalled("com.samsung.knox.vpn.tether.auth", knoxVpnContext.personaId)) {
                Log.e("KnoxVpnTetherAuthentication", "knox vpn usb tether auth application not installed");
                return 901;
            }
            if (!this.mKnoxVpnHelper.checkIfPlatformSigned(knoxVpnContext.personaId, "com.samsung.knox.vpn.tether.auth")) {
                Log.e("KnoxVpnTetherAuthentication", "knox vpn usb tether auth application is not signed with proper key");
                return 901;
            }
            if (bundle.containsKey("key-tether-auth-login-page")) {
                if (bundle.getString("key-tether-auth-login-page") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "loginpage string value is null");
                    return 901;
                }
                if (bundle.getString("key-tether-auth-login-page").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "loginpage string value is empty");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-auth-response-page")) {
                if (bundle.getString("key-tether-auth-response-page") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "responsepage string value is null");
                    return 901;
                }
                if (bundle.getString("key-tether-auth-response-page").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "responsepage string value is empty");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-client-certificate-issuer-cn")) {
                if (bundle.getString("key-tether-client-certificate-issuer-cn") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "client cert issuer CN string value is null");
                    return 901;
                }
                if (bundle.getString("key-tether-client-certificate-issuer-cn").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "client cert issuer CN string value is empty");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-client-certificate-issued-cn")) {
                if (bundle.getString("key-tether-client-certificate-issued-cn") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "client cert issued CN string value is null");
                    return 901;
                }
                if (bundle.getString("key-tether-client-certificate-issued-cn").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "client cert issued CN string value is empty");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-captive-portal-certificate") && bundle.containsKey("key-tether-captive-portal-alias")) {
                Log.e("KnoxVpnTetherAuthentication", "config contains both captive portal cert and alias");
                return 901;
            }
            if (bundle.containsKey("key-tether-captive-portal-alias")) {
                if (bundle.getString("key-tether-captive-portal-alias") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "captiveAlias string value is null");
                    return 901;
                }
                if (bundle.getString("key-tether-captive-portal-alias").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "captiveAlias string value is empty");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-captive-portal-certificate")) {
                if (bundle.getByteArray("key-tether-captive-portal-certificate") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "captiveCert value is null");
                    return 901;
                }
                if (bundle.getByteArray("key-tether-captive-portal-certificate").length <= 0) {
                    Log.e("KnoxVpnTetherAuthentication", "captiveCert length is not valid");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-captive-portal-cert-password")) {
                if (bundle.getString("key-tether-captive-portal-cert-password") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "captiveCert credential value is null");
                    return 901;
                }
                if (bundle.getString("key-tether-captive-portal-cert-password").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "captiveCert credential value is empty");
                    return 901;
                }
                String string = bundle.getString("key-tether-captive-portal-cert-password");
                if (!this.mKnoxVpnHelper.saveProfileCredentials(str + "_captivecert_pwd", string)) {
                    Log.e("KnoxVpnTetherAuthentication", "Saving the captive cert credential inside keystore failed");
                    return 901;
                }
                bundle.remove("key-tether-captive-portal-cert-password");
            }
            if (bundle.containsKey("key-tether-ca-certificate") && bundle.containsKey("key-tether-ca-alias")) {
                Log.e("KnoxVpnTetherAuthentication", "config contains both ca cert and alias");
                return 901;
            }
            if (bundle.containsKey("key-tether-ca-alias")) {
                if (bundle.getString("key-tether-ca-alias") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "caAlias string value is null");
                    return 901;
                }
                if (bundle.getString("key-tether-ca-alias").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "caAlias string value is empty");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-ca-certificate")) {
                if (bundle.getByteArray("key-tether-ca-certificate") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "caCert value is null");
                    return 901;
                }
                if (bundle.getByteArray("key-tether-ca-certificate").length <= 0) {
                    Log.e("KnoxVpnTetherAuthentication", "caCert length is not valid");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-ca-cert-password")) {
                if (bundle.getString("key-tether-ca-cert-password") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "caCert credential value is empty");
                    return 901;
                }
                if (bundle.getString("key-tether-ca-cert-password").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "caCert credential value is empty");
                    return 901;
                }
                String string2 = bundle.getString("key-tether-ca-cert-password");
                if (!this.mKnoxVpnHelper.saveProfileCredentials(str + "_cacert_pwd", string2)) {
                    Log.e("KnoxVpnTetherAuthentication", "Saving the ca cert credential inside keystore failed");
                    return 901;
                }
                bundle.remove("key-tether-ca-cert-password");
            }
            if (bundle.containsKey("key-tether-user-certificate") && bundle.containsKey("key-tether-user-alias")) {
                Log.e("KnoxVpnTetherAuthentication", "config contains both server cert and alias");
                return 901;
            }
            if (bundle.containsKey("key-tether-user-alias")) {
                if (bundle.getString("key-tether-user-alias") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "serverAlias string value is null");
                    return 901;
                }
                if (bundle.getString("key-tether-user-alias").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "serverAlias string value is empty");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-user-certificate")) {
                if (bundle.getByteArray("key-tether-user-certificate") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "serverCert value is null");
                    return 901;
                }
                if (bundle.getByteArray("key-tether-user-certificate").length <= 0) {
                    Log.e("KnoxVpnTetherAuthentication", "serverCert length is not valid");
                    return 901;
                }
                byte[] byteArray = bundle.getByteArray("key-tether-user-certificate");
                String string3 = bundle.getString("key-tether-user-cert-password", "");
                KeyStore keyStore = KeyStore.getInstance("PKCS12");
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArray);
                try {
                    if (string3 == null) {
                        keyStore.load(byteArrayInputStream, null);
                    } else {
                        keyStore.load(byteArrayInputStream, string3.toCharArray());
                    }
                    Enumeration<String> aliases = keyStore.aliases();
                    if (aliases.hasMoreElements()) {
                        keyStore.deleteEntry(aliases.nextElement());
                    }
                } catch (IOException unused) {
                    byteArrayInputStream.close();
                    Log.e("KnoxVpnTetherAuthentication", "serverCert pwd is incorrect");
                    return 901;
                }
            }
            if (bundle.containsKey("key-tether-user-cert-password")) {
                if (bundle.getString("key-tether-user-cert-password") == null) {
                    Log.e("KnoxVpnTetherAuthentication", "serverCert credential value is null");
                    return 901;
                }
                if (bundle.getString("key-tether-user-cert-password").isEmpty()) {
                    Log.e("KnoxVpnTetherAuthentication", "serverCert credential value is empty");
                    return 901;
                }
                String string4 = bundle.getString("key-tether-user-cert-password");
                if (!this.mKnoxVpnHelper.saveProfileCredentials(str + "_servercert_pwd", string4)) {
                    Log.e("KnoxVpnTetherAuthentication", "Saving the server cert password inside keystore failed");
                    return 901;
                }
                bundle.remove("key-tether-user-cert-password");
            }
        }
        str3 = str2;
        Log.d(str3, "enableUsbTethering : validationResult value is " + i);
        return i;
    }

    public int disallowUsbTetheringValidation(KnoxVpnContext knoxVpnContext, String str) {
        int i;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at enableUsbTethering API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        if (profileEntry.getRouteType() == 0) {
            return 109;
        }
        if (profileEntry.getChainingEnabled() == 0 || profileEntry.getVpnConnectionType() == 1 || profileEntry.getUidPidSearchEnabled() == 1) {
            return 901;
        }
        Collection profileEntries = this.vpnConfig.getProfileEntries();
        i = 100;
        if (profileEntries != null && profileEntries.size() > 0) {
            for (VpnProfileInfo vpnProfileInfo : this.vpnConfig.getProfileEntries()) {
                if (vpnProfileInfo.getUsbTethering() == 1) {
                    return !str.equalsIgnoreCase(vpnProfileInfo.getProfileName()) ? 901 : 100;
                }
            }
        }
        Log.d("KnoxVpnApiValidation", "enableUsbTethering : validationResult value is " + i);
        return i;
    }

    public int isUsbTetheringOverVpnEnabledValidation(KnoxVpnContext knoxVpnContext, String str) {
        int i;
        if (str == null) {
            return 104;
        }
        try {
        } catch (Exception e) {
            Log.e("KnoxVpnApiValidation", "Exception at isUsbTetheringOverVpnEnabledValidation API " + Log.getStackTraceString(e));
            i = 101;
        }
        if (knoxVpnContext.vendorName == null) {
            return 104;
        }
        VpnProfileInfo profileEntry = this.vpnConfig.getProfileEntry(str);
        if (profileEntry == null) {
            return 108;
        }
        if (profileEntry.getAdminId() != knoxVpnContext.adminId) {
            return 112;
        }
        if (profileEntry.getRouteType() == 0) {
            return 109;
        }
        if (profileEntry.getChainingEnabled() == 0 || profileEntry.getVpnConnectionType() == 1) {
            return 901;
        }
        if (profileEntry.getUidPidSearchEnabled() == 1) {
            return 901;
        }
        i = 100;
        Log.d("KnoxVpnApiValidation", "isUsbTetheringOverVpnEnabledValidation : validationResult value is " + i);
        return i;
    }
}
