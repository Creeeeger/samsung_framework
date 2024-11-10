package com.android.server.devicepolicy;

import android.content.ComponentName;
import android.os.FileUtils;
import android.os.PersistableBundle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.DebugUtils;
import android.util.IndentingPrintWriter;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.utils.Slogf;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class DevicePolicyData {
    public String mCurrentRoleHolder;
    public int mFactoryResetFlags;
    public String mFactoryResetReason;
    public ActiveAdmin mPermissionBasedAdmin;
    public int mPermissionPolicy;
    public ComponentName mRestrictionsProvider;
    public List mUserControlDisabledPackages;
    public final int mUserId;
    public int mUserProvisioningState;
    public int mFailedPasswordAttempts = 0;
    public int mFailedBiometricAttempts = 0;
    public boolean mPasswordValidAtLastCheckpoint = true;
    public int mPasswordOwner = -1;
    public long mLastMaximumTimeToLock = -1;
    public boolean mUserSetupComplete = false;
    public boolean mBypassDevicePolicyManagementRoleQualifications = false;
    public boolean mPaired = false;
    public int mLastResetPassword = -1;
    public boolean mDeviceProvisioningConfigApplied = false;
    public final ArrayMap mAdminMap = new ArrayMap();
    public final ArrayList mAdminList = new ArrayList();
    public final ArrayList mRemovingAdmins = new ArrayList();
    public final ArraySet mAcceptedCaCertificates = new ArraySet();
    public List mLockTaskPackages = new ArrayList();
    public int mLockTaskFeatures = 16;
    public boolean mStatusBarDisabled = false;
    public final ArrayMap mDelegationMap = new ArrayMap();
    public boolean mDoNotAskCredentialsOnBoot = false;
    public Set mAffiliationIds = new ArraySet();
    public long mLastSecurityLogRetrievalTime = -1;
    public long mLastBugReportRequestTime = -1;
    public long mLastNetworkLogsRetrievalTime = -1;
    public boolean mCurrentInputMethodSet = false;
    public boolean mSecondaryLockscreenEnabled = false;
    public Set mOwnerInstalledCaCerts = new ArraySet();
    public boolean mAdminBroadcastPending = false;
    public PersistableBundle mInitBundle = null;
    public long mPasswordTokenHandle = 0;
    public boolean mAppsSuspended = false;
    public String mNewUserDisclaimer = "not_needed";
    public boolean mEffectiveKeepProfilesRunning = false;

    public ActiveAdmin createOrGetPermissionBasedAdmin(int i) {
        if (this.mPermissionBasedAdmin == null) {
            this.mPermissionBasedAdmin = new ActiveAdmin(i, true);
        }
        return this.mPermissionBasedAdmin;
    }

    public DevicePolicyData(int i) {
        this.mUserId = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:154:0x0379 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean store(com.android.server.devicepolicy.DevicePolicyData r26, com.android.internal.util.JournaledFile r27) {
        /*
            Method dump skipped, instructions count: 897
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.devicepolicy.DevicePolicyData.store(com.android.server.devicepolicy.DevicePolicyData, com.android.internal.util.JournaledFile):boolean");
    }

    public static void sync(File file) {
        FileOutputStream fileOutputStream;
        IOException e;
        try {
            fileOutputStream = new FileOutputStream(file, true);
            try {
                FileUtils.sync(fileOutputStream);
                fileOutputStream.close();
            } catch (IOException e2) {
                e = e2;
                Slogf.w("DevicePolicyManager", e, "failed writing file %s", file);
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                    }
                }
            }
        } catch (IOException e3) {
            fileOutputStream = null;
            e = e3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0343 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void load(com.android.server.devicepolicy.DevicePolicyData r11, com.android.internal.util.JournaledFile r12, java.util.function.Function r13, android.content.ComponentName r14) {
        /*
            Method dump skipped, instructions count: 850
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.devicepolicy.DevicePolicyData.load(com.android.server.devicepolicy.DevicePolicyData, com.android.internal.util.JournaledFile, java.util.function.Function, android.content.ComponentName):void");
    }

    public void validatePasswordOwner() {
        if (this.mPasswordOwner >= 0) {
            boolean z = true;
            int size = this.mAdminList.size() - 1;
            while (true) {
                if (size < 0) {
                    z = false;
                    break;
                } else if (((ActiveAdmin) this.mAdminList.get(size)).getUid() == this.mPasswordOwner) {
                    break;
                } else {
                    size--;
                }
            }
            if (z) {
                return;
            }
            Slogf.w("DevicePolicyManager", "Previous password owner %s no longer active; disabling", Integer.valueOf(this.mPasswordOwner));
            this.mPasswordOwner = -1;
        }
    }

    public void setDelayedFactoryReset(String str, boolean z, boolean z2, boolean z3) {
        this.mFactoryResetReason = str;
        this.mFactoryResetFlags = 1;
        if (z) {
            this.mFactoryResetFlags = 1 | 2;
        }
        if (z2) {
            this.mFactoryResetFlags |= 4;
        }
        if (z3) {
            this.mFactoryResetFlags |= 8;
        }
    }

    public boolean isNewUserDisclaimerAcknowledged() {
        String str = this.mNewUserDisclaimer;
        if (str == null) {
            int i = this.mUserId;
            if (i == 0) {
                return true;
            }
            Slogf.w("DevicePolicyManager", "isNewUserDisclaimerAcknowledged(%d): mNewUserDisclaimer is null", Integer.valueOf(i));
            return false;
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1238968671:
                if (str.equals("not_needed")) {
                    c = 0;
                    break;
                }
                break;
            case -1049376843:
                if (str.equals("needed")) {
                    c = 1;
                    break;
                }
                break;
            case 92636904:
                if (str.equals("acked")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 2:
                return true;
            default:
                Slogf.w("DevicePolicyManager", "isNewUserDisclaimerAcknowledged(%d): invalid value %d", Integer.valueOf(this.mUserId), this.mNewUserDisclaimer);
            case 1:
                return false;
        }
    }

    public void dump(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.println();
        indentingPrintWriter.println("Enabled Device Admins (User " + this.mUserId + ", provisioningState: " + this.mUserProvisioningState + "):");
        int size = this.mAdminList.size();
        for (int i = 0; i < size; i++) {
            ActiveAdmin activeAdmin = (ActiveAdmin) this.mAdminList.get(i);
            if (activeAdmin != null) {
                indentingPrintWriter.increaseIndent();
                indentingPrintWriter.print(activeAdmin.info.getComponent().flattenToShortString());
                indentingPrintWriter.println(XmlUtils.STRING_ARRAY_SEPARATOR);
                indentingPrintWriter.increaseIndent();
                activeAdmin.dump(indentingPrintWriter);
                indentingPrintWriter.decreaseIndent();
                indentingPrintWriter.decreaseIndent();
            }
        }
        if (!this.mRemovingAdmins.isEmpty()) {
            indentingPrintWriter.increaseIndent();
            indentingPrintWriter.println("Removing Device Admins (User " + this.mUserId + "): " + this.mRemovingAdmins);
            indentingPrintWriter.decreaseIndent();
        }
        indentingPrintWriter.println();
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.print("mPasswordOwner=");
        indentingPrintWriter.println(this.mPasswordOwner);
        indentingPrintWriter.print("mPasswordTokenHandle=");
        indentingPrintWriter.println(Long.toHexString(this.mPasswordTokenHandle));
        indentingPrintWriter.print("mAppsSuspended=");
        indentingPrintWriter.println(this.mAppsSuspended);
        indentingPrintWriter.print("mUserSetupComplete=");
        indentingPrintWriter.println(this.mUserSetupComplete);
        indentingPrintWriter.print("mAffiliationIds=");
        indentingPrintWriter.println(this.mAffiliationIds);
        indentingPrintWriter.print("mNewUserDisclaimer=");
        indentingPrintWriter.println(this.mNewUserDisclaimer);
        indentingPrintWriter.print("mLastResetPasswordByAdmin=");
        indentingPrintWriter.println(this.mLastResetPassword);
        if (this.mFactoryResetFlags != 0) {
            indentingPrintWriter.print("mFactoryResetFlags=");
            indentingPrintWriter.print(this.mFactoryResetFlags);
            indentingPrintWriter.print(" (");
            indentingPrintWriter.print(factoryResetFlagsToString(this.mFactoryResetFlags));
            indentingPrintWriter.println(')');
        }
        if (this.mFactoryResetReason != null) {
            indentingPrintWriter.print("mFactoryResetReason=");
            indentingPrintWriter.println(this.mFactoryResetReason);
        }
        if (this.mDelegationMap.size() != 0) {
            indentingPrintWriter.println("mDelegationMap=");
            indentingPrintWriter.increaseIndent();
            for (int i2 = 0; i2 < this.mDelegationMap.size(); i2++) {
                List list = (List) this.mDelegationMap.valueAt(i2);
                indentingPrintWriter.println(((String) this.mDelegationMap.keyAt(i2)) + "[size=" + list.size() + "]");
                indentingPrintWriter.increaseIndent();
                for (int i3 = 0; i3 < list.size(); i3++) {
                    indentingPrintWriter.println(i3 + ": " + ((String) list.get(i3)));
                }
                indentingPrintWriter.decreaseIndent();
            }
            indentingPrintWriter.decreaseIndent();
        }
        indentingPrintWriter.decreaseIndent();
    }

    public static String factoryResetFlagsToString(int i) {
        return DebugUtils.flagsToString(DevicePolicyData.class, "FACTORY_RESET_FLAG_", i);
    }
}
