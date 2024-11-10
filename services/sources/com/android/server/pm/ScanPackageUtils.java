package com.android.server.pm;

import android.content.pm.SigningDetails;
import android.content.pm.parsing.result.ParseInput;
import android.content.pm.parsing.result.ParseResult;
import android.content.pm.parsing.result.ParseTypeImpl;
import android.os.Build;
import android.os.Environment;
import android.os.IInstalld;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Slog;
import android.util.apk.ApkSignatureVerifier;
import android.util.jar.StrictJarFile;
import com.android.internal.util.ArrayUtils;
import com.android.server.SystemConfig;
import com.android.server.pm.Settings;
import com.android.server.pm.parsing.library.PackageBackwardCompatibility;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.parsing.pkg.ParsedPackage;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.component.ComponentMutateUtils;
import com.android.server.pm.pkg.component.ParsedActivity;
import com.android.server.pm.pkg.component.ParsedMainComponent;
import com.android.server.pm.pkg.component.ParsedProvider;
import com.android.server.pm.pkg.component.ParsedService;
import com.android.server.pm.pkg.parsing.ParsingPackageUtils;
import com.android.server.utils.WatchedArraySet;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class ScanPackageUtils {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0349  */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v61 */
    /* JADX WARN: Type inference failed for: r4v62, types: [com.android.server.pm.pkg.PackageStateInternal] */
    /* JADX WARN: Type inference failed for: r4v63 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.android.server.pm.ScanResult scanPackageOnlyLI(com.android.server.pm.ScanRequest r47, com.android.server.pm.PackageManagerServiceInjector r48, boolean r49, long r50) {
        /*
            Method dump skipped, instructions count: 1286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.ScanPackageUtils.scanPackageOnlyLI(com.android.server.pm.ScanRequest, com.android.server.pm.PackageManagerServiceInjector, boolean, long):com.android.server.pm.ScanResult");
    }

    public static int adjustScanFlagsWithPackageSetting(int i, PackageSetting packageSetting, PackageSetting packageSetting2, UserHandle userHandle) {
        if ((i & 4) != 0 && packageSetting2 == null && packageSetting != null && packageSetting.isSystem()) {
            packageSetting2 = packageSetting;
        }
        if (packageSetting2 != null) {
            i |= 65536;
            if ((packageSetting2.getPrivateFlags() & 8) != 0) {
                i |= IInstalld.FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES;
            }
            if ((packageSetting2.getPrivateFlags() & IInstalld.FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES) != 0) {
                i |= 262144;
            }
            if ((packageSetting2.getPrivateFlags() & 262144) != 0) {
                i |= 524288;
            }
            if ((packageSetting2.getPrivateFlags() & 524288) != 0) {
                i |= 1048576;
            }
            if ((packageSetting2.getPrivateFlags() & 2097152) != 0) {
                i |= 2097152;
            }
            if ((packageSetting2.getPrivateFlags() & 1073741824) != 0) {
                i |= 4194304;
            }
        }
        if (packageSetting == null) {
            return i;
        }
        int identifier = userHandle == null ? 0 : userHandle.getIdentifier();
        if (packageSetting.getInstantApp(identifier)) {
            i |= IInstalld.FLAG_FORCE;
        }
        return packageSetting.getVirtualPreload(identifier) ? i | 32768 : i;
    }

    public static void assertCodePolicy(AndroidPackage androidPackage) {
        if (androidPackage.isDeclaredHavingCode() && !apkHasCode(androidPackage.getBaseApkPath())) {
            throw new PackageManagerException(-2, "Package " + androidPackage.getBaseApkPath() + " code is missing");
        }
        if (ArrayUtils.isEmpty(androidPackage.getSplitCodePaths())) {
            return;
        }
        for (int i = 0; i < androidPackage.getSplitCodePaths().length; i++) {
            if (((androidPackage.getSplitFlags()[i] & 4) != 0) && !apkHasCode(androidPackage.getSplitCodePaths()[i])) {
                throw new PackageManagerException(-2, "Package " + androidPackage.getSplitCodePaths()[i] + " code is missing");
            }
        }
    }

    public static void assertStaticSharedLibraryIsValid(AndroidPackage androidPackage, int i) {
        if (androidPackage.getTargetSdkVersion() < 26) {
            throw PackageManagerException.ofInternalError("Packages declaring static-shared libs must target O SDK or higher", -22);
        }
        if ((i & IInstalld.FLAG_FORCE) != 0) {
            throw PackageManagerException.ofInternalError("Packages declaring static-shared libs cannot be instant apps", -23);
        }
        if (!ArrayUtils.isEmpty(androidPackage.getOriginalPackages())) {
            throw PackageManagerException.ofInternalError("Packages declaring static-shared libs cannot be renamed", -24);
        }
        if (!ArrayUtils.isEmpty(androidPackage.getLibraryNames())) {
            throw PackageManagerException.ofInternalError("Packages declaring static-shared libs cannot declare dynamic libs", -25);
        }
        if (androidPackage.getSharedUserId() != null) {
            throw PackageManagerException.ofInternalError("Packages declaring static-shared libs cannot declare shared users", -26);
        }
        if (!androidPackage.getActivities().isEmpty()) {
            throw PackageManagerException.ofInternalError("Static shared libs cannot declare activities", -27);
        }
        if (!androidPackage.getServices().isEmpty()) {
            throw PackageManagerException.ofInternalError("Static shared libs cannot declare services", -28);
        }
        if (!androidPackage.getProviders().isEmpty()) {
            throw PackageManagerException.ofInternalError("Static shared libs cannot declare content providers", -29);
        }
        if (!androidPackage.getReceivers().isEmpty()) {
            throw PackageManagerException.ofInternalError("Static shared libs cannot declare broadcast receivers", -30);
        }
        if (!androidPackage.getPermissionGroups().isEmpty()) {
            throw PackageManagerException.ofInternalError("Static shared libs cannot declare permission groups", -31);
        }
        if (!androidPackage.getAttributions().isEmpty()) {
            throw PackageManagerException.ofInternalError("Static shared libs cannot declare features", -32);
        }
        if (!androidPackage.getPermissions().isEmpty()) {
            throw PackageManagerException.ofInternalError("Static shared libs cannot declare permissions", -33);
        }
        if (!androidPackage.getProtectedBroadcasts().isEmpty()) {
            throw PackageManagerException.ofInternalError("Static shared libs cannot declare protected broadcasts", -34);
        }
        if (androidPackage.getOverlayTarget() != null) {
            throw PackageManagerException.ofInternalError("Static shared libs cannot be overlay targets", -35);
        }
    }

    public static void assertProcessesAreValid(AndroidPackage androidPackage) {
        Map processes = androidPackage.getProcesses();
        if (processes.isEmpty()) {
            return;
        }
        if (!processes.containsKey(androidPackage.getProcessName())) {
            throw new PackageManagerException(-122, "Can't install because application tag's process attribute " + androidPackage.getProcessName() + " (in package " + androidPackage.getPackageName() + ") is not included in the <processes> list");
        }
        assertPackageProcesses(androidPackage, androidPackage.getActivities(), processes, "activity");
        assertPackageProcesses(androidPackage, androidPackage.getServices(), processes, "service");
        assertPackageProcesses(androidPackage, androidPackage.getReceivers(), processes, "receiver");
        assertPackageProcesses(androidPackage, androidPackage.getProviders(), processes, "provider");
    }

    public static void assertPackageProcesses(AndroidPackage androidPackage, List list, Map map, String str) {
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            ParsedMainComponent parsedMainComponent = (ParsedMainComponent) list.get(size);
            if (!map.containsKey(parsedMainComponent.getProcessName())) {
                throw new PackageManagerException(-122, "Can't install because " + str + " " + parsedMainComponent.getClassName() + "'s process attribute " + parsedMainComponent.getProcessName() + " (in package " + androidPackage.getPackageName() + ") is not included in the <processes> list");
            }
        }
    }

    public static void assertMinSignatureSchemeIsValid(AndroidPackage androidPackage, int i) {
        int minimumSignatureSchemeVersionForTargetSdk = ApkSignatureVerifier.getMinimumSignatureSchemeVersionForTargetSdk(androidPackage.getTargetSdkVersion());
        if (androidPackage.getSigningDetails().getSignatureSchemeVersion() >= minimumSignatureSchemeVersionForTargetSdk) {
            return;
        }
        throw new PackageManagerException(-103, "No signature found in package of version " + minimumSignatureSchemeVersionForTargetSdk + " or newer for package " + androidPackage.getPackageName());
    }

    public static String getRealPackageName(AndroidPackage androidPackage, String str, boolean z) {
        if (isPackageRenamed(androidPackage, str)) {
            return AndroidPackageUtils.getRealPackageOrNull(androidPackage, z);
        }
        return null;
    }

    public static boolean isPackageRenamed(AndroidPackage androidPackage, String str) {
        return androidPackage.getOriginalPackages().contains(str);
    }

    public static void ensurePackageRenamed(ParsedPackage parsedPackage, String str) {
        if (!parsedPackage.getOriginalPackages().contains(str) || parsedPackage.getPackageName().equals(str)) {
            return;
        }
        parsedPackage.setPackageName(str);
    }

    public static boolean apkHasCode(String str) {
        StrictJarFile strictJarFile;
        StrictJarFile strictJarFile2 = null;
        try {
            strictJarFile = new StrictJarFile(str, false, false);
        } catch (IOException unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            boolean z = strictJarFile.findEntry("classes.dex") != null;
            try {
                strictJarFile.close();
            } catch (IOException unused2) {
            }
            return z;
        } catch (IOException unused3) {
            strictJarFile2 = strictJarFile;
            if (strictJarFile2 != null) {
                try {
                    strictJarFile2.close();
                } catch (IOException unused4) {
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            strictJarFile2 = strictJarFile;
            if (strictJarFile2 != null) {
                try {
                    strictJarFile2.close();
                } catch (IOException unused5) {
                }
            }
            throw th;
        }
    }

    public static void configurePackageComponents(AndroidPackage androidPackage) {
        ArrayMap componentsEnabledStates = SystemConfig.getInstance().getComponentsEnabledStates(androidPackage.getPackageName());
        if (componentsEnabledStates == null) {
            return;
        }
        for (int size = ArrayUtils.size(androidPackage.getActivities()) - 1; size >= 0; size--) {
            ParsedActivity parsedActivity = (ParsedActivity) androidPackage.getActivities().get(size);
            Boolean bool = (Boolean) componentsEnabledStates.get(parsedActivity.getName());
            if (bool != null) {
                ComponentMutateUtils.setEnabled(parsedActivity, bool.booleanValue());
            }
        }
        for (int size2 = ArrayUtils.size(androidPackage.getReceivers()) - 1; size2 >= 0; size2--) {
            ParsedActivity parsedActivity2 = (ParsedActivity) androidPackage.getReceivers().get(size2);
            Boolean bool2 = (Boolean) componentsEnabledStates.get(parsedActivity2.getName());
            if (bool2 != null) {
                ComponentMutateUtils.setEnabled(parsedActivity2, bool2.booleanValue());
            }
        }
        for (int size3 = ArrayUtils.size(androidPackage.getProviders()) - 1; size3 >= 0; size3--) {
            ParsedProvider parsedProvider = (ParsedProvider) androidPackage.getProviders().get(size3);
            Boolean bool3 = (Boolean) componentsEnabledStates.get(parsedProvider.getName());
            if (bool3 != null) {
                ComponentMutateUtils.setEnabled(parsedProvider, bool3.booleanValue());
            }
        }
        for (int size4 = ArrayUtils.size(androidPackage.getServices()) - 1; size4 >= 0; size4--) {
            ParsedService parsedService = (ParsedService) androidPackage.getServices().get(size4);
            Boolean bool4 = (Boolean) componentsEnabledStates.get(parsedService.getName());
            if (bool4 != null) {
                ComponentMutateUtils.setEnabled(parsedService, bool4.booleanValue());
            }
        }
    }

    public static int getVendorPartitionVersion() {
        String str = SystemProperties.get("ro.vndk.version");
        if (str.isEmpty()) {
            return 28;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return ArrayUtils.contains(Build.VERSION.ACTIVE_CODENAMES, str) ? 10000 : 28;
        }
    }

    public static void applyPolicy(ParsedPackage parsedPackage, int i, AndroidPackage androidPackage, boolean z) {
        boolean z2;
        boolean z3 = true;
        if ((65536 & i) != 0) {
            parsedPackage.setSystem(true);
            if (parsedPackage.isDirectBootAware()) {
                parsedPackage.setAllComponentsDirectBootAware(true);
            }
            if (PackageManagerServiceUtils.compressedFileExists(parsedPackage.getPath())) {
                parsedPackage.setStub(true);
            }
            z2 = true;
        } else {
            parsedPackage.clearProtectedBroadcasts().setCoreApp(false).setPersistent(false).setDefaultToDeviceProtectedStorage(false).setDirectBootAware(false).capPermissionPriorities();
            z2 = z;
        }
        int i2 = 131072 & i;
        if (i2 == 0) {
            parsedPackage.markNotActivitiesAsNotExportedIfSingleUser();
        }
        parsedPackage.setApex((67108864 & i) != 0);
        parsedPackage.setPrivileged(i2 != 0).setOem((262144 & i) != 0).setVendor((524288 & i) != 0).setProduct((1048576 & i) != 0).setSystemExt((2097152 & i) != 0).setOdm((i & 4194304) != 0);
        if (!"android".equals(parsedPackage.getPackageName()) && (androidPackage == null || PackageManagerServiceUtils.compareSignatures(androidPackage.getSigningDetails().getSignatures(), parsedPackage.getSigningDetails().getSignatures()) != 0)) {
            z3 = false;
        }
        parsedPackage.setSignedWithPlatformKey(z3);
        if (!z2) {
            parsedPackage.clearOriginalPackages().clearAdoptPermissions();
        }
        PackageBackwardCompatibility.modifySharedLibraries(parsedPackage, z2, z);
    }

    public static List applyAdjustedAbiToSharedUser(SharedUserSetting sharedUserSetting, ParsedPackage parsedPackage, String str) {
        if (parsedPackage != null) {
            parsedPackage.setPrimaryCpuAbi(str);
        }
        WatchedArraySet packageSettings = sharedUserSetting.getPackageSettings();
        ArrayList arrayList = null;
        for (int i = 0; i < packageSettings.size(); i++) {
            PackageSetting packageSetting = (PackageSetting) packageSettings.valueAt(i);
            if ((parsedPackage == null || !parsedPackage.getPackageName().equals(packageSetting.getPackageName())) && packageSetting.getPrimaryCpuAbiLegacy() == null) {
                packageSetting.setPrimaryCpuAbi(str);
                packageSetting.onChanged();
                if (packageSetting.getPkg() != null && !TextUtils.equals(str, AndroidPackageUtils.getRawPrimaryCpuAbi(packageSetting.getPkg()))) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(packageSetting.getPathString());
                }
            }
        }
        return arrayList;
    }

    public static void collectCertificatesLI(PackageSetting packageSetting, ParsedPackage parsedPackage, Settings.VersionInfo versionInfo, boolean z, boolean z2, boolean z3) {
        long lastModifiedTime;
        if (z3) {
            lastModifiedTime = new File(parsedPackage.getPath()).lastModified();
        } else {
            lastModifiedTime = PackageManagerServiceUtils.getLastModifiedTime(parsedPackage);
        }
        if (packageSetting != null && !z && packageSetting.getPathString().equals(parsedPackage.getPath()) && packageSetting.getLastModifiedTime() == lastModifiedTime && !ReconcilePackageUtils.isCompatSignatureUpdateNeeded(versionInfo) && !ReconcilePackageUtils.isRecoverSignatureUpdateNeeded(versionInfo)) {
            if (packageSetting.getSigningDetails().getSignatures() != null && packageSetting.getSigningDetails().getSignatures().length != 0 && packageSetting.getSigningDetails().getSignatureSchemeVersion() != 0) {
                parsedPackage.setSigningDetails(new SigningDetails(packageSetting.getSigningDetails()));
                return;
            }
            Slog.w("PackageManager", "PackageSetting for " + packageSetting.getPackageName() + " is missing signatures.  Collecting certs again to recover them.");
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(parsedPackage.getPath());
            sb.append(" changed; collecting certs");
            sb.append(z ? " (forced)" : "");
            Slog.i("PackageManager", sb.toString());
        }
        try {
            Trace.traceBegin(262144L, "collectCertificates");
            ParseResult signingDetails = ParsingPackageUtils.getSigningDetails((ParseInput) ParseTypeImpl.forDefaultParsing(), parsedPackage, z2);
            if (signingDetails.isError()) {
                throw new PackageManagerException(signingDetails.getErrorCode(), signingDetails.getErrorMessage(), signingDetails.getException());
            }
            parsedPackage.setSigningDetails((SigningDetails) signingDetails.getResult());
        } finally {
            Trace.traceEnd(262144L);
        }
    }

    public static void setInstantAppForUser(PackageManagerServiceInjector packageManagerServiceInjector, PackageSetting packageSetting, int i, boolean z, boolean z2) {
        if (z || z2) {
            if (i != -1) {
                if (z && !packageSetting.getInstantApp(i)) {
                    packageSetting.setInstantApp(true, i);
                    return;
                } else {
                    if (z2 && packageSetting.getInstantApp(i)) {
                        packageSetting.setInstantApp(false, i);
                        return;
                    }
                    return;
                }
            }
            for (int i2 : packageManagerServiceInjector.getUserManagerInternal().getUserIds()) {
                if (z && !packageSetting.getInstantApp(i2)) {
                    packageSetting.setInstantApp(true, i2);
                } else if (z2 && packageSetting.getInstantApp(i2)) {
                    packageSetting.setInstantApp(false, i2);
                }
            }
        }
    }

    public static File getAppLib32InstallDir() {
        return new File(Environment.getDataDirectory(), "app-lib");
    }
}
