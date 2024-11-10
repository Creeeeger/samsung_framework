package com.android.server.backup.fullbackup;

import android.app.ActivityManagerInternal;
import android.app.IBackupAgent;
import android.app.backup.IBackupCallback;
import android.app.backup.IBackupManagerMonitor;
import android.app.backup.IBackupObserver;
import android.app.backup.IFullBackupRestoreObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Slog;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.BackupRestoreTask;
import com.android.server.backup.FullBackupJob;
import com.android.server.backup.OperationStorage;
import com.android.server.backup.TransportManager;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.fullbackup.PerformFullTransportBackupTask;
import com.android.server.backup.internal.OnTaskFinishedListener;
import com.android.server.backup.remote.RemoteCall;
import com.android.server.backup.remote.RemoteCallable;
import com.android.server.backup.transport.TransportConnection;
import com.android.server.backup.transport.TransportNotAvailableException;
import com.android.server.backup.utils.BackupEligibilityRules;
import com.android.server.backup.utils.BackupManagerMonitorUtils;
import com.android.server.backup.utils.BackupObserverUtils;
import com.google.android.collect.Sets;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class PerformFullTransportBackupTask extends FullBackupTask implements BackupRestoreTask {
    public final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    public ActivityManagerInternal mAmInternal;
    public final BackupEligibilityRules mBackupEligibilityRules;
    public IBackupObserver mBackupObserver;
    public SinglePackageBackupRunner mBackupRunner;
    public final int mBackupRunnerOpToken;
    public volatile boolean mCancelAll;
    public final Object mCancelLock;
    public final int mCurrentOpToken;
    public PackageInfo mCurrentPackage;
    public volatile boolean mIsDoingBackup;
    public FullBackupJob mJob;
    public CountDownLatch mLatch;
    public final OnTaskFinishedListener mListener;
    public IBackupManagerMonitor mMonitor;
    public OperationStorage mOperationStorage;
    public List mPackages;
    public final TransportConnection mTransportConnection;
    public boolean mUpdateSchedule;
    public UserBackupManagerService mUserBackupManagerService;
    public final int mUserId;
    public boolean mUserInitiated;

    @Override // com.android.server.backup.BackupRestoreTask
    public void execute() {
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void operationComplete(long j) {
    }

    public static PerformFullTransportBackupTask newWithCurrentTransport(UserBackupManagerService userBackupManagerService, OperationStorage operationStorage, IFullBackupRestoreObserver iFullBackupRestoreObserver, String[] strArr, boolean z, FullBackupJob fullBackupJob, CountDownLatch countDownLatch, IBackupObserver iBackupObserver, IBackupManagerMonitor iBackupManagerMonitor, boolean z2, String str, BackupEligibilityRules backupEligibilityRules) {
        final TransportManager transportManager = userBackupManagerService.getTransportManager();
        final TransportConnection currentTransportClient = transportManager.getCurrentTransportClient(str);
        if (currentTransportClient == null) {
            throw new IllegalStateException("No TransportConnection available");
        }
        return new PerformFullTransportBackupTask(userBackupManagerService, operationStorage, currentTransportClient, iFullBackupRestoreObserver, strArr, z, fullBackupJob, countDownLatch, iBackupObserver, iBackupManagerMonitor, new OnTaskFinishedListener() { // from class: com.android.server.backup.fullbackup.PerformFullTransportBackupTask$$ExternalSyntheticLambda0
            @Override // com.android.server.backup.internal.OnTaskFinishedListener
            public final void onFinished(String str2) {
                TransportManager.this.disposeOfTransportClient(currentTransportClient, str2);
            }
        }, z2, backupEligibilityRules);
    }

    public PerformFullTransportBackupTask(UserBackupManagerService userBackupManagerService, OperationStorage operationStorage, TransportConnection transportConnection, IFullBackupRestoreObserver iFullBackupRestoreObserver, String[] strArr, boolean z, FullBackupJob fullBackupJob, CountDownLatch countDownLatch, IBackupObserver iBackupObserver, IBackupManagerMonitor iBackupManagerMonitor, OnTaskFinishedListener onTaskFinishedListener, boolean z2, BackupEligibilityRules backupEligibilityRules) {
        super(iFullBackupRestoreObserver);
        this.mCancelLock = new Object();
        this.mUserBackupManagerService = userBackupManagerService;
        this.mOperationStorage = operationStorage;
        this.mTransportConnection = transportConnection;
        this.mUpdateSchedule = z;
        this.mLatch = countDownLatch;
        this.mJob = fullBackupJob;
        this.mPackages = new ArrayList(strArr.length);
        this.mBackupObserver = iBackupObserver;
        this.mMonitor = iBackupManagerMonitor;
        this.mListener = onTaskFinishedListener == null ? OnTaskFinishedListener.NOP : onTaskFinishedListener;
        this.mUserInitiated = z2;
        this.mCurrentOpToken = userBackupManagerService.generateRandomIntegerToken();
        this.mBackupRunnerOpToken = userBackupManagerService.generateRandomIntegerToken();
        BackupAgentTimeoutParameters agentTimeoutParameters = userBackupManagerService.getAgentTimeoutParameters();
        Objects.requireNonNull(agentTimeoutParameters, "Timeout parameters cannot be null");
        this.mAgentTimeoutParameters = agentTimeoutParameters;
        this.mUserId = userBackupManagerService.getUserId();
        this.mBackupEligibilityRules = backupEligibilityRules;
        if (userBackupManagerService.isBackupOperationInProgress()) {
            Slog.d("PFTBT", "Skipping full backup. A backup is already in progress.");
            this.mCancelAll = true;
            return;
        }
        for (String str : strArr) {
            try {
                PackageInfo packageInfoAsUser = userBackupManagerService.getPackageManager().getPackageInfoAsUser(str, 134217728, this.mUserId);
                this.mCurrentPackage = packageInfoAsUser;
                if (!this.mBackupEligibilityRules.appIsEligibleForBackup(packageInfoAsUser.applicationInfo)) {
                    this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 9, this.mCurrentPackage, 3, null);
                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, str, -2001);
                } else if (!this.mBackupEligibilityRules.appGetsFullBackup(packageInfoAsUser)) {
                    this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 10, this.mCurrentPackage, 3, null);
                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, str, -2001);
                } else if (this.mBackupEligibilityRules.appIsStopped(packageInfoAsUser.applicationInfo)) {
                    this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 11, this.mCurrentPackage, 3, null);
                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, str, -2001);
                } else {
                    this.mPackages.add(packageInfoAsUser);
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Slog.i("PFTBT", "Requested package " + str + " not found; ignoring");
                this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 12, this.mCurrentPackage, 3, null);
            }
        }
        this.mPackages = userBackupManagerService.filterUserFacingPackages(this.mPackages);
        HashSet newHashSet = Sets.newHashSet();
        Iterator it = this.mPackages.iterator();
        while (it.hasNext()) {
            newHashSet.add(((PackageInfo) it.next()).packageName);
        }
        Slog.d("PFTBT", "backupmanager pftbt token=" + Integer.toHexString(this.mCurrentOpToken));
        this.mOperationStorage.registerOperationForPackages(this.mCurrentOpToken, 0, newHashSet, this, 2);
    }

    public void unregisterTask() {
        this.mOperationStorage.removeOperation(this.mCurrentOpToken);
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void handleCancel(boolean z) {
        synchronized (this.mCancelLock) {
            if (!z) {
                Slog.wtf("PFTBT", "Expected cancelAll to be true.");
            }
            if (this.mCancelAll) {
                Slog.d("PFTBT", "Ignoring duplicate cancel call.");
                return;
            }
            this.mCancelAll = true;
            if (this.mIsDoingBackup) {
                this.mUserBackupManagerService.handleCancel(this.mBackupRunnerOpToken, z);
                try {
                    this.mTransportConnection.getConnectedTransport("PFTBT.handleCancel()").cancelFullBackup();
                } catch (RemoteException | TransportNotAvailableException e) {
                    Slog.w("PFTBT", "Error calling cancelFullBackup() on transport: " + e);
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:1|2|3|(13:(3:99|100|(1:102)(6:103|104|105|(11:107|108|109|110|(1:112)(1:129)|113|(1:115)|116|72|121|(1:123))(15:133|(2:403|404)|135|136|(1:(7:138|139|141|142|(1:144)(1:391)|145|124)(1:401))|367|(1:369)(1:386)|370|(1:372)|373|5ad|378|(1:380)|86|87)|27|28))|12|13|14|(1:16)(1:36)|17|(1:19)|20|672|25|(1:30)|27|28)|5|6|7|(1:9)(1:65)|10|11|(2:(0)|(1:338))) */
    /* JADX WARN: Can't wrap try/catch for region: R(23:1|2|3|(3:99|100|(1:102)(6:103|104|105|(11:107|108|109|110|(1:112)(1:129)|113|(1:115)|116|72|121|(1:123))(15:133|(2:403|404)|135|136|(1:(7:138|139|141|142|(1:144)(1:391)|145|124)(1:401))|367|(1:369)(1:386)|370|(1:372)|373|5ad|378|(1:380)|86|87)|27|28))|5|6|7|(1:9)(1:65)|10|11|12|13|14|(1:16)(1:36)|17|(1:19)|20|672|25|(1:30)|27|28|(2:(0)|(1:338))) */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x042d, code lost:
    
        r7 = -1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x042f, code lost:
    
        com.android.server.backup.utils.BackupObserverUtils.sendBackupOnPackageResult(r32.mBackupObserver, r5, -1000);
        android.util.Slog.w("PFTBT", "Transport failed; aborting backup: " + r13);
        android.util.EventLog.writeEvent(2842, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0450, code lost:
    
        r32.mUserBackupManagerService.tearDownAgentAndKill(r15.applicationInfo);
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0459, code lost:
    
        if (r32.mCancelAll == false) goto L610;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x045b, code lost:
    
        r12 = -2003;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x045e, code lost:
    
        android.util.Slog.i("PFTBT", "Full backup completed with status: " + r12);
        com.android.server.backup.utils.BackupObserverUtils.sendBackupFinished(r32.mBackupObserver, r12);
        cleanUpPipes(r25);
        cleanUpPipes(r1);
        unregisterTask();
        r1 = r32.mJob;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0486, code lost:
    
        if (r1 == null) goto L614;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0488, code lost:
    
        r1.finishBackupPass(r32.mUserId);
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x048d, code lost:
    
        r4 = r32.mUserBackupManagerService.getQueueLock();
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0493, code lost:
    
        monitor-enter(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0494, code lost:
    
        r32.mUserBackupManagerService.setRunningFullBackupTask(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x049a, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x049b, code lost:
    
        r32.mListener.onFinished("PFTBT.run()");
        r32.mLatch.countDown();
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x04a9, code lost:
    
        if (r32.mUpdateSchedule == false) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x04ab, code lost:
    
        r32.mUserBackupManagerService.scheduleNextFullBackupJob(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x045d, code lost:
    
        r12 = -1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x04b6, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x04b7, code lost:
    
        r9 = r25;
        r12 = -1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x04bc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x04bd, code lost:
    
        r9 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x012a, code lost:
    
        r2 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x06a0, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x06a1, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x06b6, code lost:
    
        r1 = null;
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x06dc, code lost:
    
        r12 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0707, code lost:
    
        r1.finishBackupPass(r32.mUserId);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0713, code lost:
    
        r32.mUserBackupManagerService.setRunningFullBackupTask(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x071a, code lost:
    
        r32.mListener.onFinished("PFTBT.run()");
        r32.mLatch.countDown();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0728, code lost:
    
        if (r32.mUpdateSchedule != false) goto L756;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x072a, code lost:
    
        r32.mUserBackupManagerService.scheduleNextFullBackupJob(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x06de, code lost:
    
        r12 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0699, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x069a, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:194:0x04e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0509 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x074b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0776  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0782 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x074d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0707  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0713 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x06de  */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r6v15, types: [com.android.server.backup.transport.BackupTransportClient] */
    /* JADX WARN: Type inference failed for: r6v50 */
    /* JADX WARN: Type inference failed for: r6v79 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7, types: [boolean] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 1971
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.fullbackup.PerformFullTransportBackupTask.run():void");
    }

    public void cleanUpPipes(ParcelFileDescriptor[] parcelFileDescriptorArr) {
        if (parcelFileDescriptorArr != null) {
            ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArr[0];
            if (parcelFileDescriptor != null) {
                parcelFileDescriptorArr[0] = null;
                try {
                    parcelFileDescriptor.close();
                } catch (IOException unused) {
                    Slog.w("PFTBT", "Unable to close pipe!");
                }
            }
            ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptorArr[1];
            if (parcelFileDescriptor2 != null) {
                parcelFileDescriptorArr[1] = null;
                try {
                    parcelFileDescriptor2.close();
                } catch (IOException unused2) {
                    Slog.w("PFTBT", "Unable to close pipe!");
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class SinglePackageBackupPreflight implements BackupRestoreTask, FullBackupPreflight {
        public final int mCurrentOpToken;
        public final long mQuota;
        public final TransportConnection mTransportConnection;
        public final int mTransportFlags;
        public final AtomicLong mResult = new AtomicLong(-1003);
        public final CountDownLatch mLatch = new CountDownLatch(1);

        @Override // com.android.server.backup.BackupRestoreTask
        public void execute() {
        }

        public SinglePackageBackupPreflight(TransportConnection transportConnection, long j, int i, int i2) {
            this.mTransportConnection = transportConnection;
            this.mQuota = j;
            this.mCurrentOpToken = i;
            this.mTransportFlags = i2;
        }

        @Override // com.android.server.backup.fullbackup.FullBackupPreflight
        public int preflightFullBackup(PackageInfo packageInfo, final IBackupAgent iBackupAgent) {
            long fullBackupAgentTimeoutMillis = PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis();
            try {
                PerformFullTransportBackupTask.this.mUserBackupManagerService.prepareOperationTimeout(this.mCurrentOpToken, fullBackupAgentTimeoutMillis, this, 0);
                iBackupAgent.doMeasureFullBackup(this.mQuota, this.mCurrentOpToken, PerformFullTransportBackupTask.this.mUserBackupManagerService.getBackupManagerBinder(), this.mTransportFlags);
                this.mLatch.await(fullBackupAgentTimeoutMillis, TimeUnit.MILLISECONDS);
                final long j = this.mResult.get();
                if (j < 0) {
                    return (int) j;
                }
                int checkFullBackupSize = this.mTransportConnection.connectOrThrow("PFTBT$SPBP.preflightFullBackup()").checkFullBackupSize(j);
                if (checkFullBackupSize != -1005) {
                    return checkFullBackupSize;
                }
                RemoteCall.execute(new RemoteCallable() { // from class: com.android.server.backup.fullbackup.PerformFullTransportBackupTask$SinglePackageBackupPreflight$$ExternalSyntheticLambda0
                    @Override // com.android.server.backup.remote.RemoteCallable
                    public final void call(Object obj) {
                        PerformFullTransportBackupTask.SinglePackageBackupPreflight.this.lambda$preflightFullBackup$0(iBackupAgent, j, (IBackupCallback) obj);
                    }
                }, PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getQuotaExceededTimeoutMillis());
                return checkFullBackupSize;
            } catch (Exception e) {
                Slog.w("PFTBT", "Exception preflighting " + packageInfo.packageName + ": " + e.getMessage());
                return -1003;
            }
        }

        public /* synthetic */ void lambda$preflightFullBackup$0(IBackupAgent iBackupAgent, long j, IBackupCallback iBackupCallback) {
            iBackupAgent.doQuotaExceeded(j, this.mQuota, iBackupCallback);
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void operationComplete(long j) {
            this.mResult.set(j);
            this.mLatch.countDown();
            PerformFullTransportBackupTask.this.mOperationStorage.removeOperation(this.mCurrentOpToken);
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void handleCancel(boolean z) {
            this.mResult.set(-1003L);
            this.mLatch.countDown();
            PerformFullTransportBackupTask.this.mOperationStorage.removeOperation(this.mCurrentOpToken);
        }

        public long getExpectedSizeOrErrorCode() {
            try {
                this.mLatch.await(PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis(), TimeUnit.MILLISECONDS);
                return this.mResult.get();
            } catch (InterruptedException unused) {
                return -1L;
            }
        }
    }

    /* loaded from: classes.dex */
    public class SinglePackageBackupRunner implements Runnable, BackupRestoreTask {
        public final CountDownLatch mBackupLatch;
        public volatile int mBackupResult;
        public final int mCurrentOpToken;
        public FullBackupEngine mEngine;
        public final int mEphemeralToken;
        public volatile boolean mIsCancelled;
        public final ParcelFileDescriptor mOutput;
        public final SinglePackageBackupPreflight mPreflight;
        public final CountDownLatch mPreflightLatch;
        public volatile int mPreflightResult;
        public final long mQuota;
        public final PackageInfo mTarget;
        public final int mTransportFlags;

        @Override // com.android.server.backup.BackupRestoreTask
        public void execute() {
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void operationComplete(long j) {
        }

        public SinglePackageBackupRunner(ParcelFileDescriptor parcelFileDescriptor, PackageInfo packageInfo, TransportConnection transportConnection, long j, int i, int i2) {
            this.mOutput = ParcelFileDescriptor.dup(parcelFileDescriptor.getFileDescriptor());
            this.mTarget = packageInfo;
            this.mCurrentOpToken = i;
            int generateRandomIntegerToken = PerformFullTransportBackupTask.this.mUserBackupManagerService.generateRandomIntegerToken();
            this.mEphemeralToken = generateRandomIntegerToken;
            this.mPreflight = new SinglePackageBackupPreflight(transportConnection, j, generateRandomIntegerToken, i2);
            this.mPreflightLatch = new CountDownLatch(1);
            this.mBackupLatch = new CountDownLatch(1);
            this.mPreflightResult = -1003;
            this.mBackupResult = -1003;
            this.mQuota = j;
            this.mTransportFlags = i2;
            registerTask(packageInfo.packageName);
        }

        public void registerTask(String str) {
            PerformFullTransportBackupTask.this.mOperationStorage.registerOperationForPackages(this.mCurrentOpToken, 0, Sets.newHashSet(new String[]{str}), this, 0);
        }

        public void unregisterTask() {
            PerformFullTransportBackupTask.this.mOperationStorage.removeOperation(this.mCurrentOpToken);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:38:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 298
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.fullbackup.PerformFullTransportBackupTask.SinglePackageBackupRunner.run():void");
        }

        public void sendQuotaExceeded(long j, long j2) {
            this.mEngine.sendQuotaExceeded(j, j2);
        }

        public long getPreflightResultBlocking() {
            try {
                this.mPreflightLatch.await(PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis(), TimeUnit.MILLISECONDS);
                if (this.mIsCancelled) {
                    return -2003L;
                }
                if (this.mPreflightResult == 0) {
                    return this.mPreflight.getExpectedSizeOrErrorCode();
                }
                return this.mPreflightResult;
            } catch (InterruptedException unused) {
                return -1003L;
            }
        }

        public int getBackupResultBlocking() {
            try {
                this.mBackupLatch.await(PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis(), TimeUnit.MILLISECONDS);
                if (this.mIsCancelled) {
                    return -2003;
                }
                return this.mBackupResult;
            } catch (InterruptedException unused) {
                return -1003;
            }
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void handleCancel(boolean z) {
            Slog.w("PFTBT", "Full backup cancel of " + this.mTarget.packageName);
            PerformFullTransportBackupTask performFullTransportBackupTask = PerformFullTransportBackupTask.this;
            performFullTransportBackupTask.mMonitor = BackupManagerMonitorUtils.monitorEvent(performFullTransportBackupTask.mMonitor, 4, PerformFullTransportBackupTask.this.mCurrentPackage, 2, null);
            this.mIsCancelled = true;
            PerformFullTransportBackupTask.this.mUserBackupManagerService.handleCancel(this.mEphemeralToken, z);
            PerformFullTransportBackupTask.this.mUserBackupManagerService.tearDownAgentAndKill(this.mTarget.applicationInfo);
            this.mPreflightLatch.countDown();
            this.mBackupLatch.countDown();
            PerformFullTransportBackupTask.this.mOperationStorage.removeOperation(this.mCurrentOpToken);
        }
    }
}
