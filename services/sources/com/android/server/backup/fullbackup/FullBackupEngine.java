package com.android.server.backup.fullbackup;

import android.app.IBackupAgent;
import android.app.backup.FullBackupDataOutput;
import android.app.backup.IBackupCallback;
import android.app.backup.IBackupManagerMonitor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Slog;
import com.android.server.AppWidgetBackupBridge;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.BackupManagerYuva;
import com.android.server.backup.BackupRestoreTask;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.remote.RemoteCall;
import com.android.server.backup.remote.RemoteCallable;
import com.android.server.backup.utils.BackupEligibilityRules;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;

/* loaded from: classes.dex */
public class FullBackupEngine {
    public static BackupManagerYuva mBackupManagerYuva;
    public UserBackupManagerService backupManagerService;
    public IBackupAgent mAgent;
    public final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    public final BackupEligibilityRules mBackupEligibilityRules;
    public int mExtraFlag;
    public boolean mIncludeApks;
    public final IBackupManagerMonitor mMonitor;
    public final int mOpToken;
    public OutputStream mOutput;
    public final PackageInfo mPkg;
    public FullBackupPreflight mPreflightHook;
    public boolean mPrivilegeApp;
    public final long mQuota;
    public String[] mSmartSwitchBackupPath;
    public BackupRestoreTask mTimeoutMonitor;
    public final int mTransportFlags;

    /* loaded from: classes.dex */
    public class FullBackupRunner implements Runnable {
        public boolean isDisableDataExtractionRules;
        public final IBackupAgent mAgent;
        public int mExtraFlag;
        public final File mFilesDir;
        public final boolean mIncludeApks;
        public final PackageInfo mPackage;
        public final PackageManager mPackageManager;
        public final ParcelFileDescriptor mPipe;
        public String[] mSmartSwitchBackupPath;
        public final int mToken;
        public final int mUserId;

        public FullBackupRunner(UserBackupManagerService userBackupManagerService, PackageInfo packageInfo, IBackupAgent iBackupAgent, ParcelFileDescriptor parcelFileDescriptor, int i, boolean z, int i2, String[] strArr) {
            this.isDisableDataExtractionRules = false;
            this.mUserId = userBackupManagerService.getUserId();
            this.mPackageManager = FullBackupEngine.this.backupManagerService.getPackageManager();
            this.mPackage = packageInfo;
            this.mAgent = iBackupAgent;
            this.mPipe = ParcelFileDescriptor.dup(parcelFileDescriptor.getFileDescriptor());
            this.mToken = i;
            this.mIncludeApks = z;
            this.mFilesDir = userBackupManagerService.getDataDir();
            this.mExtraFlag = i2;
            this.mSmartSwitchBackupPath = strArr;
            this.isDisableDataExtractionRules = userBackupManagerService.getDataExtractionRuleStatus();
        }

        @Override // java.lang.Runnable
        public void run() {
            long fullBackupAgentTimeoutMillis;
            try {
                try {
                    AppMetadataBackupWriter appMetadataBackupWriter = new AppMetadataBackupWriter(new FullBackupDataOutput(this.mPipe, -1L, FullBackupEngine.this.mTransportFlags), this.mPackageManager);
                    String str = this.mPackage.packageName;
                    boolean equals = "com.android.sharedstoragebackup".equals(str);
                    boolean shouldWriteApk = shouldWriteApk(this.mPackage.applicationInfo, this.mIncludeApks, equals);
                    if (!equals) {
                        File file = new File(this.mFilesDir, "_manifest");
                        appMetadataBackupWriter.backupManifest(this.mPackage, file, this.mFilesDir, shouldWriteApk);
                        file.delete();
                        byte[] widgetState = AppWidgetBackupBridge.getWidgetState(str, this.mUserId);
                        if (widgetState != null && widgetState.length > 0) {
                            File file2 = new File(this.mFilesDir, "_meta");
                            appMetadataBackupWriter.backupWidget(this.mPackage, file2, this.mFilesDir, widgetState);
                            file2.delete();
                        }
                    }
                    if (shouldWriteApk) {
                        appMetadataBackupWriter.backupApk(this.mPackage);
                        appMetadataBackupWriter.backupObb(this.mUserId, this.mPackage);
                    }
                    Slog.d("BackupManagerService", "Calling doFullBackup() on " + str);
                    if (equals) {
                        fullBackupAgentTimeoutMillis = FullBackupEngine.this.mAgentTimeoutParameters.getSharedBackupAgentTimeoutMillis();
                    } else {
                        fullBackupAgentTimeoutMillis = FullBackupEngine.this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis();
                    }
                    FullBackupEngine.this.backupManagerService.prepareOperationTimeout(this.mToken, fullBackupAgentTimeoutMillis, FullBackupEngine.this.mTimeoutMonitor, 0);
                    if (this.mSmartSwitchBackupPath != null) {
                        this.mAgent.doDisableDataExtractionRules(this.isDisableDataExtractionRules);
                        this.mAgent.doFullBackupPath(this.mPipe, FullBackupEngine.this.mQuota, this.mToken, FullBackupEngine.this.backupManagerService.getBackupManagerBinder(), FullBackupEngine.this.mTransportFlags, this.mSmartSwitchBackupPath);
                    } else {
                        this.mAgent.doFullBackup(this.mPipe, FullBackupEngine.this.mQuota, this.mToken, FullBackupEngine.this.backupManagerService.getBackupManagerBinder(), FullBackupEngine.this.mTransportFlags);
                    }
                } catch (RemoteException e) {
                    Slog.e("BackupManagerService", "Remote agent vanished during full backup of " + this.mPackage.packageName, e);
                    if (FullBackupEngine.mBackupManagerYuva != null) {
                        FullBackupEngine.mBackupManagerYuva.setMemorySaverBackupFail();
                        FullBackupEngine.mBackupManagerYuva.sendEndBackupCallback();
                    }
                } catch (IOException e2) {
                    Slog.e("BackupManagerService", "Error running full backup for " + this.mPackage.packageName, e2);
                    if (FullBackupEngine.mBackupManagerYuva != null) {
                        FullBackupEngine.mBackupManagerYuva.setMemorySaverBackupFail();
                        FullBackupEngine.mBackupManagerYuva.sendEndBackupCallback();
                    }
                }
                try {
                    this.mPipe.close();
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                try {
                    this.mPipe.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        }

        public final boolean shouldWriteApk(ApplicationInfo applicationInfo, boolean z, boolean z2) {
            int i = applicationInfo.flags;
            boolean z3 = (i & 1) != 0;
            boolean z4 = (i & 128) != 0;
            if (!z || z2) {
                return false;
            }
            return !z3 || z4;
        }
    }

    public FullBackupEngine(UserBackupManagerService userBackupManagerService, OutputStream outputStream, FullBackupPreflight fullBackupPreflight, PackageInfo packageInfo, boolean z, BackupRestoreTask backupRestoreTask, long j, int i, int i2, BackupEligibilityRules backupEligibilityRules, int i3, boolean z2, String[] strArr, IBackupManagerMonitor iBackupManagerMonitor) {
        this.backupManagerService = userBackupManagerService;
        this.mOutput = outputStream;
        this.mPreflightHook = fullBackupPreflight;
        this.mPkg = packageInfo;
        this.mIncludeApks = z;
        this.mTimeoutMonitor = backupRestoreTask;
        this.mQuota = j;
        this.mOpToken = i;
        this.mTransportFlags = i2;
        this.mExtraFlag = i3;
        this.mPrivilegeApp = z2;
        this.mSmartSwitchBackupPath = strArr;
        BackupAgentTimeoutParameters agentTimeoutParameters = userBackupManagerService.getAgentTimeoutParameters();
        Objects.requireNonNull(agentTimeoutParameters, "Timeout parameters cannot be null");
        this.mAgentTimeoutParameters = agentTimeoutParameters;
        this.mBackupEligibilityRules = backupEligibilityRules;
        mBackupManagerYuva = BackupManagerYuva.getInstanceBackupYuva();
        this.mMonitor = iBackupManagerMonitor;
    }

    public int preflightCheck() {
        if (this.mPreflightHook == null) {
            return 0;
        }
        if (initializeAgent()) {
            int preflightFullBackup = this.mPreflightHook.preflightFullBackup(this.mPkg, this.mAgent);
            this.mAgent.clearBackupRestoreEventLogger();
            return preflightFullBackup;
        }
        Slog.w("BackupManagerService", "Unable to bind to full agent for " + this.mPkg.packageName);
        return -1003;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x009b, code lost:
    
        if (r0 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f4, code lost:
    
        r14 = -1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f1, code lost:
    
        r0.setMemorySaverBackupFail();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ef, code lost:
    
        if (r0 == null) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int backupOnePackage() {
        /*
            Method dump skipped, instructions count: 314
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.fullbackup.FullBackupEngine.backupOnePackage():int");
    }

    public void sendQuotaExceeded(final long j, final long j2) {
        if (initializeAgent()) {
            try {
                RemoteCall.execute(new RemoteCallable() { // from class: com.android.server.backup.fullbackup.FullBackupEngine$$ExternalSyntheticLambda0
                    @Override // com.android.server.backup.remote.RemoteCallable
                    public final void call(Object obj) {
                        FullBackupEngine.this.lambda$sendQuotaExceeded$0(j, j2, (IBackupCallback) obj);
                    }
                }, this.mAgentTimeoutParameters.getQuotaExceededTimeoutMillis());
            } catch (RemoteException unused) {
                Slog.e("BackupManagerService", "Remote exception while telling agent about quota exceeded");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendQuotaExceeded$0(long j, long j2, IBackupCallback iBackupCallback) {
        this.mAgent.doQuotaExceeded(j, j2, iBackupCallback);
    }

    public final boolean initializeAgent() {
        if (this.mAgent == null) {
            this.mAgent = this.backupManagerService.bindToAgentSynchronous(this.mPkg.applicationInfo, 1, this.mBackupEligibilityRules.getBackupDestination());
        }
        return this.mAgent != null;
    }

    public final void tearDown() {
        PackageInfo packageInfo = this.mPkg;
        if (packageInfo != null) {
            this.backupManagerService.tearDownAgentAndKill(packageInfo.applicationInfo);
        }
    }
}
