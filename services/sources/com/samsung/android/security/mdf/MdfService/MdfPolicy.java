package com.samsung.android.security.mdf.MdfService;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IInstalld;
import android.os.Process;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.sec.enterprise.auditlog.AuditLog;
import android.util.Log;
import com.android.internal.widget.LockPatternUtils;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.EnterpriseKnoxManager;
import com.samsung.android.knox.custom.LauncherConfigurationInternal;
import com.samsung.android.knox.devicesecurity.PasswordPolicy;
import com.samsung.android.knox.keystore.CertificatePolicy;
import com.samsung.android.knox.restriction.RestrictionPolicy;
import com.samsung.android.security.SemSdCardEncryption;
import com.samsung.android.security.mdf.MdfUtils;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class MdfPolicy {
    public static MdfPolicy sInstance;
    public CertificatePolicy mCertificatePolicy;
    public Context mContext;
    public DevicePolicyManager mDevicePolicyManager;
    public boolean mIsExternalSDRemovable;
    public boolean mIsFaceLockDisabled;
    public boolean mIsOcspCheckEnabled;
    public boolean mIsPasswordEnabled;
    public boolean mIsRevocationCheckEnabled;
    public boolean mIsSDEnabled;
    public boolean mIsSDEncrypted;
    public boolean mIsSmartLockDisabled;
    public LockPatternUtils mLockPatternUtils;
    public int mMaximumFailedPasswordsForWipe;
    public MdfUtils mMdfUtils;
    public PasswordPolicy mPasswordPolicy;
    public int mPasswordQuality;
    public RestrictionPolicy mRestrictionPolicy;
    public UserManager mUserManager;

    public MdfPolicy(Context context) {
        printVersion();
        this.mContext = context;
        this.mDevicePolicyManager = (DevicePolicyManager) context.getSystemService("device_policy");
        this.mLockPatternUtils = new LockPatternUtils(context.getApplicationContext());
        this.mCertificatePolicy = EnterpriseKnoxManager.getInstance(this.mContext).getCertificatePolicy();
        this.mPasswordPolicy = EnterpriseDeviceManager.getInstance(this.mContext).getPasswordPolicy();
        this.mRestrictionPolicy = EnterpriseDeviceManager.getInstance(this.mContext).getRestrictionPolicy();
        this.mUserManager = (UserManager) context.getSystemService("user");
        this.mMdfUtils = new MdfUtils();
    }

    public static synchronized MdfPolicy getInstance(Context context) {
        MdfPolicy mdfPolicy;
        synchronized (MdfPolicy.class) {
            if (sInstance == null) {
                sInstance = new MdfPolicy(context);
            }
            mdfPolicy = sInstance;
        }
        return mdfPolicy;
    }

    public final void setNotification(String str, String str2) {
        Log.d("MdfService", "Notice for applying security policy");
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        if (notificationManager == null) {
            Log.d("MdfService", "NotificationManager is null");
            return;
        }
        NotificationChannel notificationChannel = new NotificationChannel("mdf_channel_id", "Mdf Channel", 4);
        notificationChannel.enableVibration(true);
        notificationChannel.setVibrationPattern(new long[]{0, 500});
        notificationManager.createNotificationChannel(notificationChannel);
        Notification.Builder builder = new Notification.Builder(this.mContext);
        builder.setContentTitle(str);
        builder.setContentText(str2);
        builder.setSmallIcon(R.drawable.ic_dialog_alert);
        builder.setPriority(2);
        builder.setAutoCancel(false);
        builder.setChannelId(notificationChannel.getId());
        notificationManager.notify(this.mContext.getApplicationInfo().uid, builder.build());
    }

    public final void logForAudit(int i, String str) {
        AuditLog.log(1, i, false, Process.myPid(), "MdfStatus", str);
    }

    public final void logForAuditAndLogcat(int i, int i2, String str) {
        logForAudit(i, str);
        Log.println(i2, "MdfService", str);
    }

    public boolean isCCModeSupport() {
        return "Enabled".equals(SystemProperties.get("ro.security.mdf.ux"));
    }

    public final boolean isAECommonCriteriaModeEnabled() {
        DevicePolicyManager devicePolicyManager = this.mDevicePolicyManager;
        if (devicePolicyManager != null) {
            return devicePolicyManager.isCommonCriteriaModeEnabled(null);
        }
        Log.e("MdfService", "Failed isCommonCriteriaMode(). mDevicePolicyManager is null");
        return false;
    }

    public int initCCMode() {
        int i;
        try {
            checkSystemUid();
            int checkCCModeOnDevice = checkCCModeOnDevice();
            Log.d("MdfService", "current mode : " + Integer.toString(checkCCModeOnDevice));
            if (checkCCModeOnDevice == 1) {
                int checkFipsSelftest = checkFipsSelftest();
                if (checkFipsSelftest != 0) {
                    Log.e("MdfService", "Failed. check fips self test. res = " + Integer.toString(checkFipsSelftest));
                    setNotification(this.mContext.getResources().getString(R.string.shortcut_disabled_reason_unknown), this.mContext.getResources().getString(R.string.shareactionprovider_share_with_application));
                    i = setCCMode(8);
                    if (i != 0) {
                        Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(i));
                    }
                } else {
                    i = checkDevicePolicy();
                    if (i != 0) {
                        Log.e("MdfService", "Prerequisite policies have yet to set. res = " + Integer.toString(i));
                    }
                }
            } else if (checkCCModeOnDevice == 4) {
                i = setCCMode(4);
                if (i != 0) {
                    Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(i));
                }
            } else if (checkCCModeOnDevice == 8) {
                int cCMode = setCCMode(8);
                if (cCMode != 0) {
                    Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode));
                }
                i = -11;
            } else if (checkCCModeOnDevice == 16) {
                int cCMode2 = setCCMode(16);
                if (cCMode2 != 0) {
                    Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode2));
                }
                i = -12;
            } else {
                int cCMode3 = setCCMode(16);
                if (cCMode3 != 0) {
                    Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode3));
                }
                i = -13;
            }
            Log.i("MdfService", "AE CommonCriteriaMode is " + Boolean.toString(isAECommonCriteriaModeEnabled()));
            return i;
        } catch (SecurityException e) {
            e.printStackTrace();
            throw e;
        }
    }

    public int enableCCMode(boolean z) {
        SystemProperties.set("security.mdf.result", "None");
        if (!isCCModeSupport()) {
            Log.e("MdfService", "This model does not support CC mode.");
            SystemProperties.set("security.mdf.result", Integer.toString(-16));
            return -16;
        }
        int checkCCModeOnDevice = checkCCModeOnDevice();
        Log.d("MdfService", "the current mode : " + Integer.toString(checkCCModeOnDevice));
        if (!z) {
            if (checkCCModeOnDevice == 1) {
                int cCMode = setCCMode(4);
                if (cCMode != 0) {
                    Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode));
                    return cCMode;
                }
                setNotification(this.mContext.getResources().getString(R.string.sharing_remote_bugreport_notification_title), this.mContext.getResources().getString(R.string.serviceEnabled));
                SystemProperties.set("security.mdf.result", Integer.toString(cCMode));
                return cCMode;
            }
            if (checkCCModeOnDevice == 4) {
                Log.e("MdfService", "CCMode is already ready.");
                return 0;
            }
            if (checkCCModeOnDevice == 8) {
                int cCMode2 = setCCMode(8);
                if (cCMode2 != 0) {
                    Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode2));
                    return cCMode2;
                }
                setNotification(this.mContext.getResources().getString(R.string.shortcut_disabled_reason_unknown), this.mContext.getResources().getString(R.string.shareactionprovider_share_with_application));
                SystemProperties.set("security.mdf.result", Integer.toString(-11));
                return -11;
            }
            if (checkCCModeOnDevice == 16) {
                int cCMode3 = setCCMode(16);
                if (cCMode3 != 0) {
                    Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode3));
                }
                SystemProperties.set("security.mdf.result", Integer.toString(-12));
                return -12;
            }
            int cCMode4 = setCCMode(16);
            if (cCMode4 != 0) {
                Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode4));
            }
            SystemProperties.set("security.mdf.result", Integer.toString(-13));
            return -13;
        }
        if (checkCCModeOnDevice == 1) {
            Log.e("MdfService", "CCMode is already enabled.");
            return 0;
        }
        if (checkCCModeOnDevice != 4) {
            if (checkCCModeOnDevice == 16) {
                int cCMode5 = setCCMode(16);
                if (cCMode5 != 0) {
                    Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode5));
                }
                SystemProperties.set("security.mdf.result", Integer.toString(-12));
                return -12;
            }
            if (checkCCModeOnDevice == 8) {
                int cCMode6 = setCCMode(8);
                if (cCMode6 != 0) {
                    Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode6));
                }
                SystemProperties.set("security.mdf.result", Integer.toString(-11));
                return -11;
            }
            int cCMode7 = setCCMode(16);
            if (cCMode7 != 0) {
                Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode7));
            }
            SystemProperties.set("security.mdf.result", Integer.toString(-13));
            return -13;
        }
        int checkDevicePolicy = checkDevicePolicy();
        SystemProperties.set("security.mdf.result", Integer.toString(checkDevicePolicy));
        if (checkDevicePolicy != 0) {
            Log.e("MdfService", "Prerequisite policies have yet to set. res = " + Integer.toString(checkDevicePolicy));
        }
        int checkFipsSelftest = checkFipsSelftest();
        SystemProperties.set("security.mdf.result", Integer.toString(checkFipsSelftest));
        if (checkFipsSelftest != 0) {
            Log.e("MdfService", "Failed. check fips self test. res = " + Integer.toString(checkFipsSelftest));
            int cCMode8 = setCCMode(8);
            if (cCMode8 != 0) {
                Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode8));
                return cCMode8;
            }
            setNotification(this.mContext.getResources().getString(R.string.shortcut_disabled_reason_unknown), this.mContext.getResources().getString(R.string.shareactionprovider_share_with_application));
            return cCMode8;
        }
        int cCMode9 = setCCMode(1);
        if (cCMode9 != 0) {
            Log.e("MdfService", "Failed. setCCMode. res = " + Integer.toString(cCMode9));
            return cCMode9;
        }
        setNotification(this.mContext.getResources().getString(R.string.sharing_remote_bugreport_notification_title), this.mContext.getResources().getString(R.string.serviceClassVoice));
        return cCMode9;
    }

    public final int checkCCModeOnDevice() {
        int cCModeFlag = this.mMdfUtils.getCCModeFlag();
        if (cCModeFlag == 1) {
            return 1;
        }
        if (cCModeFlag == 4) {
            return 4;
        }
        return cCModeFlag == 8 ? 8 : 16;
    }

    public final int checkDevicePolicy() {
        int i;
        int maximumFailedPasswordsForWipe = getMaximumFailedPasswordsForWipe();
        this.mMaximumFailedPasswordsForWipe = maximumFailedPasswordsForWipe;
        boolean z = false;
        if (maximumFailedPasswordsForWipe <= 0 || maximumFailedPasswordsForWipe > 30) {
            logForAuditAndLogcat(1, 3, String.format("Password attempts : setMaximumFailedPasswordsForWipe() should be set between 1 and 30. Current value = %d", Integer.valueOf(maximumFailedPasswordsForWipe)));
            i = 2;
        } else {
            logForAuditAndLogcat(5, 4, "Password attempts : OK");
            i = 0;
        }
        int passwordQuality = getPasswordQuality();
        this.mPasswordQuality = passwordQuality;
        if (passwordQuality < 327680 || passwordQuality > 393216) {
            logForAuditAndLogcat(1, 3, "Password quality : setPasswordQuality() should be set between alphanumeric and complex.");
            i |= IInstalld.FLAG_FORCE;
        } else {
            logForAuditAndLogcat(5, 4, "Password quality : OK");
        }
        boolean isPasswordEnabled = isPasswordEnabled();
        this.mIsPasswordEnabled = isPasswordEnabled;
        if (!isPasswordEnabled) {
            logForAuditAndLogcat(1, 3, "Screen lock : Screen lock should be set to Password above alphanumeric (Biometric lock is available)");
            i |= 4;
        } else {
            logForAuditAndLogcat(5, 4, "Screen lock : OK");
        }
        this.mIsRevocationCheckEnabled = isRevocationCheckEnabled();
        boolean isOcspCheckEnabled = isOcspCheckEnabled();
        this.mIsOcspCheckEnabled = isOcspCheckEnabled;
        if (isOcspCheckEnabled) {
            logForAuditAndLogcat(5, 4, "Certificate revocation : OK (OCSP/CRL)");
        } else if (this.mIsRevocationCheckEnabled) {
            logForAuditAndLogcat(5, 4, "Certificate revocation : OK (CRL)");
        } else {
            logForAuditAndLogcat(1, 3, "Certificate revocation : enableOcspCheck() or enableRevocationCheck() should be set on all packages.");
            i |= 32;
        }
        boolean isExternalSDRemovable = isExternalSDRemovable();
        this.mIsExternalSDRemovable = isExternalSDRemovable;
        if (isExternalSDRemovable) {
            if (this.mRestrictionPolicy.isSdCardEnabled() && !this.mUserManager.hasUserRestriction("no_physical_media")) {
                z = true;
            }
            this.mIsSDEnabled = z;
            boolean semGetRequireStorageCardEncryption = this.mDevicePolicyManager.semGetRequireStorageCardEncryption(null);
            this.mIsSDEncrypted = semGetRequireStorageCardEncryption;
            if (!this.mIsSDEnabled) {
                logForAuditAndLogcat(5, 4, "SD card status : OK (Blocked)");
            } else if (semGetRequireStorageCardEncryption) {
                logForAuditAndLogcat(5, 4, "SD card status : OK (Encrypted)");
            } else {
                logForAuditAndLogcat(5, 3, "SD card status : setRequireStorageCardEncryption() should be set to true, setSdCardState() should be set to false or DISALLOW_MOUNT_PHYSICAL_MEDIA should be set to addUserRestriction().");
                i |= 128;
            }
        } else {
            logForAuditAndLogcat(5, 4, "SD card status : OK (No slot)");
        }
        boolean isFaceLockDisabled = isFaceLockDisabled();
        this.mIsFaceLockDisabled = isFaceLockDisabled;
        if (isFaceLockDisabled) {
            logForAuditAndLogcat(5, 4, "Face lock : OK");
        } else {
            logForAuditAndLogcat(1, 3, "Face lock : BIOMETRIC_AUTHENTICATION_FACE should be set to false in the setBiometricAuthenticationEnabled() or KEYGUARD_DISABLE_FACE should be set to setKeyguardDisabledFeatures().");
            i |= 16384;
        }
        boolean isSmartLockDisabled = isSmartLockDisabled();
        this.mIsSmartLockDisabled = isSmartLockDisabled;
        if (isSmartLockDisabled) {
            logForAuditAndLogcat(5, 4, "Smart lock : OK");
            return i;
        }
        logForAuditAndLogcat(1, 3, "Smart lock : KEYGUARD_DISABLE_TRUST_AGENTS should be set to setKeyguardDisabledFeatures().");
        return i | 32768;
    }

    public final int checkFipsSelftest() {
        if (this.mMdfUtils.FIPS_Openssl_SelfTest() != 0) {
            logForAuditAndLogcat(1, 6, "FIPS self-test : FAILED");
            return -20;
        }
        logForAuditAndLogcat(5, 4, "FIPS self-test : OK");
        return 0;
    }

    public final int enforceSB(boolean z) {
        int sBFlagOff;
        if (z) {
            sBFlagOff = this.mMdfUtils.setSBFlagOn();
            if (sBFlagOff != 0) {
                Log.e("MdfService", "Failed. setSBFlagOn() res = " + Integer.toString(sBFlagOff));
                return -24;
            }
            int sBFlag = this.mMdfUtils.getSBFlag();
            if (sBFlag != 1) {
                Log.e("MdfService", "Failed. SBFlag has yet to set. current flag = " + Integer.toString(sBFlag));
                return -24;
            }
        } else {
            sBFlagOff = this.mMdfUtils.setSBFlagOff();
            if (sBFlagOff != 0) {
                Log.e("MdfService", "Failed. setSBFlagOff() res = " + Integer.toString(sBFlagOff));
                return -24;
            }
            int sBFlag2 = this.mMdfUtils.getSBFlag();
            if (sBFlag2 != 0) {
                Log.e("MdfService", "Failed. SBFlag has yet to set. current flag = " + Integer.toString(sBFlag2));
                return -24;
            }
        }
        return sBFlagOff;
    }

    public final int setCCModeFlags(int i) {
        int cCModeFlag = this.mMdfUtils.setCCModeFlag(i);
        if (cCModeFlag != 0) {
            Log.e("MdfService", "Failed. setCCModeFlag() res = " + Integer.toString(cCModeFlag));
            return -27;
        }
        int cCModeFlag2 = this.mMdfUtils.getCCModeFlag();
        if (cCModeFlag2 == i) {
            return cCModeFlag;
        }
        Log.e("MdfService", "Failed. CCMode Flag has yet to set. current flag = " + Integer.toString(cCModeFlag2));
        return -27;
    }

    public final int setFlags(boolean z, int i) {
        int enforceSB = enforceSB(z);
        if (enforceSB != 0) {
            Log.d("MdfService", "Failed. enforceSB : " + z + ", result = " + Integer.toString(enforceSB));
            return enforceSB;
        }
        int cCModeFlags = setCCModeFlags(i);
        if (cCModeFlags != 0) {
            Log.d("MdfService", "Failed. setCCModeFlag : " + Integer.toString(i) + ", result = " + Integer.toString(cCModeFlags));
        }
        return cCModeFlags;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int setCCMode(int r7) {
        /*
            r6 = this;
            java.lang.String r0 = "security.mdf"
            java.lang.String r1 = "MdfService"
            r2 = 1
            if (r7 == r2) goto L3a
            r3 = 4
            r4 = 0
            if (r7 == r3) goto L35
            r3 = 8
            if (r7 == r3) goto L32
            java.lang.String r2 = "None"
            r3 = 16
            if (r7 == r3) goto L37
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "setCCMode default... status = "
            r3.append(r5)
            java.lang.String r7 = java.lang.Integer.toString(r7)
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            android.util.Log.e(r1, r7)
            r7 = r2
            r2 = r4
            goto L3c
        L32:
            java.lang.String r7 = "Disabled"
            goto L3d
        L35:
            java.lang.String r2 = "Ready"
        L37:
            r7 = r2
            r2 = r4
            goto L3d
        L3a:
            java.lang.String r7 = "Enabled"
        L3c:
            r3 = r2
        L3d:
            int r2 = r6.setFlags(r2, r3)
            if (r2 == 0) goto L44
            return r2
        L44:
            r3 = -3
            java.lang.String r4 = android.os.SystemProperties.get(r0)     // Catch: java.lang.Exception -> L7a java.lang.RuntimeException -> L80
            boolean r4 = r4.equals(r7)     // Catch: java.lang.Exception -> L7a java.lang.RuntimeException -> L80
            if (r4 != 0) goto L52
            android.os.SystemProperties.set(r0, r7)     // Catch: java.lang.Exception -> L7a java.lang.RuntimeException -> L80
        L52:
            java.lang.String r4 = "CC Mode status : %s"
            java.lang.Object[] r7 = new java.lang.Object[]{r7}     // Catch: java.lang.Exception -> L7a java.lang.RuntimeException -> L80
            java.lang.String r7 = java.lang.String.format(r4, r7)     // Catch: java.lang.Exception -> L7a java.lang.RuntimeException -> L80
            r4 = 5
            r6.logForAudit(r4, r7)     // Catch: java.lang.Exception -> L7a java.lang.RuntimeException -> L80
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "security.mdf : "
            r6.append(r7)
            java.lang.String r7 = android.os.SystemProperties.get(r0)
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            android.util.Log.d(r1, r6)
            return r2
        L7a:
            java.lang.String r6 = "SystemProperties Exception Occurs"
            android.util.Log.e(r1, r6)
            return r3
        L80:
            java.lang.String r6 = "SystemProperties RuntimeException Occurs"
            android.util.Log.e(r1, r6)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.security.mdf.MdfService.MdfPolicy.setCCMode(int):int");
    }

    public final int getMaximumFailedPasswordsForWipe() {
        DevicePolicyManager devicePolicyManager = this.mDevicePolicyManager;
        if (devicePolicyManager != null) {
            return devicePolicyManager.getMaximumFailedPasswordsForWipe(null);
        }
        Log.e("MdfService", "DevicePolicyManager is null");
        return -2;
    }

    public final boolean isPasswordEnabled() {
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        if (lockPatternUtils != null) {
            int activePasswordQuality = lockPatternUtils.getActivePasswordQuality(UserHandle.myUserId());
            return activePasswordQuality >= 262144 && activePasswordQuality <= 393216;
        }
        Log.e("MdfService", "LockPatternUtils is null");
        return false;
    }

    public final int getPasswordQuality() {
        DevicePolicyManager devicePolicyManager = this.mDevicePolicyManager;
        if (devicePolicyManager != null) {
            return devicePolicyManager.getPasswordQuality(null);
        }
        Log.e("MdfService", "DevicePolicyManager is null");
        return -2;
    }

    public final boolean isRevocationCheckEnabled() {
        CertificatePolicy certificatePolicy = this.mCertificatePolicy;
        if (certificatePolicy != null) {
            return certificatePolicy.isRevocationCheckEnabled("*");
        }
        Log.e("MdfService", "CertificatePolicy is null");
        return false;
    }

    public final boolean isOcspCheckEnabled() {
        CertificatePolicy certificatePolicy = this.mCertificatePolicy;
        if (certificatePolicy != null) {
            return certificatePolicy.isOcspCheckEnabled("*");
        }
        Log.e("MdfService", "CertificatePolicy is null");
        return false;
    }

    public final boolean isExternalSDRemovable() {
        if (SemSdCardEncryption.isEncryptionFeatureEnabled()) {
            Log.i("MdfService", "SDCARD SLOT Support");
            return true;
        }
        Log.i("MdfService", "SDCARD SLOT None");
        return false;
    }

    public final boolean isFaceLockDisabled() {
        DevicePolicyManager devicePolicyManager = this.mDevicePolicyManager;
        if (devicePolicyManager != null) {
            boolean z = (devicePolicyManager.getKeyguardDisabledFeatures(null) & 128) != 0;
            PasswordPolicy passwordPolicy = this.mPasswordPolicy;
            if (passwordPolicy != null) {
                return z || (passwordPolicy.isBiometricAuthenticationEnabled(4) ^ true);
            }
            Log.e("MdfService", "PasswordPolicy is null");
            return false;
        }
        Log.e("MdfService", "DevicePolicyManager is null");
        return false;
    }

    public final boolean isSmartLockDisabled() {
        DevicePolicyManager devicePolicyManager = this.mDevicePolicyManager;
        if (devicePolicyManager != null) {
            return (devicePolicyManager.getKeyguardDisabledFeatures(null) & 16) != 0;
        }
        Log.e("MdfService", "DevicePolicyManager is null");
        return false;
    }

    public final void printVersion() {
        Log.i("MdfService", "v3.21.0");
    }

    public final void checkSystemUid() {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("Security Exception Occurred. Only SYSTEM can use the MdfService.");
        }
    }

    public void sendSamsungAnalyticsMultiLog() {
        int checkCCModeOnDevice = checkCCModeOnDevice();
        Log.d("MdfService", "current mode : " + Integer.toString(checkCCModeOnDevice));
        if (checkCCModeOnDevice != 1) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add("MCME");
        arrayList2.add("Enabled");
        arrayList.add("MPPA");
        arrayList2.add(Integer.toString(this.mMaximumFailedPasswordsForWipe));
        arrayList.add("MPPQ");
        arrayList2.add(Integer.toString(this.mPasswordQuality));
        arrayList.add("MPSL");
        arrayList2.add(Boolean.toString(this.mIsPasswordEnabled));
        arrayList.add("MPCR");
        arrayList2.add(Boolean.toString(this.mIsRevocationCheckEnabled));
        arrayList.add("MPCO");
        arrayList2.add(Boolean.toString(this.mIsOcspCheckEnabled));
        if (this.mIsExternalSDRemovable) {
            arrayList.add("MPSE");
            arrayList2.add(Boolean.toString(this.mIsSDEncrypted));
            arrayList.add("MPSB");
            arrayList2.add(Boolean.toString(!this.mIsSDEnabled));
        }
        arrayList.add("MPFL");
        arrayList2.add(Boolean.toString(!this.mIsFaceLockDisabled));
        arrayList.add("MPKS");
        arrayList2.add(Boolean.toString(true ^ this.mIsSmartLockDisabled));
        Bundle bundle = new Bundle();
        bundle.putString("tracking_id", "4M1-399-979749");
        bundle.putStringArray(LauncherConfigurationInternal.KEY_FEATURE_INT, (String[]) arrayList.toArray(new String[arrayList.size()]));
        bundle.putStringArray("extra", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
        bundle.putString("type", "ev");
        Intent intent = new Intent();
        intent.setAction("com.sec.android.diagmonagent.intent.USE_MULTI_APP_FEATURE_SURVEY");
        intent.putExtras(bundle);
        intent.setPackage("com.sec.android.diagmonagent");
        Context context = this.mContext;
        if (context != null) {
            context.sendBroadcast(intent);
        }
    }
}
