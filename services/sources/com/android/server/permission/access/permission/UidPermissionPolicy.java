package com.android.server.permission.access.permission;

import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.SigningDetails;
import android.os.IInstalld;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.os.RoSystemProperties;
import com.android.internal.util.FrameworkStatsLog;
import com.android.modules.utils.BinaryXmlPullParser;
import com.android.modules.utils.BinaryXmlSerializer;
import com.android.server.SystemConfig;
import com.android.server.audio.CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.server.permission.access.AccessState;
import com.android.server.permission.access.AccessUri;
import com.android.server.permission.access.GetStateScope;
import com.android.server.permission.access.MutateStateScope;
import com.android.server.permission.access.SchemePolicy;
import com.android.server.permission.access.SystemState;
import com.android.server.permission.access.UserState;
import com.android.server.permission.access.WritableState;
import com.android.server.permission.access.collection.IndexedListSet;
import com.android.server.permission.access.collection.IntSet;
import com.android.server.permission.access.util.IntExtensionsKt;
import com.android.server.permission.jarjar.kotlin.Unit;
import com.android.server.permission.jarjar.kotlin.collections.ArraysKt___ArraysJvmKt;
import com.android.server.permission.jarjar.kotlin.collections.ArraysKt___ArraysKt;
import com.android.server.permission.jarjar.kotlin.collections.CollectionsKt__MutableCollectionsKt;
import com.android.server.permission.jarjar.kotlin.jvm.internal.DefaultConstructorMarker;
import com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics;
import com.android.server.permission.jarjar.kotlin.ranges.RangesKt___RangesKt;
import com.android.server.permission.jarjar.kotlin.text.StringsKt__StringsJVMKt;
import com.android.server.pm.parsing.PackageInfoUtils;
import com.android.server.pm.permission.CompatibilityPermissionInfo;
import com.android.server.pm.permission.PermissionAllowlist;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.PackageState;
import com.android.server.pm.pkg.PackageUserState;
import com.android.server.pm.pkg.component.ParsedPermissionGroup;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: UidPermissionPolicy.kt */
/* loaded from: classes2.dex */
public final class UidPermissionPolicy extends SchemePolicy {
    public static final Companion Companion = new Companion(null);
    public static final String LOG_TAG = UidPermissionPolicy.class.getSimpleName();
    public static final ArraySet RETAIN_IMPLICIT_FLAGS_PERMISSIONS = new ArraySet(ArraysKt___ArraysJvmKt.asList(new String[]{"android.permission.ACCESS_MEDIA_LOCATION", "android.permission.ACTIVITY_RECOGNITION", "android.permission.READ_MEDIA_AUDIO", "android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"}));
    public static final ArraySet NEARBY_DEVICES_PERMISSIONS = new ArraySet(ArraysKt___ArraysJvmKt.asList(new String[]{"android.permission.BLUETOOTH_ADVERTISE", "android.permission.BLUETOOTH_CONNECT", "android.permission.BLUETOOTH_SCAN", "android.permission.NEARBY_WIFI_DEVICES"}));
    public static final ArraySet NOTIFICATIONS_PERMISSIONS = new ArraySet(ArraysKt___ArraysJvmKt.asList(new String[]{"android.permission.POST_NOTIFICATIONS"}));
    public static final ArraySet STORAGE_AND_MEDIA_PERMISSIONS = new ArraySet(ArraysKt___ArraysJvmKt.asList(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_MEDIA_AUDIO", "android.permission.READ_MEDIA_VIDEO", "android.permission.READ_MEDIA_IMAGES", "android.permission.ACCESS_MEDIA_LOCATION", "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"}));
    public final UidPermissionPersistence persistence = new UidPermissionPersistence();
    public volatile IndexedListSet onPermissionFlagsChangedListeners = new IndexedListSet();
    public final Object onPermissionFlagsChangedListenersLock = new Object();
    public final ArraySet privilegedPermissionAllowlistViolations = new ArraySet();

    /* compiled from: UidPermissionPolicy.kt */
    /* loaded from: classes2.dex */
    public final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: UidPermissionPolicy.kt */
    /* loaded from: classes2.dex */
    public abstract class OnPermissionFlagsChangedListener {
        public abstract void onPermissionFlagsChanged(int i, int i2, String str, int i3, int i4);

        public abstract void onStateMutated();
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public String getObjectScheme() {
        return "permission";
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public String getSubjectScheme() {
        return "uid";
    }

    public final boolean shouldGrantPrivilegedOrOemPermission(MutateStateScope mutateStateScope, PackageState packageState, Permission permission) {
        String str = permission.getPermissionInfo().name;
        String packageName = packageState.getPackageName();
        if (!IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 16)) {
            if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 16384) && packageState.isOem()) {
                Boolean oemAppAllowlistState = mutateStateScope.getNewState().getSystemState().getPermissionAllowlist().getOemAppAllowlistState(packageName, str);
                if (oemAppAllowlistState == null) {
                    throw new IllegalStateException(("OEM permission " + str + " requested by package " + packageName + " must be explicitly declared granted or not").toString());
                }
                return oemAppAllowlistState.booleanValue();
            }
        } else if (packageState.isPrivileged()) {
            if (!packageState.isVendor() || IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 32768)) {
                return true;
            }
            Log.w(LOG_TAG, "Permission " + str + " cannot be granted to privileged vendor app " + packageName + " because it isn't a vendorPrivileged permission");
            return false;
        }
        return false;
    }

    public final Permission updatePermissionIfDynamic(MutateStateScope mutateStateScope, Permission permission) {
        Permission findPermissionTree;
        if (!(permission.getType() == 2) || (findPermissionTree = findPermissionTree(mutateStateScope, permission.getPermissionInfo().name)) == null) {
            return permission;
        }
        PermissionInfo permissionInfo = new PermissionInfo(permission.getPermissionInfo());
        permissionInfo.packageName = findPermissionTree.getPermissionInfo().packageName;
        return Permission.copy$default(permission, permissionInfo, true, 0, findPermissionTree.getAppId(), null, false, 52, null);
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public int getDecision(GetStateScope getStateScope, AccessUri accessUri, AccessUri accessUri2) {
        Intrinsics.checkNotNull(accessUri, "null cannot be cast to non-null type com.android.server.permission.access.UidUri");
        CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0.m(accessUri);
        Intrinsics.checkNotNull(accessUri2, "null cannot be cast to non-null type com.android.server.permission.access.PermissionUri");
        CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0.m(accessUri2);
        CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0.m(accessUri);
        throw null;
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void setDecision(MutateStateScope mutateStateScope, AccessUri accessUri, AccessUri accessUri2, int i) {
        Intrinsics.checkNotNull(accessUri, "null cannot be cast to non-null type com.android.server.permission.access.UidUri");
        CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0.m(accessUri);
        Intrinsics.checkNotNull(accessUri2, "null cannot be cast to non-null type com.android.server.permission.access.PermissionUri");
        CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0.m(accessUri2);
        CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0.m(accessUri);
        throw null;
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void onStateMutated(GetStateScope getStateScope) {
        IndexedListSet indexedListSet = this.onPermissionFlagsChangedListeners;
        int size = indexedListSet.size();
        for (int i = 0; i < size; i++) {
            ((OnPermissionFlagsChangedListener) indexedListSet.elementAt(i)).onStateMutated();
        }
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void onInitialized(MutateStateScope mutateStateScope) {
        Permission permission;
        for (Map.Entry entry : mutateStateScope.getNewState().getSystemState().getConfigPermissions().entrySet()) {
            String str = (String) entry.getKey();
            SystemConfig.PermissionEntry permissionEntry = (SystemConfig.PermissionEntry) entry.getValue();
            ArrayMap permissions = mutateStateScope.getNewState().getSystemState().getPermissions();
            Permission permission2 = (Permission) permissions.get(str);
            if (permission2 != null) {
                int[] iArr = permissionEntry.gids;
                if (iArr != null) {
                    permission = Permission.copy$default(permission2, null, false, 0, 0, iArr, permissionEntry.perUser, 15, null);
                }
            } else {
                PermissionInfo permissionInfo = new PermissionInfo();
                permissionInfo.name = str;
                permissionInfo.packageName = "android";
                permissionInfo.protectionLevel = 2;
                if (permissionEntry.gids != null) {
                    permission = new Permission(permissionInfo, false, 1, 0, permissionEntry.gids, permissionEntry.perUser);
                } else {
                    permission = new Permission(permissionInfo, false, 1, 0, null, false, 48, null);
                }
            }
            permissions.put(str, permission);
        }
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void onUserAdded(MutateStateScope mutateStateScope, int i) {
        Iterator it = mutateStateScope.getNewState().getSystemState().getPackageStates().entrySet().iterator();
        while (it.hasNext()) {
            evaluateAllPermissionStatesForPackageAndUser(mutateStateScope, (PackageState) ((Map.Entry) it.next()).getValue(), i, null);
        }
        SparseArray appIds = mutateStateScope.getNewState().getSystemState().getAppIds();
        int size = appIds.size();
        for (int i2 = 0; i2 < size; i2++) {
            inheritImplicitPermissionStates(mutateStateScope, appIds.keyAt(i2), i);
        }
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void onAppIdRemoved(MutateStateScope mutateStateScope, int i) {
        SparseArray userStates = mutateStateScope.getNewState().getUserStates();
        int size = userStates.size();
        for (int i2 = 0; i2 < size; i2++) {
            UserState userState = (UserState) userStates.valueAt(i2);
            userState.getUidPermissionFlags().remove(i);
            WritableState.requestWrite$default(userState, false, 1, null);
        }
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void onStorageVolumeMounted(MutateStateScope mutateStateScope, String str, boolean z) {
        ArraySet arraySet = new ArraySet();
        Iterator it = mutateStateScope.getNewState().getSystemState().getPackageStates().entrySet().iterator();
        while (it.hasNext()) {
            PackageState packageState = (PackageState) ((Map.Entry) it.next()).getValue();
            AndroidPackage androidPackage = packageState.getAndroidPackage();
            if (androidPackage != null && Intrinsics.areEqual(androidPackage.getVolumeUuid(), str)) {
                adoptPermissions(mutateStateScope, packageState, arraySet);
                addPermissionGroups(mutateStateScope, packageState);
                addPermissions(mutateStateScope, packageState, arraySet);
                trimPermissions(mutateStateScope, packageState.getPackageName(), arraySet);
                trimPermissionStates(mutateStateScope, packageState.getAppId());
                revokePermissionsOnPackageUpdate(mutateStateScope, packageState.getAppId());
            }
        }
        int size = arraySet.size();
        for (int i = 0; i < size; i++) {
            evaluatePermissionStateForAllPackages(mutateStateScope, (String) arraySet.valueAt(i), null);
        }
        Iterator it2 = mutateStateScope.getNewState().getSystemState().getPackageStates().entrySet().iterator();
        while (it2.hasNext()) {
            PackageState packageState2 = (PackageState) ((Map.Entry) it2.next()).getValue();
            AndroidPackage androidPackage2 = packageState2.getAndroidPackage();
            if (androidPackage2 != null && Intrinsics.areEqual(androidPackage2.getVolumeUuid(), str)) {
                evaluateAllPermissionStatesForPackage(mutateStateScope, packageState2, z ? packageState2 : null);
            }
        }
        Iterator it3 = mutateStateScope.getNewState().getSystemState().getPackageStates().entrySet().iterator();
        while (it3.hasNext()) {
            PackageState packageState3 = (PackageState) ((Map.Entry) it3.next()).getValue();
            AndroidPackage androidPackage3 = packageState3.getAndroidPackage();
            if (androidPackage3 != null && Intrinsics.areEqual(androidPackage3.getVolumeUuid(), str)) {
                IntSet userIds = mutateStateScope.getNewState().getSystemState().getUserIds();
                int size2 = userIds.getSize();
                for (int i2 = 0; i2 < size2; i2++) {
                    inheritImplicitPermissionStates(mutateStateScope, packageState3.getAppId(), userIds.elementAt(i2));
                }
            }
        }
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void onPackageAdded(MutateStateScope mutateStateScope, PackageState packageState) {
        ArraySet arraySet = new ArraySet();
        adoptPermissions(mutateStateScope, packageState, arraySet);
        addPermissionGroups(mutateStateScope, packageState);
        addPermissions(mutateStateScope, packageState, arraySet);
        trimPermissions(mutateStateScope, packageState.getPackageName(), arraySet);
        trimPermissionStates(mutateStateScope, packageState.getAppId());
        revokePermissionsOnPackageUpdate(mutateStateScope, packageState.getAppId());
        int size = arraySet.size();
        for (int i = 0; i < size; i++) {
            evaluatePermissionStateForAllPackages(mutateStateScope, (String) arraySet.valueAt(i), null);
        }
        evaluateAllPermissionStatesForPackage(mutateStateScope, packageState, packageState);
        IntSet userIds = mutateStateScope.getNewState().getSystemState().getUserIds();
        int size2 = userIds.getSize();
        for (int i2 = 0; i2 < size2; i2++) {
            inheritImplicitPermissionStates(mutateStateScope, packageState.getAppId(), userIds.elementAt(i2));
        }
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void onPackageRemoved(MutateStateScope mutateStateScope, String str, int i) {
        if (!(!mutateStateScope.getNewState().getSystemState().getDisabledSystemPackageStates().containsKey(str))) {
            throw new IllegalStateException(("Package " + str + " reported as removed before disabled system package is enabled").toString());
        }
        ArraySet arraySet = new ArraySet();
        trimPermissions(mutateStateScope, str, arraySet);
        if (mutateStateScope.getNewState().getSystemState().getAppIds().contains(i)) {
            trimPermissionStates(mutateStateScope, i);
        }
        int size = arraySet.size();
        for (int i2 = 0; i2 < size; i2++) {
            evaluatePermissionStateForAllPackages(mutateStateScope, (String) arraySet.valueAt(i2), null);
        }
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void onPackageUninstalled(MutateStateScope mutateStateScope, String str, int i, int i2) {
        resetRuntimePermissions(mutateStateScope, str, i, i2);
    }

    public final void resetRuntimePermissions(MutateStateScope mutateStateScope, String str, int i, int i2) {
        AndroidPackage androidPackage;
        boolean z;
        PackageState packageState = (PackageState) mutateStateScope.getNewState().getSystemState().getPackageStates().get(str);
        if (packageState == null || (androidPackage = packageState.getAndroidPackage()) == null) {
            return;
        }
        List requestedPermissions = androidPackage.getRequestedPermissions();
        int size = requestedPermissions.size();
        for (int i3 = 0; i3 < size; i3++) {
            String str2 = (String) requestedPermissions.get(i3);
            Permission permission = (Permission) mutateStateScope.getNewState().getSystemState().getPermissions().get(str2);
            if (permission != null && !IntExtensionsKt.hasBits(permission.getPermissionInfo().flags, 2)) {
                AccessState newState = mutateStateScope.getNewState();
                IndexedListSet indexedListSet = (IndexedListSet) newState.getSystemState().getAppIds().get(i);
                int size2 = indexedListSet.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size2) {
                        z = false;
                        break;
                    }
                    Object obj = newState.getSystemState().getPackageStates().get((String) indexedListSet.elementAt(i4));
                    Intrinsics.checkNotNull(obj);
                    PackageState packageState2 = (PackageState) obj;
                    AndroidPackage androidPackage2 = packageState2.getAndroidPackage();
                    z = true;
                    if (androidPackage2 != null && androidPackage2.getRequestedPermissions().contains(str2) && (Intrinsics.areEqual(packageState2.getPackageName(), str) ^ true)) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (!z) {
                    int permissionFlags = getPermissionFlags(mutateStateScope, i, i2, str2);
                    if (!IntExtensionsKt.hasAnyBit(permissionFlags, FrameworkStatsLog.NON_A11Y_TOOL_SERVICE_WARNING_REPORT)) {
                        int andInv = IntExtensionsKt.andInv((IntExtensionsKt.hasBits(permissionFlags, 8) || IntExtensionsKt.hasBits(permissionFlags, 512)) ? permissionFlags | 16 : IntExtensionsKt.andInv(permissionFlags, 16), 15728736);
                        if (IntExtensionsKt.hasBits(andInv, 1024)) {
                            andInv |= IInstalld.FLAG_USE_QUOTA;
                        }
                        setPermissionFlags(mutateStateScope, i, i2, str2, andInv);
                    }
                }
            }
        }
    }

    public final void adoptPermissions(MutateStateScope mutateStateScope, PackageState packageState, ArraySet arraySet) {
        AndroidPackage androidPackage = packageState.getAndroidPackage();
        Intrinsics.checkNotNull(androidPackage);
        List adoptPermissions = androidPackage.getAdoptPermissions();
        int size = adoptPermissions.size();
        for (int i = 0; i < size; i++) {
            String str = (String) adoptPermissions.get(i);
            String packageName = androidPackage.getPackageName();
            if (canAdoptPermissions(mutateStateScope, packageName, str)) {
                SystemState systemState = mutateStateScope.getNewState().getSystemState();
                ArrayMap permissions = systemState.getPermissions();
                int size2 = permissions.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    Object keyAt = permissions.keyAt(i2);
                    Permission permission = (Permission) permissions.valueAt(i2);
                    String str2 = (String) keyAt;
                    if (Intrinsics.areEqual(permission.getPermissionInfo().packageName, str)) {
                        PermissionInfo permissionInfo = new PermissionInfo();
                        permissionInfo.name = permission.getPermissionInfo().name;
                        permissionInfo.packageName = packageName;
                        permissionInfo.protectionLevel = permission.getPermissionInfo().protectionLevel;
                        permissions.setValueAt(i2, Permission.copy$default(permission, permissionInfo, false, 0, 0, null, false, 52, null));
                        WritableState.requestWrite$default(systemState, false, 1, null);
                        arraySet.add(str2);
                    }
                }
            }
        }
    }

    public final boolean canAdoptPermissions(MutateStateScope mutateStateScope, String str, String str2) {
        PackageState packageState = (PackageState) mutateStateScope.getNewState().getSystemState().getPackageStates().get(str2);
        if (packageState == null) {
            return false;
        }
        if (!packageState.isSystem()) {
            Log.w(LOG_TAG, "Unable to adopt permissions from " + str2 + " to " + str + ": original package not in system partition");
            return false;
        }
        if (packageState.getAndroidPackage() == null) {
            return true;
        }
        Log.w(LOG_TAG, "Unable to adopt permissions from " + str2 + " to " + str + ": original package still exists");
        return false;
    }

    public final void addPermissionGroups(MutateStateScope mutateStateScope, PackageState packageState) {
        boolean z;
        SparseArray userStates = packageState.getUserStates();
        int size = userStates.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = true;
                break;
            }
            userStates.keyAt(i);
            if (!((PackageUserState) userStates.valueAt(i)).isInstantApp()) {
                z = false;
                break;
            }
            i++;
        }
        if (z) {
            Log.w(LOG_TAG, "Ignoring permission groups declared in package " + packageState.getPackageName() + ": instant apps cannot declare permission groups");
            return;
        }
        AndroidPackage androidPackage = packageState.getAndroidPackage();
        Intrinsics.checkNotNull(androidPackage);
        List permissionGroups = androidPackage.getPermissionGroups();
        int size2 = permissionGroups.size();
        for (int i2 = 0; i2 < size2; i2++) {
            PermissionGroupInfo generatePermissionGroupInfo = PackageInfoUtils.generatePermissionGroupInfo((ParsedPermissionGroup) permissionGroups.get(i2), 128L);
            Intrinsics.checkNotNull(generatePermissionGroupInfo);
            String str = generatePermissionGroupInfo.name;
            PermissionGroupInfo permissionGroupInfo = (PermissionGroupInfo) mutateStateScope.getNewState().getSystemState().getPermissionGroups().get(str);
            if (permissionGroupInfo != null && !Intrinsics.areEqual(generatePermissionGroupInfo.packageName, permissionGroupInfo.packageName)) {
                String str2 = generatePermissionGroupInfo.packageName;
                String str3 = permissionGroupInfo.packageName;
                if (!packageState.isSystem()) {
                    Log.w(LOG_TAG, "Ignoring permission group " + str + " declared in package " + str2 + ": already declared in another package " + str3);
                } else {
                    PackageState packageState2 = (PackageState) mutateStateScope.getNewState().getSystemState().getPackageStates().get(str3);
                    if (packageState2 != null && packageState2.isSystem()) {
                        Log.w(LOG_TAG, "Ignoring permission group " + str + " declared in system package " + str2 + ": already declared in another system package " + str3);
                    } else {
                        Log.w(LOG_TAG, "Overriding permission group " + str + " with new declaration in system package " + str2 + ": originally declared in another package " + str3);
                    }
                }
            }
            mutateStateScope.getNewState().getSystemState().getPermissionGroups().put(str, generatePermissionGroupInfo);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0202, code lost:
    
        if ((r7.getPermissionInfo().getProtection() == 1) != false) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x021f, code lost:
    
        r16 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x021d, code lost:
    
        if ((r7.getPermissionInfo().getProtection() == 4) == false) goto L178;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addPermissions(com.android.server.permission.access.MutateStateScope r27, com.android.server.pm.pkg.PackageState r28, android.util.ArraySet r29) {
        /*
            Method dump skipped, instructions count: 853
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.permission.UidPermissionPolicy.addPermissions(com.android.server.permission.access.MutateStateScope, com.android.server.pm.pkg.PackageState, android.util.ArraySet):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x008c, code lost:
    
        if (r12 != false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0143, code lost:
    
        if (r3 != 0) goto L201;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01d3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void trimPermissions(com.android.server.permission.access.MutateStateScope r22, java.lang.String r23, android.util.ArraySet r24) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.permission.UidPermissionPolicy.trimPermissions(com.android.server.permission.access.MutateStateScope, java.lang.String, android.util.ArraySet):void");
    }

    public final void trimPermissionStates(MutateStateScope mutateStateScope, int i) {
        ArraySet arraySet = new ArraySet();
        AccessState newState = mutateStateScope.getNewState();
        Object obj = newState.getSystemState().getAppIds().get(i);
        Intrinsics.checkNotNull(obj);
        IndexedListSet indexedListSet = (IndexedListSet) obj;
        int size = indexedListSet.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj2 = newState.getSystemState().getPackageStates().get((String) indexedListSet.elementAt(i2));
            Intrinsics.checkNotNull(obj2);
            PackageState packageState = (PackageState) obj2;
            if (packageState.getAndroidPackage() != null) {
                AndroidPackage androidPackage = packageState.getAndroidPackage();
                Intrinsics.checkNotNull(androidPackage);
                CollectionsKt__MutableCollectionsKt.addAll(arraySet, androidPackage.getRequestedPermissions());
            }
        }
        SparseArray userStates = mutateStateScope.getNewState().getUserStates();
        int size2 = userStates.size();
        for (int i3 = 0; i3 < size2; i3++) {
            int keyAt = userStates.keyAt(i3);
            ArrayMap arrayMap = (ArrayMap) ((UserState) userStates.valueAt(i3)).getUidPermissionFlags().get(i);
            if (arrayMap != null) {
                for (int size3 = arrayMap.size() - 1; -1 < size3; size3--) {
                    Object keyAt2 = arrayMap.keyAt(size3);
                    ((Number) arrayMap.valueAt(size3)).intValue();
                    String str = (String) keyAt2;
                    if (!arraySet.contains(str)) {
                        setPermissionFlags(mutateStateScope, i, keyAt, str, 0);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00cf A[LOOP:2: B:19:0x008c->B:28:0x00cf, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0131 A[LOOP:3: B:32:0x00f0->B:41:0x0131, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void revokePermissionsOnPackageUpdate(com.android.server.permission.access.MutateStateScope r21, int r22) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.permission.UidPermissionPolicy.revokePermissionsOnPackageUpdate(com.android.server.permission.access.MutateStateScope, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0071 A[LOOP:2: B:6:0x003d->B:13:0x0071, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0077 A[EDGE_INSN: B:14:0x0077->B:15:0x0077 BREAK  A[LOOP:2: B:6:0x003d->B:13:0x0071], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void evaluatePermissionStateForAllPackages(com.android.server.permission.access.MutateStateScope r17, java.lang.String r18, com.android.server.pm.pkg.PackageState r19) {
        /*
            r16 = this;
            com.android.server.permission.access.AccessState r0 = r17.getNewState()
            com.android.server.permission.access.SystemState r0 = r0.getSystemState()
            com.android.server.permission.access.collection.IntSet r1 = r0.getUserIds()
            int r2 = r1.getSize()
            r4 = 0
        L11:
            if (r4 >= r2) goto L8d
            int r11 = r1.elementAt(r4)
            android.util.SparseArray r12 = r0.getAppIds()
            int r13 = r12.size()
            r14 = 0
        L20:
            if (r14 >= r13) goto L88
            int r7 = r12.keyAt(r14)
            com.android.server.permission.access.AccessState r5 = r17.getNewState()
            com.android.server.permission.access.SystemState r6 = r5.getSystemState()
            android.util.SparseArray r6 = r6.getAppIds()
            java.lang.Object r6 = r6.get(r7)
            com.android.server.permission.access.collection.IndexedListSet r6 = (com.android.server.permission.access.collection.IndexedListSet) r6
            int r8 = r6.size()
            r9 = 0
        L3d:
            if (r9 >= r8) goto L74
            java.lang.Object r10 = r6.elementAt(r9)
            java.lang.String r10 = (java.lang.String) r10
            com.android.server.permission.access.SystemState r15 = r5.getSystemState()
            java.util.Map r15 = r15.getPackageStates()
            java.lang.Object r10 = r15.get(r10)
            com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
            com.android.server.pm.pkg.PackageState r10 = (com.android.server.pm.pkg.PackageState) r10
            com.android.server.pm.pkg.AndroidPackage r10 = r10.getAndroidPackage()
            r15 = 1
            if (r10 == 0) goto L6b
            java.util.List r10 = r10.getRequestedPermissions()
            r3 = r18
            boolean r10 = r10.contains(r3)
            if (r10 == 0) goto L6d
            r10 = r15
            goto L6e
        L6b:
            r3 = r18
        L6d:
            r10 = 0
        L6e:
            if (r10 == 0) goto L71
            goto L77
        L71:
            int r9 = r9 + 1
            goto L3d
        L74:
            r3 = r18
            r15 = 0
        L77:
            if (r15 == 0) goto L85
            r5 = r16
            r6 = r17
            r8 = r11
            r9 = r18
            r10 = r19
            r5.evaluatePermissionState(r6, r7, r8, r9, r10)
        L85:
            int r14 = r14 + 1
            goto L20
        L88:
            r3 = r18
            int r4 = r4 + 1
            goto L11
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.permission.UidPermissionPolicy.evaluatePermissionStateForAllPackages(com.android.server.permission.access.MutateStateScope, java.lang.String, com.android.server.pm.pkg.PackageState):void");
    }

    public final void evaluateAllPermissionStatesForPackage(MutateStateScope mutateStateScope, PackageState packageState, PackageState packageState2) {
        IntSet userIds = mutateStateScope.getNewState().getSystemState().getUserIds();
        int size = userIds.getSize();
        for (int i = 0; i < size; i++) {
            evaluateAllPermissionStatesForPackageAndUser(mutateStateScope, packageState, userIds.elementAt(i), packageState2);
        }
    }

    public final void evaluateAllPermissionStatesForPackageAndUser(MutateStateScope mutateStateScope, PackageState packageState, int i, PackageState packageState2) {
        List requestedPermissions;
        AndroidPackage androidPackage = packageState.getAndroidPackage();
        if (androidPackage == null || (requestedPermissions = androidPackage.getRequestedPermissions()) == null) {
            return;
        }
        int size = requestedPermissions.size();
        for (int i2 = 0; i2 < size; i2++) {
            evaluatePermissionState(mutateStateScope, packageState.getAppId(), i, (String) requestedPermissions.get(i2), packageState2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0509 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0506 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x026d A[LOOP:6: B:206:0x022a->B:215:0x026d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x026b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0343 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0158 A[LOOP:2: B:48:0x011b->B:57:0x0158, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0156 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x015b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0103 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void evaluatePermissionState(com.android.server.permission.access.MutateStateScope r19, int r20, int r21, java.lang.String r22, com.android.server.pm.pkg.PackageState r23) {
        /*
            Method dump skipped, instructions count: 1351
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.permission.UidPermissionPolicy.evaluatePermissionState(com.android.server.permission.access.MutateStateScope, int, int, java.lang.String, com.android.server.pm.pkg.PackageState):void");
    }

    public final void inheritImplicitPermissionStates(MutateStateScope mutateStateScope, int i, int i2) {
        IndexedListSet indexedListSet;
        ArraySet arraySet = new ArraySet();
        AccessState newState = mutateStateScope.getNewState();
        Object obj = newState.getSystemState().getAppIds().get(i);
        Intrinsics.checkNotNull(obj);
        IndexedListSet indexedListSet2 = (IndexedListSet) obj;
        int size = indexedListSet2.size();
        for (int i3 = 0; i3 < size; i3++) {
            Object obj2 = newState.getSystemState().getPackageStates().get((String) indexedListSet2.elementAt(i3));
            Intrinsics.checkNotNull(obj2);
            PackageState packageState = (PackageState) obj2;
            if (packageState.getAndroidPackage() != null) {
                AndroidPackage androidPackage = packageState.getAndroidPackage();
                Intrinsics.checkNotNull(androidPackage);
                CollectionsKt__MutableCollectionsKt.addAll(arraySet, androidPackage.getImplicitPermissions());
            }
        }
        int size2 = arraySet.size();
        for (int i4 = 0; i4 < size2; i4++) {
            String str = (String) arraySet.valueAt(i4);
            Permission permission = (Permission) mutateStateScope.getNewState().getSystemState().getPermissions().get(str);
            if (permission != null) {
                if (permission.getPermissionInfo().getProtection() == 1) {
                    if ((getOldStatePermissionFlags(mutateStateScope, i, i2, str) == 0) && (indexedListSet = (IndexedListSet) mutateStateScope.getNewState().getSystemState().getImplicitToSourcePermissions().get(str)) != null) {
                        int permissionFlags = getPermissionFlags(mutateStateScope, i, i2, str);
                        int size3 = indexedListSet.size();
                        for (int i5 = 0; i5 < size3; i5++) {
                            String str2 = (String) indexedListSet.elementAt(i5);
                            if (((Permission) mutateStateScope.getNewState().getSystemState().getPermissions().get(str2)) == null) {
                                throw new IllegalStateException(("Unknown source permission " + str2 + " in split permissions").toString());
                            }
                            int permissionFlags2 = getPermissionFlags(mutateStateScope, i, i2, str2);
                            PermissionFlags permissionFlags3 = PermissionFlags.INSTANCE;
                            boolean isPermissionGranted = permissionFlags3.isPermissionGranted(permissionFlags2);
                            boolean isPermissionGranted2 = permissionFlags3.isPermissionGranted(permissionFlags);
                            boolean z = isPermissionGranted && !isPermissionGranted2;
                            if (isPermissionGranted == isPermissionGranted2 || z) {
                                if (z) {
                                    permissionFlags = 0;
                                }
                                permissionFlags = (permissionFlags2 & 16777208) | permissionFlags;
                            }
                        }
                        setPermissionFlags(mutateStateScope, i, i2, str, RETAIN_IMPLICIT_FLAGS_PERMISSIONS.contains(str) ? IntExtensionsKt.andInv(permissionFlags, IInstalld.FLAG_USE_QUOTA) : permissionFlags | IInstalld.FLAG_USE_QUOTA);
                    }
                }
            } else {
                throw new IllegalStateException(("Unknown implicit permission " + str + " in split permissions").toString());
            }
        }
    }

    public final boolean isCompatibilityPermissionForPackage(AndroidPackage androidPackage, String str) {
        for (CompatibilityPermissionInfo compatibilityPermissionInfo : CompatibilityPermissionInfo.COMPAT_PERMS) {
            if (Intrinsics.areEqual(compatibilityPermissionInfo.getName(), str) && androidPackage.getTargetSdkVersion() < compatibilityPermissionInfo.getSdkVersion()) {
                Log.i(LOG_TAG, "Auto-granting " + str + " to old package " + androidPackage.getPackageName());
                return true;
            }
        }
        return false;
    }

    public final boolean shouldGrantPermissionBySignature(MutateStateScope mutateStateScope, PackageState packageState, Permission permission) {
        AndroidPackage androidPackage;
        AndroidPackage androidPackage2 = packageState.getAndroidPackage();
        Intrinsics.checkNotNull(androidPackage2);
        SigningDetails signingDetails = androidPackage2.getSigningDetails();
        PackageState packageState2 = (PackageState) mutateStateScope.getNewState().getSystemState().getPackageStates().get(permission.getPermissionInfo().packageName);
        SigningDetails signingDetails2 = (packageState2 == null || (androidPackage = packageState2.getAndroidPackage()) == null) ? null : androidPackage.getSigningDetails();
        Object obj = mutateStateScope.getNewState().getSystemState().getPackageStates().get("android");
        Intrinsics.checkNotNull(obj);
        AndroidPackage androidPackage3 = ((PackageState) obj).getAndroidPackage();
        Intrinsics.checkNotNull(androidPackage3);
        SigningDetails signingDetails3 = androidPackage3.getSigningDetails();
        return (signingDetails2 != null && signingDetails2.hasCommonSignerWithCapability(signingDetails, 4)) || signingDetails.hasAncestorOrSelf(signingDetails3) || signingDetails3.checkCapability(signingDetails, 4);
    }

    public final boolean checkPrivilegedPermissionAllowlist(MutateStateScope mutateStateScope, PackageState packageState, Permission permission) {
        if (RoSystemProperties.CONTROL_PRIVAPP_PERMISSIONS_DISABLE || Intrinsics.areEqual(packageState.getPackageName(), "android") || !packageState.isSystem() || !packageState.isPrivileged() || !mutateStateScope.getNewState().getSystemState().getPrivilegedPermissionAllowlistPackages().contains(permission.getPermissionInfo().packageName)) {
            return true;
        }
        Boolean privilegedPermissionAllowlistState = getPrivilegedPermissionAllowlistState(mutateStateScope, packageState, permission.getPermissionInfo().name);
        if (privilegedPermissionAllowlistState != null) {
            return privilegedPermissionAllowlistState.booleanValue();
        }
        if (packageState.isUpdatedSystemApp()) {
            return true;
        }
        if (!mutateStateScope.getNewState().getSystemState().isSystemReady() && !packageState.isApkInUpdatedApex()) {
            Log.w(LOG_TAG, "Privileged permission " + permission.getPermissionInfo().name + " for package " + packageState.getPackageName() + " (" + packageState.getPath() + ") not in privileged permission allowlist");
            if (RoSystemProperties.CONTROL_PRIVAPP_PERMISSIONS_ENFORCE) {
                this.privilegedPermissionAllowlistViolations.add(packageState.getPackageName() + " (" + packageState.getPath() + "): " + permission.getPermissionInfo().name);
            }
        }
        return !RoSystemProperties.CONTROL_PRIVAPP_PERMISSIONS_ENFORCE;
    }

    public final Boolean getPrivilegedPermissionAllowlistState(MutateStateScope mutateStateScope, PackageState packageState, String str) {
        PermissionAllowlist permissionAllowlist = mutateStateScope.getNewState().getSystemState().getPermissionAllowlist();
        String apexModuleName = packageState.getApexModuleName();
        String packageName = packageState.getPackageName();
        if (packageState.isVendor()) {
            return permissionAllowlist.getVendorPrivilegedAppAllowlistState(packageName, str);
        }
        if (packageState.isProduct()) {
            return permissionAllowlist.getProductPrivilegedAppAllowlistState(packageName, str);
        }
        if (packageState.isSystemExt()) {
            return permissionAllowlist.getSystemExtPrivilegedAppAllowlistState(packageName, str);
        }
        if (apexModuleName != null) {
            Boolean privilegedAppAllowlistState = permissionAllowlist.getPrivilegedAppAllowlistState(packageName, str);
            if (privilegedAppAllowlistState != null) {
                Log.w(LOG_TAG, "Package " + packageName + " is an APK in APEX but has permission allowlist on the system image, please bundle the allowlist in the " + apexModuleName + " APEX instead");
            }
            Boolean apexPrivilegedAppAllowlistState = permissionAllowlist.getApexPrivilegedAppAllowlistState(apexModuleName, packageName, str);
            return apexPrivilegedAppAllowlistState == null ? privilegedAppAllowlistState : apexPrivilegedAppAllowlistState;
        }
        return permissionAllowlist.getPrivilegedAppAllowlistState(packageName, str);
    }

    public static /* synthetic */ int getAppIdTargetSdkVersion$default(UidPermissionPolicy uidPermissionPolicy, MutateStateScope mutateStateScope, int i, String str, AccessState accessState, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            accessState = mutateStateScope.getNewState();
        }
        return uidPermissionPolicy.getAppIdTargetSdkVersion(mutateStateScope, i, str, accessState);
    }

    public final int getAppIdTargetSdkVersion(MutateStateScope mutateStateScope, int i, String str, AccessState accessState) {
        IndexedListSet indexedListSet = (IndexedListSet) accessState.getSystemState().getAppIds().get(i);
        int size = indexedListSet.size();
        int i2 = 10000;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = accessState.getSystemState().getPackageStates().get((String) indexedListSet.elementAt(i3));
            Intrinsics.checkNotNull(obj);
            PackageState packageState = (PackageState) obj;
            AndroidPackage androidPackage = packageState.getAndroidPackage();
            if (androidPackage != null && androidPackage.getRequestedPermissions().contains(str)) {
                AndroidPackage androidPackage2 = packageState.getAndroidPackage();
                Intrinsics.checkNotNull(androidPackage2);
                i2 = RangesKt___RangesKt.coerceAtMost(i2, androidPackage2.getTargetSdkVersion());
            }
        }
        return i2;
    }

    public final boolean shouldGrantPermissionByProtectionFlags(MutateStateScope mutateStateScope, PackageState packageState, Permission permission) {
        boolean shouldGrantPrivilegedOrOemPermission;
        AndroidPackage androidPackage = packageState.getAndroidPackage();
        Intrinsics.checkNotNull(androidPackage);
        SparseArray knownPackages = mutateStateScope.getNewState().getSystemState().getKnownPackages();
        String packageName = packageState.getPackageName();
        if ((IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 16) || IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 16384)) && packageState.isSystem()) {
            if (packageState.isUpdatedSystemApp()) {
                PackageState packageState2 = (PackageState) mutateStateScope.getNewState().getSystemState().getDisabledSystemPackageStates().get(packageState.getPackageName());
                AndroidPackage androidPackage2 = packageState2 != null ? packageState2.getAndroidPackage() : null;
                shouldGrantPrivilegedOrOemPermission = androidPackage2 != null && androidPackage2.getRequestedPermissions().contains(permission.getPermissionInfo().name) && shouldGrantPrivilegedOrOemPermission(mutateStateScope, packageState2, permission);
            } else {
                shouldGrantPrivilegedOrOemPermission = shouldGrantPrivilegedOrOemPermission(mutateStateScope, packageState, permission);
            }
            if (shouldGrantPrivilegedOrOemPermission) {
                return true;
            }
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 128) && androidPackage.getTargetSdkVersion() < 23) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 256) && (ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(2), packageName) || ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(7), packageName))) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 512) && ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(4), packageName)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 1024) && packageState.isSystem()) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 134217728) && androidPackage.getSigningDetails().hasAncestorOrSelfWithDigest(permission.getPermissionInfo().knownCerts)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES) && ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(1), packageName)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 65536) && ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(6), packageName)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 524288) && ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(10), packageName)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 1048576) && ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(11), packageName)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 2097152) && ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(12), packageName)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 8388608) && ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(15), packageName)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 16777216) && ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(16), packageName) && isDeviceOrProfileOwnerUid(mutateStateScope, packageState.getAppId())) {
            return true;
        }
        if (IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 33554432) && ArraysKt___ArraysKt.contains((Object[]) knownPackages.get(17), packageName)) {
            return true;
        }
        return IntExtensionsKt.hasBits(permission.getPermissionInfo().getProtectionFlags(), 4194304) && packageState.getApexModuleName() != null;
    }

    public final boolean isDeviceOrProfileOwnerUid(MutateStateScope mutateStateScope, int i) {
        PackageState packageState;
        int userId = UserHandle.getUserId(i);
        String str = (String) mutateStateScope.getNewState().getSystemState().getDeviceAndProfileOwners().get(userId);
        return (str == null || (packageState = (PackageState) mutateStateScope.getNewState().getSystemState().getPackageStates().get(str)) == null || i != UserHandle.getUid(userId, packageState.getAppId())) ? false : true;
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void onSystemReady(MutateStateScope mutateStateScope) {
        if (this.privilegedPermissionAllowlistViolations.isEmpty()) {
            return;
        }
        throw new IllegalStateException("Signature|privileged permissions not in privileged permission allowlist: " + this.privilegedPermissionAllowlistViolations);
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void parseSystemState(BinaryXmlPullParser binaryXmlPullParser, AccessState accessState) {
        this.persistence.parseSystemState(binaryXmlPullParser, accessState);
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void serializeSystemState(BinaryXmlSerializer binaryXmlSerializer, AccessState accessState) {
        this.persistence.serializeSystemState(binaryXmlSerializer, accessState);
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void parseUserState(BinaryXmlPullParser binaryXmlPullParser, AccessState accessState, int i) {
        this.persistence.parseUserState(binaryXmlPullParser, accessState, i);
    }

    @Override // com.android.server.permission.access.SchemePolicy
    public void serializeUserState(BinaryXmlSerializer binaryXmlSerializer, AccessState accessState, int i) {
        this.persistence.serializeUserState(binaryXmlSerializer, accessState, i);
    }

    public final ArrayMap getPermissionTrees(GetStateScope getStateScope) {
        return getStateScope.getState().getSystemState().getPermissionTrees();
    }

    public final Permission findPermissionTree(GetStateScope getStateScope, String str) {
        Permission permission;
        ArrayMap permissionTrees = getStateScope.getState().getSystemState().getPermissionTrees();
        int size = permissionTrees.size();
        int i = 0;
        while (true) {
            permission = null;
            if (i >= size) {
                break;
            }
            Object keyAt = permissionTrees.keyAt(i);
            Permission permission2 = (Permission) permissionTrees.valueAt(i);
            String str2 = (String) keyAt;
            if (StringsKt__StringsJVMKt.startsWith$default(str, str2, false, 2, null) && str.length() > str2.length() && str.charAt(str2.length()) == '.') {
                permission = permission2;
            }
            if (permission != null) {
                break;
            }
            i++;
        }
        return permission;
    }

    public final ArrayMap getPermissionGroups(GetStateScope getStateScope) {
        return getStateScope.getState().getSystemState().getPermissionGroups();
    }

    public final ArrayMap getPermissions(GetStateScope getStateScope) {
        return getStateScope.getState().getSystemState().getPermissions();
    }

    public final void addPermission(MutateStateScope mutateStateScope, Permission permission, boolean z) {
        mutateStateScope.getNewState().getSystemState().getPermissions().put(permission.getPermissionInfo().name, permission);
        mutateStateScope.getNewState().getSystemState().requestWrite(z);
    }

    public final void removePermission(MutateStateScope mutateStateScope, Permission permission) {
        mutateStateScope.getNewState().getSystemState().getPermissions().remove(permission.getPermissionInfo().name);
        WritableState.requestWrite$default(mutateStateScope.getNewState().getSystemState(), false, 1, null);
    }

    public final ArrayMap getUidPermissionFlags(GetStateScope getStateScope, int i, int i2) {
        SparseArray uidPermissionFlags;
        UserState userState = (UserState) getStateScope.getState().getUserStates().get(i2);
        if (userState == null || (uidPermissionFlags = userState.getUidPermissionFlags()) == null) {
            return null;
        }
        return (ArrayMap) uidPermissionFlags.get(i);
    }

    public final int getPermissionFlags(GetStateScope getStateScope, int i, int i2, String str) {
        return getPermissionFlags(getStateScope.getState(), i, i2, str);
    }

    public final int getOldStatePermissionFlags(MutateStateScope mutateStateScope, int i, int i2, String str) {
        return getPermissionFlags(mutateStateScope.getOldState(), i, i2, str);
    }

    public final int getPermissionFlags(AccessState accessState, int i, int i2, String str) {
        int indexOfKey;
        SparseArray uidPermissionFlags;
        UserState userState = (UserState) accessState.getUserStates().get(i2);
        ArrayMap arrayMap = (userState == null || (uidPermissionFlags = userState.getUidPermissionFlags()) == null) ? null : (ArrayMap) uidPermissionFlags.get(i);
        Object obj = 0;
        if (arrayMap != null && (indexOfKey = arrayMap.indexOfKey(str)) >= 0) {
            obj = arrayMap.valueAt(indexOfKey);
        }
        return ((Number) obj).intValue();
    }

    public final boolean setPermissionFlags(MutateStateScope mutateStateScope, int i, int i2, String str, int i3) {
        return updatePermissionFlags(mutateStateScope, i, i2, str, -1, i3);
    }

    public final boolean updatePermissionFlags(MutateStateScope mutateStateScope, int i, int i2, String str, int i3, int i4) {
        Object obj;
        int indexOfKey;
        UserState userState = (UserState) mutateStateScope.getNewState().getUserStates().get(i2);
        SparseArray uidPermissionFlags = userState.getUidPermissionFlags();
        ArrayMap arrayMap = (ArrayMap) uidPermissionFlags.get(i);
        if (arrayMap != null && (indexOfKey = arrayMap.indexOfKey(str)) >= 0) {
            obj = arrayMap.valueAt(indexOfKey);
        } else {
            obj = 0;
        }
        int intValue = ((Number) obj).intValue();
        int andInv = IntExtensionsKt.andInv(intValue, i3) | (i4 & i3);
        if (intValue == andInv) {
            return false;
        }
        if (arrayMap == null) {
            arrayMap = new ArrayMap();
            uidPermissionFlags.set(i, arrayMap);
        }
        Integer valueOf = Integer.valueOf(andInv);
        int indexOfKey2 = arrayMap.indexOfKey(str);
        if (indexOfKey2 >= 0) {
            if (!Intrinsics.areEqual(valueOf, arrayMap.valueAt(indexOfKey2))) {
                if (Intrinsics.areEqual(valueOf, 0)) {
                    arrayMap.removeAt(indexOfKey2);
                } else {
                    arrayMap.setValueAt(indexOfKey2, valueOf);
                }
            }
        } else if (!Intrinsics.areEqual(valueOf, 0)) {
            arrayMap.put(str, valueOf);
        }
        if (arrayMap.isEmpty()) {
            uidPermissionFlags.remove(i);
        }
        WritableState.requestWrite$default(userState, false, 1, null);
        IndexedListSet indexedListSet = this.onPermissionFlagsChangedListeners;
        int size = indexedListSet.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((OnPermissionFlagsChangedListener) indexedListSet.elementAt(i5)).onPermissionFlagsChanged(i, i2, str, intValue, andInv);
        }
        return true;
    }

    public final void addOnPermissionFlagsChangedListener(OnPermissionFlagsChangedListener onPermissionFlagsChangedListener) {
        synchronized (this.onPermissionFlagsChangedListenersLock) {
            IndexedListSet copy = this.onPermissionFlagsChangedListeners.copy();
            copy.add(onPermissionFlagsChangedListener);
            this.onPermissionFlagsChangedListeners = copy;
            Unit unit = Unit.INSTANCE;
        }
    }
}
