package com.android.server.backup.restore;

import android.app.IBackupAgent;
import android.app.backup.IBackupManagerMonitor;
import android.app.backup.IFullBackupRestoreObserver;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.provider.Settings;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Slog;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.BackupManagerYuva;
import com.android.server.backup.BackupRestoreTask;
import com.android.server.backup.FileMetadata;
import com.android.server.backup.OperationStorage;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.fullbackup.FullBackupObbConnection;
import com.android.server.backup.utils.BackupEligibilityRules;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;

/* loaded from: classes.dex */
public class FullRestoreEngine extends RestoreEngine {
    public static BackupManagerYuva mBackupManagerYuva;
    public IBackupAgent mAgent;
    public String mAgentPackage;
    public final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    public final boolean mAllowApks;
    public final HashMap mApkCount;
    public long mAppVersion;
    public final BackupEligibilityRules mBackupEligibilityRules;
    public final UserBackupManagerService mBackupManagerService;
    public final byte[] mBuffer;
    public final HashSet mClearedPackages;
    public final RestoreDeleteObserver mDeleteObserver;
    public final int mEphemeralOpToken;
    public final boolean mIsAdbRestore;
    public final HashMap mManifestSignatures;
    public final IBackupManagerMonitor mMonitor;
    public final BackupRestoreTask mMonitorTask;
    public FullBackupObbConnection mObbConnection;
    public IFullBackupRestoreObserver mObserver;
    public final PackageInfo mOnlyPackage;
    public final OperationStorage mOperationStorage;
    public final HashMap mPackageInstallers;
    public final HashMap mPackagePolicies;
    public ParcelFileDescriptor[] mPipes;
    public boolean mPipesClosed;
    public final Object mPipesLock;
    public boolean mPrivilegeApp;
    public FileMetadata mReadOnlyParent;
    public final HashMap mSessionFlag;
    public final HashMap mSessionId;
    public ApplicationInfo mTargetApp;
    public final int mUserId;
    public byte[] mWidgetData;
    public boolean restorePass;

    public static /* synthetic */ void lambda$restoreOneFile$0(long j) {
    }

    public FullRestoreEngine(UserBackupManagerService userBackupManagerService, OperationStorage operationStorage, BackupRestoreTask backupRestoreTask, IFullBackupRestoreObserver iFullBackupRestoreObserver, IBackupManagerMonitor iBackupManagerMonitor, PackageInfo packageInfo, boolean z, int i, boolean z2, BackupEligibilityRules backupEligibilityRules) {
        this.mDeleteObserver = new RestoreDeleteObserver();
        this.mObbConnection = null;
        this.mPackagePolicies = new HashMap();
        this.mPackageInstallers = new HashMap();
        this.mApkCount = new HashMap();
        this.mSessionFlag = new HashMap();
        this.mSessionId = new HashMap();
        this.mManifestSignatures = new HashMap();
        this.mClearedPackages = new HashSet();
        this.mPipes = null;
        this.mPipesLock = new Object();
        this.mWidgetData = null;
        this.restorePass = false;
        this.mPrivilegeApp = false;
        this.mReadOnlyParent = null;
        this.mBackupManagerService = userBackupManagerService;
        this.mOperationStorage = operationStorage;
        this.mEphemeralOpToken = i;
        this.mMonitorTask = backupRestoreTask;
        this.mObserver = iFullBackupRestoreObserver;
        this.mMonitor = iBackupManagerMonitor;
        this.mOnlyPackage = packageInfo;
        this.mAllowApks = z;
        this.mBuffer = new byte[32768];
        BackupAgentTimeoutParameters agentTimeoutParameters = userBackupManagerService.getAgentTimeoutParameters();
        Objects.requireNonNull(agentTimeoutParameters, "Timeout parameters cannot be null");
        this.mAgentTimeoutParameters = agentTimeoutParameters;
        this.mIsAdbRestore = z2;
        this.mUserId = userBackupManagerService.getUserId();
        this.mBackupEligibilityRules = backupEligibilityRules;
        if (UserBackupManagerService.isYuvaSupported()) {
            Slog.d("BackupManagerService", "Backup Manager Yuva is Supported");
            mBackupManagerYuva = BackupManagerYuva.getInstanceBackupYuva();
        }
    }

    public FullRestoreEngine() {
        this.mDeleteObserver = new RestoreDeleteObserver();
        this.mObbConnection = null;
        this.mPackagePolicies = new HashMap();
        this.mPackageInstallers = new HashMap();
        this.mApkCount = new HashMap();
        this.mSessionFlag = new HashMap();
        this.mSessionId = new HashMap();
        this.mManifestSignatures = new HashMap();
        this.mClearedPackages = new HashSet();
        this.mPipes = null;
        this.mPipesLock = new Object();
        this.mWidgetData = null;
        this.restorePass = false;
        this.mPrivilegeApp = false;
        this.mReadOnlyParent = null;
        this.mIsAdbRestore = false;
        this.mAllowApks = false;
        this.mEphemeralOpToken = 0;
        this.mUserId = 0;
        this.mBackupEligibilityRules = null;
        this.mAgentTimeoutParameters = null;
        this.mBuffer = null;
        this.mBackupManagerService = null;
        this.mOperationStorage = null;
        this.mMonitor = null;
        this.mMonitorTask = null;
        this.mOnlyPackage = null;
    }

    public void setPrivilegeApp(boolean z) {
        this.mPrivilegeApp = z;
    }

    public boolean getRestorePass() {
        return this.restorePass;
    }

    public IBackupAgent getAgent() {
        return this.mAgent;
    }

    public byte[] getWidgetData() {
        return this.mWidgetData;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:54|55|(1:56)|(3:58|59|(17:(1:62)(2:298|(1:300)(15:301|64|65|66|(1:293)|70|(8:74|75|(3:77|(1:81)|80)|82|(1:84)|85|86|(1:88))|(2:96|97)|98|(1:100)|(14:102|(1:104)(1:290)|105|106|107|108|109|110|111|(10:113|114|115|116|117|118|119|120|121|122)(6:237|238|239|240|(3:242|243|244)(4:246|247|248|(1:250)(9:251|(4:253|254|255|256)|261|262|263|264|265|266|267))|245)|123|(7:166|167|168|169|170|(2:171|(4:173|(1:175)(1:193)|176|(1:190)(3:178|(3:180|181|183)(1:189)|184))(2:194|195))|191)(1:125)|(7:147|148|149|150|151|(1:153)|(2:155|156))(1:127)|128)(1:292)|(5:130|(5:133|(1:135)(1:144)|136|(2:139|140)(1:138)|131)|145|141|(1:143))|146|(2:31|(1:33))(1:39)|(2:35|36)(2:37|38)))|63|64|65|66|(1:68)|293|70|(9:72|74|75|(0)|82|(0)|85|86|(0))|(3:94|96|97)|98|(0)|(0)(0)|(0)|146|(0)(0)|(0)(0))(2:302|(4:304|(8:306|(1:308)|309|310|311|312|(1:314)(2:318|(5:320|321|322|(1:324)(1:326)|325))|315)(3:331|(1:333)(1:335)|334)|316|317)(1:336)))(1:342)|337|65|66|(0)|293|70|(0)|(0)|98|(0)|(0)(0)|(0)|146|(0)(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x066d, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x066e, code lost:
    
        r3 = "BackupManagerService";
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0668, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0669, code lost:
    
        r3 = "BackupManagerService";
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 29, insn: 0x0477: MOVE (r31 I:??[OBJECT, ARRAY]) = (r29 I:??[OBJECT, ARRAY]), block:B:285:0x0474 */
    /* JADX WARN: Not initialized variable reg: 29, insn: 0x051e: MOVE (r31 I:??[OBJECT, ARRAY]) = (r29 I:??[OBJECT, ARRAY]), block:B:284:0x051c */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0379 A[Catch: NullPointerException -> 0x0668, IOException -> 0x066d, TRY_LEAVE, TryCatch #43 {IOException -> 0x066d, NullPointerException -> 0x0668, blocks: (B:66:0x02a1, B:98:0x0370, B:102:0x0379, B:290:0x038c), top: B:65:0x02a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0635 A[Catch: NullPointerException -> 0x0664, IOException -> 0x0666, TryCatch #44 {IOException -> 0x0666, NullPointerException -> 0x0664, blocks: (B:151:0x0603, B:153:0x0610, B:155:0x0615, B:130:0x0635, B:133:0x0643, B:135:0x0649, B:136:0x064c, B:138:0x0659, B:144:0x064b, B:141:0x065c, B:143:0x0660), top: B:150:0x0603 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x05d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0560 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x06a9  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x062d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x06b2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x06c6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x06c8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x06c3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0684  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02a7 A[Catch: NullPointerException -> 0x02b0, IOException -> 0x02b7, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x02b7, blocks: (B:68:0x02a7, B:72:0x02c4, B:86:0x0324, B:88:0x0328, B:90:0x031d, B:92:0x0321, B:94:0x0349, B:96:0x0351, B:104:0x0383, B:316:0x027d, B:322:0x023a, B:324:0x0242, B:325:0x0247, B:326:0x0245, B:331:0x0257, B:333:0x0275, B:334:0x027a, B:335:0x0278, B:336:0x0284), top: B:56:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02c4 A[Catch: NullPointerException -> 0x02b0, IOException -> 0x02b7, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x02b7, blocks: (B:68:0x02a7, B:72:0x02c4, B:86:0x0324, B:88:0x0328, B:90:0x031d, B:92:0x0321, B:94:0x0349, B:96:0x0351, B:104:0x0383, B:316:0x027d, B:322:0x023a, B:324:0x0242, B:325:0x0247, B:326:0x0245, B:331:0x0257, B:333:0x0275, B:334:0x027a, B:335:0x0278, B:336:0x0284), top: B:56:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02df A[Catch: NullPointerException -> 0x02b0, NameNotFoundException | IOException -> 0x031d, TryCatch #33 {NameNotFoundException | IOException -> 0x031d, blocks: (B:75:0x02c8, B:77:0x02df, B:80:0x02f9, B:81:0x02ef, B:82:0x02fe, B:85:0x030e), top: B:74:0x02c8 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0328 A[Catch: NullPointerException -> 0x02b0, IOException -> 0x02b7, TryCatch #1 {IOException -> 0x02b7, blocks: (B:68:0x02a7, B:72:0x02c4, B:86:0x0324, B:88:0x0328, B:90:0x031d, B:92:0x0321, B:94:0x0349, B:96:0x0351, B:104:0x0383, B:316:0x027d, B:322:0x023a, B:324:0x0242, B:325:0x0247, B:326:0x0245, B:331:0x0257, B:333:0x0275, B:334:0x027a, B:335:0x0278, B:336:0x0284), top: B:56:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0349 A[Catch: NullPointerException -> 0x02b0, IOException -> 0x02b7, TryCatch #1 {IOException -> 0x02b7, blocks: (B:68:0x02a7, B:72:0x02c4, B:86:0x0324, B:88:0x0328, B:90:0x031d, B:92:0x0321, B:94:0x0349, B:96:0x0351, B:104:0x0383, B:316:0x027d, B:322:0x023a, B:324:0x0242, B:325:0x0247, B:326:0x0245, B:331:0x0257, B:333:0x0275, B:334:0x027a, B:335:0x0278, B:336:0x0284), top: B:56:0x013f }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean restoreOneFile(java.io.InputStream r33, boolean r34, byte[] r35, android.content.pm.PackageInfo r36, boolean r37, int r38, android.app.backup.IBackupManagerMonitor r39) {
        /*
            Method dump skipped, instructions count: 1738
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.restore.FullRestoreEngine.restoreOneFile(java.io.InputStream, boolean, byte[], android.content.pm.PackageInfo, boolean, int, android.app.backup.IBackupManagerMonitor):boolean");
    }

    /* renamed from: com.android.server.backup.restore.FullRestoreEngine$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$server$backup$restore$RestorePolicy;

        static {
            int[] iArr = new int[RestorePolicy.values().length];
            $SwitchMap$com$android$server$backup$restore$RestorePolicy = iArr;
            try {
                iArr[RestorePolicy.IGNORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$server$backup$restore$RestorePolicy[RestorePolicy.ACCEPT_IF_APK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$server$backup$restore$RestorePolicy[RestorePolicy.ACCEPT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean shouldSkipReadOnlyDir(FileMetadata fileMetadata) {
        if (isValidParent(this.mReadOnlyParent, fileMetadata)) {
            return true;
        }
        if (isReadOnlyDir(fileMetadata)) {
            this.mReadOnlyParent = fileMetadata;
            Slog.w("BackupManagerService", "Skipping restore of " + fileMetadata.path + " and its contents as read-only dirs are currently not supported.");
            return true;
        }
        this.mReadOnlyParent = null;
        return false;
    }

    public static boolean isValidParent(FileMetadata fileMetadata, FileMetadata fileMetadata2) {
        return fileMetadata != null && fileMetadata2.packageName.equals(fileMetadata.packageName) && fileMetadata2.domain.equals(fileMetadata.domain) && fileMetadata2.path.startsWith(getPathWithTrailingSeparator(fileMetadata.path));
    }

    public static String getPathWithTrailingSeparator(String str) {
        String str2 = File.separator;
        if (str.endsWith(str2)) {
            return str;
        }
        return str + str2;
    }

    public static boolean isReadOnlyDir(FileMetadata fileMetadata) {
        return fileMetadata.type == 2 && (fileMetadata.mode & ((long) OsConstants.S_IWUSR)) == 0;
    }

    public final void setUpPipes() {
        synchronized (this.mPipesLock) {
            this.mPipes = ParcelFileDescriptor.createPipe();
            this.mPipesClosed = false;
        }
    }

    public final void tearDownPipes() {
        ParcelFileDescriptor[] parcelFileDescriptorArr;
        synchronized (this.mPipesLock) {
            if (!this.mPipesClosed && (parcelFileDescriptorArr = this.mPipes) != null) {
                try {
                    parcelFileDescriptorArr[0].close();
                    this.mPipes[1].close();
                    this.mPipesClosed = true;
                } catch (IOException e) {
                    Slog.w("BackupManagerService", "Couldn't close agent pipes", e);
                }
            }
        }
    }

    public final void tearDownAgent(ApplicationInfo applicationInfo, boolean z) {
        if (this.mAgent != null) {
            if (z) {
                try {
                    int generateRandomIntegerToken = this.mBackupManagerService.generateRandomIntegerToken();
                    long fullBackupAgentTimeoutMillis = this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis();
                    AdbRestoreFinishedLatch adbRestoreFinishedLatch = new AdbRestoreFinishedLatch(this.mBackupManagerService, this.mOperationStorage, generateRandomIntegerToken);
                    this.mBackupManagerService.prepareOperationTimeout(generateRandomIntegerToken, fullBackupAgentTimeoutMillis, adbRestoreFinishedLatch, 1);
                    if (this.mTargetApp.processName.equals("system")) {
                        new Thread(new AdbRestoreFinishedRunnable(this.mAgent, generateRandomIntegerToken, this.mBackupManagerService), "restore-sys-finished-runner").start();
                    } else {
                        this.mAgent.doRestoreFinished(generateRandomIntegerToken, this.mBackupManagerService.getBackupManagerBinder());
                    }
                    adbRestoreFinishedLatch.await();
                } catch (RemoteException unused) {
                    Slog.d("BackupManagerService", "Lost app trying to shut down");
                }
            }
            this.mBackupManagerService.tearDownAgentAndKill(applicationInfo);
            this.mAgent = null;
        }
    }

    public void handleTimeout() {
        tearDownPipes();
        setResult(-2);
        setRunning(false);
    }

    public final boolean isRestorableFile(FileMetadata fileMetadata) {
        if (this.mBackupEligibilityRules.getBackupDestination() == 1) {
            return true;
        }
        if ("c".equals(fileMetadata.domain)) {
            return false;
        }
        return ("r".equals(fileMetadata.domain) && fileMetadata.path.startsWith("no_backup/")) ? false : true;
    }

    public static boolean isCanonicalFilePath(String str) {
        return (str.contains("..") || str.contains("//")) ? false : true;
    }

    public final boolean shouldForceClearAppDataOnFullRestore(String str) {
        String stringForUser = Settings.Secure.getStringForUser(this.mBackupManagerService.getContext().getContentResolver(), "packages_to_clear_data_before_full_restore", this.mUserId);
        if (TextUtils.isEmpty(stringForUser)) {
            return false;
        }
        return Arrays.asList(stringForUser.split(KnoxVpnFirewallHelper.DELIMITER)).contains(str);
    }
}
