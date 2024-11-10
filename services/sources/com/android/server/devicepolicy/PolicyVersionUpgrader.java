package com.android.server.devicepolicy;

import android.content.ComponentName;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.util.JournaledFile;
import com.android.server.devicepolicy.OwnersData;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class PolicyVersionUpgrader {
    public final PolicyPathProvider mPathProvider;
    public final PolicyUpgraderDataProvider mProvider;

    public PolicyVersionUpgrader(PolicyUpgraderDataProvider policyUpgraderDataProvider, PolicyPathProvider policyPathProvider) {
        this.mProvider = policyUpgraderDataProvider;
        this.mPathProvider = policyPathProvider;
    }

    public void upgradePolicy(int i) {
        int readVersion = readVersion();
        if (readVersion >= i) {
            Slog.i("DevicePolicyManager", String.format("Current version %d, latest version %d, not upgrading.", Integer.valueOf(readVersion), Integer.valueOf(i)));
            return;
        }
        int[] usersForUpgrade = this.mProvider.getUsersForUpgrade();
        OwnersData loadOwners = loadOwners(usersForUpgrade);
        SparseArray loadAllUsersData = loadAllUsersData(usersForUpgrade, readVersion, loadOwners);
        if (readVersion == 0) {
            Slog.i("DevicePolicyManager", String.format("Upgrading from version %d", Integer.valueOf(readVersion)));
            readVersion = 1;
        }
        if (readVersion == 1) {
            Slog.i("DevicePolicyManager", String.format("Upgrading from version %d", Integer.valueOf(readVersion)));
            upgradeSensorPermissionsAccess(usersForUpgrade, loadOwners, loadAllUsersData);
            readVersion = 2;
        }
        if (readVersion == 2) {
            Slog.i("DevicePolicyManager", String.format("Upgrading from version %d", Integer.valueOf(readVersion)));
            upgradeProtectedPackages(loadOwners, loadAllUsersData);
            readVersion = 3;
        }
        if (readVersion == 3) {
            Slog.i("DevicePolicyManager", String.format("Upgrading from version %d", Integer.valueOf(readVersion)));
            upgradePackageSuspension(usersForUpgrade, loadOwners, loadAllUsersData);
            readVersion = 4;
        }
        if (readVersion == 4) {
            Slog.i("DevicePolicyManager", String.format("Upgrading from version %d", Integer.valueOf(readVersion)));
            initializeEffectiveKeepProfilesRunning(loadAllUsersData);
            readVersion = 5;
        }
        if (readVersion == 5) {
            Slog.i("DevicePolicyManager", String.format("Upgrading from version %d", Integer.valueOf(readVersion)));
            readVersion = 6;
        }
        writePoliciesAndVersion(usersForUpgrade, loadAllUsersData, loadOwners, readVersion);
    }

    public final void upgradeSensorPermissionsAccess(int[] iArr, OwnersData ownersData, SparseArray sparseArray) {
        OwnersData.OwnerInfo ownerInfo;
        for (int i : iArr) {
            DevicePolicyData devicePolicyData = (DevicePolicyData) sparseArray.get(i);
            if (devicePolicyData != null) {
                Iterator it = devicePolicyData.mAdminList.iterator();
                while (it.hasNext()) {
                    ActiveAdmin activeAdmin = (ActiveAdmin) it.next();
                    if (ownersData.mDeviceOwnerUserId == i && (ownerInfo = ownersData.mDeviceOwner) != null && ownerInfo.admin.equals(activeAdmin.info.getComponent())) {
                        Slog.i("DevicePolicyManager", String.format("Marking Device Owner in user %d for permission grant ", Integer.valueOf(i)));
                        activeAdmin.mAdminCanGrantSensorsPermissions = true;
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void upgradeProtectedPackages(com.android.server.devicepolicy.OwnersData r4, android.util.SparseArray r5) {
        /*
            r3 = this;
            com.android.server.devicepolicy.OwnersData$OwnerInfo r3 = r4.mDeviceOwner
            if (r3 != 0) goto L5
            return
        L5:
            int r3 = r4.mDeviceOwnerUserId
            java.lang.Object r3 = r5.get(r3)
            com.android.server.devicepolicy.DevicePolicyData r3 = (com.android.server.devicepolicy.DevicePolicyData) r3
            java.lang.String r5 = "DevicePolicyManager"
            if (r3 != 0) goto L17
            java.lang.String r3 = "No policy data for do user"
            android.util.Slog.e(r5, r3)
            return
        L17:
            android.util.ArrayMap r0 = r4.mDeviceOwnerProtectedPackages
            r1 = 0
            if (r0 == 0) goto L30
            com.android.server.devicepolicy.OwnersData$OwnerInfo r2 = r4.mDeviceOwner
            java.lang.String r2 = r2.packageName
            java.lang.Object r0 = r0.get(r2)
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L2d
            java.lang.String r2 = "Found protected packages in Owners"
            android.util.Slog.i(r5, r2)
        L2d:
            r4.mDeviceOwnerProtectedPackages = r1
            goto L3d
        L30:
            java.util.List r0 = r3.mUserControlDisabledPackages
            if (r0 == 0) goto L3e
            java.lang.String r0 = "Found protected packages in DevicePolicyData"
            android.util.Slog.i(r5, r0)
            java.util.List r0 = r3.mUserControlDisabledPackages
            r3.mUserControlDisabledPackages = r1
        L3d:
            r1 = r0
        L3e:
            android.util.ArrayMap r3 = r3.mAdminMap
            com.android.server.devicepolicy.OwnersData$OwnerInfo r4 = r4.mDeviceOwner
            android.content.ComponentName r4 = r4.admin
            java.lang.Object r3 = r3.get(r4)
            com.android.server.devicepolicy.ActiveAdmin r3 = (com.android.server.devicepolicy.ActiveAdmin) r3
            if (r3 != 0) goto L52
            java.lang.String r3 = "DO admin not found in DO user"
            android.util.Slog.e(r5, r3)
            return
        L52:
            if (r1 == 0) goto L5b
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>(r1)
            r3.protectedPackages = r4
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.devicepolicy.PolicyVersionUpgrader.upgradeProtectedPackages(com.android.server.devicepolicy.OwnersData, android.util.SparseArray):void");
    }

    public final void upgradePackageSuspension(int[] iArr, OwnersData ownersData, SparseArray sparseArray) {
        OwnersData.OwnerInfo ownerInfo = ownersData.mDeviceOwner;
        if (ownerInfo != null) {
            saveSuspendedPackages(sparseArray, ownersData.mDeviceOwnerUserId, ownerInfo.admin);
        }
        for (int i = 0; i < ownersData.mProfileOwners.size(); i++) {
            saveSuspendedPackages(sparseArray, ((Integer) ownersData.mProfileOwners.keyAt(i)).intValue(), ((OwnersData.OwnerInfo) ownersData.mProfileOwners.valueAt(i)).admin);
        }
    }

    public final void saveSuspendedPackages(SparseArray sparseArray, int i, ComponentName componentName) {
        DevicePolicyData devicePolicyData = (DevicePolicyData) sparseArray.get(i);
        if (devicePolicyData == null) {
            Slog.e("DevicePolicyManager", "No policy data for owner user, cannot migrate suspended packages");
            return;
        }
        ActiveAdmin activeAdmin = (ActiveAdmin) devicePolicyData.mAdminMap.get(componentName);
        if (activeAdmin == null) {
            Slog.e("DevicePolicyManager", "No admin for owner, cannot migrate suspended packages");
            return;
        }
        List platformSuspendedPackages = this.mProvider.getPlatformSuspendedPackages(i);
        activeAdmin.suspendedPackages = platformSuspendedPackages;
        Slog.i("DevicePolicyManager", String.format("Saved %d packages suspended by %s in user %d", Integer.valueOf(platformSuspendedPackages.size()), componentName, Integer.valueOf(i)));
    }

    public final void initializeEffectiveKeepProfilesRunning(SparseArray sparseArray) {
        DevicePolicyData devicePolicyData = (DevicePolicyData) sparseArray.get(0);
        if (devicePolicyData == null) {
            return;
        }
        devicePolicyData.mEffectiveKeepProfilesRunning = false;
        Slog.i("DevicePolicyManager", "Keep profile running effective state set to false");
    }

    public final OwnersData loadOwners(int[] iArr) {
        OwnersData ownersData = new OwnersData(this.mPathProvider);
        ownersData.load(iArr);
        return ownersData;
    }

    public final void writePoliciesAndVersion(int[] iArr, SparseArray sparseArray, OwnersData ownersData, int i) {
        boolean z = true;
        for (int i2 : iArr) {
            z = z && writeDataForUser(i2, (DevicePolicyData) sparseArray.get(i2));
        }
        boolean z2 = z && ownersData.writeDeviceOwner();
        for (int i3 : iArr) {
            z2 = z2 && ownersData.writeProfileOwner(i3);
        }
        if (z2) {
            writeVersion(i);
        } else {
            Slog.e("DevicePolicyManager", String.format("Error: Failed upgrading policies to version %d", Integer.valueOf(i)));
        }
    }

    public final SparseArray loadAllUsersData(int[] iArr, int i, OwnersData ownersData) {
        SparseArray sparseArray = new SparseArray();
        for (int i2 : iArr) {
            sparseArray.append(i2, loadDataForUser(i2, i, getOwnerForUser(ownersData, i2)));
        }
        return sparseArray;
    }

    public final ComponentName getOwnerForUser(OwnersData ownersData, int i) {
        OwnersData.OwnerInfo ownerInfo;
        if (ownersData.mDeviceOwnerUserId == i && (ownerInfo = ownersData.mDeviceOwner) != null) {
            return ownerInfo.admin;
        }
        if (ownersData.mProfileOwners.containsKey(Integer.valueOf(i))) {
            return ((OwnersData.OwnerInfo) ownersData.mProfileOwners.get(Integer.valueOf(i))).admin;
        }
        return null;
    }

    public final DevicePolicyData loadDataForUser(int i, int i2, ComponentName componentName) {
        DevicePolicyData devicePolicyData = new DevicePolicyData(i);
        if (i2 == 5 && i == 0) {
            devicePolicyData.mEffectiveKeepProfilesRunning = true;
        }
        DevicePolicyData.load(devicePolicyData, this.mProvider.makeDevicePoliciesJournaledFile(i), this.mProvider.getAdminInfoSupplier(i), componentName);
        return devicePolicyData;
    }

    public final boolean writeDataForUser(int i, DevicePolicyData devicePolicyData) {
        return DevicePolicyData.store(devicePolicyData, this.mProvider.makeDevicePoliciesJournaledFile(i));
    }

    public final JournaledFile getVersionFile() {
        return this.mProvider.makePoliciesVersionJournaledFile(0);
    }

    public final int readVersion() {
        try {
            return Integer.parseInt(Files.readAllLines(getVersionFile().chooseForRead().toPath(), Charset.defaultCharset()).get(0));
        } catch (IOException | IndexOutOfBoundsException | NumberFormatException e) {
            Slog.e("DevicePolicyManager", "Error reading version", e);
            return 0;
        }
    }

    public final void writeVersion(int i) {
        JournaledFile versionFile = getVersionFile();
        try {
            Files.write(versionFile.chooseForWrite().toPath(), String.format("%d", Integer.valueOf(i)).getBytes(), new OpenOption[0]);
            versionFile.commit();
        } catch (IOException e) {
            Slog.e("DevicePolicyManager", String.format("Writing version %d failed", Integer.valueOf(i)), e);
            versionFile.rollback();
        }
    }
}
