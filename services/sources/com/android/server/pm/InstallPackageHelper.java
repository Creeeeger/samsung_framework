package com.android.server.pm;

import android.apex.ApexInfo;
import android.app.ActivityThread;
import android.app.AppOpsManager;
import android.app.BroadcastOptions;
import android.app.backup.IBackupManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInfoLite;
import android.content.pm.PackageManager;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.SigningDetails;
import android.content.pm.UserInfo;
import android.content.pm.VerifierInfo;
import android.content.pm.dex.DexMetadataHelper;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileUtils;
import android.os.IInstalld;
import android.os.RemoteException;
import android.os.SELinux;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.incremental.IncrementalManager;
import android.provider.Settings;
import android.system.ErrnoException;
import android.system.Os;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.jar.StrictJarFile;
import com.android.internal.content.F2fsUtils;
import com.android.internal.security.VerityUtils;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.server.AlarmManagerInternal;
import com.android.server.LocalServices;
import com.android.server.SpegService;
import com.android.server.SystemConfig;
import com.android.server.job.JobSchedulerInternal;
import com.android.server.om.SemSamsungThemeUtils;
import com.android.server.pm.ApexManager;
import com.android.server.pm.Installer;
import com.android.server.pm.ParallelPackageParser;
import com.android.server.pm.dex.ArtManagerService;
import com.android.server.pm.dex.DexManager;
import com.android.server.pm.dex.ViewCompiler;
import com.android.server.pm.parsing.PackageParser2;
import com.android.server.pm.parsing.pkg.AndroidPackageInternal;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.parsing.pkg.ParsedPackage;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.component.ParsedActivity;
import com.android.server.pm.pkg.component.ParsedIntentInfo;
import com.android.server.pm.pkg.component.ParsedUsesPermission;
import com.android.server.rollback.RollbackManagerInternal;
import com.android.server.security.FileIntegrityService;
import com.android.server.uri.UriGrantsManagerInternal;
import com.android.server.utils.WatchedArrayMap;
import com.android.server.utils.WatchedLongSparseArray;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.rune.PMRune;
import com.samsung.android.server.pm.install.PmConfigParser;
import com.samsung.android.server.pm.install.PreloadDuplicateApps;
import com.samsung.android.server.pm.monetization.MonetizationUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;
import java.util.zip.ZipFile;

/* loaded from: classes3.dex */
public final class InstallPackageHelper {
    public final ApexManager mApexManager;
    public final AppDataHelper mAppDataHelper;
    public final ArtManagerService mArtManagerService;
    public boolean mBlockContinualSpeg;
    public final BroadcastHelper mBroadcastHelper;
    public final Context mContext;
    public final DexManager mDexManager;
    public final IncrementalManager mIncrementalManager;
    public final PackageManagerServiceInjector mInjector;
    public MonetizationUtils mMonetizationUtils;
    public final PackageAbiHelper mPackageAbiHelper;
    public final PackageDexOptimizer mPackageDexOptimizer;
    public final PackageManagerService mPm;
    public final PreloadDuplicateApps mPreloadDuplicateApps;
    public final RemovePackageHelper mRemovePackageHelper;
    public final SharedLibrariesImpl mSharedLibraries;
    public SpegService mSpeg;
    public long mSpegBlockStartTime;
    public long mSpegFirstLaunchTime;
    public int mSpegLaunchesCount;
    public long mSpegPrevLaunchTime;
    public final UpdateOwnershipHelper mUpdateOwnershipHelper;
    public final ViewCompiler mViewCompiler;
    public static final boolean SPEG_DISABLE_LAUNCH = SystemProperties.getBoolean("com.samsung.speg.disable_launch", false);
    public static final boolean CAN_OVERRIDE_PROFILE = true;

    public InstallPackageHelper(PackageManagerService packageManagerService, AppDataHelper appDataHelper) {
        this.mPreloadDuplicateApps = new PreloadDuplicateApps();
        this.mBlockContinualSpeg = false;
        this.mSpegLaunchesCount = 0;
        this.mSpegFirstLaunchTime = -1L;
        this.mSpegPrevLaunchTime = -1L;
        this.mSpegBlockStartTime = -1L;
        this.mPm = packageManagerService;
        this.mInjector = packageManagerService.mInjector;
        this.mAppDataHelper = appDataHelper;
        this.mBroadcastHelper = new BroadcastHelper(packageManagerService.mInjector);
        this.mRemovePackageHelper = new RemovePackageHelper(packageManagerService);
        this.mIncrementalManager = packageManagerService.mInjector.getIncrementalManager();
        this.mApexManager = packageManagerService.mInjector.getApexManager();
        this.mDexManager = packageManagerService.mInjector.getDexManager();
        this.mArtManagerService = packageManagerService.mInjector.getArtManagerService();
        Context context = packageManagerService.mInjector.getContext();
        this.mContext = context;
        this.mPackageDexOptimizer = packageManagerService.mInjector.getPackageDexOptimizer();
        this.mPackageAbiHelper = packageManagerService.mInjector.getAbiHelper();
        this.mViewCompiler = packageManagerService.mInjector.getViewCompiler();
        this.mSharedLibraries = packageManagerService.mInjector.getSharedLibrariesImpl();
        this.mUpdateOwnershipHelper = packageManagerService.mInjector.getUpdateOwnershipHelper();
        if (CoreRune.SYSFW_APP_SPEG) {
            this.mSpeg = (SpegService) LocalServices.getService(SpegService.class);
        }
        if (PMRune.PM_BADGE_ON_MONETIZED_APP_SUPPORTED) {
            this.mMonetizationUtils = MonetizationUtils.getInstance(context);
        }
    }

    public InstallPackageHelper(PackageManagerService packageManagerService) {
        this(packageManagerService, new AppDataHelper(packageManagerService));
    }

    /* JADX WARN: Type inference failed for: r11v15, types: [boolean] */
    public AndroidPackage commitReconciledScanResultLocked(ReconciledPackage reconciledPackage, int[] iArr) {
        final PackageSetting packageSetting;
        String str;
        int i;
        int userId;
        PackageSetting packageLPr;
        InstallRequest installRequest = reconciledPackage.mInstallRequest;
        ParsedPackage parsedPackage = installRequest.getParsedPackage();
        if (parsedPackage != null && "android".equals(parsedPackage.getPackageName())) {
            parsedPackage.setVersionCode(this.mPm.getSdkVersion()).setVersionCodeMajor(0);
        }
        int scanFlags = installRequest.getScanFlags();
        PackageSetting scanRequestOldPackageSetting = installRequest.getScanRequestOldPackageSetting();
        PackageSetting scanRequestOriginalPackageSetting = installRequest.getScanRequestOriginalPackageSetting();
        String realPackageName = installRequest.getRealPackageName();
        List changedAbiCodePath = DexOptHelper.useArtService() ? null : installRequest.getChangedAbiCodePath();
        if (installRequest.getScanRequestPackageSetting() != null) {
            SharedUserSetting sharedUserSettingLPr = this.mPm.mSettings.getSharedUserSettingLPr(installRequest.getScanRequestPackageSetting());
            SharedUserSetting sharedUserSettingLPr2 = this.mPm.mSettings.getSharedUserSettingLPr(installRequest.getScannedPackageSetting());
            if (sharedUserSettingLPr != null && sharedUserSettingLPr != sharedUserSettingLPr2) {
                sharedUserSettingLPr.removePackage(installRequest.getScanRequestPackageSetting());
                if (this.mPm.mSettings.checkAndPruneSharedUserLPw(sharedUserSettingLPr, false)) {
                    installRequest.setRemovedAppId(sharedUserSettingLPr.mAppId);
                }
            }
        }
        if (installRequest.isExistingSettingCopied()) {
            packageSetting = installRequest.getScanRequestPackageSetting();
            packageSetting.updateFrom(installRequest.getScannedPackageSetting());
        } else {
            PackageSetting scannedPackageSetting = installRequest.getScannedPackageSetting();
            if (scanRequestOriginalPackageSetting != null) {
                this.mPm.mSettings.addRenamedPackageLPw(AndroidPackageUtils.getRealPackageOrNull(parsedPackage, scannedPackageSetting.isSystem()), scanRequestOriginalPackageSetting.getPackageName());
                this.mPm.mTransferredPackages.add(scanRequestOriginalPackageSetting.getPackageName());
            } else {
                this.mPm.mSettings.removeRenamedPackageLPw(parsedPackage.getPackageName());
            }
            packageSetting = scannedPackageSetting;
        }
        SharedUserSetting sharedUserSettingLPr3 = this.mPm.mSettings.getSharedUserSettingLPr(packageSetting);
        if (sharedUserSettingLPr3 != null) {
            sharedUserSettingLPr3.addPackage(packageSetting);
            if (parsedPackage.isLeavingSharedUser() && SharedUidMigration.applyStrategy(2) && sharedUserSettingLPr3.isSingleUser()) {
                this.mPm.mSettings.convertSharedUserSettingsLPw(sharedUserSettingLPr3);
            }
        }
        if (installRequest.isForceQueryableOverride()) {
            packageSetting.setForceQueryableOverride(true);
        }
        InstallSource installSource = installRequest.getInstallSource();
        boolean z = (67108864 & scanFlags) != 0;
        boolean z2 = scanRequestOldPackageSetting != null;
        String str2 = z2 ? scanRequestOldPackageSetting.getInstallSource().mUpdateOwnerPackageName : null;
        String systemAppUpdateOwnerPackageName = (z || !packageSetting.isSystem()) ? null : this.mPm.mInjector.getSystemConfig().getSystemAppUpdateOwnerPackageName(parsedPackage.getPackageName());
        List list = changedAbiCodePath;
        boolean isUpdateOwnershipDenylisted = this.mUpdateOwnershipHelper.isUpdateOwnershipDenylisted(parsedPackage.getPackageName());
        boolean z3 = str2 != null;
        boolean isSamsungApp = this.mUpdateOwnershipHelper.isSamsungApp(parsedPackage.getPackageName());
        if (installSource != null) {
            if (!PackageManagerServiceUtils.isInstalledByAdb(installSource.mInitiatingPackageName) && (packageLPr = this.mPm.mSettings.getPackageLPr(installSource.mInitiatingPackageName)) != null) {
                installSource = installSource.setInitiatingPackageSignatures(packageLPr.getSignatures());
            }
            if (z) {
                str = realPackageName;
            } else {
                int i2 = installSource.mInstallerPackageUid;
                if (i2 != -1) {
                    userId = UserHandle.getUserId(i2);
                } else {
                    userId = installRequest.getUserId();
                }
                boolean z4 = z2 && (userId < 0 ? scanRequestOldPackageSetting.getNotInstalledUserIds().length <= UserManager.isHeadlessSystemUserMode() : scanRequestOldPackageSetting.getInstalled(userId));
                boolean z5 = (installRequest.getInstallFlags() & 33554432) != 0;
                boolean equals = TextUtils.equals(str2, installSource.mInstallerPackageName);
                str = realPackageName;
                boolean isUpdateOwnershipDenyListProvider = this.mUpdateOwnershipHelper.isUpdateOwnershipDenyListProvider(installSource.mUpdateOwnerPackageName);
                if (z4) {
                    if (!equals || !z3) {
                        installSource = installSource.setUpdateOwnerPackageName(null);
                    }
                } else if (!z5 || isUpdateOwnershipDenylisted || isSamsungApp || isUpdateOwnershipDenyListProvider) {
                    installSource = installSource.setUpdateOwnerPackageName(null);
                } else if ((!z3 && z2) || (z3 && !equals)) {
                    installSource = installSource.setUpdateOwnerPackageName(null);
                }
            }
            packageSetting.setInstallSource(installSource);
        } else {
            str = realPackageName;
            if (packageSetting.isSystem()) {
                boolean z6 = z3 && TextUtils.equals(str2, systemAppUpdateOwnerPackageName);
                if (!z2 || z6) {
                    packageSetting.setUpdateOwnerPackage(systemAppUpdateOwnerPackageName);
                } else {
                    packageSetting.setUpdateOwnerPackage(null);
                }
            }
        }
        if ((8388608 & scanFlags) != 0) {
            boolean z7 = (33554432 & scanFlags) != 0;
            i = 1;
            packageSetting.getPkgState().setApkInUpdatedApex(!z7);
        } else {
            i = 1;
        }
        packageSetting.getPkgState().setApexModuleName(installRequest.getApexModuleName());
        parsedPackage.setUid(packageSetting.getAppId());
        AndroidPackageInternal hideAsFinal = parsedPackage.hideAsFinal();
        this.mPm.mSettings.writeUserRestrictionsLPw(packageSetting, scanRequestOldPackageSetting);
        if (str != null) {
            this.mPm.mTransferredPackages.add(hideAsFinal.getPackageName());
        }
        if (reconciledPackage.mCollectedSharedLibraryInfos != null || (scanRequestOldPackageSetting != null && !scanRequestOldPackageSetting.getSharedLibraryDependencies().isEmpty())) {
            this.mSharedLibraries.executeSharedLibrariesUpdate(hideAsFinal, packageSetting, null, null, reconciledPackage.mCollectedSharedLibraryInfos, iArr);
        }
        KeySetManagerService keySetManagerService = this.mPm.mSettings.getKeySetManagerService();
        if (reconciledPackage.mRemoveAppKeySetData) {
            keySetManagerService.removeAppKeySetDataLPw(hideAsFinal.getPackageName());
        }
        if (reconciledPackage.mSharedUserSignaturesChanged) {
            sharedUserSettingLPr3.signaturesChanged = Boolean.TRUE;
            sharedUserSettingLPr3.signatures.mSigningDetails = reconciledPackage.mSigningDetails;
        }
        packageSetting.setSigningDetails(reconciledPackage.mSigningDetails);
        if (list != null && list.size() > 0) {
            int size = list.size() - i;
            while (size >= 0) {
                List list2 = list;
                String str3 = (String) list2.get(size);
                try {
                    synchronized (this.mPm.mInstallLock) {
                        this.mPm.mInstaller.rmdex(str3, InstructionSets.getDexCodeInstructionSet(InstructionSets.getPreferredInstructionSet()));
                    }
                } catch (Installer.InstallerException unused) {
                    continue;
                } catch (Installer.LegacyDexoptDisabledException e) {
                    throw new RuntimeException(e);
                }
                size--;
                list = list2;
            }
        }
        int userId2 = installRequest.getUserId();
        commitPackageSettings(hideAsFinal, packageSetting, scanRequestOldPackageSetting, reconciledPackage);
        if (packageSetting.getInstantApp(userId2)) {
            this.mPm.mInstantAppRegistry.addInstantApp(userId2, packageSetting.getAppId());
        }
        if (!IncrementalManager.isIncrementalPath(packageSetting.getPathString())) {
            packageSetting.setLoadingProgress(1.0f);
        }
        if (UpdateOwnershipHelper.hasValidOwnershipDenyList(packageSetting)) {
            this.mPm.mHandler.post(new Runnable() { // from class: com.android.server.pm.InstallPackageHelper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    InstallPackageHelper.this.lambda$commitReconciledScanResultLocked$0(packageSetting);
                }
            });
        }
        return hideAsFinal;
    }

    /* renamed from: handleUpdateOwnerDenyList */
    public final void lambda$commitReconciledScanResultLocked$0(PackageSetting packageSetting) {
        ArraySet readUpdateOwnerDenyList = this.mUpdateOwnershipHelper.readUpdateOwnerDenyList(packageSetting);
        if (readUpdateOwnerDenyList == null || readUpdateOwnerDenyList.isEmpty()) {
            return;
        }
        this.mUpdateOwnershipHelper.addToUpdateOwnerDenyList(packageSetting.getPackageName(), readUpdateOwnerDenyList);
        SystemConfig systemConfig = SystemConfig.getInstance();
        synchronized (this.mPm.mLock) {
            Iterator it = readUpdateOwnerDenyList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(str);
                if (packageLPr != null && systemConfig.getSystemAppUpdateOwnerPackageName(str) == null) {
                    packageLPr.setUpdateOwnerPackage(null);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x012d A[Catch: all -> 0x0190, TryCatch #0 {, blocks: (B:32:0x00bb, B:34:0x00d2, B:35:0x00d7, B:37:0x00dc, B:38:0x00e7, B:41:0x0101, B:43:0x010b, B:46:0x0112, B:47:0x0121, B:49:0x012d, B:52:0x014b, B:53:0x0158, B:56:0x0153, B:55:0x015f, B:59:0x0162, B:61:0x016c, B:62:0x0170, B:70:0x017c, B:72:0x017d, B:75:0x0188, B:76:0x018b, B:80:0x011a, B:64:0x0171, B:65:0x0178), top: B:31:0x00bb, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x016c A[Catch: all -> 0x0190, TryCatch #0 {, blocks: (B:32:0x00bb, B:34:0x00d2, B:35:0x00d7, B:37:0x00dc, B:38:0x00e7, B:41:0x0101, B:43:0x010b, B:46:0x0112, B:47:0x0121, B:49:0x012d, B:52:0x014b, B:53:0x0158, B:56:0x0153, B:55:0x015f, B:59:0x0162, B:61:0x016c, B:62:0x0170, B:70:0x017c, B:72:0x017d, B:75:0x0188, B:76:0x018b, B:80:0x011a, B:64:0x0171, B:65:0x0178), top: B:31:0x00bb, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void commitPackageSettings(com.android.server.pm.pkg.AndroidPackage r17, com.android.server.pm.PackageSetting r18, com.android.server.pm.PackageSetting r19, com.android.server.pm.ReconciledPackage r20) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.commitPackageSettings(com.android.server.pm.pkg.AndroidPackage, com.android.server.pm.PackageSetting, com.android.server.pm.PackageSetting, com.android.server.pm.ReconciledPackage):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x02d9 A[Catch: all -> 0x03ed, TRY_ENTER, TryCatch #5 {all -> 0x03ed, blocks: (B:56:0x01c9, B:57:0x01cd, B:109:0x02d9, B:111:0x02eb, B:114:0x02f4, B:116:0x02fb, B:119:0x0303, B:120:0x0306, B:122:0x030c, B:124:0x0316, B:125:0x0321, B:126:0x0335, B:134:0x0343, B:135:0x0344, B:136:0x0359, B:140:0x0364, B:145:0x0381, B:175:0x03ec, B:128:0x0336, B:129:0x033f, B:59:0x01ce, B:61:0x01de, B:65:0x01e8, B:67:0x01ee, B:69:0x01f4, B:70:0x01fc, B:73:0x0201, B:75:0x020b, B:76:0x023d, B:79:0x0242, B:81:0x0248, B:83:0x024e, B:84:0x025d, B:87:0x0262, B:89:0x026c, B:91:0x027a, B:93:0x0285, B:97:0x028b, B:98:0x0294, B:102:0x0299, B:104:0x029f, B:106:0x02cf, B:107:0x02d6, B:165:0x02c6, B:169:0x03dd, B:170:0x03e5, B:138:0x035a, B:139:0x0363), top: B:55:0x01c9, inners: #0, #4, #7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair installExistingPackageAsUser(final java.lang.String r21, final int r22, int r23, int r24, java.util.List r25, android.content.IntentSender r26) {
        /*
            Method dump skipped, instructions count: 1010
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.installExistingPackageAsUser(java.lang.String, int, int, int, java.util.List, android.content.IntentSender):android.util.Pair");
    }

    public /* synthetic */ void lambda$installExistingPackageAsUser$1(String str, int i, IntentSender intentSender) {
        this.mPm.restorePermissionsAndUpdateRolesForNewUserInstall(str, i);
        if (intentSender != null) {
            onInstallComplete(1, this.mContext, intentSender);
        }
    }

    public static void onInstallComplete(int i, Context context, IntentSender intentSender) {
        Intent intent = new Intent();
        intent.putExtra("android.content.pm.extra.STATUS", PackageManager.installStatusToPublicStatus(i));
        try {
            BroadcastOptions makeBasic = BroadcastOptions.makeBasic();
            makeBasic.setPendingIntentBackgroundActivityLaunchAllowed(false);
            intentSender.sendIntent(context, 0, intent, null, null, null, makeBasic.toBundle());
        } catch (IntentSender.SendIntentException unused) {
        }
    }

    public void restoreAndPostInstall(InstallRequest installRequest) {
        int userId = installRequest.getUserId();
        boolean isUpdate = installRequest.isUpdate();
        boolean z = (isUpdate || installRequest.getPkg() == null) ? false : true;
        PackageManagerService packageManagerService = this.mPm;
        if (packageManagerService.mNextInstallToken < 0) {
            packageManagerService.mNextInstallToken = 1;
        }
        int i = packageManagerService.mNextInstallToken;
        packageManagerService.mNextInstallToken = i + 1;
        packageManagerService.mRunningInstalls.put(i, installRequest);
        if (installRequest.getReturnCode() == 1 && z) {
            installRequest.closeFreezer();
            z = performBackupManagerRestore(userId, i, installRequest);
        }
        if (installRequest.getReturnCode() == 1 && !z && isUpdate) {
            z = performRollbackManagerRestore(userId, i, installRequest);
        }
        if (z) {
            return;
        }
        Trace.asyncTraceBegin(262144L, "postInstall", i);
        this.mPm.mHandler.sendMessage(this.mPm.mHandler.obtainMessage(9, i, 0));
    }

    public final boolean performBackupManagerRestore(int i, int i2, InstallRequest installRequest) {
        if (installRequest.getPkg() == null) {
            return false;
        }
        IBackupManager iBackupManager = this.mInjector.getIBackupManager();
        if (iBackupManager != null) {
            if (i == -1) {
                i = 0;
            }
            Trace.asyncTraceBegin(262144L, "restore", i2);
            try {
                if (iBackupManager.isUserReadyForBackup(i)) {
                    iBackupManager.restoreAtInstallForUser(i, installRequest.getPkg().getPackageName(), i2);
                    return true;
                }
                Slog.w("PackageManager", "User " + i + " is not ready. Restore at install didn't take place.");
                return false;
            } catch (RemoteException unused) {
                return true;
            } catch (Exception e) {
                Slog.e("PackageManager", "Exception trying to enqueue restore", e);
                return false;
            }
        }
        Slog.e("PackageManager", "Backup Manager not found!");
        return false;
    }

    public final boolean performRollbackManagerRestore(int i, int i2, InstallRequest installRequest) {
        PackageSetting packageLPr;
        int[] iArr;
        long j;
        int i3;
        if (installRequest.getPkg() == null) {
            return false;
        }
        String packageName = installRequest.getPkg().getPackageName();
        int[] userIds = this.mPm.mUserManager.getUserIds();
        synchronized (this.mPm.mLock) {
            packageLPr = this.mPm.mSettings.getPackageLPr(packageName);
            if (packageLPr != null) {
                i3 = packageLPr.getAppId();
                j = packageLPr.getCeDataInode(i);
                iArr = packageLPr.queryInstalledUsers(userIds, true);
            } else {
                iArr = new int[0];
                j = -1;
                i3 = -1;
            }
        }
        int installFlags = installRequest.getInstallFlags();
        boolean z = ((262144 & installFlags) == 0 && (installFlags & 128) == 0) ? false : true;
        if (packageLPr == null || !z) {
            return false;
        }
        ((RollbackManagerInternal) this.mInjector.getLocalService(RollbackManagerInternal.class)).snapshotAndRestoreUserData(packageName, UserHandle.toUserHandles(iArr), i3, j, packageLPr.getSeInfo(), i2);
        return true;
    }

    public void installPackagesTraced(List list) {
        synchronized (this.mPm.mInstallLock) {
            try {
                Trace.traceBegin(262144L, "installPackages");
                installPackagesLI(list);
            } finally {
                Trace.traceEnd(262144L);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x05a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x054c  */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [long, java.lang.Object, java.lang.String] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void installPackagesLI(java.util.List r32) {
        /*
            Method dump skipped, instructions count: 1515
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.installPackagesLI(java.util.List):void");
    }

    public final boolean checkNoAppStorageIsConsistent(AndroidPackage androidPackage, AndroidPackage androidPackage2) {
        if (androidPackage == null) {
            return true;
        }
        PackageManager.Property property = (PackageManager.Property) androidPackage.getProperties().get("android.internal.PROPERTY_NO_APP_DATA_STORAGE");
        PackageManager.Property property2 = (PackageManager.Property) androidPackage2.getProperties().get("android.internal.PROPERTY_NO_APP_DATA_STORAGE");
        return (property == null || !property.getBoolean()) ? property2 == null || !property2.getBoolean() : property2 != null && property2.getBoolean();
    }

    /* JADX WARN: Code restructure failed: missing block: B:263:0x08f3, code lost:
    
        if (r1 != false) goto L1100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x08f5, code lost:
    
        if (r19 != false) goto L1098;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0901, code lost:
    
        throw new com.android.server.pm.PrepareFailure(-116, "Cannot update a system app with an instant app");
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0902, code lost:
    
        com.android.server.pm.PmHook.installFailLog(r34.mContext, r3, r35.getUser().getIdentifier());
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x0918, code lost:
    
        throw new com.android.server.pm.PrepareFailure(-19, "Cannot install updates to system apps on sdcard");
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x0dae, code lost:
    
        r3 = r8;
        r5 = null;
        r8 = false;
        r16 = null;
        r24 = null;
        r17 = r17;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0921  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x09bd  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0d8d  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0e43  */
    /* JADX WARN: Removed duplicated region for block: B:315:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0a22 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0b86 A[Catch: all -> 0x0b8b, TRY_ENTER, TRY_LEAVE, TryCatch #34 {all -> 0x0b8b, blocks: (B:493:0x0b1b, B:495:0x0b60, B:496:0x0b77, B:501:0x0b30, B:502:0x0b34, B:504:0x0b3e, B:372:0x0b86, B:375:0x0b95, B:380:0x0ba8, B:383:0x0baf, B:384:0x0bd3, B:392:0x0be8, B:394:0x0bef, B:396:0x0bf3, B:398:0x0bfd, B:400:0x0c02, B:401:0x0c27, B:403:0x0c28, B:406:0x0c33, B:407:0x0c5c, B:505:0x0b46, B:506:0x0b5d), top: B:492:0x0b1b }] */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0b95 A[Catch: all -> 0x0b8b, TRY_ENTER, TRY_LEAVE, TryCatch #34 {all -> 0x0b8b, blocks: (B:493:0x0b1b, B:495:0x0b60, B:496:0x0b77, B:501:0x0b30, B:502:0x0b34, B:504:0x0b3e, B:372:0x0b86, B:375:0x0b95, B:380:0x0ba8, B:383:0x0baf, B:384:0x0bd3, B:392:0x0be8, B:394:0x0bef, B:396:0x0bf3, B:398:0x0bfd, B:400:0x0c02, B:401:0x0c27, B:403:0x0c28, B:406:0x0c33, B:407:0x0c5c, B:505:0x0b46, B:506:0x0b5d), top: B:492:0x0b1b }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0ba2 A[Catch: all -> 0x0d66, TRY_LEAVE, TryCatch #3 {all -> 0x0d66, blocks: (B:370:0x0b80, B:373:0x0b8f, B:376:0x0b9c, B:378:0x0ba2, B:385:0x0bd4, B:390:0x0be2, B:408:0x0c5d), top: B:369:0x0b80 }] */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0d38  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0b9a  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0b8d  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x09f0  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x0964  */
    /* JADX WARN: Removed duplicated region for block: B:650:0x03de A[Catch: all -> 0x0e6f, TryCatch #9 {, blocks: (B:643:0x03ab, B:645:0x03bd, B:647:0x03c7, B:650:0x03de, B:654:0x03f9, B:655:0x042a, B:656:0x042b, B:658:0x042f, B:662:0x044c, B:664:0x0454, B:667:0x0465, B:669:0x046b, B:673:0x0474, B:674:0x0494, B:146:0x049f, B:148:0x04a9, B:150:0x04af, B:152:0x04bb, B:154:0x04c1, B:155:0x04d6, B:157:0x04dc, B:159:0x04e4, B:161:0x04f2, B:163:0x050a, B:167:0x0586, B:168:0x059f, B:170:0x05aa, B:172:0x05c5, B:174:0x05cb, B:176:0x05cf, B:180:0x05d9, B:185:0x05e0, B:186:0x062d, B:179:0x062e, B:190:0x0636, B:192:0x0646, B:195:0x0666, B:197:0x06a1, B:199:0x06ab, B:201:0x06b3, B:203:0x06e3, B:204:0x071b, B:205:0x071c, B:207:0x0728, B:209:0x0731, B:211:0x0737, B:212:0x0769, B:214:0x076f, B:218:0x0778, B:224:0x0798, B:226:0x07a5, B:228:0x07af, B:234:0x07b7, B:235:0x0815, B:238:0x0816, B:239:0x0867, B:220:0x0792, B:232:0x0868, B:248:0x0875, B:614:0x0514, B:615:0x0534, B:618:0x0537, B:620:0x0562, B:621:0x0566, B:630:0x0573, B:634:0x0576, B:635:0x0581, B:679:0x03cf), top: B:642:0x03ab, inners: #20 }] */
    /* JADX WARN: Removed duplicated region for block: B:678:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:682:0x0e73  */
    /* JADX WARN: Type inference failed for: r17v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r34v0, types: [com.android.server.pm.InstallPackageHelper] */
    /* JADX WARN: Type inference failed for: r5v24, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v57 */
    /* JADX WARN: Type inference failed for: r5v58 */
    /* JADX WARN: Type inference failed for: r5v59 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void preparePackageLI(com.android.server.pm.InstallRequest r35) {
        /*
            Method dump skipped, instructions count: 3812
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.preparePackageLI(com.android.server.pm.InstallRequest):void");
    }

    public /* synthetic */ UserInfo lambda$preparePackageLI$2(Integer num) {
        return this.mPm.mUserManager.getUserInfo(num.intValue());
    }

    public final void doRenameLI(InstallRequest installRequest, ParsedPackage parsedPackage) {
        int returnCode = installRequest.getReturnCode();
        String returnMsg = installRequest.getReturnMsg();
        if (installRequest.isInstallMove()) {
            if (returnCode == 1) {
                return;
            }
            this.mRemovePackageHelper.cleanUpForMoveInstall(installRequest.getMoveToUuid(), installRequest.getMovePackageName(), installRequest.getMoveFromCodePath());
            throw new PrepareFailure(returnCode, returnMsg);
        }
        if (returnCode != 1) {
            this.mRemovePackageHelper.removeCodePath(installRequest.getCodeFile());
            throw new PrepareFailure(returnCode, returnMsg);
        }
        File resolveTargetDir = resolveTargetDir(installRequest.getInstallFlags(), installRequest.getCodeFile());
        File codeFile = installRequest.getCodeFile();
        File nextCodePath = PackageManagerServiceUtils.getNextCodePath(resolveTargetDir, parsedPackage.getPackageName());
        boolean z = this.mPm.mIncrementalManager != null && IncrementalManager.isIncrementalPath(codeFile.getAbsolutePath());
        try {
            PackageManagerServiceUtils.makeDirRecursive(nextCodePath.getParentFile(), 505);
            if (z) {
                this.mPm.mIncrementalManager.linkCodePath(codeFile, nextCodePath);
            } else {
                Os.rename(codeFile.getAbsolutePath(), nextCodePath.getAbsolutePath());
            }
            if (!z && !SELinux.restoreconRecursive(nextCodePath)) {
                Slog.w("PackageManager", "Failed to restorecon");
                throw new PrepareFailure(-20, "Failed to restorecon");
            }
            installRequest.setCodeFile(nextCodePath);
            try {
                parsedPackage.setPath(nextCodePath.getCanonicalPath());
                parsedPackage.setBaseApkPath(FileUtils.rewriteAfterRename(codeFile, nextCodePath, parsedPackage.getBaseApkPath()));
                parsedPackage.setSplitCodePaths(FileUtils.rewriteAfterRename(codeFile, nextCodePath, parsedPackage.getSplitCodePaths()));
            } catch (IOException e) {
                Slog.e("PackageManager", "Failed to get path: " + nextCodePath, e);
                throw new PrepareFailure(-20, "Failed to get path: " + nextCodePath);
            }
        } catch (ErrnoException | IOException e2) {
            Slog.w("PackageManager", "Failed to rename", e2);
            throw new PrepareFailure(-4, "Failed to rename");
        }
    }

    public final File resolveTargetDir(int i, File file) {
        if ((2097152 & i) != 0) {
            return Environment.getDataAppDirectory(null);
        }
        return file.getParentFile();
    }

    public static boolean cannotInstallWithBadPermissionGroups(ParsedPackage parsedPackage) {
        return parsedPackage.getTargetSdkVersion() >= 31;
    }

    public final boolean doesSignatureMatchForPermissions(String str, ParsedPackage parsedPackage, int i) {
        PackageSetting packageLPr;
        KeySetManagerService keySetManagerService;
        SharedUserSetting sharedUserSettingLPr;
        synchronized (this.mPm.mLock) {
            packageLPr = this.mPm.mSettings.getPackageLPr(str);
            keySetManagerService = this.mPm.mSettings.getKeySetManagerService();
            sharedUserSettingLPr = this.mPm.mSettings.getSharedUserSettingLPr(packageLPr);
        }
        SigningDetails signingDetails = packageLPr == null ? SigningDetails.UNKNOWN : packageLPr.getSigningDetails();
        if (str.equals(parsedPackage.getPackageName()) && keySetManagerService.shouldCheckUpgradeKeySetLocked(packageLPr, sharedUserSettingLPr, i)) {
            return keySetManagerService.checkUpgradeKeySetLocked(packageLPr, parsedPackage);
        }
        if (signingDetails.checkCapability(parsedPackage.getSigningDetails(), 4)) {
            return true;
        }
        if (!parsedPackage.getSigningDetails().checkCapability(signingDetails, 4)) {
            return false;
        }
        synchronized (this.mPm.mLock) {
            packageLPr.setSigningDetails(parsedPackage.getSigningDetails());
        }
        return true;
    }

    public final void setUpFsVerity(AndroidPackage androidPackage) {
        if (PackageManagerServiceUtils.isApkVerityEnabled()) {
            if (!IncrementalManager.isIncrementalPath(androidPackage.getPath()) || IncrementalManager.getVersion() >= 2) {
                ArrayMap arrayMap = new ArrayMap();
                arrayMap.put(androidPackage.getBaseApkPath(), VerityUtils.getFsveritySignatureFilePath(androidPackage.getBaseApkPath()));
                String buildDexMetadataPathForApk = DexMetadataHelper.buildDexMetadataPathForApk(androidPackage.getBaseApkPath());
                if (new File(buildDexMetadataPathForApk).exists()) {
                    arrayMap.put(buildDexMetadataPathForApk, VerityUtils.getFsveritySignatureFilePath(buildDexMetadataPathForApk));
                }
                for (String str : androidPackage.getSplitCodePaths()) {
                    arrayMap.put(str, VerityUtils.getFsveritySignatureFilePath(str));
                    String buildDexMetadataPathForApk2 = DexMetadataHelper.buildDexMetadataPathForApk(str);
                    if (new File(buildDexMetadataPathForApk2).exists()) {
                        arrayMap.put(buildDexMetadataPathForApk2, VerityUtils.getFsveritySignatureFilePath(buildDexMetadataPathForApk2));
                    }
                }
                FileIntegrityService service = FileIntegrityService.getService();
                for (Map.Entry entry : arrayMap.entrySet()) {
                    try {
                        String str2 = (String) entry.getKey();
                        if (!VerityUtils.hasFsverity(str2)) {
                            String str3 = (String) entry.getValue();
                            if (new File(str3).exists()) {
                                VerityUtils.setUpFsverity(str2);
                                if (!service.verifyPkcs7DetachedSignature(str3, str2)) {
                                    throw new PrepareFailure(-118, "fs-verity signature does not verify against a known key");
                                }
                            } else {
                                continue;
                            }
                        }
                    } catch (IOException e) {
                        throw new PrepareFailure(-118, "Failed to enable fs-verity: " + e);
                    }
                }
            }
        }
    }

    public final PackageFreezer freezePackageForInstall(String str, int i, int i2, String str2, int i3) {
        if ((i2 & IInstalld.FLAG_USE_QUOTA) != 0) {
            return new PackageFreezer(this.mPm);
        }
        return this.mPm.freezePackage(str, i, str2, i3);
    }

    public static void updateDigest(MessageDigest messageDigest, File file) {
        DigestInputStream digestInputStream = new DigestInputStream(new FileInputStream(file), messageDigest);
        do {
            try {
            } catch (Throwable th) {
                try {
                    digestInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } while (digestInputStream.read() != -1);
        digestInputStream.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013a  */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.android.server.pm.PackageSetting] */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v5, types: [java.util.Set] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void commitPackagesLocked(java.util.List r17, int[] r18) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.commitPackagesLocked(java.util.List, int[]):void");
    }

    public /* synthetic */ void lambda$commitPackagesLocked$3(ArrayList arrayList, int[] iArr) {
        BroadcastHelper broadcastHelper = this.mBroadcastHelper;
        PackageManagerService packageManagerService = this.mPm;
        Objects.requireNonNull(packageManagerService);
        broadcastHelper.sendResourcesChangedBroadcast(new AsecInstallHelper$$ExternalSyntheticLambda0(packageManagerService), true, true, (String[]) arrayList.toArray(new String[arrayList.size()]), iArr);
    }

    public final boolean disableSystemPackageLPw(AndroidPackage androidPackage) {
        return this.mPm.mSettings.disableSystemPackageLPw(androidPackage.getPackageName(), true);
    }

    public final void updateSettingsLI(AndroidPackage androidPackage, int[] iArr, InstallRequest installRequest) {
        updateSettingsInternalLI(androidPackage, iArr, installRequest);
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x01aa A[Catch: all -> 0x034f, TryCatch #1 {, blocks: (B:4:0x0030, B:6:0x003e, B:9:0x0047, B:11:0x004d, B:13:0x0051, B:17:0x005b, B:18:0x0057, B:23:0x0063, B:25:0x0067, B:28:0x0075, B:30:0x0079, B:32:0x0081, B:34:0x008f, B:35:0x009b, B:37:0x00a1, B:39:0x00b5, B:43:0x00dd, B:44:0x00c3, B:48:0x00d2, B:55:0x00ee, B:59:0x00f5, B:61:0x00fb, B:64:0x012d, B:66:0x0133, B:67:0x01b1, B:69:0x01c7, B:71:0x01cf, B:73:0x01dc, B:75:0x01fd, B:77:0x0203, B:80:0x020c, B:82:0x0218, B:84:0x0232, B:86:0x023d, B:88:0x0241, B:90:0x024d, B:92:0x0253, B:94:0x0256, B:98:0x0266, B:100:0x0270, B:102:0x0274, B:103:0x0282, B:105:0x0286, B:107:0x028e, B:109:0x0294, B:113:0x0297, B:117:0x02b1, B:118:0x02bb, B:120:0x02c1, B:122:0x02d2, B:123:0x02df, B:127:0x02ed, B:129:0x02f8, B:130:0x02fb, B:132:0x0318, B:134:0x031f, B:135:0x02f2, B:137:0x02d6, B:139:0x02dc, B:141:0x0259, B:143:0x0263, B:146:0x0114, B:149:0x013b, B:151:0x013f, B:153:0x0147, B:155:0x0155, B:157:0x0161, B:159:0x01ae, B:160:0x0178, B:162:0x0187, B:169:0x019b, B:171:0x01a0, B:173:0x01aa, B:178:0x0326, B:179:0x034a), top: B:3:0x0030, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01ae A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateSettingsInternalLI(com.android.server.pm.pkg.AndroidPackage r20, int[] r21, com.android.server.pm.InstallRequest r22) {
        /*
            Method dump skipped, instructions count: 850
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.updateSettingsInternalLI(com.android.server.pm.pkg.AndroidPackage, int[], com.android.server.pm.InstallRequest):void");
    }

    public final void enableRestrictedSettings(String str, int i) {
        AppOpsManager appOpsManager = (AppOpsManager) this.mPm.mContext.getSystemService(AppOpsManager.class);
        for (int i2 : this.mPm.mUserManager.getUserIds()) {
            appOpsManager.setMode(119, UserHandle.getUid(i2, i), str, 2);
        }
    }

    public static boolean apkHasNumOfDexFiles(String str, int i) {
        StrictJarFile strictJarFile = null;
        try {
            try {
                StrictJarFile strictJarFile2 = new StrictJarFile(str, false, false);
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("classes");
                    sb.append(i > 1 ? String.valueOf(i) : "");
                    sb.append(".dex");
                    boolean z = strictJarFile2.findEntry(sb.toString()) != null;
                    try {
                        strictJarFile2.close();
                    } catch (IOException unused) {
                    }
                    return z;
                } catch (IOException e) {
                    e = e;
                    strictJarFile = strictJarFile2;
                    Slog.w("PackageManager", "Cannot read " + str + " for counting dex files, error: " + e);
                    if (strictJarFile != null) {
                        try {
                            strictJarFile.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return true;
                } catch (Throwable th) {
                    th = th;
                    strictJarFile = strictJarFile2;
                    if (strictJarFile != null) {
                        try {
                            strictJarFile.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void spegClearPackage(int i, String str) {
        try {
            ((ActivityTaskManagerInternal) this.mInjector.getLocalService(ActivityTaskManagerInternal.class)).removeRecentTasksByPackageName(str, 0);
        } catch (Exception e) {
            Slog.e("SPEG", "Can't remove recent task for " + str + ", error: " + e);
        }
        if (!this.mPm.clearPackageAfterSpeg(str, 0)) {
            Slog.e("SPEG", "Can't clear app data for " + str);
        }
        try {
            ((UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class)).removeUriPermissionsForPackage(str, i, true, false);
        } catch (Exception e2) {
            Slog.e("SPEG", "Can't restore default permissions for " + str + ", error: " + e2);
        }
        try {
            ((JobSchedulerInternal) LocalServices.getService(JobSchedulerInternal.class)).cancelJobsForUid(i, true, 14, 8, "clear data");
        } catch (Exception e3) {
            Slog.e("SPEG", "Can't clear scheduled jobs for " + str + ", error: " + e3);
        }
        try {
            ((AlarmManagerInternal) LocalServices.getService(AlarmManagerInternal.class)).removeAlarmsForUid(i);
        } catch (Exception e4) {
            Slog.e("SPEG", "Can't clear pending alarms for " + str + ", error: " + e4);
        }
    }

    public final boolean hasUsesPermissions(AndroidPackage androidPackage) {
        List usesPermissions = androidPackage.getUsesPermissions();
        for (int i = 0; i < usesPermissions.size(); i++) {
            if (((ParsedUsesPermission) usesPermissions.get(i)).getName().startsWith("com.samsung.android.knox.permission")) {
                return true;
            }
        }
        return false;
    }

    public final boolean checkSpegContinualLaunchesLimitViolation() {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.mBlockContinualSpeg) {
            int minutes = (int) TimeUnit.MILLISECONDS.toMinutes(currentTimeMillis - this.mSpegBlockStartTime);
            if (minutes < 40) {
                Slog.d("SPEG", "Disable SPEG due to continuous installation, blockedDuration: " + minutes + " minutes");
                return true;
            }
            this.mBlockContinualSpeg = false;
            this.mSpegLaunchesCount = 0;
            this.mSpegBlockStartTime = -1L;
        }
        int i = this.mSpegLaunchesCount + 1;
        if (i >= 5) {
            if (((int) TimeUnit.MILLISECONDS.toMinutes(currentTimeMillis - this.mSpegFirstLaunchTime)) < 10) {
                this.mBlockContinualSpeg = true;
                this.mSpegBlockStartTime = currentTimeMillis;
            } else {
                this.mSpegLaunchesCount = 0;
            }
        } else if (i > 1 && ((int) TimeUnit.MILLISECONDS.toMinutes(currentTimeMillis - this.mSpegPrevLaunchTime)) > 3) {
            this.mSpegLaunchesCount = 0;
        }
        if (this.mSpegLaunchesCount == 0) {
            this.mSpegFirstLaunchTime = currentTimeMillis;
            Slog.d("SPEG", "Continual launches limit is reset");
        }
        this.mSpegPrevLaunchTime = currentTimeMillis;
        this.mSpegLaunchesCount++;
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x01da, code lost:
    
        r19 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x01f6, code lost:
    
        throw new com.android.server.pm.Installer.InstallerException("Failed to wait state on for " + r5.getName());
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x01f7, code lost:
    
        r19 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x01f9, code lost:
    
        android.util.Slog.i("SPEG", r5.getName() + " state is on at iteration " + r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0224, code lost:
    
        r14 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x023a, code lost:
    
        r3 = r3.startActivity((android.app.IApplicationThread) null, "com.samsung.speg", (android.content.Intent) r6, (java.lang.String) r7, (android.os.IBinder) null, (java.lang.String) null, 0, 0, (android.app.ProfilerInfo) null, r4.toBundle());
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0242, code lost:
    
        if (android.app.ActivityManager.isStartResultSuccessful(r3) == false) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0244, code lost:
    
        java.lang.Thread.sleep(2000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x024f, code lost:
    
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0251, code lost:
    
        r3 = r26.mSpeg.getPidOf(r0.getProcessName(), r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0256, code lost:
    
        if (r3 == (-1)) goto L381;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0258, code lost:
    
        android.util.Slog.i("SPEG", "Send signal to dump profiles in app, pid=" + r3);
        android.os.Process.sendSignal(r3, 10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0279, code lost:
    
        r4 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x027b, code lost:
    
        r3 = r26.mSpeg.storePrimaryProf(r0.getBaseApkPath(), r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x027f, code lost:
    
        r15.setFreezer(r26.mPm.freezePackage(r14, 0, "SPEG", 13));
        r19.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02a0, code lost:
    
        if (((android.hardware.display.DisplayManager) r26.mContext.getSystemService(android.hardware.display.DisplayManager.class)).getDisplay(r10) == null) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x02a2, code lost:
    
        android.util.Slog.e("SPEG", "Can't release " + r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02ba, code lost:
    
        if (r16 == false) goto L364;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02bc, code lost:
    
        android.util.Slog.i("SPEG", "Granting WAKE_LOCK to pkg " + ((java.lang.String) r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x02d2, code lost:
    
        r26.mPm.mPermissionManager.grantInstallPermission(r14, "android.permission.WAKE_LOCK");
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x02dc, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x02dd, code lost:
    
        android.util.Slog.w("SPEG", "Cannot grant WAKE_LOCK for pkg " + ((java.lang.String) r14) + ": " + r0.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x036f, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0370, code lost:
    
        r8 = r19;
        r9 = r14;
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x039a, code lost:
    
        r6 = r10;
        r4 = r4;
        r5 = r5;
        r8 = r8;
        r9 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x03e6, code lost:
    
        r7 = 13;
        r10 = true;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0369, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x036a, code lost:
    
        r8 = r19;
        r9 = r14;
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0390, code lost:
    
        r6 = r10;
        r4 = r4;
        r5 = r5;
        r8 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x03d5, code lost:
    
        r7 = 13;
        r10 = 1;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0388, code lost:
    
        throw new com.android.server.pm.Installer.InstallerException("getPidOf failed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0393, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0394, code lost:
    
        r8 = r19;
        r9 = r14;
        r4 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0389, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x038a, code lost:
    
        r8 = r19;
        r9 = r14;
        r4 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x03c9, code lost:
    
        throw new com.android.server.pm.Installer.InstallerException("Failed to start " + ((java.lang.String) r14) + ", res=" + r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x03db, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x03dc, code lost:
    
        r8 = r19;
        r9 = r14;
        r4 = r18;
        r6 = r10;
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x03ca, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x03cb, code lost:
    
        r8 = r19;
        r9 = r14;
        r4 = r18;
        r6 = r10;
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x03ec, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x03ed, code lost:
    
        r6 = r10;
        r5 = r12;
        r9 = r14;
        r4 = r18;
        r8 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0461, code lost:
    
        r7 = '\r';
        r10 = 1;
        r4 = r4;
        r5 = r5;
        r6 = r6;
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x05cf  */
    /* JADX WARN: Type inference failed for: r0v26, types: [com.android.server.pm.PackageManagerService$IPackageManagerImpl] */
    /* JADX WARN: Type inference failed for: r0v42, types: [com.android.server.pm.PackageManagerService] */
    /* JADX WARN: Type inference failed for: r0v46, types: [android.hardware.display.DisplayManager] */
    /* JADX WARN: Type inference failed for: r0v48, types: [com.android.server.SpegService] */
    /* JADX WARN: Type inference failed for: r0v55, types: [com.android.server.SpegService] */
    /* JADX WARN: Type inference failed for: r10v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.hardware.display.VirtualDisplay] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r26v0, types: [com.android.server.pm.InstallPackageHelper] */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v15, types: [android.app.ActivityOptions] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v72 */
    /* JADX WARN: Type inference failed for: r4v77 */
    /* JADX WARN: Type inference failed for: r4v79 */
    /* JADX WARN: Type inference failed for: r4v81 */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [int] */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v26, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v50, types: [com.android.server.pm.dex.ArtManagerService] */
    /* JADX WARN: Type inference failed for: r5v55 */
    /* JADX WARN: Type inference failed for: r5v59 */
    /* JADX WARN: Type inference failed for: r5v60 */
    /* JADX WARN: Type inference failed for: r5v62 */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15, types: [int] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v61 */
    /* JADX WARN: Type inference failed for: r6v66 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11, types: [int] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v39 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.lang.Object, android.hardware.display.VirtualDisplay] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v45 */
    /* JADX WARN: Type inference failed for: r8v55 */
    /* JADX WARN: Type inference failed for: r8v59 */
    /* JADX WARN: Type inference failed for: r8v60 */
    /* JADX WARN: Type inference failed for: r8v61 */
    /* JADX WARN: Type inference failed for: r8v63 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v45, types: [int[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean spegLaunchApp(com.android.server.pm.ReconciledPackage r27) {
        /*
            Method dump skipped, instructions count: 1710
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.spegLaunchApp(com.android.server.pm.ReconciledPackage):boolean");
    }

    public final boolean isDexoptLimited() {
        return SystemProperties.getBoolean("sys.dexopt.ctrl", false);
    }

    public final boolean isSpegSkipped(ReconciledPackage reconciledPackage, boolean z) {
        if (this.mSpeg == null) {
            Slog.i("SPEG", "Feature is disabled due to service is not started");
            return true;
        }
        InstallRequest installRequest = reconciledPackage.mInstallRequest;
        if (installRequest.isInstallReplace()) {
            Slog.d("SPEG", "Feature is disabled for existing app");
            return true;
        }
        if (PackageManagerService.FORCE_SPEG) {
            return false;
        }
        if (z) {
            Slog.i("SPEG", "Feature is disabled due to dexopt skipped");
            return true;
        }
        if (isDexoptLimited()) {
            Slog.i("SPEG", "Feature is disabled by high temperature");
            return true;
        }
        AndroidPackageInternal pkg = installRequest.getScannedPackageSetting().getPkg();
        Bundle metaData = pkg.getMetaData();
        if (metaData != null && metaData.getBoolean("com.samsung.android.speg.disabled", false)) {
            Slog.i("SPEG", "Feature is disabled in app manifest");
            return true;
        }
        String packageName = pkg.getPackageName();
        if (packageName.equals(this.mSpeg.mPrevInstalledPkg)) {
            Slog.i("SPEG", "Feature is disabled for reinstalled apps");
            this.mSpeg.mPrevInstalledPkg = null;
            return true;
        }
        PackageSetting scannedPackageSetting = installRequest.getScannedPackageSetting();
        if (scannedPackageSetting.isSystem() || scannedPackageSetting.isSystemExt() || scannedPackageSetting.isVendor() || scannedPackageSetting.isOem() || scannedPackageSetting.isOdm() || scannedPackageSetting.isPrivileged() || pkg.isSignedWithPlatformKey()) {
            Slog.i("SPEG", "Feature is disabled for system apps");
            return true;
        }
        if (this.mSpeg.isPackageBlockListed(packageName)) {
            Slog.i("SPEG", "Feature is disabled for package " + packageName);
            return true;
        }
        if (this.mSpeg.hasPrivilegedPermissions(pkg)) {
            Slog.i("SPEG", "Feature is disabled for privileged apps");
            return true;
        }
        if (hasUsesPermissions(pkg)) {
            Slog.i("SPEG", "Feature is disabled for apps with specific uses-permission");
            return true;
        }
        if (this.mPm.mPermissionManager.checkUidPermission(pkg.getUid(), "android.permission.SET_WALLPAPER") == 0) {
            Slog.d("SPEG", "Feature is disabled due to SET_WALLPAPER permission");
            return true;
        }
        String baseApkPath = pkg.getBaseApkPath();
        if (apkHasNumOfDexFiles(baseApkPath, 5)) {
            Slog.i("SPEG", "Feature is disabled for " + packageName + " as it has more than 4 dex files");
            return true;
        }
        if ("com.sec.android.easyMover".equals(installRequest.getInstallerPackageName())) {
            Slog.i("SPEG", "Feature is disabled for smart switch installer");
            return true;
        }
        if (this.mSpeg.isSmartSwitchBlockSpeg()) {
            Slog.i("SPEG", "Feature is disabled until SmartSwitch is finished");
            return true;
        }
        if (!this.mSpeg.isSetupWizardFinished()) {
            Slog.i("SPEG", "Feature is disabled until setup wizard is finished");
            return true;
        }
        if (this.mPm.isKidsHome()) {
            Slog.d("SPEG", "Feature is disabled for " + packageName + " due to KidsHome");
            return true;
        }
        if (pkg.getSharedUserId() != null) {
            Slog.d("PackageManager", "Feature is disabled for shared package");
            return true;
        }
        if (!checkSafeToCreateProfile("SPEG", baseApkPath)) {
            return true;
        }
        if (!checkSpegContinualLaunchesLimitViolation()) {
            return false;
        }
        Slog.i("SPEG", "Feature is disabled because of continual launches limit");
        return true;
    }

    public final boolean checkSafeToCreateProfile(String str, String str2) {
        try {
            String buildDexMetadataPathForApk = DexMetadataHelper.buildDexMetadataPathForApk(str2);
            if (new File(buildDexMetadataPathForApk).exists()) {
                if (!CAN_OVERRIDE_PROFILE) {
                    Slog.d(str, "Feature is disabled because base.dm present");
                    return false;
                }
                try {
                    ZipFile zipFile = new ZipFile(buildDexMetadataPathForApk);
                    try {
                        if (zipFile.getEntry("primary.prof") != null) {
                            Slog.d(str, "Feature is disabled because base.dm has profile");
                            zipFile.close();
                            return false;
                        }
                        Slog.d(str, "No primary.prof in base.dm");
                        zipFile.close();
                        return true;
                    } catch (Throwable th) {
                        try {
                            zipFile.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    Slog.e(str, "Feature is disabled because of exception: " + e.getMessage());
                    return false;
                }
            }
            if (!CAN_OVERRIDE_PROFILE) {
                return true;
            }
            if (!new File(str2 + ".prof").exists()) {
                return true;
            }
            Slog.d(str, "Feature is disabled because prebuilt profile already present");
            return false;
        } catch (IllegalStateException e2) {
            Slog.e(str, "Feature is disabled because of exception: " + e2.getMessage());
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0329 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0338 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x027e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0186 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x025c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void executePostCommitStepsLIF(java.util.List r24) {
        /*
            Method dump skipped, instructions count: 832
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.executePostCommitStepsLIF(java.util.List):void");
    }

    public Pair verifyReplacingVersionCode(PackageInfoLite packageInfoLite, long j, int i) {
        if (packageInfoLite.verifiers == null) {
            return Pair.create(-22, "Package verifiers are not set");
        }
        if ((131072 & i) != 0) {
            return verifyReplacingVersionCodeForApex(packageInfoLite, j, i);
        }
        String str = packageInfoLite.packageName;
        synchronized (this.mPm.mLock) {
            AndroidPackage androidPackage = (AndroidPackage) this.mPm.mPackages.get(str);
            PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(str);
            if (androidPackage == null && packageLPr != null) {
                androidPackage = packageLPr.getPkg();
            }
            if (j != -1) {
                if (androidPackage == null) {
                    String str2 = "Required installed version code was " + j + " but package is not installed";
                    Slog.w("PackageManager", str2);
                    return Pair.create(-121, str2);
                }
                if (androidPackage.getLongVersionCode() != j) {
                    String str3 = "Required installed version code was " + j + " but actual installed version is " + androidPackage.getLongVersionCode();
                    Slog.w("PackageManager", str3);
                    return Pair.create(-121, str3);
                }
            }
            if (androidPackage != null && !androidPackage.isSdkLibrary()) {
                if (!PackageManagerServiceUtils.isDowngradePermitted(i, androidPackage.isDebuggable())) {
                    try {
                        PackageManagerServiceUtils.checkDowngrade(androidPackage, packageInfoLite);
                    } catch (PackageManagerException e) {
                        String str4 = "Downgrade detected: " + e.getMessage();
                        Slog.w("PackageManager", str4);
                        return Pair.create(-25, str4);
                    }
                } else if (packageLPr.isSystem()) {
                    PackageSetting disabledSystemPkgLPr = this.mPm.mSettings.getDisabledSystemPkgLPr(packageLPr);
                    if (disabledSystemPkgLPr != null) {
                        androidPackage = disabledSystemPkgLPr.getPkg();
                    }
                    if (!Build.IS_DEBUGGABLE && !androidPackage.isDebuggable()) {
                        try {
                            PackageManagerServiceUtils.checkDowngrade(androidPackage, packageInfoLite);
                        } catch (PackageManagerException e2) {
                            String str5 = "System app: " + str + " cannot be downgraded to older than its preloaded version on the system image. " + e2.getMessage();
                            Slog.w("PackageManager", str5);
                            return Pair.create(-25, str5);
                        }
                    }
                }
            }
            return Pair.create(1, null);
        }
    }

    public final Pair verifyReplacingVersionCodeForApex(PackageInfoLite packageInfoLite, long j, int i) {
        String str = packageInfoLite.packageName;
        PackageInfo packageInfo = this.mPm.snapshotComputer().getPackageInfo(str, 1073741824L, 0);
        if (packageInfo == null) {
            String str2 = "Attempting to install new APEX package " + str;
            Slog.w("PackageManager", str2);
            return Pair.create(-23, str2);
        }
        long longVersionCode = packageInfo.getLongVersionCode();
        if (j != -1 && longVersionCode != j) {
            String str3 = "Installed version of APEX package " + str + " does not match required. Active version: " + longVersionCode + " required: " + j;
            Slog.w("PackageManager", str3);
            return Pair.create(-121, str3);
        }
        boolean z = (packageInfo.applicationInfo.flags & 2) != 0;
        long longVersionCode2 = packageInfoLite.getLongVersionCode();
        if (!PackageManagerServiceUtils.isDowngradePermitted(i, z) && longVersionCode2 < longVersionCode) {
            String str4 = "Downgrade of APEX package " + str + " is not allowed. Active version: " + longVersionCode + " attempted: " + longVersionCode2;
            Slog.w("PackageManager", str4);
            return Pair.create(-25, str4);
        }
        return Pair.create(1, null);
    }

    public int getUidForVerifier(VerifierInfo verifierInfo) {
        synchronized (this.mPm.mLock) {
            AndroidPackage androidPackage = (AndroidPackage) this.mPm.mPackages.get(verifierInfo.packageName);
            if (androidPackage == null) {
                return -1;
            }
            if (androidPackage.getSigningDetails().getSignatures().length != 1) {
                Slog.i("PackageManager", "Verifier package " + verifierInfo.packageName + " has more than one signature; ignoring");
                return -1;
            }
            try {
                if (!Arrays.equals(verifierInfo.publicKey.getEncoded(), androidPackage.getSigningDetails().getSignatures()[0].getPublicKey().getEncoded())) {
                    Slog.i("PackageManager", "Verifier package " + verifierInfo.packageName + " does not have the expected public key; ignoring");
                    return -1;
                }
                return androidPackage.getUid();
            } catch (CertificateException unused) {
                return -1;
            }
        }
    }

    public void sendPendingBroadcasts() {
        ArrayList arrayList;
        synchronized (this.mPm.mLock) {
            SparseArray copiedMap = this.mPm.mPendingBroadcasts.copiedMap();
            int size = copiedMap.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += ((ArrayMap) copiedMap.valueAt(i2)).size();
            }
            if (i == 0) {
                return;
            }
            String[] strArr = new String[i];
            ArrayList[] arrayListArr = new ArrayList[i];
            int[] iArr = new int[i];
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = copiedMap.keyAt(i4);
                ArrayMap arrayMap = (ArrayMap) copiedMap.valueAt(i4);
                int size2 = CollectionUtils.size(arrayMap);
                for (int i5 = 0; i5 < size2; i5++) {
                    strArr[i3] = (String) arrayMap.keyAt(i5);
                    arrayListArr[i3] = (ArrayList) arrayMap.valueAt(i5);
                    PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(strArr[i3]);
                    iArr[i3] = packageLPr != null ? UserHandle.getUid(keyAt, packageLPr.getAppId()) : -1;
                    i3++;
                }
            }
            this.mPm.mPendingBroadcasts.clear();
            Computer snapshotComputer = this.mPm.snapshotComputer();
            for (int i6 = 0; i6 < i3; i6++) {
                if (PMRune.PM_WA_WORK_COMP_CHANGED && (arrayList = arrayListArr[i6]) != null && arrayList.size() == 1 && arrayListArr[i6].contains("androidx.work.impl.background.systemalarm.RescheduleReceiver")) {
                    Slog.d("PackageManager", "Don't send PACKAGE_CHANGED for " + strArr[i6] + " by WorkManager");
                } else {
                    this.mPm.sendPackageChangedBroadcast(snapshotComputer, strArr[i6], true, arrayListArr[i6], iArr[i6], null);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x053c  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0549  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0545 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0207  */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.android.server.pm.PackageManagerService] */
    /* JADX WARN: Type inference failed for: r0v16, types: [com.android.server.pm.AsecInstallHelper] */
    /* JADX WARN: Type inference failed for: r11v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v28, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v38, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [com.android.server.pm.InstallRequest] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18, types: [int] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.android.server.pm.InstallRequest] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r8v15, types: [com.android.server.pm.PackageManagerService] */
    /* JADX WARN: Type inference failed for: r9v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v5, types: [com.android.server.pm.PackageManagerService] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handlePackagePostInstall(com.android.server.pm.InstallRequest r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 1524
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.handlePackagePostInstall(com.android.server.pm.InstallRequest, boolean):void");
    }

    public final int getUnknownSourcesSettings() {
        return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "install_non_market_apps", -1, 0);
    }

    public void installSystemStubPackages(List list, int i) {
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            String str = (String) list.get(size);
            if (this.mPm.mSettings.isDisabledSystemPackageLPr(str)) {
                list.remove(size);
            } else {
                AndroidPackage androidPackage = (AndroidPackage) this.mPm.mPackages.get(str);
                if (androidPackage == null) {
                    list.remove(size);
                } else {
                    PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(str);
                    if (packageLPr != null && packageLPr.getEnabled(0) == 3) {
                        list.remove(size);
                    } else {
                        try {
                            installStubPackageLI(androidPackage, 0, i);
                            packageLPr.setEnabled(0, 0, "android");
                            list.remove(size);
                        } catch (PackageManagerException e) {
                            Slog.e("PackageManager", "Failed to parse uncompressed system package: " + e.getMessage());
                        }
                    }
                }
            }
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2 += -1) {
            String str2 = (String) list.get(size2);
            this.mPm.mSettings.getPackageLPr(str2).setEnabled(2, 0, "android");
            PackageManagerServiceUtils.logCriticalInfo(6, "Stub disabled; pkg: " + str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006c A[Catch: all -> 0x009a, PackageManagerException -> 0x009f, TRY_ENTER, TRY_LEAVE, TryCatch #12 {PackageManagerException -> 0x009f, blocks: (B:20:0x006c, B:47:0x0099, B:46:0x0096), top: B:7:0x0026 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean enableCompressedPackage(com.android.server.pm.pkg.AndroidPackage r18, com.android.server.pm.PackageSetting r19) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.enableCompressedPackage(com.android.server.pm.pkg.AndroidPackage, com.android.server.pm.PackageSetting):boolean");
    }

    public final AndroidPackage installStubPackageLI(AndroidPackage androidPackage, int i, int i2) {
        if (PackageManagerService.DEBUG_COMPRESSION) {
            Slog.i("PackageManager", "Uncompressing system stub; pkg: " + androidPackage.getPackageName());
        }
        File decompressPackage = decompressPackage(androidPackage.getPackageName(), androidPackage.getPath());
        if (decompressPackage == null) {
            throw PackageManagerException.ofInternalError("Unable to decompress stub at " + androidPackage.getPath(), -11);
        }
        synchronized (this.mPm.mLock) {
            this.mPm.mSettings.disableSystemPackageLPw(androidPackage.getPackageName(), true);
        }
        RemovePackageHelper removePackageHelper = new RemovePackageHelper(this.mPm);
        removePackageHelper.removePackage(androidPackage, true);
        try {
            return initPackageTracedLI(decompressPackage, i, i2);
        } catch (PackageManagerException e) {
            Slog.w("PackageManager", "Failed to install compressed system package:" + androidPackage.getPackageName(), e);
            removePackageHelper.removeCodePath(decompressPackage);
            throw e;
        }
    }

    public final File decompressPackage(String str, String str2) {
        if (!PackageManagerServiceUtils.compressedFileExists(str2)) {
            if (PackageManagerService.DEBUG_COMPRESSION) {
                Slog.i("PackageManager", "No files to decompress at: " + str2);
            }
            return null;
        }
        File nextCodePath = PackageManagerServiceUtils.getNextCodePath(Environment.getDataAppDirectory(null), str);
        int decompressFiles = PackageManagerServiceUtils.decompressFiles(str2, nextCodePath, str);
        if (decompressFiles == 1) {
            decompressFiles = PackageManagerServiceUtils.extractNativeBinaries(nextCodePath, str);
        }
        if (decompressFiles == 1) {
            if (!this.mPm.isSystemReady()) {
                PackageManagerService packageManagerService = this.mPm;
                if (packageManagerService.mReleaseOnSystemReady == null) {
                    packageManagerService.mReleaseOnSystemReady = new ArrayList();
                }
                this.mPm.mReleaseOnSystemReady.add(nextCodePath);
            } else {
                F2fsUtils.releaseCompressedBlocks(this.mContext.getContentResolver(), nextCodePath);
            }
            return nextCodePath;
        }
        if (!nextCodePath.exists()) {
            return null;
        }
        new RemovePackageHelper(this.mPm).removeCodePath(nextCodePath);
        return null;
    }

    public void restoreDisabledSystemPackageLIF(DeletePackageAction deletePackageAction, int[] iArr, boolean z) {
        PackageSetting packageSetting = deletePackageAction.mDeletingPs;
        PackageRemovedInfo packageRemovedInfo = deletePackageAction.mRemovedInfo;
        PackageSetting packageSetting2 = deletePackageAction.mDisabledPs;
        synchronized (this.mPm.mLock) {
            this.mPm.mSettings.enableSystemPackageLPw(packageSetting2.getPkg().getPackageName());
            PackageManagerServiceUtils.removeNativeBinariesLI(packageSetting);
        }
        try {
            try {
                synchronized (this.mPm.mInstallLock) {
                    installPackageFromSystemLIF(packageSetting2.getPathString(), iArr, packageRemovedInfo == null ? null : packageRemovedInfo.mOrigUsers, z);
                }
                if (packageSetting2.getPkg().isStub()) {
                    synchronized (this.mPm.mLock) {
                        disableStubPackage(deletePackageAction, packageSetting, iArr);
                    }
                }
            } catch (PackageManagerException e) {
                Slog.w("PackageManager", "Failed to restore system package:" + packageSetting.getPackageName() + ": " + e.getMessage());
                throw new SystemDeleteException(e);
            }
        } catch (Throwable th) {
            if (packageSetting2.getPkg().isStub()) {
                synchronized (this.mPm.mLock) {
                    disableStubPackage(deletePackageAction, packageSetting, iArr);
                }
            }
            throw th;
        }
    }

    public final void disableStubPackage(DeletePackageAction deletePackageAction, PackageSetting packageSetting, int[] iArr) {
        PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(packageSetting.getPackageName());
        if (packageLPr != null) {
            UserHandle userHandle = deletePackageAction.mUser;
            int identifier = userHandle == null ? -1 : userHandle.getIdentifier();
            if (identifier != -1) {
                if (identifier >= 0) {
                    packageLPr.setEnabled(2, identifier, "android");
                }
            } else {
                for (int i : iArr) {
                    packageLPr.setEnabled(2, i, "android");
                }
            }
        }
    }

    public final void installPackageFromSystemLIF(String str, int[] iArr, int[] iArr2, boolean z) {
        File file = new File(str);
        AndroidPackage initPackageTracedLI = initPackageTracedLI(file, this.mPm.getDefParseFlags() | 1 | 16, this.mPm.getSystemPackageScanFlags(file));
        synchronized (this.mPm.mLock) {
            try {
                this.mSharedLibraries.updateSharedLibraries(initPackageTracedLI, this.mPm.mSettings.getPackageLPr(initPackageTracedLI.getPackageName()), null, null, Collections.unmodifiableMap(this.mPm.mPackages));
            } catch (PackageManagerException e) {
                Slog.e("PackageManager", "updateAllSharedLibrariesLPw failed: " + e.getMessage());
            }
        }
        this.mAppDataHelper.prepareAppDataAfterInstallLIF(initPackageTracedLI);
        setPackageInstalledForSystemPackage(initPackageTracedLI, iArr, iArr2, z);
    }

    public final void setPackageInstalledForSystemPackage(AndroidPackage androidPackage, int[] iArr, int[] iArr2, boolean z) {
        synchronized (this.mPm.mLock) {
            PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(androidPackage.getPackageName());
            boolean z2 = iArr2 != null;
            if (z2) {
                boolean z3 = false;
                for (int i : iArr) {
                    boolean contains = ArrayUtils.contains(iArr2, i);
                    if (contains != packageLPr.getInstalled(i)) {
                        z3 = true;
                    }
                    packageLPr.setInstalled(contains, i);
                    if (contains) {
                        packageLPr.setUninstallReason(0, i);
                    }
                }
                this.mPm.mSettings.writeAllUsersPackageRestrictionsLPr();
                if (z3) {
                    this.mPm.mSettings.writeKernelMappingLPr(packageLPr);
                }
            }
            this.mPm.mPermissionManager.onPackageInstalled(androidPackage, -1, PermissionManagerServiceInternal.PackageInstalledParams.DEFAULT, -1);
            for (int i2 : iArr) {
                if (z2) {
                    this.mPm.mSettings.writePermissionStateForUserLPr(i2, false);
                }
            }
            if (z) {
                this.mPm.writeSettingsLPrTEMP();
            }
        }
    }

    public void prepareSystemPackageCleanUp(WatchedArrayMap watchedArrayMap, List list, ArrayMap arrayMap, final int[] iArr) {
        List parsePackages = this.mPm.isDeviceUpgrading() ? new PmConfigParser().parsePackages("/system/etc/system_to_data_app_list.xml") : null;
        for (int size = watchedArrayMap.size() - 1; size >= 0; size--) {
            final PackageSetting packageSetting = (PackageSetting) watchedArrayMap.valueAt(size);
            String packageName = packageSetting.getPackageName();
            if (packageSetting.isSystem()) {
                AndroidPackage androidPackage = (AndroidPackage) this.mPm.mPackages.get(packageName);
                PackageSetting disabledSystemPkgLPr = this.mPm.mSettings.getDisabledSystemPkgLPr(packageName);
                if (androidPackage != null) {
                    if (!androidPackage.isApex() && disabledSystemPkgLPr != null) {
                        PackageManagerServiceUtils.logCriticalInfo(5, "Expecting better updated system app for " + packageName + "; removing system app.  Last known codePath=" + packageSetting.getPathString() + ", versionCode=" + packageSetting.getVersionCode() + "; scanned versionCode=" + androidPackage.getLongVersionCode());
                        this.mRemovePackageHelper.removePackage(androidPackage, true);
                        arrayMap.put(packageSetting.getPackageName(), packageSetting.getPath());
                    }
                } else if (disabledSystemPkgLPr == null) {
                    if (parsePackages != null && !parsePackages.isEmpty() && parsePackages.contains(packageSetting.getName())) {
                        packageSetting.setFlags(-2);
                        PackageManagerServiceUtils.logCriticalInfo(5, "Don't remove this system package " + packageSetting.getName() + "; It will be re-installed in data partition.");
                    } else {
                        PackageManagerServiceUtils.logCriticalInfo(5, "System package " + packageName + " no longer exists; its data will be wiped");
                        this.mInjector.getHandler().post(new Runnable() { // from class: com.android.server.pm.InstallPackageHelper$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() {
                                InstallPackageHelper.this.lambda$prepareSystemPackageCleanUp$4(packageSetting, iArr);
                            }
                        });
                    }
                } else if (disabledSystemPkgLPr.getPath() == null || !disabledSystemPkgLPr.getPath().exists() || disabledSystemPkgLPr.getPkg() == null) {
                    list.add(packageName);
                } else {
                    arrayMap.put(disabledSystemPkgLPr.getPackageName(), disabledSystemPkgLPr.getPath());
                }
            }
        }
    }

    public /* synthetic */ void lambda$prepareSystemPackageCleanUp$4(PackageSetting packageSetting, int[] iArr) {
        this.mRemovePackageHelper.removePackageData(packageSetting, iArr, null, 0, false);
    }

    public boolean needToRemoveNonInstalledOverlayLPr(PackageSetting packageSetting) {
        return (packageSetting != null && packageSetting.getPathString() != null && packageSetting.getPathString().startsWith("/data/overlays")) && packageSetting.getPkg() == null;
    }

    public void clearNonInstalledOverlaysLIF(ArrayList arrayList) {
        int[] userIds = this.mPm.mUserManager.getUserIds();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            PackageSetting packageSetting = (PackageSetting) arrayList.get(i);
            PackageManagerServiceUtils.logCriticalInfo(5, "Clear non-installed overlay package " + packageSetting.getPackageName());
            this.mRemovePackageHelper.removePackageDataLIF(packageSetting, userIds, null, 0, false);
        }
    }

    public void clearNoninstalledDataApps() {
        List<String> parsePackages = new PmConfigParser().parsePackages("/system/etc/system_to_data_app_list.xml");
        int[] userIds = this.mPm.mUserManager.getUserIds();
        synchronized (this.mPm.mLock) {
            boolean z = false;
            for (String str : parsePackages) {
                PackageSetting packageSetting = (PackageSetting) this.mPm.mSettings.mPackages.get(str);
                if (packageSetting != null && packageSetting.getPkg() == null && !packageSetting.isExternalStorage()) {
                    PackageManagerServiceUtils.logCriticalInfo(5, "Clear non-installed migration package " + str);
                    this.mRemovePackageHelper.removePackageDataLIF(packageSetting, userIds, null, 0, false);
                    z = true;
                }
            }
            if (z) {
                this.mPm.mSettings.writeLPr(this.mPm.snapshotComputer(), false);
            }
        }
    }

    public void updateDuplicatePreloadApps(final int i, final int i2, long j, final PackageParser2 packageParser2, ArrayMap arrayMap) {
        this.mPreloadDuplicateApps.addSystemPackagesTo(arrayMap);
        final ExecutorService makeExecutorService = ParallelPackageParser.makeExecutorService();
        this.mPreloadDuplicateApps.installDuplicatePackages(new BiConsumer() { // from class: com.android.server.pm.InstallPackageHelper$$ExternalSyntheticLambda4
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                InstallPackageHelper.this.lambda$updateDuplicatePreloadApps$5(i, i2, packageParser2, makeExecutorService, (String) obj, (File) obj2);
            }
        });
        this.mPreloadDuplicateApps.clearPackages();
        makeExecutorService.shutdownNow();
    }

    public /* synthetic */ void lambda$updateDuplicatePreloadApps$5(int i, int i2, PackageParser2 packageParser2, ExecutorService executorService, String str, File file) {
        PackageManagerServiceUtils.logCriticalInfo(5, "Update a duplicate package: " + str + ", apk: " + file);
        PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(str);
        if (packageLPr == null) {
            return;
        }
        this.mPm.mSettings.disableSystemPackageLPw(str, true);
        this.mRemovePackageHelper.removePackage(packageLPr.getPkg(), true);
        installPackagesFromAppRootDir(file, null, i, i2, packageParser2, executorService);
    }

    public void installPackagesFromAppRootDir(File file, List list, int i, int i2, PackageParser2 packageParser2, ExecutorService executorService) {
        int i3;
        if (ArrayUtils.isEmpty(file.listFiles())) {
            Log.d("PackageManager", "No files in app dir " + file);
            return;
        }
        ParallelPackageParser parallelPackageParser = new ParallelPackageParser(packageParser2, executorService);
        parallelPackageParser.submit(file, i);
        ParallelPackageParser.ParseResult take = parallelPackageParser.take();
        Throwable th = take.throwable;
        if (th == null) {
            try {
                addForInitLI(take.parsedPackage, i, i2, null, null);
                i3 = 1;
            } catch (PackageManagerException e) {
                i3 = e.error;
                PackageManagerServiceUtils.logCriticalInfo(5, "Failed to scan " + take.scanFile + ": " + e.getMessage());
            }
        } else if (th instanceof PackageManagerException) {
            PackageManagerException packageManagerException = (PackageManagerException) th;
            i3 = packageManagerException.error;
            PackageManagerServiceUtils.logCriticalInfo(5, "Failed to parse " + take.scanFile + ": " + packageManagerException.getMessage());
        } else {
            throw new IllegalStateException("Unexpected exception occurred while parsing " + take.scanFile, th);
        }
        if ((65536 & i2) != 0 || i3 == 1) {
            return;
        }
        PackageManagerServiceUtils.logCriticalInfo(5, "Deleting invalid package at " + take.scanFile);
        this.mRemovePackageHelper.removeCodePath(take.scanFile);
    }

    public void cleanupDisabledPackageSettings(List list, int[] iArr, int i) {
        String str;
        for (int size = list.size() - 1; size >= 0; size--) {
            String str2 = (String) list.get(size);
            AndroidPackage androidPackage = (AndroidPackage) this.mPm.mPackages.get(str2);
            this.mPm.mSettings.removeDisabledSystemPackageLPw(str2);
            if (androidPackage == null) {
                str = "Updated system package " + str2 + " no longer exists; removing its data";
            } else {
                String str3 = "Updated system package " + str2 + " no longer exists; rescanning package on data";
                this.mRemovePackageHelper.removePackage(androidPackage, true);
                PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(str2);
                if (packageLPr != null) {
                    packageLPr.getPkgState().setUpdatedSystemApp(false);
                }
                try {
                    File file = new File(androidPackage.getPath());
                    synchronized (this.mPm.mInstallLock) {
                        initPackageTracedLI(file, 0, i);
                    }
                } catch (PackageManagerException e) {
                    Slog.e("PackageManager", "Failed to parse updated, ex-system package: " + e.getMessage());
                }
                str = str3;
            }
            PackageSetting packageLPr2 = this.mPm.mSettings.getPackageLPr(str2);
            if (packageLPr2 != null && this.mPm.mPackages.get(str2) == null) {
                this.mRemovePackageHelper.removePackageData(packageLPr2, iArr, null, 0, false);
            }
            PackageManagerServiceUtils.logCriticalInfo(5, str);
        }
    }

    public List scanApexPackages(ApexInfo[] apexInfoArr, int i, int i2, PackageParser2 packageParser2, ExecutorService executorService) {
        int i3;
        int i4;
        if (apexInfoArr == null) {
            return Collections.EMPTY_LIST;
        }
        ParallelPackageParser parallelPackageParser = new ParallelPackageParser(packageParser2, executorService);
        final ArrayMap arrayMap = new ArrayMap();
        for (ApexInfo apexInfo : apexInfoArr) {
            File file = new File(apexInfo.modulePath);
            parallelPackageParser.submit(file, i);
            arrayMap.put(file, apexInfo);
        }
        ArrayList arrayList = new ArrayList(arrayMap.size());
        for (int i5 = 0; i5 < arrayMap.size(); i5++) {
            arrayList.add(parallelPackageParser.take());
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.android.server.pm.InstallPackageHelper$$ExternalSyntheticLambda5
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$scanApexPackages$6;
                lambda$scanApexPackages$6 = InstallPackageHelper.lambda$scanApexPackages$6(arrayMap, (ParallelPackageParser.ParseResult) obj, (ParallelPackageParser.ParseResult) obj2);
                return lambda$scanApexPackages$6;
            }
        });
        ArrayList arrayList2 = new ArrayList(arrayMap.size());
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            ParallelPackageParser.ParseResult parseResult = (ParallelPackageParser.ParseResult) arrayList.get(i6);
            Throwable th = parseResult.throwable;
            ApexInfo apexInfo2 = (ApexInfo) arrayMap.get(parseResult.scanFile);
            int systemPackageScanFlags = i2 | 67108864 | this.mPm.getSystemPackageScanFlags(parseResult.scanFile);
            if (apexInfo2.isFactory) {
                i3 = systemPackageScanFlags;
                i4 = i;
            } else {
                i4 = i & (-17);
                i3 = systemPackageScanFlags | 4;
            }
            if (th == null) {
                try {
                    addForInitLI(parseResult.parsedPackage, i4, i3, null, new ApexManager.ActiveApexInfo(apexInfo2));
                    AndroidPackageInternal hideAsFinal = parseResult.parsedPackage.hideAsFinal();
                    if (apexInfo2.isFactory && !apexInfo2.isActive) {
                        disableSystemPackageLPw(hideAsFinal);
                    }
                    arrayList2.add(new ApexManager.ScanResult(apexInfo2, hideAsFinal, hideAsFinal.getPackageName()));
                } catch (PackageManagerException e) {
                    throw new IllegalStateException("Failed to scan: " + apexInfo2.modulePath, e);
                }
            } else if (th instanceof PackageManagerException) {
                Slog.e("PackageManager", "!@ Unexpected exception occurred while parsing " + apexInfo2.modulePath);
                String[] split = apexInfo2.modulePath.split("/|@");
                if (split.length > 4 && "data".equals(split[1]) && "decompressed".equals(split[3])) {
                    SystemProperties.set("sys.apexd.restore.module", split[4]);
                    Slog.i("PackageManager", "!@ reboot by ApexManager");
                    SystemProperties.set("sys.powerctl", "reboot,recoveryDecompressedApex");
                } else {
                    throw new IllegalStateException("Unable to parse: " + apexInfo2.modulePath, th);
                }
            } else {
                throw new IllegalStateException("Unexpected exception occurred while parsing " + apexInfo2.modulePath, th);
            }
        }
        return arrayList2;
    }

    public static /* synthetic */ int lambda$scanApexPackages$6(ArrayMap arrayMap, ParallelPackageParser.ParseResult parseResult, ParallelPackageParser.ParseResult parseResult2) {
        return Boolean.compare(((ApexInfo) arrayMap.get(parseResult2.scanFile)).isFactory, ((ApexInfo) arrayMap.get(parseResult.scanFile)).isFactory);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ad, code lost:
    
        if (r16.mPm.mCustomInjector.getSkippingApks().isSkippingApk(r4.getName() + ".apk") != false) goto L107;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void installPackagesFromDir(java.io.File r17, int r18, int r19, com.android.server.pm.parsing.PackageParser2 r20, java.util.concurrent.ExecutorService r21, com.android.server.pm.ApexManager.ActiveApexInfo r22) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.installPackagesFromDir(java.io.File, int, int, com.android.server.pm.parsing.PackageParser2, java.util.concurrent.ExecutorService, com.android.server.pm.ApexManager$ActiveApexInfo):void");
    }

    public void checkExistingBetterPackages(ArrayMap arrayMap, List list, int i, int i2) {
        for (int i3 = 0; i3 < arrayMap.size(); i3++) {
            String str = (String) arrayMap.keyAt(i3);
            if (!this.mPm.mPackages.containsKey(str)) {
                File file = (File) arrayMap.valueAt(i3);
                PackageManagerServiceUtils.logCriticalInfo(5, "Expected better " + str + " but never showed up; reverting to system");
                Pair systemPackageRescanFlagsAndReparseFlags = this.mPm.getSystemPackageRescanFlagsAndReparseFlags(file, i, i2);
                int intValue = ((Integer) systemPackageRescanFlagsAndReparseFlags.first).intValue();
                int intValue2 = ((Integer) systemPackageRescanFlagsAndReparseFlags.second).intValue();
                if (intValue == 0) {
                    Slog.e("PackageManager", "Ignoring unexpected fallback path " + file);
                } else {
                    this.mPm.mSettings.enableSystemPackageLPw(str);
                    try {
                        synchronized (this.mPm.mInstallLock) {
                            if (initPackageTracedLI(file, intValue2, intValue).isStub()) {
                                list.add(str);
                            }
                        }
                    } catch (PackageManagerException e) {
                        Slog.e("PackageManager", "Failed to parse original system package: " + e.getMessage());
                    }
                }
            }
        }
    }

    public AndroidPackage initPackageTracedLI(File file, int i, int i2) {
        Trace.traceBegin(262144L, "scanPackage [" + file.toString() + "]");
        try {
            return initPackageLI(file, i, i2);
        } finally {
            Trace.traceEnd(262144L);
        }
    }

    public final AndroidPackage initPackageLI(File file, int i, int i2) {
        Trace.traceBegin(262144L, "parsePackage");
        try {
            PackageParser2 scanningPackageParser = this.mPm.mInjector.getScanningPackageParser();
            try {
                ParsedPackage parsePackage = scanningPackageParser.parsePackage(file, i, false);
                scanningPackageParser.close();
                Trace.traceEnd(262144L);
                return addForInitLI(parsePackage, i, i2, new UserHandle(0), null);
            } finally {
            }
        } catch (Throwable th) {
            Trace.traceEnd(262144L);
            throw th;
        }
    }

    public final AndroidPackage addForInitLI(ParsedPackage parsedPackage, int i, int i2, UserHandle userHandle, ApexManager.ActiveApexInfo activeApexInfo) {
        PackageSetting disabledSystemPkgLPr;
        String apexModuleName;
        List reconcilePackages;
        boolean z;
        PackageSetting packageSetting;
        synchronized (this.mPm.mLock) {
            if (activeApexInfo == null) {
                if (parsedPackage.isStaticSharedLibrary()) {
                    PackageManagerService.renameStaticSharedLibraryPackage(parsedPackage);
                }
            }
            disabledSystemPkgLPr = this.mPm.mSettings.getDisabledSystemPkgLPr(parsedPackage.getPackageName());
            if (activeApexInfo != null && disabledSystemPkgLPr != null) {
                disabledSystemPkgLPr.setApexModuleName(activeApexInfo.apexModuleName);
            }
        }
        Pair scanSystemPackageLI = scanSystemPackageLI(parsedPackage, i, i2, userHandle);
        ScanResult scanResult = (ScanResult) scanSystemPackageLI.first;
        boolean booleanValue = ((Boolean) scanSystemPackageLI.second).booleanValue();
        InstallRequest installRequest = new InstallRequest(parsedPackage, i, i2, userHandle, scanResult);
        synchronized (this.mPm.mLock) {
            PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(parsedPackage.getPackageName());
            apexModuleName = packageLPr != null ? packageLPr.getApexModuleName() : null;
        }
        if (activeApexInfo != null) {
            installRequest.setApexModuleName(activeApexInfo.apexModuleName);
        } else if (disabledSystemPkgLPr != null) {
            installRequest.setApexModuleName(disabledSystemPkgLPr.getApexModuleName());
        } else if (apexModuleName != null) {
            installRequest.setApexModuleName(apexModuleName);
        }
        synchronized (this.mPm.mLock) {
            boolean z2 = false;
            try {
                String packageName = scanResult.mPkgSetting.getPackageName();
                List singletonList = Collections.singletonList(installRequest);
                PackageManagerService packageManagerService = this.mPm;
                reconcilePackages = ReconcilePackageUtils.reconcilePackages(singletonList, packageManagerService.mPackages, Collections.singletonMap(packageName, packageManagerService.getSettingsVersionForPackage(parsedPackage)), this.mSharedLibraries, this.mPm.mSettings.getKeySetManagerService(), this.mPm.mSettings);
                if ((i2 & 67108864) == 0) {
                    z = optimisticallyRegisterAppId(installRequest);
                } else {
                    installRequest.setScannedPackageSettingAppId(-1);
                    z = false;
                }
            } catch (PackageManagerException e) {
                e = e;
            }
            try {
                commitReconciledScanResultLocked((ReconciledPackage) reconcilePackages.get(0), this.mPm.mUserManager.getUserIds());
            } catch (PackageManagerException e2) {
                e = e2;
                z2 = z;
                if (z2) {
                    cleanUpAppIdCreation(installRequest);
                }
                throw e;
            }
        }
        if (booleanValue) {
            synchronized (this.mPm.mLock) {
                this.mPm.mSettings.disableSystemPackageLPw(parsedPackage.getPackageName(), true);
            }
        }
        if (this.mIncrementalManager != null && IncrementalManager.isIncrementalPath(parsedPackage.getPath()) && (packageSetting = scanResult.mPkgSetting) != null && packageSetting.isLoading()) {
            this.mIncrementalManager.registerLoadingProgressCallback(parsedPackage.getPath(), new IncrementalProgressListener(parsedPackage.getPackageName(), this.mPm));
        }
        return scanResult.mPkgSetting.getPkg();
    }

    public final boolean optimisticallyRegisterAppId(InstallRequest installRequest) {
        boolean registerAppIdLPw;
        if (installRequest.isExistingSettingCopied() && !installRequest.needsNewAppId()) {
            return false;
        }
        synchronized (this.mPm.mLock) {
            registerAppIdLPw = this.mPm.mSettings.registerAppIdLPw(installRequest.getScannedPackageSetting(), installRequest.needsNewAppId());
        }
        return registerAppIdLPw;
    }

    public final void cleanUpAppIdCreation(InstallRequest installRequest) {
        if (installRequest.getScannedPackageSetting() == null || installRequest.getScannedPackageSetting().getAppId() <= 0) {
            return;
        }
        synchronized (this.mPm.mLock) {
            this.mPm.mSettings.removeAppIdLPw(installRequest.getScannedPackageSetting().getAppId());
        }
    }

    public final ScanResult scanPackageTracedLI(ParsedPackage parsedPackage, int i, int i2, long j, UserHandle userHandle, String str) {
        Trace.traceBegin(262144L, "scanPackage");
        try {
            return scanPackageNewLI(parsedPackage, i, i2, j, userHandle, str);
        } finally {
            Trace.traceEnd(262144L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x009a A[Catch: all -> 0x00d6, TryCatch #0 {, blocks: (B:4:0x0008, B:6:0x0024, B:7:0x0027, B:9:0x0045, B:10:0x0064, B:12:0x0073, B:18:0x0084, B:20:0x008a, B:22:0x009a, B:23:0x00a5, B:39:0x007c), top: B:3:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.server.pm.ScanRequest prepareInitialScanRequest(com.android.server.pm.parsing.pkg.ParsedPackage r16, int r17, int r18, android.os.UserHandle r19, java.lang.String r20) {
        /*
            r15 = this;
            r0 = r15
            r1 = r16
            com.android.server.pm.PackageManagerService r2 = r0.mPm
            com.android.server.pm.PackageManagerTracedLock r2 = r2.mLock
            monitor-enter(r2)
            com.android.server.pm.PackageManagerService r3 = r0.mPm     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.pkg.AndroidPackage r3 = r3.getPlatformPackage()     // Catch: java.lang.Throwable -> Ld6
            boolean r4 = com.android.server.pm.parsing.pkg.AndroidPackageUtils.isSystem(r16)     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.PackageManagerService r5 = r0.mPm     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.Settings r5 = r5.mSettings     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r6 = com.android.server.pm.parsing.pkg.AndroidPackageUtils.getRealPackageOrNull(r1, r4)     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r5 = r5.getRenamedPackageLPr(r6)     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r8 = com.android.server.pm.ScanPackageUtils.getRealPackageName(r1, r5, r4)     // Catch: java.lang.Throwable -> Ld6
            if (r8 == 0) goto L27
            com.android.server.pm.ScanPackageUtils.ensurePackageRenamed(r1, r5)     // Catch: java.lang.Throwable -> Ld6
        L27:
            com.android.server.pm.PackageSetting r7 = r15.getOriginalPackageLocked(r1, r5)     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.PackageManagerService r4 = r0.mPm     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.Settings r4 = r4.mSettings     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r5 = r16.getPackageName()     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.PackageSetting r4 = r4.getPackageLPr(r5)     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.PackageManagerService r5 = r0.mPm     // Catch: java.lang.Throwable -> Ld6
            android.util.ArraySet r5 = r5.mTransferredPackages     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r6 = r16.getPackageName()     // Catch: java.lang.Throwable -> Ld6
            boolean r5 = r5.contains(r6)     // Catch: java.lang.Throwable -> Ld6
            if (r5 == 0) goto L64
            java.lang.String r5 = "PackageManager"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ld6
            r6.<init>()     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r9 = "Package "
            r6.append(r9)     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r9 = r16.getPackageName()     // Catch: java.lang.Throwable -> Ld6
            r6.append(r9)     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r9 = " was transferred to another, but its .apk remains"
            r6.append(r9)     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> Ld6
            android.util.Slog.w(r5, r6)     // Catch: java.lang.Throwable -> Ld6
        L64:
            com.android.server.pm.PackageManagerService r5 = r0.mPm     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.Settings r5 = r5.mSettings     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r6 = r16.getPackageName()     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.PackageSetting r6 = r5.getDisabledSystemPkgLPr(r6)     // Catch: java.lang.Throwable -> Ld6
            r5 = 0
            if (r4 == 0) goto L7c
            boolean r9 = r4.hasSharedUser()     // Catch: java.lang.Throwable -> Ld6
            if (r9 != 0) goto L7a
            goto L7c
        L7a:
            r9 = r5
            goto L80
        L7c:
            boolean r9 = r16.isLeavingSharedUser()     // Catch: java.lang.Throwable -> Ld6
        L80:
            r10 = 1
            r11 = 0
            if (r9 != 0) goto L97
            java.lang.String r9 = r16.getSharedUserId()     // Catch: java.lang.Throwable -> Ld6
            if (r9 == 0) goto L97
            com.android.server.pm.PackageManagerService r9 = r0.mPm     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.Settings r9 = r9.mSettings     // Catch: java.lang.Throwable -> Ld6
            java.lang.String r12 = r16.getSharedUserId()     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.SharedUserSetting r9 = r9.getSharedUserLPw(r12, r5, r5, r10)     // Catch: java.lang.Throwable -> Ld6
            goto L98
        L97:
            r9 = r11
        L98:
            if (r4 == 0) goto La4
            com.android.server.pm.PackageManagerService r0 = r0.mPm     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.Settings r0 = r0.mSettings     // Catch: java.lang.Throwable -> Ld6
            com.android.server.pm.SharedUserSetting r0 = r0.getSharedUserSettingLPr(r4)     // Catch: java.lang.Throwable -> Ld6
            r12 = r0
            goto La5
        La4:
            r12 = r11
        La5:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Ld6
            if (r3 == 0) goto Lb8
            java.lang.String r0 = r3.getPackageName()
            java.lang.String r2 = r16.getPackageName()
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto Lb8
            r13 = r10
            goto Lb9
        Lb8:
            r13 = r5
        Lb9:
            com.android.server.pm.ScanRequest r14 = new com.android.server.pm.ScanRequest
            if (r4 != 0) goto Lbf
            r3 = r11
            goto Lc4
        Lbf:
            com.android.server.pm.parsing.pkg.AndroidPackageInternal r0 = r4.getPkg()
            r3 = r0
        Lc4:
            r0 = r14
            r1 = r16
            r2 = r12
            r5 = r9
            r9 = r17
            r10 = r18
            r11 = r13
            r12 = r19
            r13 = r20
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return r14
        Ld6:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Ld6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.prepareInitialScanRequest(com.android.server.pm.parsing.pkg.ParsedPackage, int, int, android.os.UserHandle, java.lang.String):com.android.server.pm.ScanRequest");
    }

    public final ScanResult scanPackageNewLI(ParsedPackage parsedPackage, int i, int i2, long j, UserHandle userHandle, String str) {
        boolean z;
        ScanResult scanPackageOnlyLI;
        ScanRequest prepareInitialScanRequest = prepareInitialScanRequest(parsedPackage, i, i2, userHandle, str);
        PackageSetting packageSetting = prepareInitialScanRequest.mPkgSetting;
        PackageSetting packageSetting2 = prepareInitialScanRequest.mDisabledPkgSetting;
        if (packageSetting != null) {
            z = packageSetting.isUpdatedSystemApp();
        } else {
            z = packageSetting2 != null;
        }
        boolean z2 = z;
        int adjustScanFlags = adjustScanFlags(i2, packageSetting, packageSetting2, userHandle, parsedPackage);
        ScanPackageUtils.applyPolicy(parsedPackage, adjustScanFlags, this.mPm.getPlatformPackage(), z2);
        synchronized (this.mPm.mLock) {
            assertPackageIsValid(parsedPackage, i, adjustScanFlags);
            ScanRequest scanRequest = new ScanRequest(parsedPackage, prepareInitialScanRequest.mOldSharedUserSetting, prepareInitialScanRequest.mOldPkg, packageSetting, prepareInitialScanRequest.mSharedUserSetting, packageSetting2, prepareInitialScanRequest.mOriginalPkgSetting, prepareInitialScanRequest.mRealPkgName, i, i2, prepareInitialScanRequest.mIsPlatformPackage, userHandle, str);
            PackageManagerService packageManagerService = this.mPm;
            scanPackageOnlyLI = ScanPackageUtils.scanPackageOnlyLI(scanRequest, packageManagerService.mInjector, packageManagerService.mFactoryTest, j);
        }
        return scanPackageOnlyLI;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x038a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0213  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair scanSystemPackageLI(com.android.server.pm.parsing.pkg.ParsedPackage r28, int r29, int r30, android.os.UserHandle r31) {
        /*
            Method dump skipped, instructions count: 985
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstallPackageHelper.scanSystemPackageLI(com.android.server.pm.parsing.pkg.ParsedPackage, int, int, android.os.UserHandle):android.util.Pair");
    }

    public static boolean hasLauncherEntry(ParsedPackage parsedPackage) {
        HashSet hashSet = new HashSet();
        hashSet.add("android.intent.category.LAUNCHER");
        List activities = parsedPackage.getActivities();
        for (int i = 0; i < activities.size(); i++) {
            ParsedActivity parsedActivity = (ParsedActivity) activities.get(i);
            if (parsedActivity.isEnabled() && parsedActivity.isExported()) {
                List intents = parsedActivity.getIntents();
                for (int i2 = 0; i2 < intents.size(); i2++) {
                    IntentFilter intentFilter = ((ParsedIntentInfo) intents.get(i2)).getIntentFilter();
                    if (intentFilter != null && intentFilter.matchCategories(hashSet) == null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean canSkipForcedPackageVerification(AndroidPackage androidPackage) {
        if (!VerityUtils.hasFsverity(androidPackage.getBaseApkPath())) {
            return false;
        }
        String[] splitCodePaths = androidPackage.getSplitCodePaths();
        if (ArrayUtils.isEmpty(splitCodePaths)) {
            return true;
        }
        for (String str : splitCodePaths) {
            if (!VerityUtils.hasFsverity(str)) {
                return false;
            }
        }
        return true;
    }

    public final void maybeClearProfilesForUpgradesLI(PackageSetting packageSetting, AndroidPackage androidPackage) {
        if (packageSetting == null || !this.mPm.isDeviceUpgrading() || packageSetting.getVersionCode() == androidPackage.getLongVersionCode()) {
            return;
        }
        this.mAppDataHelper.clearAppProfilesLIF(androidPackage);
    }

    public final PackageSetting getOriginalPackageLocked(AndroidPackage androidPackage, String str) {
        if (ScanPackageUtils.isPackageRenamed(androidPackage, str)) {
            return null;
        }
        for (int size = ArrayUtils.size(androidPackage.getOriginalPackages()) - 1; size >= 0; size--) {
            PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr((String) androidPackage.getOriginalPackages().get(size));
            if (packageLPr != null && verifyPackageUpdateLPr(packageLPr, androidPackage)) {
                if (this.mPm.mSettings.getSharedUserSettingLPr(packageLPr) != null) {
                    String str2 = this.mPm.mSettings.getSharedUserSettingLPr(packageLPr).name;
                    if (!str2.equals(androidPackage.getSharedUserId())) {
                        Slog.w("PackageManager", "Unable to migrate data from " + packageLPr.getPackageName() + " to " + androidPackage.getPackageName() + ": old shared user settings name " + str2 + " differs from " + androidPackage.getSharedUserId());
                    }
                }
                return packageLPr;
            }
        }
        return null;
    }

    public final boolean verifyPackageUpdateLPr(PackageSetting packageSetting, AndroidPackage androidPackage) {
        if ((packageSetting.getFlags() & 1) == 0) {
            Slog.w("PackageManager", "Unable to update from " + packageSetting.getPackageName() + " to " + androidPackage.getPackageName() + ": old package not in system partition");
            return false;
        }
        if (this.mPm.mPackages.get(packageSetting.getPackageName()) == null) {
            return true;
        }
        Slog.w("PackageManager", "Unable to update from " + packageSetting.getPackageName() + " to " + androidPackage.getPackageName() + ": old package still exists");
        return false;
    }

    public final void assertPackageIsValid(AndroidPackage androidPackage, int i, int i2) {
        if ((i & 64) != 0) {
            ScanPackageUtils.assertCodePolicy(androidPackage);
        }
        if (androidPackage.getPath() == null) {
            throw new PackageManagerException(-2, "Code and resource paths haven't been set correctly");
        }
        boolean z = true;
        boolean z2 = (i2 & 16) == 0;
        boolean z3 = (i2 & IInstalld.FLAG_USE_QUOTA) != 0;
        boolean z4 = (67108864 & i2) != 0;
        if ((z2 || z3) && this.mPm.snapshotComputer().isApexPackage(androidPackage.getPackageName()) && !z4) {
            throw new PackageManagerException(-5, androidPackage.getPackageName() + " is an APEX package and can't be installed as an APK.");
        }
        this.mPm.mSettings.getKeySetManagerService().assertScannedPackageValid(androidPackage);
        synchronized (this.mPm.mLock) {
            if (androidPackage.getPackageName().equals("android") && this.mPm.getCoreAndroidApplication() != null) {
                Slog.w("PackageManager", "*************************************************");
                Slog.w("PackageManager", "Core android package being redefined.  Skipping.");
                Slog.w("PackageManager", " codePath=" + androidPackage.getPath());
                Slog.w("PackageManager", "*************************************************");
                throw new PackageManagerException(-5, "Core android package being redefined.  Skipping.");
            }
            int i3 = i2 & 4;
            if (i3 == 0 && this.mPm.mPackages.containsKey(androidPackage.getPackageName())) {
                PackageSetting packageLPr = this.mPm.mSettings.getPackageLPr(androidPackage.getPackageName());
                if (this.mPm.mSettings.getDisabledSystemPkgLPr(androidPackage.getPackageName()) == null) {
                    z = false;
                }
                if (packageLPr != null && this.mPreloadDuplicateApps.isDuplicatePackage(androidPackage, packageLPr, z, i)) {
                    this.mPreloadDuplicateApps.addDuplicatePackage(androidPackage);
                    this.mPreloadDuplicateApps.addSystemPackage(packageLPr.getPkg());
                }
                throw new PackageManagerException(-5, "Application package " + androidPackage.getPackageName() + " already installed.  Skipping duplicate.");
            }
            if (androidPackage.isStaticSharedLibrary()) {
                if (i3 == 0 && this.mPm.mPackages.containsKey(androidPackage.getManifestPackageName())) {
                    throw PackageManagerException.ofInternalError("Duplicate static shared lib provider package", -13);
                }
                ScanPackageUtils.assertStaticSharedLibraryIsValid(androidPackage, i2);
                assertStaticSharedLibraryVersionCodeIsValid(androidPackage);
            }
            if ((i2 & 128) != 0) {
                if (this.mPm.isExpectingBetter(androidPackage.getPackageName())) {
                    Slog.w("PackageManager", "Relax SCAN_REQUIRE_KNOWN requirement for package " + androidPackage.getPackageName());
                } else {
                    PackageSetting packageLPr2 = this.mPm.mSettings.getPackageLPr(androidPackage.getPackageName());
                    if (packageLPr2 != null) {
                        if (!androidPackage.getPath().equals(packageLPr2.getPathString())) {
                            throw new PackageManagerException(-23, "Application package " + androidPackage.getPackageName() + " found at " + androidPackage.getPath() + " but expected at " + packageLPr2.getPathString() + "; ignoring.");
                        }
                    } else if (this.mPm.isFirstBoot()) {
                        Log.d("PackageManager", "Application package " + androidPackage.getPackageName() + " not found at first boot, but allow data preload apps to be installed");
                    } else {
                        throw new PackageManagerException(-19, "Application package " + androidPackage.getPackageName() + " not found; ignoring.");
                    }
                }
            }
            if (i3 != 0) {
                this.mPm.mComponentResolver.assertProvidersNotDefined(androidPackage);
            }
            ScanPackageUtils.assertProcessesAreValid(androidPackage);
            assertPackageWithSharedUserIdIsPrivileged(androidPackage);
            if (androidPackage.getOverlayTarget() != null) {
                assertOverlayIsValid(androidPackage, i, i2);
            }
            ScanPackageUtils.assertMinSignatureSchemeIsValid(androidPackage, i);
        }
    }

    public final void assertStaticSharedLibraryVersionCodeIsValid(AndroidPackage androidPackage) {
        WatchedLongSparseArray sharedLibraryInfos = this.mSharedLibraries.getSharedLibraryInfos(androidPackage.getStaticSharedLibraryName());
        long j = Long.MIN_VALUE;
        long j2 = Long.MAX_VALUE;
        if (sharedLibraryInfos != null) {
            int size = sharedLibraryInfos.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                SharedLibraryInfo sharedLibraryInfo = (SharedLibraryInfo) sharedLibraryInfos.valueAt(i);
                long longVersionCode = sharedLibraryInfo.getDeclaringPackage().getLongVersionCode();
                if (sharedLibraryInfo.getLongVersion() >= androidPackage.getStaticSharedLibraryVersion()) {
                    if (sharedLibraryInfo.getLongVersion() <= androidPackage.getStaticSharedLibraryVersion()) {
                        j = longVersionCode;
                        j2 = j;
                        break;
                    }
                    j2 = Math.min(j2, longVersionCode - 1);
                } else {
                    j = Math.max(j, longVersionCode + 1);
                }
                i++;
            }
        }
        if (androidPackage.getLongVersionCode() < j || androidPackage.getLongVersionCode() > j2) {
            throw PackageManagerException.ofInternalError("Static shared lib version codes must be ordered as lib versions", -14);
        }
    }

    public final void assertOverlayIsValid(AndroidPackage androidPackage, int i, int i2) {
        PackageSetting packageLPr;
        PackageSetting packageLPr2;
        PackageSetting packageLPr3;
        PackageSetting packageLPr4;
        if ((65536 & i2) != 0) {
            if ((i & 16) == 0) {
                if (this.mPm.isOverlayMutable(androidPackage.getPackageName())) {
                    return;
                }
                throw PackageManagerException.ofInternalError("Overlay " + androidPackage.getPackageName() + " is static and cannot be upgraded.", -15);
            }
            if ((524288 & i2) != 0) {
                if (androidPackage.getTargetSdkVersion() < ScanPackageUtils.getVendorPartitionVersion()) {
                    Slog.w("PackageManager", "System overlay " + androidPackage.getPackageName() + " targets an SDK below the required SDK level of vendor overlays (" + ScanPackageUtils.getVendorPartitionVersion() + "). This will become an install error in a future release");
                    return;
                }
                return;
            }
            int targetSdkVersion = androidPackage.getTargetSdkVersion();
            int i3 = Build.VERSION.SDK_INT;
            if (targetSdkVersion < i3) {
                Slog.w("PackageManager", "System overlay " + androidPackage.getPackageName() + " targets an SDK below the required SDK level of system overlays (" + i3 + "). This will become an install error in a future release");
                return;
            }
            return;
        }
        boolean z = true;
        if (androidPackage.getPackageName().startsWith("com.samsung.themedesigner")) {
            synchronized (this.mPm.mLock) {
                packageLPr4 = this.mPm.mSettings.getPackageLPr(androidPackage.getPackageName());
            }
            z = true ^ (packageLPr4 != null && SemSamsungThemeUtils.isValidThemeParkOverlay(androidPackage, packageLPr4.getLastUpdateTime()));
            Slog.i("PackageManager", "assertOverlayIsValid overlayPkgSetting " + packageLPr4 + " " + z);
        }
        if (androidPackage.getTargetSdkVersion() < 29) {
            synchronized (this.mPm.mLock) {
                packageLPr3 = this.mPm.mSettings.getPackageLPr("android");
            }
            if (z && !PackageManagerServiceUtils.comparePackageSignatures(packageLPr3, androidPackage.getSigningDetails().getSignatures())) {
                throw PackageManagerException.ofInternalError("Overlay " + androidPackage.getPackageName() + " must target Q or later, or be signed with the platform certificate", -16);
            }
        }
        if (z && androidPackage.getOverlayTargetOverlayableName() == null) {
            synchronized (this.mPm.mLock) {
                packageLPr = this.mPm.mSettings.getPackageLPr(androidPackage.getOverlayTarget());
            }
            if (packageLPr == null || PackageManagerServiceUtils.comparePackageSignatures(packageLPr, androidPackage.getSigningDetails().getSignatures())) {
                return;
            }
            PackageManagerService packageManagerService = this.mPm;
            if (packageManagerService.mOverlayConfigSignaturePackage == null) {
                throw PackageManagerException.ofInternalError("Overlay " + androidPackage.getPackageName() + " and target " + androidPackage.getOverlayTarget() + " signed with different certificates, and the overlay lacks <overlay android:targetName>", -17);
            }
            synchronized (packageManagerService.mLock) {
                PackageManagerService packageManagerService2 = this.mPm;
                packageLPr2 = packageManagerService2.mSettings.getPackageLPr(packageManagerService2.mOverlayConfigSignaturePackage);
            }
            if (PackageManagerServiceUtils.comparePackageSignatures(packageLPr2, androidPackage.getSigningDetails().getSignatures())) {
                return;
            }
            throw PackageManagerException.ofInternalError("Overlay " + androidPackage.getPackageName() + " signed with a different certificate than both the reference package and target " + androidPackage.getOverlayTarget() + ", and the overlay lacks <overlay android:targetName>", -18);
        }
    }

    public final void assertPackageWithSharedUserIdIsPrivileged(AndroidPackage androidPackage) {
        PackageSetting packageLPr;
        if (AndroidPackageUtils.isPrivileged(androidPackage) || androidPackage.getSharedUserId() == null || androidPackage.isLeavingSharedUser()) {
            return;
        }
        SharedUserSetting sharedUserSetting = null;
        try {
            synchronized (this.mPm.mLock) {
                sharedUserSetting = this.mPm.mSettings.getSharedUserLPw(androidPackage.getSharedUserId(), 0, 0, false);
            }
        } catch (PackageManagerException unused) {
        }
        if (sharedUserSetting == null || !sharedUserSetting.isPrivileged()) {
            return;
        }
        synchronized (this.mPm.mLock) {
            packageLPr = this.mPm.mSettings.getPackageLPr("android");
        }
        if (PackageManagerServiceUtils.comparePackageSignatures(packageLPr, androidPackage.getSigningDetails().getSignatures())) {
            return;
        }
        throw PackageManagerException.ofInternalError("Apps that share a user with a privileged app must themselves be marked as privileged. " + androidPackage.getPackageName() + " shares privileged user " + androidPackage.getSharedUserId() + ".", -19);
    }

    public final int adjustScanFlags(int i, PackageSetting packageSetting, PackageSetting packageSetting2, UserHandle userHandle, AndroidPackage androidPackage) {
        SharedUserSetting sharedUserSetting;
        int adjustScanFlagsWithPackageSetting = ScanPackageUtils.adjustScanFlagsWithPackageSetting(i, packageSetting, packageSetting2, userHandle);
        boolean z = (524288 & adjustScanFlagsWithPackageSetting) != 0 && ScanPackageUtils.getVendorPartitionVersion() < 28;
        if ((adjustScanFlagsWithPackageSetting & IInstalld.FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES) == 0 && !AndroidPackageUtils.isPrivileged(androidPackage) && androidPackage.getSharedUserId() != null && !z && !androidPackage.isLeavingSharedUser()) {
            synchronized (this.mPm.mLock) {
                try {
                    sharedUserSetting = this.mPm.mSettings.getSharedUserLPw(androidPackage.getSharedUserId(), 0, 0, false);
                } catch (PackageManagerException unused) {
                    sharedUserSetting = null;
                }
                if (sharedUserSetting != null && sharedUserSetting.isPrivileged() && PackageManagerServiceUtils.compareSignatures(this.mPm.mSettings.getPackageLPr("android").getSigningDetails().getSignatures(), androidPackage.getSigningDetails().getSignatures()) != 0) {
                    adjustScanFlagsWithPackageSetting |= IInstalld.FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES;
                }
            }
        }
        return adjustScanFlagsWithPackageSetting;
    }

    public final boolean isAdminApplication(AndroidPackage androidPackage) {
        int size = androidPackage.getReceivers().size();
        for (int i = 0; i < size; i++) {
            ParsedActivity parsedActivity = (ParsedActivity) androidPackage.getReceivers().get(i);
            if (parsedActivity != null && parsedActivity.getPermission() != null && parsedActivity.getName() != null && parsedActivity.getPermission().equals("android.permission.BIND_DEVICE_ADMIN")) {
                return true;
            }
        }
        return false;
    }

    public final IPackageManager getIPackageManager() {
        return ActivityThread.getPackageManager();
    }
}
