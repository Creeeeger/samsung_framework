package com.android.server.pm;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.FileUtils;
import android.os.IInstalld;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.WorkSource;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.content.F2fsUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.LocalServices;
import com.android.server.apphibernation.AppHibernationManagerInternal;
import com.android.server.pm.CompilerStats;
import com.android.server.pm.Installer;
import com.android.server.pm.dex.ArtStatsLogUtils;
import com.android.server.pm.dex.DexoptOptions;
import com.android.server.pm.dex.PackageDexUsage;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.PackageState;
import com.android.server.pm.pkg.PackageStateInternal;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* loaded from: classes3.dex */
public class PackageDexOptimizer {
    public static final Random sRandom = new Random();
    public final ArtStatsLogUtils.ArtStatsLogger mArtStatsLogger;
    public final Context mContext;
    public final PowerManager.WakeLock mDexoptWakeLock;
    public final Injector mInjector;
    public final Object mInstallLock;
    public final Installer mInstaller;
    public volatile boolean mSystemReady;

    /* loaded from: classes3.dex */
    public interface Injector {
        AppHibernationManagerInternal getAppHibernationManagerInternal();

        PowerManager getPowerManager(Context context);
    }

    public int adjustDexoptFlags(int i) {
        return i;
    }

    public int adjustDexoptNeeded(int i) {
        return i;
    }

    public PackageDexOptimizer(Installer installer, Object obj, Context context, String str) {
        this(new Injector() { // from class: com.android.server.pm.PackageDexOptimizer.1
            @Override // com.android.server.pm.PackageDexOptimizer.Injector
            public AppHibernationManagerInternal getAppHibernationManagerInternal() {
                return (AppHibernationManagerInternal) LocalServices.getService(AppHibernationManagerInternal.class);
            }

            @Override // com.android.server.pm.PackageDexOptimizer.Injector
            public PowerManager getPowerManager(Context context2) {
                return (PowerManager) context2.getSystemService(PowerManager.class);
            }
        }, installer, obj, context, str);
    }

    public PackageDexOptimizer(PackageDexOptimizer packageDexOptimizer) {
        this.mArtStatsLogger = new ArtStatsLogUtils.ArtStatsLogger();
        this.mContext = packageDexOptimizer.mContext;
        this.mInstaller = packageDexOptimizer.mInstaller;
        this.mInstallLock = packageDexOptimizer.mInstallLock;
        this.mDexoptWakeLock = packageDexOptimizer.mDexoptWakeLock;
        this.mSystemReady = packageDexOptimizer.mSystemReady;
        this.mInjector = packageDexOptimizer.mInjector;
    }

    public PackageDexOptimizer(Injector injector, Installer installer, Object obj, Context context, String str) {
        this.mArtStatsLogger = new ArtStatsLogUtils.ArtStatsLogger();
        this.mContext = context;
        this.mInstaller = installer;
        this.mInstallLock = obj;
        this.mDexoptWakeLock = injector.getPowerManager(context).newWakeLock(1, str);
        this.mInjector = injector;
    }

    public boolean canOptimizePackage(AndroidPackage androidPackage) {
        if ("android".equals(androidPackage.getPackageName()) || !androidPackage.isDeclaredHavingCode() || androidPackage.isApex()) {
            return false;
        }
        AppHibernationManagerInternal appHibernationManagerInternal = this.mInjector.getAppHibernationManagerInternal();
        return (appHibernationManagerInternal != null && appHibernationManagerInternal.isHibernatingGlobally(androidPackage.getPackageName()) && appHibernationManagerInternal.isOatArtifactDeletionEnabled()) ? false : true;
    }

    public int performDexOpt(AndroidPackage androidPackage, PackageStateInternal packageStateInternal, String[] strArr, CompilerStats.PackageStats packageStats, PackageDexUsage.PackageUseInfo packageUseInfo, DexoptOptions dexoptOptions) {
        int performDexOptLI;
        if ("android".equals(androidPackage.getPackageName())) {
            throw new IllegalArgumentException("System server dexopting should be done via odrefresh");
        }
        if (androidPackage.getUid() == -1) {
            throw new IllegalArgumentException("Dexopt for " + androidPackage.getPackageName() + " has invalid uid.");
        }
        if (!canOptimizePackage(androidPackage)) {
            return 0;
        }
        synchronized (this.mInstallLock) {
            long acquireWakeLockLI = acquireWakeLockLI(androidPackage.getUid());
            try {
                performDexOptLI = performDexOptLI(androidPackage, packageStateInternal, strArr, packageStats, packageUseInfo, dexoptOptions);
            } finally {
                releaseWakeLockLI(acquireWakeLockLI);
            }
        }
        return performDexOptLI;
    }

    public void controlDexOptBlocking(boolean z) {
        getInstallerWithoutLock().controlDexOptBlocking(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0337 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int performDexOptLI(com.android.server.pm.pkg.AndroidPackage r48, com.android.server.pm.pkg.PackageStateInternal r49, java.lang.String[] r50, com.android.server.pm.CompilerStats.PackageStats r51, com.android.server.pm.dex.PackageDexUsage.PackageUseInfo r52, com.android.server.pm.dex.DexoptOptions r53) {
        /*
            Method dump skipped, instructions count: 883
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PackageDexOptimizer.performDexOptLI(com.android.server.pm.pkg.AndroidPackage, com.android.server.pm.pkg.PackageStateInternal, java.lang.String[], com.android.server.pm.CompilerStats$PackageStats, com.android.server.pm.dex.PackageDexUsage$PackageUseInfo, com.android.server.pm.dex.DexoptOptions):int");
    }

    public final boolean prepareCloudProfile(AndroidPackage androidPackage, String str, String str2, String str3) {
        if (str3 != null) {
            if (this.mInstaller.isIsolated()) {
                return true;
            }
            try {
                this.mInstaller.deleteReferenceProfile(androidPackage.getPackageName(), str);
                this.mInstaller.prepareAppProfile(androidPackage.getPackageName(), -10000, UserHandle.getAppId(androidPackage.getUid()), str, str2, str3);
                return true;
            } catch (Installer.InstallerException e) {
                Slog.w("PackageDexOptimizer", "Failed to prepare cloud profile", e);
            }
        }
        return false;
    }

    public final int dexOptPath(AndroidPackage androidPackage, PackageStateInternal packageStateInternal, String str, String str2, String str3, int i, String str4, int i2, int i3, CompilerStats.PackageStats packageStats, boolean z, String str5, String str6, int i4) {
        String str7;
        long currentTimeMillis;
        String packageOatDirIfSupported = getPackageOatDirIfSupported(packageStateInternal, androidPackage);
        int dexoptNeeded = getDexoptNeeded(androidPackage.getPackageName(), str, str2, str3, str4, i, z, i2, packageOatDirIfSupported);
        if (Math.abs(dexoptNeeded) == 0) {
            return 0;
        }
        Log.i("PackageDexOptimizer", "Running dexopt (dexoptNeeded=" + dexoptNeeded + ") on: " + str + " pkg=" + androidPackage.getPackageName() + " isa=" + str2 + " dexoptFlags=" + printDexoptFlags(i2) + " targetFilter=" + str3 + " oatDir=" + packageOatDirIfSupported + " classLoaderContext=" + str4);
        try {
            currentTimeMillis = System.currentTimeMillis();
            str7 = "PackageDexOptimizer";
        } catch (Installer.InstallerException e) {
            e = e;
            str7 = "PackageDexOptimizer";
        }
        try {
            if (!getInstallerLI().dexopt(str, i3, androidPackage.getPackageName(), str2, dexoptNeeded, packageOatDirIfSupported, i2, str3, androidPackage.getVolumeUuid(), str4, packageStateInternal.getSeInfo(), false, androidPackage.getTargetSdkVersion(), str5, str6, getAugmentedReasonName(i4, str6 != null))) {
                return 2;
            }
            if (packageStats != null) {
                packageStats.setCompileTime(str, (int) (System.currentTimeMillis() - currentTimeMillis));
            }
            if (packageOatDirIfSupported != null) {
                F2fsUtils.releaseCompressedBlocks(this.mContext.getContentResolver(), new File(packageOatDirIfSupported));
            }
            return 1;
        } catch (Installer.InstallerException e2) {
            e = e2;
            Slog.w(str7, "Failed to dexopt", e);
            return -1;
        }
    }

    public final String getAugmentedReasonName(int i, boolean z) {
        return PackageManagerServiceCompilerMapping.getReasonName(i) + (z ? "-dm" : "");
    }

    public int dexOptSecondaryDexPath(ApplicationInfo applicationInfo, String str, PackageDexUsage.DexUseInfo dexUseInfo, DexoptOptions dexoptOptions) {
        int dexOptSecondaryDexPathLI;
        if (applicationInfo.uid == -1) {
            throw new IllegalArgumentException("Dexopt for path " + str + " has invalid uid.");
        }
        synchronized (this.mInstallLock) {
            long acquireWakeLockLI = acquireWakeLockLI(applicationInfo.uid);
            try {
                dexOptSecondaryDexPathLI = dexOptSecondaryDexPathLI(applicationInfo, str, dexUseInfo, dexoptOptions);
            } finally {
                releaseWakeLockLI(acquireWakeLockLI);
            }
        }
        return dexOptSecondaryDexPathLI;
    }

    public final long acquireWakeLockLI(int i) {
        if (!this.mSystemReady) {
            return -1L;
        }
        this.mDexoptWakeLock.setWorkSource(new WorkSource(i));
        this.mDexoptWakeLock.acquire(660000L);
        return SystemClock.elapsedRealtime();
    }

    public final void releaseWakeLockLI(long j) {
        if (j < 0) {
            return;
        }
        try {
            if (this.mDexoptWakeLock.isHeld()) {
                this.mDexoptWakeLock.release();
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - j;
            if (elapsedRealtime >= 660000) {
                Slog.wtf("PackageDexOptimizer", "WakeLock " + this.mDexoptWakeLock.getTag() + " time out. Operation took " + elapsedRealtime + " ms. Thread: " + Thread.currentThread().getName());
            }
        } catch (RuntimeException e) {
            Slog.wtf("PackageDexOptimizer", "Error while releasing " + this.mDexoptWakeLock.getTag() + " lock", e);
        }
    }

    public final int dexOptSecondaryDexPathLI(ApplicationInfo applicationInfo, String str, PackageDexUsage.DexUseInfo dexUseInfo, DexoptOptions dexoptOptions) {
        int i;
        String str2;
        String str3;
        String realCompilerFilter = getRealCompilerFilter(applicationInfo, dexoptOptions.getCompilerFilter(), dexUseInfo.isUsedByOtherApps());
        int dexFlags = getDexFlags(applicationInfo, realCompilerFilter, dexoptOptions) | 32;
        String str4 = applicationInfo.deviceProtectedDataDir;
        String str5 = "PackageDexOptimizer";
        if (str4 == null || !FileUtils.contains(str4, str)) {
            String str6 = applicationInfo.credentialProtectedDataDir;
            if (str6 == null || !FileUtils.contains(str6, str)) {
                Slog.e("PackageDexOptimizer", "Could not infer CE/DE storage for package " + applicationInfo.packageName);
                return -1;
            }
            i = dexFlags | 128;
        } else {
            i = dexFlags | 256;
        }
        int i2 = i;
        if (dexUseInfo.isUnsupportedClassLoaderContext() || dexUseInfo.isVariableClassLoaderContext()) {
            str2 = null;
            realCompilerFilter = "verify";
        } else {
            str2 = dexUseInfo.getClassLoaderContext();
        }
        String str7 = realCompilerFilter;
        String str8 = str2;
        int compilationReason = dexoptOptions.getCompilationReason();
        Log.d("PackageDexOptimizer", "Running dexopt on: " + str + " pkg=" + applicationInfo.packageName + " isa=" + dexUseInfo.getLoaderIsas() + " reason=" + PackageManagerServiceCompilerMapping.getReasonName(compilationReason) + " dexoptFlags=" + printDexoptFlags(i2) + " target-filter=" + str7 + " class-loader-context=" + str8);
        try {
            Iterator it = dexUseInfo.getLoaderIsas().iterator();
            while (it.hasNext()) {
                String str9 = str8;
                String str10 = str7;
                int i3 = i2;
                str3 = str5;
                try {
                    if (!getInstallerLI().dexopt(str, applicationInfo.uid, applicationInfo.packageName, (String) it.next(), 0, null, i2, str7, applicationInfo.volumeUuid, str9, applicationInfo.seInfo, dexoptOptions.isDowngrade(), applicationInfo.targetSdkVersion, null, null, PackageManagerServiceCompilerMapping.getReasonName(compilationReason))) {
                        return 2;
                    }
                    i2 = i3;
                    str8 = str9;
                    str7 = str10;
                    str5 = str3;
                } catch (Installer.InstallerException e) {
                    e = e;
                    Slog.w(str3, "Failed to dexopt", e);
                    return -1;
                }
            }
            return 1;
        } catch (Installer.InstallerException e2) {
            e = e2;
            str3 = str5;
        }
    }

    public void dumpDexoptState(IndentingPrintWriter indentingPrintWriter, AndroidPackage androidPackage, PackageStateInternal packageStateInternal, PackageDexUsage.PackageUseInfo packageUseInfo) {
        String[] dexCodeInstructionSets = InstructionSets.getDexCodeInstructionSets(InstructionSets.getAppDexInstructionSets(packageStateInternal.getPrimaryCpuAbi(), packageStateInternal.getSecondaryCpuAbi()));
        for (String str : AndroidPackageUtils.getAllCodePathsExcludingResourceOnly(androidPackage)) {
            indentingPrintWriter.println("path: " + str);
            indentingPrintWriter.increaseIndent();
            for (String str2 : dexCodeInstructionSets) {
                try {
                    DexFile.OptimizationInfo dexFileOptimizationInfo = DexFile.getDexFileOptimizationInfo(str, str2);
                    indentingPrintWriter.println(str2 + ": [status=" + dexFileOptimizationInfo.getStatus() + "] [reason=" + dexFileOptimizationInfo.getReason() + "]");
                } catch (IOException e) {
                    indentingPrintWriter.println(str2 + ": [Exception]: " + e.getMessage());
                }
            }
            if (packageUseInfo.isUsedByOtherApps(str)) {
                indentingPrintWriter.println("used by other apps: " + packageUseInfo.getLoadingPackages(str));
            }
            Map dexUseInfoMap = packageUseInfo.getDexUseInfoMap();
            if (!dexUseInfoMap.isEmpty()) {
                indentingPrintWriter.println("known secondary dex files:");
                indentingPrintWriter.increaseIndent();
                for (Map.Entry entry : dexUseInfoMap.entrySet()) {
                    String str3 = (String) entry.getKey();
                    PackageDexUsage.DexUseInfo dexUseInfo = (PackageDexUsage.DexUseInfo) entry.getValue();
                    indentingPrintWriter.println(str3);
                    indentingPrintWriter.increaseIndent();
                    indentingPrintWriter.println("class loader context: " + dexUseInfo.getClassLoaderContext());
                    if (dexUseInfo.isUsedByOtherApps()) {
                        indentingPrintWriter.println("used by other apps: " + dexUseInfo.getLoadingPackages());
                    }
                    indentingPrintWriter.decreaseIndent();
                }
                indentingPrintWriter.decreaseIndent();
            }
            indentingPrintWriter.decreaseIndent();
        }
    }

    public final String getRealCompilerFilter(ApplicationInfo applicationInfo, String str, boolean z) {
        if (applicationInfo.isEmbeddedDexUsed()) {
            return DexFile.isOptimizedCompilerFilter(str) ? "verify" : str;
        }
        int i = applicationInfo.flags;
        if (((i & 16384) == 0 && (i & 2) == 0) ? false : true) {
            return DexFile.getSafeModeCompilerFilter(str);
        }
        return (DexFile.isProfileGuidedCompilerFilter(str) && z) ? PackageManagerServiceCompilerMapping.getCompilerFilterForReason(14) : str;
    }

    public final String getRealCompilerFilter(AndroidPackage androidPackage, String str) {
        if (androidPackage.isUseEmbeddedDex()) {
            return DexFile.isOptimizedCompilerFilter(str) ? "verify" : str;
        }
        return androidPackage.isVmSafeMode() || androidPackage.isDebuggable() ? DexFile.getSafeModeCompilerFilter(str) : str;
    }

    public final boolean isAppImageEnabled() {
        return SystemProperties.get("dalvik.vm.appimageformat", "").length() > 0;
    }

    public final int getDexFlags(ApplicationInfo applicationInfo, String str, DexoptOptions dexoptOptions) {
        return getDexFlags((applicationInfo.flags & 2) != 0, applicationInfo.getHiddenApiEnforcementPolicy(), applicationInfo.splitDependencies, applicationInfo.requestsIsolatedSplitLoading(), str, false, dexoptOptions);
    }

    public final int getDexFlags(AndroidPackage androidPackage, PackageStateInternal packageStateInternal, String str, boolean z, DexoptOptions dexoptOptions) {
        return getDexFlags(androidPackage.isDebuggable(), AndroidPackageUtils.getHiddenApiEnforcementPolicy(androidPackage, packageStateInternal), androidPackage.getSplitDependencies(), androidPackage.isIsolatedSplitLoading(), str, z, dexoptOptions);
    }

    public final int getDexFlags(boolean z, int i, SparseArray sparseArray, boolean z2, String str, boolean z3, DexoptOptions dexoptOptions) {
        boolean isProfileGuidedCompilerFilter = DexFile.isProfileGuidedCompilerFilter(str);
        boolean z4 = !isProfileGuidedCompilerFilter || dexoptOptions.isDexoptInstallWithDexMetadata() || z3;
        int i2 = isProfileGuidedCompilerFilter ? 16 : 0;
        int i3 = i == 0 ? 0 : 1024;
        int compilationReason = dexoptOptions.getCompilationReason();
        boolean z5 = (compilationReason == 0 || compilationReason == 1 || compilationReason == 2 || compilationReason == 3) ? false : true;
        boolean z6 = isProfileGuidedCompilerFilter && (sparseArray == null || !z2) && isAppImageEnabled();
        return adjustDexoptFlags((z ? 4 : 0) | (z4 ? 2 : 0) | i2 | (dexoptOptions.isBootComplete() ? 8 : 0) | (dexoptOptions.isDexoptIdleBackgroundJob() ? 512 : 0) | (z5 ? IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES : 0) | (z6 ? IInstalld.FLAG_USE_QUOTA : 0) | (dexoptOptions.isDexoptInstallForRestore() ? IInstalld.FLAG_FORCE : 0) | i3);
    }

    public final int getDexoptNeeded(String str, String str2, String str3, String str4, String str5, int i, boolean z, int i2, String str6) {
        boolean z2;
        if (!this.mInstaller.isIsolated()) {
            Installer.checkLegacyDexoptDisabled();
        }
        boolean z3 = (i2 & 2) != 0;
        boolean z4 = (i2 & 16) != 0;
        boolean z5 = i == 1;
        try {
            if (!z5 && z4 && z3) {
                if (isOdexPrivate(str, str2, str3, str6)) {
                    z2 = true;
                    return adjustDexoptNeeded(DexFile.getDexOptNeeded(str2, str3, (compilerFilterDependsOnProfiles(str4) || i != 3) ? str4 : "verify", str5, z2, z));
                }
            }
            return adjustDexoptNeeded(DexFile.getDexOptNeeded(str2, str3, (compilerFilterDependsOnProfiles(str4) || i != 3) ? str4 : "verify", str5, z2, z));
        } catch (IOException e) {
            Slog.w("PackageDexOptimizer", "IOException reading apk: " + str2, e);
            return -1;
        } catch (RuntimeException e2) {
            Slog.wtf("PackageDexOptimizer", "Unexpected exception when calling dexoptNeeded on " + str2, e2);
            return -1;
        }
        z2 = z5;
    }

    public final boolean compilerFilterDependsOnProfiles(String str) {
        return str.endsWith("-profile");
    }

    public final boolean isOdexPrivate(String str, String str2, String str3, String str4) {
        try {
            return this.mInstaller.getOdexVisibility(str, str2, str3, str4) == 2;
        } catch (Installer.InstallerException e) {
            Slog.w("PackageDexOptimizer", "Failed to get odex visibility for " + str2, e);
            return false;
        }
    }

    public final int analyseProfiles(AndroidPackage androidPackage, int i, String str, String str2) {
        int mergeProfiles;
        Installer.checkLegacyDexoptDisabled();
        if (!DexFile.isProfileGuidedCompilerFilter(str2)) {
            return 2;
        }
        try {
            synchronized (this.mInstallLock) {
                mergeProfiles = getInstallerLI().mergeProfiles(i, androidPackage.getPackageName(), str);
            }
            return mergeProfiles;
        } catch (Installer.InstallerException e) {
            Slog.w("PackageDexOptimizer", "Failed to merge profiles", e);
            return 2;
        }
    }

    public final String getPackageOatDirIfSupported(PackageState packageState, AndroidPackage androidPackage) {
        if (!AndroidPackageUtils.canHaveOatDir(packageState, androidPackage)) {
            return null;
        }
        File file = new File(androidPackage.getPath());
        if (file.isDirectory()) {
            return getOatDir(file).getAbsolutePath();
        }
        return null;
    }

    public static File getOatDir(File file) {
        return new File(file, "oat");
    }

    public void systemReady() {
        this.mSystemReady = true;
    }

    public final String printDexoptFlags(int i) {
        ArrayList arrayList = new ArrayList();
        if ((i & 8) == 8) {
            arrayList.add("boot_complete");
        }
        if ((i & 4) == 4) {
            arrayList.add("debuggable");
        }
        if ((i & 16) == 16) {
            arrayList.add("profile_guided");
        }
        if ((i & 2) == 2) {
            arrayList.add("public");
        }
        if ((i & 32) == 32) {
            arrayList.add("secondary");
        }
        if ((i & 64) == 64) {
            arrayList.add("force");
        }
        if ((i & 128) == 128) {
            arrayList.add("storage_ce");
        }
        if ((i & 256) == 256) {
            arrayList.add("storage_de");
        }
        if ((i & 512) == 512) {
            arrayList.add("idle_background_job");
        }
        if ((i & 1024) == 1024) {
            arrayList.add("enable_hidden_api_checks");
        }
        return String.join(",", arrayList);
    }

    /* loaded from: classes3.dex */
    public class ForcedUpdatePackageDexOptimizer extends PackageDexOptimizer {
        @Override // com.android.server.pm.PackageDexOptimizer
        public int adjustDexoptFlags(int i) {
            return i | 64;
        }

        @Override // com.android.server.pm.PackageDexOptimizer
        public int adjustDexoptNeeded(int i) {
            if (i == 0) {
                return -3;
            }
            return i;
        }

        public ForcedUpdatePackageDexOptimizer(Installer installer, Object obj, Context context, String str) {
            super(installer, obj, context, str);
        }

        public ForcedUpdatePackageDexOptimizer(PackageDexOptimizer packageDexOptimizer) {
            super(packageDexOptimizer);
        }
    }

    public final Installer getInstallerLI() {
        return this.mInstaller;
    }

    public final Installer getInstallerWithoutLock() {
        return this.mInstaller;
    }
}
