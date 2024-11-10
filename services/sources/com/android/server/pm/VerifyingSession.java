package com.android.server.pm;

import android.app.AppOpsManager;
import android.app.BroadcastOptions;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.DataLoaderParams;
import android.content.pm.IPackageInstallObserver2;
import android.content.pm.PackageInfoLite;
import android.content.pm.PackageInstaller;
import android.content.pm.ResolveInfo;
import android.content.pm.SigningDetails;
import android.content.pm.VerifierInfo;
import android.content.pm.parsing.PackageLite;
import android.net.Uri;
import android.os.Bundle;
import android.os.IInstalld;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.util.Pair;
import android.util.Slog;
import com.android.server.knox.ContainerDependencyWrapper;
import com.samsung.android.knox.container.IKnoxContainerManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class VerifyingSession {
    public final int mDataLoaderType;
    public final int mInstallFlags;
    public final InstallPackageHelper mInstallPackageHelper;
    public final InstallSource mInstallSource;
    public final boolean mIsInherit;
    public final boolean mIsStaged;
    public final IPackageInstallObserver2 mObserver;
    public final OriginInfo mOriginInfo;
    public final String mPackageAbiOverride;
    public final PackageLite mPackageLite;
    public MultiPackageVerifyingSession mParentVerifyingSession;
    public final PackageManagerService mPm;
    public final long mRequiredInstalledVersionCode;
    public final int mSessionId;
    public final SigningDetails mSigningDetails;
    public final UserHandle mUser;
    public final boolean mUserActionRequired;
    public final int mUserActionRequiredType;
    public final VerificationInfo mVerificationInfo;
    public boolean mWaitForEnableRollbackToComplete;
    public boolean mWaitForIntegrityVerificationToComplete;
    public boolean mWaitForVerificationToComplete;
    public int sessionFlags;
    public int mRet = 1;
    public String mErrorMessage = null;

    public final boolean isIntegrityVerificationEnabled() {
        return true;
    }

    public VerifyingSession(UserHandle userHandle, File file, String str, IPackageInstallObserver2 iPackageInstallObserver2, PackageInstaller.SessionParams sessionParams, InstallSource installSource, int i, SigningDetails signingDetails, int i2, PackageLite packageLite, boolean z, PackageManagerService packageManagerService) {
        this.sessionFlags = 0;
        this.mPm = packageManagerService;
        this.mUser = userHandle;
        this.mInstallPackageHelper = new InstallPackageHelper(packageManagerService);
        if (file != null) {
            this.mOriginInfo = OriginInfo.fromStagedFile(file);
        } else {
            this.mOriginInfo = OriginInfo.fromStagedContainer(str);
        }
        this.mObserver = iPackageInstallObserver2;
        this.mInstallFlags = sessionParams.installFlags;
        this.mInstallSource = installSource;
        this.mPackageAbiOverride = sessionParams.abiOverride;
        this.mVerificationInfo = new VerificationInfo(sessionParams.originatingUri, sessionParams.referrerUri, sessionParams.originatingUid, i);
        this.mSigningDetails = signingDetails;
        this.mRequiredInstalledVersionCode = sessionParams.requiredInstalledVersionCode;
        DataLoaderParams dataLoaderParams = sessionParams.dataLoaderParams;
        this.mDataLoaderType = dataLoaderParams != null ? dataLoaderParams.getType() : 0;
        this.mSessionId = i2;
        this.sessionFlags = sessionParams.sessionFlags;
        this.mPackageLite = packageLite;
        this.mUserActionRequired = z;
        this.mUserActionRequiredType = sessionParams.requireUserAction;
        this.mIsInherit = sessionParams.mode == 2;
        this.mIsStaged = sessionParams.isStaged;
    }

    public String toString() {
        return "VerifyingSession{" + Integer.toHexString(System.identityHashCode(this)) + " file=" + this.mOriginInfo.mFile + "}";
    }

    public void handleStartVerify() {
        PackageInfoLite minimalPackageInfo = PackageManagerServiceUtils.getMinimalPackageInfo(this.mPm.mContext, this.mPackageLite, this.mOriginInfo.mResolvedPath, this.mInstallFlags, this.mPackageAbiOverride);
        Pair verifyReplacingVersionCode = this.mInstallPackageHelper.verifyReplacingVersionCode(minimalPackageInfo, this.mRequiredInstalledVersionCode, this.mInstallFlags);
        setReturnCode(((Integer) verifyReplacingVersionCode.first).intValue(), (String) verifyReplacingVersionCode.second);
        if (this.mRet == 1 && !this.mOriginInfo.mExisting) {
            if (!isApex()) {
                sendApkVerificationRequest(minimalPackageInfo);
            }
            if ((this.mInstallFlags & 262144) != 0) {
                sendEnableRollbackRequest();
            }
        }
    }

    public final void sendApkVerificationRequest(PackageInfoLite packageInfoLite) {
        PackageManagerService packageManagerService = this.mPm;
        int i = packageManagerService.mPendingVerificationToken;
        packageManagerService.mPendingVerificationToken = i + 1;
        PackageVerificationState packageVerificationState = new PackageVerificationState(this);
        this.mPm.mPendingVerification.append(i, packageVerificationState);
        sendIntegrityVerificationRequest(i, packageInfoLite, packageVerificationState);
        sendPackageVerificationRequest(i, packageInfoLite, packageVerificationState);
        if (packageVerificationState.areAllVerificationsComplete()) {
            this.mPm.mPendingVerification.remove(i);
        }
        UserHandle user = getUser();
        if (user == UserHandle.ALL) {
            user = UserHandle.SYSTEM;
        }
        try {
            Intent intent = new Intent("com.samsung.android.intent.action.PACKAGE_INSTALL_STARTED");
            intent.putExtra("packageName", packageInfoLite.packageName);
            intent.putExtra("userID", user.getIdentifier());
            this.mPm.mContext.sendBroadcastAsUser(intent, UserHandle.CURRENT, "android.permission.HARDWARE_TEST");
            Slog.d("PackageManager", "sendBroadcastAsUser. PACKAGE_INSTALL_STARTED");
        } catch (IllegalStateException e) {
            Slog.w("PackageManager", "Failed to send an intent for PACKAGE_INSTALL_STARTED: ", e);
        }
    }

    public void sendEnableRollbackRequest() {
        PackageManagerService packageManagerService = this.mPm;
        int i = packageManagerService.mPendingEnableRollbackToken;
        packageManagerService.mPendingEnableRollbackToken = i + 1;
        Trace.asyncTraceBegin(262144L, "enable_rollback", i);
        this.mPm.mPendingEnableRollback.append(i, this);
        Intent intent = new Intent("android.intent.action.PACKAGE_ENABLE_ROLLBACK");
        intent.putExtra("android.content.pm.extra.ENABLE_ROLLBACK_TOKEN", i);
        intent.putExtra("android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID", this.mSessionId);
        intent.setType("application/vnd.android.package-archive");
        intent.addFlags(268435457);
        intent.addFlags(67108864);
        this.mPm.mContext.sendBroadcastAsUser(intent, UserHandle.SYSTEM, "android.permission.PACKAGE_ROLLBACK_AGENT");
        this.mWaitForEnableRollbackToComplete = true;
        long j = DeviceConfig.getLong("rollback", "enable_rollback_timeout", 10000L);
        long j2 = j >= 0 ? j : 10000L;
        Message obtainMessage = this.mPm.mHandler.obtainMessage(22);
        obtainMessage.arg1 = i;
        obtainMessage.arg2 = this.mSessionId;
        this.mPm.mHandler.sendMessageDelayed(obtainMessage, j2);
    }

    public void sendIntegrityVerificationRequest(final int i, PackageInfoLite packageInfoLite, PackageVerificationState packageVerificationState) {
        if (!isIntegrityVerificationEnabled()) {
            packageVerificationState.setIntegrityVerificationResult(1);
            return;
        }
        InstallSource installSource = this.mInstallSource;
        if (installSource != null && this.mVerificationInfo != null && "PrePackageInstaller".equals(installSource.mInitiatingPackageName) && this.mVerificationInfo.mInstallerUid == 1000) {
            packageVerificationState.setIntegrityVerificationResult(1);
            return;
        }
        Intent intent = new Intent("android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION");
        intent.setDataAndType(Uri.fromFile(new File(this.mOriginInfo.mResolvedPath)), "application/vnd.android.package-archive");
        intent.addFlags(1342177281);
        intent.putExtra("android.content.pm.extra.VERIFICATION_ID", i);
        intent.putExtra("android.intent.extra.PACKAGE_NAME", packageInfoLite.packageName);
        intent.putExtra("android.intent.extra.VERSION_CODE", packageInfoLite.versionCode);
        intent.putExtra("android.intent.extra.LONG_VERSION_CODE", packageInfoLite.getLongVersionCode());
        populateInstallerExtras(intent);
        intent.setPackage("android");
        this.mPm.mContext.sendOrderedBroadcastAsUser(intent, UserHandle.SYSTEM, null, -1, BroadcastOptions.makeBasic().toBundle(), new BroadcastReceiver() { // from class: com.android.server.pm.VerifyingSession.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent2) {
                Message obtainMessage = VerifyingSession.this.mPm.mHandler.obtainMessage(26);
                obtainMessage.arg1 = i;
                VerifyingSession.this.mPm.mHandler.sendMessageDelayed(obtainMessage, VerifyingSession.this.getIntegrityVerificationTimeout());
            }
        }, null, 0, null, null);
        Trace.asyncTraceBegin(262144L, "integrity_verification", i);
        this.mWaitForIntegrityVerificationToComplete = true;
    }

    public final long getIntegrityVerificationTimeout() {
        return Math.max(Settings.Global.getLong(this.mPm.mContext.getContentResolver(), "app_integrity_verification_timeout", 30000L), 30000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x035d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void sendPackageVerificationRequest(final int r46, android.content.pm.PackageInfoLite r47, com.android.server.pm.PackageVerificationState r48) {
        /*
            Method dump skipped, instructions count: 1040
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.VerifyingSession.sendPackageVerificationRequest(int, android.content.pm.PackageInfoLite, com.android.server.pm.PackageVerificationState):void");
    }

    public final void startVerificationTimeoutCountdown(int i, boolean z, PackageVerificationResponse packageVerificationResponse, long j) {
        Message obtainMessage = this.mPm.mHandler.obtainMessage(16);
        obtainMessage.arg1 = i;
        obtainMessage.arg2 = z ? 1 : 0;
        obtainMessage.obj = packageVerificationResponse;
        this.mPm.mHandler.sendMessageDelayed(obtainMessage, j);
    }

    public int getDefaultVerificationResponse() {
        if (this.mPm.mUserManager.hasUserRestriction("ensure_verify_apps", getUser().getIdentifier())) {
            return -1;
        }
        return Settings.Global.getInt(this.mPm.mContext.getContentResolver(), "verifier_default_response", 1);
    }

    public final boolean packageExists(String str) {
        return this.mPm.snapshotComputer().getPackageStateInternal(str) != null;
    }

    public final boolean isAdbVerificationEnabled(PackageInfoLite packageInfoLite, int i, boolean z) {
        boolean z2 = Settings.Global.getInt(this.mPm.mContext.getContentResolver(), "verifier_verify_adb_installs", 1) != 0;
        if (this.mPm.isUserRestricted(i, "ensure_verify_apps")) {
            if (!z2) {
                Slog.w("PackageManager", "Force verification of ADB install because of user restriction.");
            }
            return true;
        }
        if (!z2) {
            return false;
        }
        if (z && packageExists(packageInfoLite.packageName)) {
            return !packageInfoLite.debuggable;
        }
        return true;
    }

    public final boolean isVerificationEnabled(PackageInfoLite packageInfoLite, int i, List list) {
        ActivityInfo activityInfo;
        List packagesFromInstallWhiteList;
        VerificationInfo verificationInfo = this.mVerificationInfo;
        int i2 = verificationInfo == null ? -1 : verificationInfo.mInstallerUid;
        boolean z = (this.mInstallFlags & 524288) != 0;
        try {
            packagesFromInstallWhiteList = IKnoxContainerManager.Stub.asInterface(ServiceManager.getService("mum_container_policy")).getPackagesFromInstallWhiteList(ContainerDependencyWrapper.getContextInfo(ContainerDependencyWrapper.getOwnerUidFromEdm(this.mPm.mContext, i), i));
            Iterator it = packagesFromInstallWhiteList.iterator();
            while (it.hasNext()) {
                Slog.i("PackageManager", "isVerificationEnabled :: approvedInstaller : " + ((String) it.next()));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (packagesFromInstallWhiteList.contains(".*")) {
            Slog.i("PackageManager", "isVerificationEnabled :: installer policy contains *.");
            if ((this.mInstallFlags & 32) != 0) {
                return isAdbVerificationEnabled(packageInfoLite, i, z);
            }
            if (z) {
                return false;
            }
            if (isInstant() && (activityInfo = this.mPm.mInstantAppInstallerActivity) != null) {
                String str = activityInfo.packageName;
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    String str2 = (String) it2.next();
                    if (str.equals(str2)) {
                        try {
                            ((AppOpsManager) this.mPm.mInjector.getSystemService(AppOpsManager.class)).checkPackage(i2, str2);
                            return false;
                        } catch (SecurityException unused) {
                            continue;
                        }
                    }
                }
            }
            return (this.sessionFlags & 33554432) == 0;
        }
        Slog.i("PackageManager", "isVerificationEnabled :: installer policy exits.");
        return false;
    }

    public final List matchVerifiers(PackageInfoLite packageInfoLite, List list, PackageVerificationState packageVerificationState) {
        int uidForVerifier;
        VerifierInfo[] verifierInfoArr = packageInfoLite.verifiers;
        if (verifierInfoArr == null || verifierInfoArr.length == 0) {
            return null;
        }
        int length = verifierInfoArr.length;
        ArrayList arrayList = new ArrayList(length + 1);
        for (int i = 0; i < length; i++) {
            VerifierInfo verifierInfo = packageInfoLite.verifiers[i];
            ComponentName matchComponentForVerifier = matchComponentForVerifier(verifierInfo.packageName, list);
            if (matchComponentForVerifier != null && (uidForVerifier = this.mInstallPackageHelper.getUidForVerifier(verifierInfo)) != -1) {
                arrayList.add(matchComponentForVerifier);
                packageVerificationState.addSufficientVerifier(uidForVerifier);
            }
        }
        return arrayList;
    }

    public static ComponentName matchComponentForVerifier(String str, List list) {
        ActivityInfo activityInfo;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                activityInfo = null;
                break;
            }
            ResolveInfo resolveInfo = (ResolveInfo) list.get(i);
            ActivityInfo activityInfo2 = resolveInfo.activityInfo;
            if (activityInfo2 != null && str.equals(activityInfo2.packageName)) {
                activityInfo = resolveInfo.activityInfo;
                break;
            }
            i++;
        }
        if (activityInfo == null) {
            return null;
        }
        return new ComponentName(activityInfo.packageName, activityInfo.name);
    }

    public void populateInstallerExtras(Intent intent) {
        intent.putExtra("android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE", this.mInstallSource.mInitiatingPackageName);
        VerificationInfo verificationInfo = this.mVerificationInfo;
        if (verificationInfo != null) {
            Uri uri = verificationInfo.mOriginatingUri;
            if (uri != null) {
                intent.putExtra("android.intent.extra.ORIGINATING_URI", uri);
            }
            Uri uri2 = this.mVerificationInfo.mReferrer;
            if (uri2 != null) {
                intent.putExtra("android.intent.extra.REFERRER", uri2);
            }
            int i = this.mVerificationInfo.mOriginatingUid;
            if (i >= 0) {
                intent.putExtra("android.intent.extra.ORIGINATING_UID", i);
            }
            int i2 = this.mVerificationInfo.mInstallerUid;
            if (i2 >= 0) {
                intent.putExtra("android.content.pm.extra.VERIFICATION_INSTALLER_UID", i2);
            }
        }
    }

    public void setReturnCode(int i, String str) {
        if (this.mRet == 1) {
            this.mRet = i;
            this.mErrorMessage = str;
        }
    }

    public void handleVerificationFinished() {
        this.mWaitForVerificationToComplete = false;
        handleReturnCode();
    }

    public void handleIntegrityVerificationFinished() {
        this.mWaitForIntegrityVerificationToComplete = false;
        handleReturnCode();
    }

    public void handleRollbackEnabled() {
        this.mWaitForEnableRollbackToComplete = false;
        handleReturnCode();
    }

    public void handleReturnCode() {
        if (this.mWaitForVerificationToComplete || this.mWaitForIntegrityVerificationToComplete || this.mWaitForEnableRollbackToComplete) {
            return;
        }
        sendVerificationCompleteNotification();
        if (this.mRet != 1) {
            PackageMetrics.onVerificationFailed(this);
        }
    }

    public final void sendVerificationCompleteNotification() {
        MultiPackageVerifyingSession multiPackageVerifyingSession = this.mParentVerifyingSession;
        if (multiPackageVerifyingSession != null) {
            multiPackageVerifyingSession.trySendVerificationCompleteNotification(this);
            return;
        }
        try {
            this.mObserver.onPackageInstalled((String) null, this.mRet, this.mErrorMessage, new Bundle());
        } catch (RemoteException unused) {
            Slog.i("PackageManager", "Observer no longer exists.");
        }
    }

    public final void start() {
        Trace.asyncTraceEnd(262144L, "queueVerify", System.identityHashCode(this));
        Trace.traceBegin(262144L, "start");
        handleStartVerify();
        handleReturnCode();
        Trace.traceEnd(262144L);
    }

    public void verifyStage() {
        Trace.asyncTraceBegin(262144L, "queueVerify", System.identityHashCode(this));
        this.mPm.mHandler.post(new Runnable() { // from class: com.android.server.pm.VerifyingSession$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                VerifyingSession.this.start();
            }
        });
    }

    public void verifyStage(List list) {
        final MultiPackageVerifyingSession multiPackageVerifyingSession = new MultiPackageVerifyingSession(this, list);
        this.mPm.mHandler.post(new Runnable() { // from class: com.android.server.pm.VerifyingSession$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MultiPackageVerifyingSession.this.start();
            }
        });
    }

    public int getRet() {
        return this.mRet;
    }

    public String getErrorMessage() {
        return this.mErrorMessage;
    }

    public UserHandle getUser() {
        return this.mUser;
    }

    public int getSessionId() {
        return this.mSessionId;
    }

    public int getDataLoaderType() {
        return this.mDataLoaderType;
    }

    public int getUserActionRequiredType() {
        return this.mUserActionRequiredType;
    }

    public boolean isInstant() {
        return (this.mInstallFlags & IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES) != 0;
    }

    public boolean isInherit() {
        return this.mIsInherit;
    }

    public int getInstallerPackageUid() {
        return this.mInstallSource.mInstallerPackageUid;
    }

    public boolean isApex() {
        return (this.mInstallFlags & IInstalld.FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES) != 0;
    }

    public boolean isStaged() {
        return this.mIsStaged;
    }
}
