package com.android.server.am;

import android.app.ActivityThread;
import android.app.IApplicationThread;
import android.app.ProfilerInfo;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.util.ArrayMap;
import android.util.DebugUtils;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.StatsEvent;
import android.util.proto.ProtoOutputStream;
import com.android.internal.app.ProcessMap;
import com.android.internal.app.procstats.ProcessStats;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.BinderInternal;
import com.android.internal.os.ProcessCpuTracker;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.MemInfoReader;
import com.android.internal.util.QuickSelect;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.am.AppProfiler;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.chimera.ChimeraManagerService;
import com.android.server.chimera.umr.KernelMemoryProxy$ReclaimerLog;
import com.android.server.chimera.umr.UnifiedMemoryReclaimer;
import com.android.server.clipboard.ClipboardService;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.utils.PriorityDump;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class AppProfiler {
    public final Handler mBgHandler;
    public ChimeraManagerService mChimera;
    public boolean mHasHomeProcess;
    public boolean mHasPreviousProcess;
    public int mLastNumProcesses;
    public final LowMemDetector mLowMemDetector;
    public int mMemWatchDumpPid;
    public String mMemWatchDumpProcName;
    public int mMemWatchDumpUid;
    public Uri mMemWatchDumpUri;
    public boolean mMemWatchIsUserInitiated;
    public OnTrimReclaimer mOnTrimReclaimer;
    public final ActivityManagerGlobalLock mProcLock;
    public final ActivityManagerService mService;
    public long mLastActivityLaunchedTime = SystemClock.uptimeMillis();
    public volatile long mPssDeferralTime = 0;
    public final ArrayList mPendingPssProfiles = new ArrayList();
    public final AtomicInteger mActivityStartingNesting = new AtomicInteger(0);
    public long mLastFullPssTime = SystemClock.uptimeMillis();
    public boolean mFullPssPending = false;
    public volatile boolean mTestPssMode = false;
    public boolean mAllowLowerMemLevel = false;
    public int mLastMemoryLevel = 0;
    public int mMemFactorOverride = -1;
    public long mLowRamTimeSinceLastIdle = 0;
    public long mLowRamStartTime = 0;
    public long mLastMemUsageReportTime = 0;
    public final ArrayList mProcessesToGc = new ArrayList();
    public Map mAppAgentMap = null;
    public int mProfileType = 0;
    public final ProfileData mProfileData = new ProfileData();
    public final ProcessMap mMemWatchProcesses = new ProcessMap();
    public final ProcessCpuTracker mProcessCpuTracker = new ProcessCpuTracker(false);
    public final AtomicLong mLastCpuTime = new AtomicLong(0);
    public final AtomicBoolean mProcessCpuMutexFree = new AtomicBoolean(true);
    public final CountDownLatch mProcessCpuInitLatch = new CountDownLatch(1);
    public volatile long mLastWriteTime = 0;
    public final CachedAppsWatermarkData mCachedAppsWatermarkData = new CachedAppsWatermarkData();
    public final Object mProfilerLock = new Object();
    public final DeviceConfig.OnPropertiesChangedListener mPssDelayConfigListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.am.AppProfiler.1
        public AnonymousClass1() {
        }

        public void onPropertiesChanged(DeviceConfig.Properties properties) {
            if (properties.getKeyset().contains("activity_start_pss_defer")) {
                AppProfiler.this.mPssDeferralTime = properties.getLong("activity_start_pss_defer", 0L);
            }
        }
    };
    public final Thread mProcessCpuThread = new ProcessCpuThread("CpuTracker");

    /* renamed from: com.android.server.am.AppProfiler$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements DeviceConfig.OnPropertiesChangedListener {
        public AnonymousClass1() {
        }

        public void onPropertiesChanged(DeviceConfig.Properties properties) {
            if (properties.getKeyset().contains("activity_start_pss_defer")) {
                AppProfiler.this.mPssDeferralTime = properties.getLong("activity_start_pss_defer", 0L);
            }
        }
    }

    /* loaded from: classes.dex */
    public class ProfileData {
        public String mProfileApp;
        public ProcessRecord mProfileProc;
        public ProfilerInfo mProfilerInfo;

        public /* synthetic */ ProfileData(AppProfiler appProfiler, ProfileDataIA profileDataIA) {
            this();
        }

        public ProfileData() {
            this.mProfileApp = null;
            this.mProfileProc = null;
            this.mProfilerInfo = null;
        }

        public void setProfileApp(String str) {
            this.mProfileApp = str;
            if (AppProfiler.this.mService.mAtmInternal != null) {
                AppProfiler.this.mService.mAtmInternal.setProfileApp(str);
            }
        }

        public String getProfileApp() {
            return this.mProfileApp;
        }

        public void setProfileProc(ProcessRecord processRecord) {
            this.mProfileProc = processRecord;
            if (AppProfiler.this.mService.mAtmInternal != null) {
                AppProfiler.this.mService.mAtmInternal.setProfileProc(processRecord == null ? null : processRecord.getWindowProcessController());
            }
        }

        public ProcessRecord getProfileProc() {
            return this.mProfileProc;
        }

        public void setProfilerInfo(ProfilerInfo profilerInfo) {
            this.mProfilerInfo = profilerInfo;
            if (AppProfiler.this.mService.mAtmInternal != null) {
                AppProfiler.this.mService.mAtmInternal.setProfilerInfo(profilerInfo);
            }
        }

        public ProfilerInfo getProfilerInfo() {
            return this.mProfilerInfo;
        }
    }

    /* loaded from: classes.dex */
    public class CachedAppsWatermarkData {
        public int mAverageFrozenTimeInSeconds;
        public int mBinderProxySnapshot;
        public long[] mCachedAppFrozenDurations;
        public int mCachedAppHighWatermark;
        public int mCachedInKb;
        public long mEarliestFrozenTimestamp;
        public int mFreeInKb;
        public int mKernelInKb;
        public long mLatestFrozenTimestamp;
        public int mLongestFrozenTimeInSeconds;
        public int mMeanFrozenTimeInSeconds;
        public int mNumOfFrozenApps;
        public int mShortestFrozenTimeInSeconds;
        public long mTotalFrozenDurations;
        public int mUptimeInSeconds;
        public int mZramInKb;

        public CachedAppsWatermarkData() {
        }

        public void updateCachedAppsHighWatermarkIfNecessaryLocked(int i, long j) {
            if (i > this.mCachedAppHighWatermark) {
                this.mCachedAppHighWatermark = i;
                this.mUptimeInSeconds = (int) (j / 1000);
                AppProfiler.this.mService.mHandler.removeMessages(79);
                AppProfiler.this.mService.mHandler.obtainMessage(79, Long.valueOf(j)).sendToTarget();
            }
        }

        public void updateCachedAppsSnapshot(final long j) {
            ActivityManagerGlobalLock activityManagerGlobalLock = AppProfiler.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    this.mEarliestFrozenTimestamp = j;
                    this.mLatestFrozenTimestamp = 0L;
                    this.mTotalFrozenDurations = 0L;
                    this.mNumOfFrozenApps = 0;
                    int lruSizeLOSP = AppProfiler.this.mService.mProcessList.getLruSizeLOSP();
                    long[] jArr = this.mCachedAppFrozenDurations;
                    if (jArr == null || jArr.length < lruSizeLOSP) {
                        this.mCachedAppFrozenDurations = new long[Math.max(lruSizeLOSP, AppProfiler.this.mService.mConstants.CUR_MAX_CACHED_PROCESSES)];
                    }
                    AppProfiler.this.mService.mProcessList.forEachLruProcessesLOSP(true, new Consumer() { // from class: com.android.server.am.AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            AppProfiler.CachedAppsWatermarkData.this.lambda$updateCachedAppsSnapshot$0(j, (ProcessRecord) obj);
                        }
                    });
                    int i = this.mNumOfFrozenApps;
                    if (i > 0) {
                        this.mLongestFrozenTimeInSeconds = (int) ((j - this.mEarliestFrozenTimestamp) / 1000);
                        this.mShortestFrozenTimeInSeconds = (int) ((j - this.mLatestFrozenTimestamp) / 1000);
                        this.mAverageFrozenTimeInSeconds = (int) ((this.mTotalFrozenDurations / i) / 1000);
                        this.mMeanFrozenTimeInSeconds = (int) (QuickSelect.select(this.mCachedAppFrozenDurations, 0, i, i / 2) / 1000);
                    }
                    this.mBinderProxySnapshot = 0;
                    SparseIntArray nGetBinderProxyPerUidCounts = BinderInternal.nGetBinderProxyPerUidCounts();
                    if (nGetBinderProxyPerUidCounts != null) {
                        int size = nGetBinderProxyPerUidCounts.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            if (AppProfiler.this.mService.mProcessList.getUidRecordLOSP(nGetBinderProxyPerUidCounts.keyAt(i2)) != null) {
                                this.mBinderProxySnapshot += nGetBinderProxyPerUidCounts.valueAt(i2);
                            }
                        }
                    }
                    MemInfoReader memInfoReader = new MemInfoReader();
                    memInfoReader.readMemInfo();
                    this.mFreeInKb = (int) memInfoReader.getFreeSizeKb();
                    this.mCachedInKb = (int) memInfoReader.getCachedSizeKb();
                    this.mZramInKb = (int) memInfoReader.getZramTotalSizeKb();
                    this.mKernelInKb = (int) memInfoReader.getKernelUsedSizeKb();
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterProcLockedSection();
        }

        public /* synthetic */ void lambda$updateCachedAppsSnapshot$0(long j, ProcessRecord processRecord) {
            if (processRecord.mOptRecord.isFrozen()) {
                long freezeUnfreezeTime = processRecord.mOptRecord.getFreezeUnfreezeTime();
                if (freezeUnfreezeTime < this.mEarliestFrozenTimestamp) {
                    this.mEarliestFrozenTimestamp = freezeUnfreezeTime;
                }
                if (freezeUnfreezeTime > this.mLatestFrozenTimestamp) {
                    this.mLatestFrozenTimestamp = freezeUnfreezeTime;
                }
                long j2 = j - freezeUnfreezeTime;
                this.mTotalFrozenDurations += j2;
                long[] jArr = this.mCachedAppFrozenDurations;
                int i = this.mNumOfFrozenApps;
                this.mNumOfFrozenApps = i + 1;
                jArr[i] = j2;
            }
        }

        public StatsEvent getCachedAppsHighWatermarkStats(int i, boolean z) {
            StatsEvent buildStatsEvent;
            ActivityManagerGlobalLock activityManagerGlobalLock = AppProfiler.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    buildStatsEvent = FrameworkStatsLog.buildStatsEvent(i, this.mCachedAppHighWatermark, this.mUptimeInSeconds, this.mBinderProxySnapshot, this.mFreeInKb, this.mCachedInKb, this.mZramInKb, this.mKernelInKb, this.mNumOfFrozenApps, this.mLongestFrozenTimeInSeconds, this.mShortestFrozenTimeInSeconds, this.mMeanFrozenTimeInSeconds, this.mAverageFrozenTimeInSeconds);
                    if (z) {
                        this.mCachedAppHighWatermark = 0;
                        this.mUptimeInSeconds = 0;
                        this.mBinderProxySnapshot = 0;
                        this.mFreeInKb = 0;
                        this.mCachedInKb = 0;
                        this.mZramInKb = 0;
                        this.mKernelInKb = 0;
                        this.mNumOfFrozenApps = 0;
                        this.mLongestFrozenTimeInSeconds = 0;
                        this.mShortestFrozenTimeInSeconds = 0;
                        this.mMeanFrozenTimeInSeconds = 0;
                        this.mAverageFrozenTimeInSeconds = 0;
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterProcLockedSection();
            return buildStatsEvent;
        }
    }

    /* loaded from: classes.dex */
    public class BgHandler extends Handler {
        public BgHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                AppProfiler.this.collectPssInBackground();
                return;
            }
            if (i == 2) {
                AppProfiler.this.deferPssForActivityStart();
                return;
            }
            if (i == 3) {
                AppProfiler.this.stopDeferPss();
                return;
            }
            if (i != 4) {
                return;
            }
            ActivityManagerService activityManagerService = AppProfiler.this.mService;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    AppProfiler.this.handleMemoryPressureChangedLocked(message.arg1, message.arg2);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }
    }

    /* loaded from: classes.dex */
    public class OnTrimReclaimer extends UnifiedMemoryReclaimer.Reclaimer {
        public OnTrimReclaimer() {
            super("onTrim", 0);
        }

        public boolean shouldSkipReclaim() {
            return isEnabled() && UnifiedMemoryReclaimer.isInCameraLaunch();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0228 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:? -> B:106:0x021f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void collectPssInBackground() {
        /*
            Method dump skipped, instructions count: 568
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppProfiler.collectPssInBackground():void");
    }

    public static /* synthetic */ boolean lambda$collectPssInBackground$0(ProcessCpuTracker.Stats stats) {
        return stats.vsize > 0 && stats.uid < 10000;
    }

    public void updateNextPssTimeLPf(int i, ProcessProfileRecord processProfileRecord, long j, boolean z) {
        if (z || ((j > processProfileRecord.getNextPssTime() || j > Math.max(processProfileRecord.getLastPssTime() + ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS, processProfileRecord.getLastStateTime() + ProcessList.minTimeFromStateChange(this.mTestPssMode))) && requestPssLPf(processProfileRecord, i))) {
            processProfileRecord.setNextPssTime(processProfileRecord.computeNextPssTime(i, this.mTestPssMode, this.mService.mAtmInternal.isSleeping(), j));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void recordPssSampleLPf(final com.android.server.am.ProcessProfileRecord r35, int r36, final long r37, final long r39, long r41, final long r43, final int r45, final long r46, long r48) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppProfiler.recordPssSampleLPf(com.android.server.am.ProcessProfileRecord, int, long, long, long, long, int, long, long):void");
    }

    public static /* synthetic */ void lambda$recordPssSampleLPf$1(ProcessRecord processRecord, long j, long j2, long j3, int i, long j4, ProcessProfileRecord processProfileRecord, ProcessStats.ProcessStateHolder processStateHolder) {
        FrameworkStatsLog.write(18, processRecord.info.uid, processStateHolder.state.getName(), processStateHolder.state.getPackage(), j, j2, j3, i, j4, processStateHolder.appVersion, processProfileRecord.getCurrentHostingComponentTypes(), processProfileRecord.getHistoricalHostingComponentTypes());
    }

    /* loaded from: classes.dex */
    public final class RecordPssRunnable implements Runnable {
        public final ContentResolver mContentResolver;
        public final Uri mDumpUri;
        public final ProcessProfileRecord mProfile;

        public RecordPssRunnable(ProcessProfileRecord processProfileRecord, Uri uri, ContentResolver contentResolver) {
            this.mProfile = processProfileRecord;
            this.mDumpUri = uri;
            this.mContentResolver = contentResolver;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ParcelFileDescriptor openFileDescriptor = this.mContentResolver.openFileDescriptor(this.mDumpUri, "rw");
                try {
                    IApplicationThread thread = this.mProfile.getThread();
                    if (thread != null) {
                        try {
                            thread.dumpHeap(true, false, false, this.mDumpUri.getPath(), openFileDescriptor, (RemoteCallback) null);
                        } catch (RemoteException unused) {
                        }
                    }
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                } finally {
                }
            } catch (IOException e) {
                Slog.e("ActivityManager", "Failed to dump heap", e);
                AppProfiler.this.abortHeapDump(this.mProfile.mApp.processName);
            }
        }
    }

    public void startHeapDumpLPf(ProcessProfileRecord processProfileRecord, boolean z) {
        ProcessRecord processRecord = processProfileRecord.mApp;
        String str = processRecord.processName;
        this.mMemWatchDumpProcName = str;
        this.mMemWatchDumpUri = makeHeapDumpUri(str);
        this.mMemWatchDumpPid = processProfileRecord.getPid();
        int i = processRecord.uid;
        this.mMemWatchDumpUid = i;
        this.mMemWatchIsUserInitiated = z;
        try {
            BackgroundThread.getHandler().post(new RecordPssRunnable(processProfileRecord, this.mMemWatchDumpUri, this.mService.mContext.createPackageContextAsUser("android", 0, UserHandle.getUserHandleForUid(i)).getContentResolver()));
        } catch (PackageManager.NameNotFoundException unused) {
            throw new RuntimeException("android package not found.");
        }
    }

    public void dumpHeapFinished(String str, int i) {
        synchronized (this.mProfilerLock) {
            if (i != this.mMemWatchDumpPid) {
                Slog.w("ActivityManager", "dumpHeapFinished: Calling pid " + Binder.getCallingPid() + " does not match last pid " + this.mMemWatchDumpPid);
                return;
            }
            Uri uri = this.mMemWatchDumpUri;
            if (uri != null && uri.getPath().equals(str)) {
                this.mService.mHandler.sendEmptyMessage(50);
                Runtime.getRuntime().gc();
                return;
            }
            Slog.w("ActivityManager", "dumpHeapFinished: Calling path " + str + " does not match last path " + this.mMemWatchDumpUri);
        }
    }

    public void handlePostDumpHeapNotification() {
        int i;
        String str;
        long j;
        String str2;
        boolean z;
        synchronized (this.mProfilerLock) {
            i = this.mMemWatchDumpUid;
            str = this.mMemWatchDumpProcName;
            Pair pair = (Pair) this.mMemWatchProcesses.get(str, i);
            if (pair == null) {
                pair = (Pair) this.mMemWatchProcesses.get(str, 0);
            }
            if (pair != null) {
                j = ((Long) pair.first).longValue();
                str2 = (String) pair.second;
            } else {
                j = 0;
                str2 = null;
            }
            z = this.mMemWatchIsUserInitiated;
            this.mMemWatchDumpUri = null;
            this.mMemWatchDumpProcName = null;
            this.mMemWatchDumpPid = -1;
            this.mMemWatchDumpUid = -1;
        }
        if (str == null) {
            return;
        }
        Intent intent = new Intent("com.android.internal.intent.action.HEAP_DUMP_FINISHED");
        intent.setPackage("com.android.shell");
        intent.putExtra("android.intent.extra.UID", i);
        intent.putExtra("com.android.internal.extra.heap_dump.IS_USER_INITIATED", z);
        intent.putExtra("com.android.internal.extra.heap_dump.SIZE_BYTES", j);
        intent.putExtra("com.android.internal.extra.heap_dump.REPORT_PACKAGE", str2);
        intent.putExtra("com.android.internal.extra.heap_dump.PROCESS_NAME", str);
        this.mService.mContext.sendBroadcastAsUser(intent, UserHandle.getUserHandleForUid(i));
    }

    public void setDumpHeapDebugLimit(String str, int i, long j, String str2) {
        synchronized (this.mProfilerLock) {
            try {
                if (j > 0) {
                    this.mMemWatchProcesses.put(str, i, new Pair(Long.valueOf(j), str2));
                } else if (i != 0) {
                    this.mMemWatchProcesses.remove(str, i);
                } else {
                    this.mMemWatchProcesses.getMap().remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void abortHeapDump(String str) {
        Message obtainMessage = this.mService.mHandler.obtainMessage(51);
        obtainMessage.obj = str;
        this.mService.mHandler.sendMessage(obtainMessage);
    }

    public void handleAbortDumpHeap(String str) {
        if (str != null) {
            synchronized (this.mProfilerLock) {
                if (str.equals(this.mMemWatchDumpProcName)) {
                    this.mMemWatchDumpProcName = null;
                    this.mMemWatchDumpUri = null;
                    this.mMemWatchDumpPid = -1;
                    this.mMemWatchDumpUid = -1;
                }
            }
        }
    }

    public static Uri makeHeapDumpUri(String str) {
        return Uri.parse("content://com.android.shell.heapdump/" + str + "_javaheap.bin");
    }

    public final boolean requestPssLPf(ProcessProfileRecord processProfileRecord, int i) {
        if (this.mPendingPssProfiles.contains(processProfileRecord)) {
            return false;
        }
        if (this.mPendingPssProfiles.size() == 0) {
            long j = 0;
            if (this.mPssDeferralTime > 0 && this.mActivityStartingNesting.get() > 0) {
                j = this.mPssDeferralTime;
            }
            this.mBgHandler.sendEmptyMessageDelayed(1, j);
        }
        processProfileRecord.setPssProcState(i);
        processProfileRecord.setPssStatType(0);
        this.mPendingPssProfiles.add(processProfileRecord);
        return true;
    }

    public final void deferPssIfNeededLPf() {
        if (this.mPendingPssProfiles.size() > 0) {
            this.mBgHandler.removeMessages(1);
            this.mBgHandler.sendEmptyMessageDelayed(1, this.mPssDeferralTime);
        }
    }

    public final void deferPssForActivityStart() {
        if (this.mPssDeferralTime > 0) {
            synchronized (this.mProfilerLock) {
                deferPssIfNeededLPf();
            }
            this.mActivityStartingNesting.getAndIncrement();
            this.mBgHandler.sendEmptyMessageDelayed(3, this.mPssDeferralTime);
        }
    }

    public final void stopDeferPss() {
        int decrementAndGet = this.mActivityStartingNesting.decrementAndGet();
        if (decrementAndGet > 0 || decrementAndGet >= 0) {
            return;
        }
        Slog.wtf("ActivityManager", "Activity start nesting undercount!");
        this.mActivityStartingNesting.incrementAndGet();
    }

    public void requestPssAllProcsLPr(final long j, final boolean z, final boolean z2) {
        long j2;
        synchronized (this.mProfilerLock) {
            if (!z) {
                long j3 = this.mLastFullPssTime;
                if (z2) {
                    j2 = this.mService.mConstants.FULL_PSS_LOWERED_INTERVAL;
                } else {
                    j2 = this.mService.mConstants.FULL_PSS_MIN_INTERVAL;
                }
                if (j < j3 + j2) {
                    return;
                }
            }
            this.mLastFullPssTime = j;
            this.mFullPssPending = true;
            for (int size = this.mPendingPssProfiles.size() - 1; size >= 0; size--) {
                ((ProcessProfileRecord) this.mPendingPssProfiles.get(size)).abortNextPssTime();
            }
            this.mPendingPssProfiles.ensureCapacity(this.mService.mProcessList.getLruSizeLOSP());
            this.mPendingPssProfiles.clear();
            this.mService.mProcessList.forEachLruProcessesLOSP(false, new Consumer() { // from class: com.android.server.am.AppProfiler$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AppProfiler.this.lambda$requestPssAllProcsLPr$2(z2, z, j, (ProcessRecord) obj);
                }
            });
            if (!this.mBgHandler.hasMessages(1)) {
                this.mBgHandler.sendEmptyMessage(1);
            }
        }
    }

    public /* synthetic */ void lambda$requestPssAllProcsLPr$2(boolean z, boolean z2, long j, ProcessRecord processRecord) {
        ProcessProfileRecord processProfileRecord = processRecord.mProfile;
        if (processProfileRecord.getThread() == null || processProfileRecord.getSetProcState() == 20) {
            return;
        }
        long lastStateTime = processProfileRecord.getLastStateTime();
        if (z || ((z2 && j > 1000 + lastStateTime) || j > lastStateTime + 1200000)) {
            processProfileRecord.setPssProcState(processProfileRecord.getSetProcState());
            processProfileRecord.setPssStatType(z2 ? 2 : 1);
            updateNextPssTimeLPf(processProfileRecord.getSetProcState(), processProfileRecord, j, true);
            this.mPendingPssProfiles.add(processProfileRecord);
        }
    }

    public void setTestPssMode(boolean z) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        ActivityManagerService.boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                this.mTestPssMode = z;
                if (z) {
                    requestPssAllProcsLPr(SystemClock.uptimeMillis(), true, true);
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterProcLockedSection();
    }

    public boolean getTestPssMode() {
        return this.mTestPssMode;
    }

    public int getLastMemoryLevelLocked() {
        int i = this.mMemFactorOverride;
        return i != -1 ? i : this.mLastMemoryLevel;
    }

    public boolean isLastMemoryLevelNormal() {
        int i = this.mMemFactorOverride;
        return i != -1 ? i <= 0 : this.mLastMemoryLevel <= 0;
    }

    public void updateLowRamTimestampLPr(long j) {
        this.mLowRamTimeSinceLastIdle = 0L;
        if (this.mLowRamStartTime != 0) {
            this.mLowRamStartTime = j;
        }
    }

    public void setAllowLowerMemLevelLocked(boolean z) {
        this.mAllowLowerMemLevel = z;
    }

    public void setMemFactorOverrideLocked(int i) {
        this.mMemFactorOverride = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean updateLowMemStateLSP(int r17, int r18, int r19, final long r20) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppProfiler.updateLowMemStateLSP(int, int, int, long):boolean");
    }

    public static /* synthetic */ void lambda$updateLowMemStateLSP$3(ProcessRecord processRecord) {
        IApplicationThread thread;
        ProcessProfileRecord processProfileRecord = processRecord.mProfile;
        ProcessStateRecord processStateRecord = processRecord.mState;
        if (processStateRecord.hasProcStateChanged()) {
            processStateRecord.setProcStateChanged(false);
        }
        int curProcState = processRecord.mState.getCurProcState();
        if (((curProcState < 7 || curProcState >= 16) && !processRecord.mState.isSystemNoUi()) || !processRecord.mProfile.hasPendingUiClean() || (thread = processRecord.getThread()) == null) {
            return;
        }
        try {
            KernelMemoryProxy$ReclaimerLog.write("B|scheduleTrimMemory: USE_MODERN_TRIM " + processRecord.processName + " to 20", false);
            thread.scheduleTrimMemory(20);
            KernelMemoryProxy$ReclaimerLog.write("E|scheduleTrimMemory", false);
            processRecord.mProfile.setPendingUiClean(false);
        } catch (RemoteException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ void lambda$updateLowMemStateLSP$4(boolean r6, int r7, boolean r8, int[] r9, int[] r10, int r11, long r12, int r14, com.android.server.am.ProcessRecord r15) {
        /*
            r5 = this;
            com.android.server.am.ProcessProfileRecord r0 = r15.mProfile
            r0.getTrimMemoryLevel()
            com.android.server.am.ProcessStateRecord r1 = r15.mState
            int r2 = r1.getCurProcState()
            com.android.server.am.ActivityManagerService r3 = r5.mService
            com.android.server.am.ActivityManagerConstants r3 = r3.mConstants
            boolean r3 = r3.USE_MODERN_TRIM
            r4 = 0
            if (r3 != 0) goto L27
            if (r6 != 0) goto L1c
            boolean r6 = r1.hasProcStateChanged()
            if (r6 == 0) goto L24
        L1c:
            com.android.server.am.ActivityManagerService r6 = r5.mService
            r6.setProcessTrackerStateLOSP(r15, r7)
            r1.setProcStateChanged(r4)
        L24:
            r5.trimMemoryUiHiddenIfNecessaryLSP(r15)
        L27:
            r6 = 14
            r7 = 40
            r1 = 1
            if (r2 < r6) goto L5f
            boolean r6 = r15.isSkipTrimMemory()
            if (r6 != 0) goto L5f
            if (r8 == 0) goto Lcc
            r6 = r9[r4]
            java.lang.String r8 = "Trimming memory of "
            r5.scheduleTrimMemoryLSP(r15, r6, r8)
            r5 = r9[r4]
            r0.setTrimMemoryLevel(r5)
            r5 = r10[r4]
            int r5 = r5 + r1
            r10[r4] = r5
            if (r5 < r11) goto Lcc
            r10[r4] = r4
            r5 = r9[r4]
            r6 = 60
            if (r5 == r6) goto L5b
            r7 = 80
            if (r5 == r7) goto L57
            goto Lcc
        L57:
            r9[r4] = r6
            goto Lcc
        L5b:
            r9[r4] = r7
            goto Lcc
        L5f:
            r6 = 13
            if (r2 != r6) goto L74
            boolean r6 = r15.isSkipTrimMemory()
            if (r6 != 0) goto L74
            if (r8 == 0) goto Lcc
            java.lang.String r6 = "Trimming memory of heavy-weight "
            r5.scheduleTrimMemoryLSP(r15, r7, r6)
            r0.setTrimMemoryLevel(r7)
            goto Lcc
        L74:
            if (r8 == 0) goto L78
        L76:
            r4 = r1
            goto Lbf
        L78:
            com.android.server.am.ProcessProfileRecord r6 = r15.mProfile
            long r6 = r6.getLastPss()
            r8 = 104857600(0x6400000, double:5.1806538E-316)
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 <= 0) goto L94
            com.android.server.am.ProcessProfileRecord r6 = r15.mProfile
            long r6 = r6.getRunningTrimMemoryTime()
            r8 = 60000(0xea60, double:2.9644E-319)
            long r6 = r6 + r8
            int r6 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1))
            if (r6 >= 0) goto Lbf
            goto L76
        L94:
            com.android.server.am.ProcessProfileRecord r6 = r15.mProfile
            long r6 = r6.getLastPss()
            r8 = 31457280(0x1e00000, double:1.55419614E-316)
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 <= 0) goto Lb0
            com.android.server.am.ProcessProfileRecord r6 = r15.mProfile
            long r6 = r6.getRunningTrimMemoryTime()
            r8 = 180000(0x2bf20, double:8.8932E-319)
            long r6 = r6 + r8
            int r6 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1))
            if (r6 >= 0) goto Lbf
            goto L76
        Lb0:
            com.android.server.am.ProcessProfileRecord r6 = r15.mProfile
            long r6 = r6.getRunningTrimMemoryTime()
            r8 = 300000(0x493e0, double:1.482197E-318)
            long r6 = r6 + r8
            int r6 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1))
            if (r6 >= 0) goto Lbf
            goto L76
        Lbf:
            if (r4 == 0) goto Lcc
            java.lang.String r6 = "Trimming memory of fg "
            r5.scheduleTrimMemoryLSP(r15, r14, r6)
            r0.setTrimMemoryLevel(r14)
            r0.setRunningTrimMemoryTime(r12)
        Lcc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppProfiler.lambda$updateLowMemStateLSP$4(boolean, int, boolean, int[], int[], int, long, int, com.android.server.am.ProcessRecord):void");
    }

    public /* synthetic */ void lambda$updateLowMemStateLSP$5(boolean z, int i, ProcessRecord processRecord) {
        ProcessProfileRecord processProfileRecord = processRecord.mProfile;
        ProcessStateRecord processStateRecord = processRecord.mState;
        if (!this.mService.mConstants.USE_MODERN_TRIM) {
            if (z || processStateRecord.hasProcStateChanged()) {
                this.mService.setProcessTrackerStateLOSP(processRecord, i);
                processStateRecord.setProcStateChanged(false);
            }
            trimMemoryUiHiddenIfNecessaryLSP(processRecord);
        }
        processProfileRecord.setTrimMemoryLevel(0);
    }

    public final void trimMemoryUiHiddenIfNecessaryLSP(ProcessRecord processRecord) {
        if ((processRecord.mState.getCurProcState() >= 7 || processRecord.mState.isSystemNoUi()) && processRecord.mProfile.hasPendingUiClean()) {
            scheduleTrimMemoryLSP(processRecord, 20, "Trimming memory of bg-ui ");
            processRecord.mProfile.setPendingUiClean(false);
        }
    }

    public final void scheduleTrimMemoryLSP(ProcessRecord processRecord, int i, String str) {
        IApplicationThread thread;
        if (processRecord.mProfile.getTrimMemoryLevel() >= i || (thread = processRecord.getThread()) == null) {
            return;
        }
        if ((this.mMemFactorOverride != -1) || SystemClock.uptimeMillis() - this.mLastActivityLaunchedTime >= 2000 || i > 15) {
            try {
                this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(processRecord, 13);
                KernelMemoryProxy$ReclaimerLog.write("B|scheduleTrimMemory: " + str + processRecord.processName + " to " + i, false);
                thread.scheduleTrimMemory(i);
                KernelMemoryProxy$ReclaimerLog.write("E|scheduleTrimMemory", false);
            } catch (RemoteException unused) {
            }
        }
    }

    public long getLowRamTimeSinceIdleLPr(long j) {
        long j2 = this.mLowRamTimeSinceLastIdle;
        long j3 = this.mLowRamStartTime;
        return j2 + (j3 > 0 ? j - j3 : 0L);
    }

    public final void performAppGcLPf(ProcessRecord processRecord) {
        try {
            ProcessProfileRecord processProfileRecord = processRecord.mProfile;
            processProfileRecord.setLastRequestedGc(SystemClock.uptimeMillis());
            IApplicationThread thread = processProfileRecord.getThread();
            if (thread != null) {
                if (processProfileRecord.getReportLowMemory()) {
                    processProfileRecord.setReportLowMemory(false);
                    thread.scheduleLowMemory();
                } else {
                    thread.processInBackground();
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void performAppGcsLPf() {
        if (this.mProcessesToGc.size() <= 0) {
            return;
        }
        while (this.mProcessesToGc.size() > 0) {
            ProcessRecord processRecord = (ProcessRecord) this.mProcessesToGc.remove(0);
            ProcessProfileRecord processProfileRecord = processRecord.mProfile;
            if (processProfileRecord.getCurRawAdj() > 200 || processProfileRecord.getReportLowMemory()) {
                if (processProfileRecord.getLastRequestedGc() + this.mService.mConstants.GC_MIN_INTERVAL <= SystemClock.uptimeMillis()) {
                    performAppGcLPf(processRecord);
                    scheduleAppGcsLPf();
                    return;
                } else {
                    addProcessToGcListLPf(processRecord);
                    scheduleAppGcsLPf();
                }
            }
        }
        scheduleAppGcsLPf();
    }

    public final void performAppGcsIfAppropriateLocked() {
        synchronized (this.mProfilerLock) {
            if (this.mService.canGcNowLocked()) {
                performAppGcsLPf();
            } else {
                scheduleAppGcsLPf();
            }
        }
    }

    public final void scheduleAppGcsLPf() {
        this.mService.mHandler.removeMessages(5);
        if (this.mProcessesToGc.size() > 0) {
            ProcessRecord processRecord = (ProcessRecord) this.mProcessesToGc.get(0);
            Message obtainMessage = this.mService.mHandler.obtainMessage(5);
            long lastRequestedGc = processRecord.mProfile.getLastRequestedGc() + this.mService.mConstants.GC_MIN_INTERVAL;
            long uptimeMillis = SystemClock.uptimeMillis();
            ActivityManagerService activityManagerService = this.mService;
            long j = activityManagerService.mConstants.GC_TIMEOUT;
            if (lastRequestedGc < uptimeMillis + j) {
                lastRequestedGc = uptimeMillis + j;
            }
            activityManagerService.mHandler.sendMessageAtTime(obtainMessage, lastRequestedGc);
        }
    }

    public final void addProcessToGcListLPf(ProcessRecord processRecord) {
        boolean z = true;
        int size = this.mProcessesToGc.size() - 1;
        while (true) {
            if (size < 0) {
                z = false;
                break;
            } else {
                if (((ProcessRecord) this.mProcessesToGc.get(size)).mProfile.getLastRequestedGc() < processRecord.mProfile.getLastRequestedGc()) {
                    this.mProcessesToGc.add(size + 1, processRecord);
                    break;
                }
                size--;
            }
        }
        if (z) {
            return;
        }
        this.mProcessesToGc.add(0, processRecord);
    }

    public final void doLowMemReportIfNeededLocked(final ProcessRecord processRecord) {
        if (!this.mService.mProcessList.haveBackgroundProcessLOSP()) {
            boolean z = Build.IS_DEBUGGABLE;
            final long uptimeMillis = SystemClock.uptimeMillis();
            if (z) {
                if (uptimeMillis < this.mLastMemUsageReportTime + BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS) {
                    z = false;
                } else {
                    this.mLastMemUsageReportTime = uptimeMillis;
                }
            }
            int lruSizeLOSP = this.mService.mProcessList.getLruSizeLOSP();
            final ArrayList arrayList = z ? new ArrayList(lruSizeLOSP) : null;
            EventLogTags.writeAmLowMemory(lruSizeLOSP);
            this.mService.mProcessList.forEachLruProcessesLOSP(false, new Consumer() { // from class: com.android.server.am.AppProfiler$$ExternalSyntheticLambda4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AppProfiler.this.lambda$doLowMemReportIfNeededLocked$6(processRecord, arrayList, uptimeMillis, (ProcessRecord) obj);
                }
            });
            if (z) {
                this.mService.mHandler.sendMessage(this.mService.mHandler.obtainMessage(33, arrayList));
            }
        }
        synchronized (this.mProfilerLock) {
            scheduleAppGcsLPf();
        }
    }

    public /* synthetic */ void lambda$doLowMemReportIfNeededLocked$6(ProcessRecord processRecord, ArrayList arrayList, long j, ProcessRecord processRecord2) {
        if (processRecord2 == processRecord || processRecord2.getThread() == null) {
            return;
        }
        ProcessStateRecord processStateRecord = processRecord2.mState;
        if (arrayList != null) {
            arrayList.add(new ProcessMemInfo(processRecord2.processName, processRecord2.getPid(), processStateRecord.getSetAdj(), processStateRecord.getSetProcState(), processStateRecord.getAdjType(), processStateRecord.makeAdjReason()));
        }
        ProcessProfileRecord processProfileRecord = processRecord2.mProfile;
        if (processProfileRecord.getLastLowMemory() + this.mService.mConstants.GC_MIN_INTERVAL <= j) {
            synchronized (this.mProfilerLock) {
                if (processStateRecord.getSetAdj() <= 400) {
                    processProfileRecord.setLastRequestedGc(0L);
                } else {
                    processProfileRecord.setLastRequestedGc(processProfileRecord.getLastLowMemory());
                }
                processProfileRecord.setReportLowMemory(true);
                processProfileRecord.setLastLowMemory(j);
                this.mProcessesToGc.remove(processRecord2);
                addProcessToGcListLPf(processRecord2);
            }
        }
    }

    public void reportMemUsage(ArrayList arrayList) {
        int i;
        long j;
        ArrayList arrayList2 = arrayList;
        SparseArray sparseArray = new SparseArray(arrayList.size());
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ProcessMemInfo processMemInfo = (ProcessMemInfo) arrayList2.get(i2);
            sparseArray.put(processMemInfo.pid, processMemInfo);
        }
        updateCpuStatsNow();
        long[] jArr = new long[4];
        long[] jArr2 = new long[2];
        List cpuStats = getCpuStats(new Predicate() { // from class: com.android.server.am.AppProfiler$$ExternalSyntheticLambda5
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$reportMemUsage$7;
                lambda$reportMemUsage$7 = AppProfiler.lambda$reportMemUsage$7((ProcessCpuTracker.Stats) obj);
                return lambda$reportMemUsage$7;
            }
        });
        int size2 = cpuStats.size();
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        int i3 = 0;
        while (i3 < size2) {
            ProcessCpuTracker.Stats stats = (ProcessCpuTracker.Stats) cpuStats.get(i3);
            List list = cpuStats;
            int i4 = size2;
            long pss = Debug.getPss(stats.pid, jArr2, jArr);
            if (pss > j2 && sparseArray.indexOfKey(stats.pid) < 0) {
                ProcessMemInfo processMemInfo2 = new ProcessMemInfo(stats.name, stats.pid, -1000, -1, "native", null);
                processMemInfo2.pss = pss;
                processMemInfo2.swapPss = jArr2[1];
                processMemInfo2.memtrack = jArr[0];
                j3 += jArr[1];
                j4 += jArr[2];
                arrayList2.add(processMemInfo2);
            }
            i3++;
            cpuStats = list;
            size2 = i4;
            j2 = 0;
        }
        int size3 = arrayList.size();
        int i5 = 0;
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        while (i5 < size3) {
            ProcessMemInfo processMemInfo3 = (ProcessMemInfo) arrayList2.get(i5);
            int i6 = size3;
            if (processMemInfo3.pss == 0) {
                processMemInfo3.pss = Debug.getPss(processMemInfo3.pid, jArr2, jArr);
                j = j6;
                processMemInfo3.swapPss = jArr2[1];
                processMemInfo3.memtrack = jArr[0];
                j3 += jArr[1];
                j4 += jArr[2];
            } else {
                j = j6;
            }
            j5 += processMemInfo3.pss;
            j7 += processMemInfo3.swapPss;
            j6 = j + processMemInfo3.memtrack;
            i5++;
            arrayList2 = arrayList;
            size3 = i6;
        }
        long j8 = j6;
        Collections.sort(arrayList, new Comparator() { // from class: com.android.server.am.AppProfiler.2
            public AnonymousClass2() {
            }

            @Override // java.util.Comparator
            public int compare(ProcessMemInfo processMemInfo4, ProcessMemInfo processMemInfo5) {
                int i7 = processMemInfo4.oomAdj;
                int i8 = processMemInfo5.oomAdj;
                if (i7 != i8) {
                    return i7 < i8 ? -1 : 1;
                }
                long j9 = processMemInfo4.pss;
                long j10 = processMemInfo5.pss;
                if (j9 != j10) {
                    return j9 < j10 ? 1 : -1;
                }
                return 0;
            }
        });
        StringBuilder sb = new StringBuilder(128);
        StringBuilder sb2 = new StringBuilder(128);
        sb.append("Low on memory -- ");
        ActivityManagerService.appendMemBucket(sb, j5, "total", false);
        ActivityManagerService.appendMemBucket(sb2, j5, "total", true);
        StringBuilder sb3 = new StringBuilder(1024);
        StringBuilder sb4 = new StringBuilder(1024);
        StringBuilder sb5 = new StringBuilder(1024);
        int size4 = arrayList.size();
        int i7 = Integer.MIN_VALUE;
        int i8 = 0;
        boolean z = true;
        long j9 = 0;
        long j10 = 0;
        long j11 = 0;
        while (i8 < size4) {
            ProcessMemInfo processMemInfo4 = (ProcessMemInfo) arrayList.get(i8);
            long j12 = j4;
            int i9 = processMemInfo4.oomAdj;
            long j13 = j3;
            if (i9 >= 900) {
                j9 += processMemInfo4.pss;
            }
            if (i9 != -1000 && (i9 < 500 || i9 == 600 || i9 == 700)) {
                if (i7 != i9) {
                    if (i9 <= 0) {
                        sb.append(" / ");
                    }
                    if (processMemInfo4.oomAdj >= 0) {
                        if (z) {
                            sb2.append(XmlUtils.STRING_ARRAY_SEPARATOR);
                            z = false;
                        }
                        sb2.append("\n\t at ");
                    } else {
                        sb2.append("$");
                    }
                    i7 = i9;
                } else {
                    sb.append(" ");
                    sb2.append("$");
                }
                if (processMemInfo4.oomAdj <= 0) {
                    ActivityManagerService.appendMemBucket(sb, processMemInfo4.pss, processMemInfo4.name, false);
                }
                ActivityManagerService.appendMemBucket(sb2, processMemInfo4.pss, processMemInfo4.name, true);
                if (processMemInfo4.oomAdj >= 0 && ((i = i8 + 1) >= size4 || ((ProcessMemInfo) arrayList.get(i)).oomAdj != i7)) {
                    sb2.append("(");
                    int i10 = 0;
                    while (true) {
                        int[] iArr = ActivityManagerService.DUMP_MEM_OOM_ADJ;
                        if (i10 >= iArr.length) {
                            break;
                        }
                        if (iArr[i10] == processMemInfo4.oomAdj) {
                            sb2.append(ActivityManagerService.DUMP_MEM_OOM_LABEL[i10]);
                            sb2.append(XmlUtils.STRING_ARRAY_SEPARATOR);
                            sb2.append(iArr[i10]);
                        }
                        i10++;
                    }
                    sb2.append(")");
                }
            }
            ActivityManagerService.appendMemInfo(sb3, processMemInfo4);
            if (processMemInfo4.oomAdj == -1000) {
                long j14 = processMemInfo4.pss;
                if (j14 >= 512) {
                    ActivityManagerService.appendMemInfo(sb4, processMemInfo4);
                } else {
                    j10 += j14;
                    j11 += processMemInfo4.memtrack;
                }
            } else {
                if (j10 > 0) {
                    ActivityManagerService.appendBasicMemEntry(sb4, -1000, -1, j10, j11, "(Other native)");
                    sb4.append('\n');
                    j10 = 0;
                }
                ActivityManagerService.appendMemInfo(sb5, processMemInfo4);
            }
            i8++;
            j4 = j12;
            j3 = j13;
        }
        long j15 = j3;
        long j16 = j4;
        sb5.append("           ");
        ProcessList.appendRamKb(sb5, j5);
        sb5.append(": TOTAL");
        if (j8 > 0) {
            sb5.append(" (");
            sb5.append(ActivityManagerService.stringifyKBSize(j8));
            sb5.append(" memtrack)");
        }
        sb5.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        MemInfoReader memInfoReader = new MemInfoReader();
        memInfoReader.readMemInfo();
        long[] rawInfo = memInfoReader.getRawInfo();
        StringBuilder sb6 = new StringBuilder(1024);
        Debug.getMemInfo(rawInfo);
        sb6.append("  MemInfo: ");
        sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[9]));
        sb6.append(" slab, ");
        sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[8]));
        sb6.append(" shmem, ");
        sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[16]));
        sb6.append(" vm alloc, ");
        sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[17]));
        sb6.append(" page tables ");
        sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[18]));
        sb6.append(" kernel stack\n");
        sb6.append("           ");
        sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[2]));
        sb6.append(" buffers, ");
        sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[3]));
        sb6.append(" cached, ");
        sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[15]));
        sb6.append(" mapped, ");
        sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[1]));
        sb6.append(" free\n");
        if (rawInfo[14] != 0) {
            sb6.append("  ZRAM: ");
            sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[14]));
            sb6.append(" RAM, ");
            sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[12]));
            sb6.append(" swap total, ");
            sb6.append(ActivityManagerService.stringifyKBSize(rawInfo[13]));
            sb6.append(" swap free\n");
        }
        long[] ksmInfo = ActivityManagerService.getKsmInfo();
        if (ksmInfo[1] != 0 || ksmInfo[0] != 0 || ksmInfo[2] != 0 || ksmInfo[3] != 0) {
            sb6.append("  KSM: ");
            sb6.append(ActivityManagerService.stringifyKBSize(ksmInfo[1]));
            sb6.append(" saved from shared ");
            sb6.append(ActivityManagerService.stringifyKBSize(ksmInfo[0]));
            sb6.append("\n       ");
            sb6.append(ActivityManagerService.stringifyKBSize(ksmInfo[2]));
            sb6.append(" unshared; ");
            sb6.append(ActivityManagerService.stringifyKBSize(ksmInfo[3]));
            sb6.append(" volatile\n");
        }
        sb6.append("  Free RAM: ");
        sb6.append(ActivityManagerService.stringifyKBSize(j9 + memInfoReader.getCachedSizeKb() + memInfoReader.getFreeSizeKb()));
        sb6.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        long kernelUsedSizeKb = memInfoReader.getKernelUsedSizeKb();
        long ionHeapsSizeKb = Debug.getIonHeapsSizeKb();
        long ionPoolsSizeKb = Debug.getIonPoolsSizeKb();
        long dmabufMappedSizeKb = Debug.getDmabufMappedSizeKb();
        if (ionHeapsSizeKb >= 0 && ionPoolsSizeKb >= 0) {
            sb6.append("       ION: ");
            sb6.append(ActivityManagerService.stringifyKBSize(ionHeapsSizeKb + ionPoolsSizeKb));
            sb6.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            kernelUsedSizeKb += ionHeapsSizeKb - dmabufMappedSizeKb;
            j5 = (j5 - j15) + dmabufMappedSizeKb;
        } else {
            long dmabufTotalExportedKb = Debug.getDmabufTotalExportedKb();
            if (dmabufTotalExportedKb >= 0) {
                sb6.append("DMA-BUF: ");
                sb6.append(ActivityManagerService.stringifyKBSize(dmabufTotalExportedKb));
                sb6.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                kernelUsedSizeKb += dmabufTotalExportedKb - dmabufMappedSizeKb;
                j5 = (j5 - j15) + dmabufMappedSizeKb;
            }
            long dmabufHeapTotalExportedKb = Debug.getDmabufHeapTotalExportedKb();
            if (dmabufHeapTotalExportedKb >= 0) {
                sb6.append("DMA-BUF Heap: ");
                sb6.append(ActivityManagerService.stringifyKBSize(dmabufHeapTotalExportedKb));
                sb6.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            long dmabufHeapPoolsSizeKb = Debug.getDmabufHeapPoolsSizeKb();
            if (dmabufHeapPoolsSizeKb >= 0) {
                sb6.append("DMA-BUF Heaps pool: ");
                sb6.append(ActivityManagerService.stringifyKBSize(dmabufHeapPoolsSizeKb));
                sb6.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
        }
        long gpuTotalUsageKb = Debug.getGpuTotalUsageKb();
        if (gpuTotalUsageKb >= 0) {
            long gpuPrivateMemoryKb = Debug.getGpuPrivateMemoryKb();
            if (gpuPrivateMemoryKb >= 0) {
                sb6.append("      GPU: ");
                sb6.append(ActivityManagerService.stringifyKBSize(gpuTotalUsageKb));
                sb6.append(" (");
                sb6.append(ActivityManagerService.stringifyKBSize(gpuTotalUsageKb - gpuPrivateMemoryKb));
                sb6.append(" dmabuf + ");
                sb6.append(ActivityManagerService.stringifyKBSize(gpuPrivateMemoryKb));
                sb6.append(" private)\n");
                j5 -= j16;
                kernelUsedSizeKb += gpuPrivateMemoryKb;
            } else {
                sb6.append("       GPU: ");
                sb6.append(ActivityManagerService.stringifyKBSize(gpuTotalUsageKb));
                sb6.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
        }
        sb6.append("  Used RAM: ");
        sb6.append(ActivityManagerService.stringifyKBSize((j5 - j9) + kernelUsedSizeKb));
        sb6.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        sb6.append("  Lost RAM: ");
        sb6.append(ActivityManagerService.stringifyKBSize(((((memInfoReader.getTotalSizeKb() - (j5 - j7)) - memInfoReader.getFreeSizeKb()) - memInfoReader.getCachedSizeKb()) - kernelUsedSizeKb) - memInfoReader.getZramTotalSizeKb()));
        sb6.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        Slog.i("ActivityManager", "Low on memory:");
        Slog.i("ActivityManager", sb4.toString());
        Slog.i("ActivityManager", sb5.toString());
        Slog.i("ActivityManager", sb6.toString());
        StringBuilder sb7 = new StringBuilder(1024);
        sb7.append("Low on memory:");
        sb7.append((CharSequence) sb2);
        sb7.append('\n');
        sb7.append((CharSequence) sb3);
        sb7.append((CharSequence) sb5);
        sb7.append('\n');
        sb7.append((CharSequence) sb6);
        sb7.append('\n');
        StringWriter stringWriter = new StringWriter();
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                PrintWriter fastPrintWriter = new FastPrintWriter(stringWriter, false, 256);
                String[] strArr = new String[0];
                fastPrintWriter.println();
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                ActivityManagerService.boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        this.mService.mProcessList.dumpProcessesLSP(null, fastPrintWriter, strArr, 0, false, null, -1);
                    } catch (Throwable th) {
                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                }
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                fastPrintWriter.println();
                this.mService.mServices.newServiceDumperLocked(null, fastPrintWriter, strArr, 0, false, null).dumpLocked();
                fastPrintWriter.println();
                this.mService.mAtmInternal.dump("activities", null, fastPrintWriter, strArr, 0, false, false, null, -1);
                fastPrintWriter.flush();
            } finally {
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
        sb7.append(stringWriter.toString());
        FrameworkStatsLog.write(81);
        this.mService.addErrorToDropBox("lowmem", null, "system_server", null, null, null, sb.toString(), sb7.toString(), null, null, null, null, null);
        ActivityManagerService activityManagerService2 = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService2) {
            try {
                long uptimeMillis = SystemClock.uptimeMillis();
                if (this.mLastMemUsageReportTime < uptimeMillis) {
                    this.mLastMemUsageReportTime = uptimeMillis;
                }
            } finally {
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public static /* synthetic */ boolean lambda$reportMemUsage$7(ProcessCpuTracker.Stats stats) {
        return stats.vsize > 0;
    }

    /* renamed from: com.android.server.am.AppProfiler$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Comparator {
        public AnonymousClass2() {
        }

        @Override // java.util.Comparator
        public int compare(ProcessMemInfo processMemInfo4, ProcessMemInfo processMemInfo5) {
            int i7 = processMemInfo4.oomAdj;
            int i8 = processMemInfo5.oomAdj;
            if (i7 != i8) {
                return i7 < i8 ? -1 : 1;
            }
            long j9 = processMemInfo4.pss;
            long j10 = processMemInfo5.pss;
            if (j9 != j10) {
                return j9 < j10 ? 1 : -1;
            }
            return 0;
        }
    }

    public final void handleMemoryPressureChangedLocked(int i, int i2) {
        this.mService.mServices.rescheduleServiceRestartOnMemoryPressureIfNeededLocked(i, i2, "mem-pressure-event", SystemClock.uptimeMillis());
    }

    public final void stopProfilerLPf(ProcessRecord processRecord, int i) {
        IApplicationThread thread;
        if (processRecord == null || processRecord == this.mProfileData.getProfileProc()) {
            processRecord = this.mProfileData.getProfileProc();
            i = this.mProfileType;
            clearProfilerLPf();
        }
        if (processRecord == null || (thread = processRecord.mProfile.getThread()) == null) {
            return;
        }
        try {
            thread.profilerControl(false, (ProfilerInfo) null, i);
        } catch (RemoteException unused) {
            throw new IllegalStateException("Process disappeared");
        }
    }

    public void clearProfilerLPf() {
        if (this.mProfileData.getProfilerInfo() != null && this.mProfileData.getProfilerInfo().profileFd != null) {
            try {
                this.mProfileData.getProfilerInfo().profileFd.close();
            } catch (IOException unused) {
            }
        }
        this.mProfileData.setProfileApp(null);
        this.mProfileData.setProfileProc(null);
        this.mProfileData.setProfilerInfo(null);
    }

    public boolean profileControlLPf(ProcessRecord processRecord, boolean z, ProfilerInfo profilerInfo, int i) {
        ParcelFileDescriptor parcelFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor2;
        ParcelFileDescriptor parcelFileDescriptor3;
        try {
            try {
                if (z) {
                    stopProfilerLPf(null, 0);
                    this.mService.setProfileApp(processRecord.info, processRecord.processName, profilerInfo, processRecord.isSdkSandbox ? processRecord.getClientInfoForSdkSandbox() : null);
                    this.mProfileData.setProfileProc(processRecord);
                    this.mProfileType = i;
                    try {
                        parcelFileDescriptor3 = profilerInfo.profileFd.dup();
                    } catch (IOException unused) {
                        parcelFileDescriptor3 = null;
                    }
                    profilerInfo.profileFd = parcelFileDescriptor3;
                    processRecord.mProfile.getThread().profilerControl(z, profilerInfo, i);
                    try {
                        this.mProfileData.getProfilerInfo().profileFd.close();
                    } catch (IOException unused2) {
                    }
                    this.mProfileData.getProfilerInfo().profileFd = null;
                    if (processRecord.getPid() == ActivityManagerService.MY_PID) {
                        profilerInfo = null;
                    }
                } else {
                    stopProfilerLPf(processRecord, i);
                    if (profilerInfo != null && (parcelFileDescriptor2 = profilerInfo.profileFd) != null) {
                        try {
                            parcelFileDescriptor2.close();
                        } catch (IOException unused3) {
                        }
                    }
                }
                if (profilerInfo == null || r5 == null) {
                    return true;
                }
                try {
                    profilerInfo.profileFd.close();
                    return true;
                } catch (IOException unused4) {
                    return true;
                }
            } catch (RemoteException unused5) {
                throw new IllegalStateException("Process disappeared");
            }
        } finally {
            if (profilerInfo != null && (parcelFileDescriptor = profilerInfo.profileFd) != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException unused6) {
                }
            }
        }
    }

    public void setProfileAppLPf(String str, ProfilerInfo profilerInfo) {
        this.mProfileData.setProfileApp(str);
        if (this.mProfileData.getProfilerInfo() != null && this.mProfileData.getProfilerInfo().profileFd != null) {
            try {
                this.mProfileData.getProfilerInfo().profileFd.close();
            } catch (IOException unused) {
            }
        }
        this.mProfileData.setProfilerInfo(new ProfilerInfo(profilerInfo));
        this.mProfileType = 0;
    }

    public void setProfileProcLPf(ProcessRecord processRecord) {
        this.mProfileData.setProfileProc(processRecord);
    }

    public void setAgentAppLPf(String str, String str2) {
        if (str2 == null) {
            Map map = this.mAppAgentMap;
            if (map != null) {
                map.remove(str);
                if (this.mAppAgentMap.isEmpty()) {
                    this.mAppAgentMap = null;
                    return;
                }
                return;
            }
            return;
        }
        if (this.mAppAgentMap == null) {
            this.mAppAgentMap = new HashMap();
        }
        if (this.mAppAgentMap.size() >= 100) {
            Slog.e("ActivityManager", "App agent map has too many entries, cannot add " + str + "/" + str2);
            return;
        }
        this.mAppAgentMap.put(str, str2);
    }

    public void updateCpuStats() {
        if (this.mLastCpuTime.get() < SystemClock.uptimeMillis() - 5000 && this.mProcessCpuMutexFree.compareAndSet(true, false)) {
            synchronized (this.mProcessCpuThread) {
                this.mProcessCpuThread.notify();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void updateCpuStatsNow() {
        /*
            Method dump skipped, instructions count: 472
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppProfiler.updateCpuStatsNow():void");
    }

    public long getCpuTimeForPid(int i) {
        return this.mProcessCpuTracker.getCpuTimeForPid(i);
    }

    public long getCpuDelayTimeForPid(int i) {
        return this.mProcessCpuTracker.getCpuDelayTimeForPid(i);
    }

    public List getCpuStats(final Predicate predicate) {
        List stats;
        synchronized (this.mProcessCpuTracker) {
            stats = this.mProcessCpuTracker.getStats(new ProcessCpuTracker.FilterStats() { // from class: com.android.server.am.AppProfiler$$ExternalSyntheticLambda7
                public final boolean needed(ProcessCpuTracker.Stats stats2) {
                    boolean test;
                    test = predicate.test(stats2);
                    return test;
                }
            });
        }
        return stats;
    }

    public void forAllCpuStats(Consumer consumer) {
        synchronized (this.mProcessCpuTracker) {
            int countStats = this.mProcessCpuTracker.countStats();
            for (int i = 0; i < countStats; i++) {
                consumer.accept(this.mProcessCpuTracker.getStats(i));
            }
        }
    }

    /* loaded from: classes.dex */
    public class ProcessCpuThread extends Thread {
        public ProcessCpuThread(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (AppProfiler.this.mProcessCpuTracker) {
                AppProfiler.this.mProcessCpuInitLatch.countDown();
                AppProfiler.this.mProcessCpuTracker.init();
            }
            while (true) {
                try {
                    try {
                        synchronized (this) {
                            long uptimeMillis = SystemClock.uptimeMillis();
                            long j = (AppProfiler.this.mLastCpuTime.get() + 268435455) - uptimeMillis;
                            long j2 = (AppProfiler.this.mLastWriteTime + 1800000) - uptimeMillis;
                            if (j2 < j) {
                                j = j2;
                            }
                            if (j > 0) {
                                AppProfiler.this.mProcessCpuMutexFree.set(true);
                                wait(j);
                            }
                        }
                    } catch (InterruptedException unused) {
                    }
                    AppProfiler.this.updateCpuStatsNow();
                } catch (Exception e) {
                    Slog.e("ActivityManager", "Unexpected exception collecting process stats", e);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class CpuBinder extends Binder {
        public final PriorityDump.PriorityDumper mPriorityDumper = new PriorityDump.PriorityDumper() { // from class: com.android.server.am.AppProfiler.CpuBinder.1
            public AnonymousClass1() {
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpCritical(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                if (DumpUtils.checkDumpAndUsageStatsPermission(AppProfiler.this.mService.mContext, "cpuinfo", printWriter)) {
                    synchronized (AppProfiler.this.mProcessCpuTracker) {
                        if (z) {
                            AppProfiler.this.mProcessCpuTracker.dumpProto(fileDescriptor);
                        } else {
                            printWriter.print(AppProfiler.this.mProcessCpuTracker.printCurrentLoad());
                            printWriter.print(AppProfiler.this.mProcessCpuTracker.printCurrentState(SystemClock.uptimeMillis()));
                        }
                    }
                }
            }
        };

        public CpuBinder() {
        }

        /* renamed from: com.android.server.am.AppProfiler$CpuBinder$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements PriorityDump.PriorityDumper {
            public AnonymousClass1() {
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpCritical(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                if (DumpUtils.checkDumpAndUsageStatsPermission(AppProfiler.this.mService.mContext, "cpuinfo", printWriter)) {
                    synchronized (AppProfiler.this.mProcessCpuTracker) {
                        if (z) {
                            AppProfiler.this.mProcessCpuTracker.dumpProto(fileDescriptor);
                        } else {
                            printWriter.print(AppProfiler.this.mProcessCpuTracker.printCurrentLoad());
                            printWriter.print(AppProfiler.this.mProcessCpuTracker.printCurrentState(SystemClock.uptimeMillis()));
                        }
                    }
                }
            }
        }

        @Override // android.os.Binder
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            PriorityDump.dump(this.mPriorityDumper, fileDescriptor, printWriter, strArr);
        }
    }

    public void setCpuInfoService() {
        ServiceManager.addService("cpuinfo", new CpuBinder(), false, 1);
    }

    public AppProfiler(ActivityManagerService activityManagerService, Looper looper, LowMemDetector lowMemDetector) {
        this.mService = activityManagerService;
        this.mProcLock = activityManagerService.mProcLock;
        this.mBgHandler = new BgHandler(looper);
        this.mLowMemDetector = lowMemDetector;
        OnTrimReclaimer onTrimReclaimer = new OnTrimReclaimer();
        this.mOnTrimReclaimer = onTrimReclaimer;
        UnifiedMemoryReclaimer.registerReclaimer(onTrimReclaimer);
    }

    public void onSystemReady() {
        this.mChimera = (ChimeraManagerService) ServiceManager.getService("ChimeraManagerService");
    }

    public void retrieveSettings() {
        long j = DeviceConfig.getLong("activity_manager", "activity_start_pss_defer", 0L);
        DeviceConfig.addOnPropertiesChangedListener("activity_manager", ActivityThread.currentApplication().getMainExecutor(), this.mPssDelayConfigListener);
        this.mPssDeferralTime = j;
    }

    public void onActivityManagerInternalAdded() {
        this.mProcessCpuThread.start();
        try {
            this.mProcessCpuInitLatch.await();
        } catch (InterruptedException e) {
            Slog.wtf("ActivityManager", "Interrupted wait during start", e);
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Interrupted wait during start");
        }
    }

    public void onActivityLaunched() {
        if (this.mPssDeferralTime > 0) {
            this.mBgHandler.sendMessageAtFrontOfQueue(this.mBgHandler.obtainMessage(2));
        }
        this.mLastActivityLaunchedTime = SystemClock.uptimeMillis();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004b A[Catch: all -> 0x0183, TryCatch #0 {, blocks: (B:4:0x000d, B:6:0x0018, B:8:0x0024, B:10:0x0031, B:12:0x003b, B:17:0x004b, B:18:0x0058, B:20:0x0062, B:22:0x008a, B:24:0x008e, B:26:0x0094, B:28:0x009a, B:30:0x00a4, B:31:0x00bf, B:33:0x00c3, B:35:0x00d1, B:37:0x00d5, B:39:0x00e7, B:41:0x00ef, B:42:0x00f2, B:95:0x006d, B:97:0x0071), top: B:3:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0062 A[Catch: all -> 0x0183, TryCatch #0 {, blocks: (B:4:0x000d, B:6:0x0018, B:8:0x0024, B:10:0x0031, B:12:0x003b, B:17:0x004b, B:18:0x0058, B:20:0x0062, B:22:0x008a, B:24:0x008e, B:26:0x0094, B:28:0x009a, B:30:0x00a4, B:31:0x00bf, B:33:0x00c3, B:35:0x00d1, B:37:0x00d5, B:39:0x00e7, B:41:0x00ef, B:42:0x00f2, B:95:0x006d, B:97:0x0071), top: B:3:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.app.ProfilerInfo setupProfilerInfoLocked(android.app.IApplicationThread r22, com.android.server.am.ProcessRecord r23, com.android.server.am.ActiveInstrumentation r24) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppProfiler.setupProfilerInfoLocked(android.app.IApplicationThread, com.android.server.am.ProcessRecord, com.android.server.am.ActiveInstrumentation):android.app.ProfilerInfo");
    }

    public void onCleanupApplicationRecordLocked(ProcessRecord processRecord) {
        synchronized (this.mProfilerLock) {
            ProcessProfileRecord processProfileRecord = processRecord.mProfile;
            this.mProcessesToGc.remove(processRecord);
            this.mPendingPssProfiles.remove(processProfileRecord);
            processProfileRecord.abortNextPssTime();
        }
    }

    public void onAppDiedLocked(ProcessRecord processRecord) {
        synchronized (this.mProfilerLock) {
            if (this.mProfileData.getProfileProc() == processRecord) {
                clearProfilerLPf();
            }
        }
    }

    public boolean dumpMemWatchProcessesLPf(PrintWriter printWriter, boolean z) {
        if (this.mMemWatchProcesses.getMap().size() > 0) {
            printWriter.println("  Mem watch processes:");
            ArrayMap map = this.mMemWatchProcesses.getMap();
            for (int size = map.size() - 1; size >= 0; size--) {
                String str = (String) map.keyAt(size);
                SparseArray sparseArray = (SparseArray) map.valueAt(size);
                for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
                    if (z) {
                        printWriter.println();
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("    ");
                    sb.append(str);
                    sb.append('/');
                    UserHandle.formatUid(sb, sparseArray.keyAt(size2));
                    Pair pair = (Pair) sparseArray.valueAt(size2);
                    sb.append(": ");
                    DebugUtils.sizeValueToString(((Long) pair.first).longValue(), sb);
                    if (pair.second != null) {
                        sb.append(", report to ");
                        sb.append((String) pair.second);
                    }
                    printWriter.println(sb.toString());
                }
            }
            printWriter.print("  mMemWatchDumpProcName=");
            printWriter.println(this.mMemWatchDumpProcName);
            printWriter.print("  mMemWatchDumpUri=");
            printWriter.println(this.mMemWatchDumpUri);
            printWriter.print("  mMemWatchDumpPid=");
            printWriter.println(this.mMemWatchDumpPid);
            printWriter.print("  mMemWatchDumpUid=");
            printWriter.println(this.mMemWatchDumpUid);
            printWriter.print("  mMemWatchIsUserInitiated=");
            printWriter.println(this.mMemWatchIsUserInitiated);
        }
        return z;
    }

    public boolean dumpProfileDataLocked(PrintWriter printWriter, String str, boolean z) {
        if ((this.mProfileData.getProfileApp() != null || this.mProfileData.getProfileProc() != null || (this.mProfileData.getProfilerInfo() != null && (this.mProfileData.getProfilerInfo().profileFile != null || this.mProfileData.getProfilerInfo().profileFd != null))) && (str == null || str.equals(this.mProfileData.getProfileApp()))) {
            if (z) {
                printWriter.println();
                z = false;
            }
            printWriter.println("  mProfileApp=" + this.mProfileData.getProfileApp() + " mProfileProc=" + this.mProfileData.getProfileProc());
            if (this.mProfileData.getProfilerInfo() != null) {
                printWriter.println("  mProfileFile=" + this.mProfileData.getProfilerInfo().profileFile + " mProfileFd=" + this.mProfileData.getProfilerInfo().profileFd);
                printWriter.println("  mSamplingInterval=" + this.mProfileData.getProfilerInfo().samplingInterval + " mAutoStopProfiler=" + this.mProfileData.getProfilerInfo().autoStopProfiler + " mStreamingOutput=" + this.mProfileData.getProfilerInfo().streamingOutput + " mClockType=" + this.mProfileData.getProfilerInfo().clockType);
                StringBuilder sb = new StringBuilder();
                sb.append("  mProfileType=");
                sb.append(this.mProfileType);
                printWriter.println(sb.toString());
            }
        }
        return z;
    }

    public void dumpLastMemoryLevelLocked(PrintWriter printWriter) {
        int i = this.mLastMemoryLevel;
        if (i == 0) {
            printWriter.println("normal)");
            return;
        }
        if (i == 1) {
            printWriter.println("moderate)");
            return;
        }
        if (i == 2) {
            printWriter.println("low)");
        } else if (i == 3) {
            printWriter.println("critical)");
        } else {
            printWriter.print(i);
            printWriter.println(")");
        }
    }

    public void dumpMemoryLevelsLocked(PrintWriter printWriter) {
        printWriter.println("  mAllowLowerMemLevel=" + this.mAllowLowerMemLevel + " mLastMemoryLevel=" + this.mLastMemoryLevel + " mLastNumProcesses=" + this.mLastNumProcesses);
    }

    public void writeMemWatchProcessToProtoLPf(ProtoOutputStream protoOutputStream) {
        if (this.mMemWatchProcesses.getMap().size() > 0) {
            long start = protoOutputStream.start(1146756268064L);
            ArrayMap map = this.mMemWatchProcesses.getMap();
            for (int i = 0; i < map.size(); i++) {
                String str = (String) map.keyAt(i);
                SparseArray sparseArray = (SparseArray) map.valueAt(i);
                long start2 = protoOutputStream.start(2246267895809L);
                protoOutputStream.write(1138166333441L, str);
                for (int size = sparseArray.size() - 1; size >= 0; size--) {
                    long start3 = protoOutputStream.start(2246267895810L);
                    Pair pair = (Pair) sparseArray.valueAt(size);
                    protoOutputStream.write(1120986464257L, sparseArray.keyAt(size));
                    protoOutputStream.write(1138166333442L, DebugUtils.sizeValueToString(((Long) pair.first).longValue(), new StringBuilder()));
                    protoOutputStream.write(1138166333443L, (String) pair.second);
                    protoOutputStream.end(start3);
                }
                protoOutputStream.end(start2);
            }
            long start4 = protoOutputStream.start(1146756268034L);
            protoOutputStream.write(1138166333441L, this.mMemWatchDumpProcName);
            protoOutputStream.write(1138166333446L, this.mMemWatchDumpUri.toString());
            protoOutputStream.write(1120986464259L, this.mMemWatchDumpPid);
            protoOutputStream.write(1120986464260L, this.mMemWatchDumpUid);
            protoOutputStream.write(1133871366149L, this.mMemWatchIsUserInitiated);
            protoOutputStream.end(start4);
            protoOutputStream.end(start);
        }
    }

    public void writeProfileDataToProtoLocked(ProtoOutputStream protoOutputStream, String str) {
        if (this.mProfileData.getProfileApp() == null && this.mProfileData.getProfileProc() == null) {
            if (this.mProfileData.getProfilerInfo() == null) {
                return;
            }
            if (this.mProfileData.getProfilerInfo().profileFile == null && this.mProfileData.getProfilerInfo().profileFd == null) {
                return;
            }
        }
        if (str == null || str.equals(this.mProfileData.getProfileApp())) {
            long start = protoOutputStream.start(1146756268066L);
            protoOutputStream.write(1138166333441L, this.mProfileData.getProfileApp());
            this.mProfileData.getProfileProc().dumpDebug(protoOutputStream, 1146756268034L);
            if (this.mProfileData.getProfilerInfo() != null) {
                this.mProfileData.getProfilerInfo().dumpDebug(protoOutputStream, 1146756268035L);
                protoOutputStream.write(1120986464260L, this.mProfileType);
            }
            protoOutputStream.end(start);
        }
    }

    public void writeMemoryLevelsToProtoLocked(ProtoOutputStream protoOutputStream) {
        protoOutputStream.write(1133871366199L, this.mAllowLowerMemLevel);
        protoOutputStream.write(1120986464312L, this.mLastMemoryLevel);
        protoOutputStream.write(1120986464313L, this.mLastNumProcesses);
    }

    public void printCurrentCpuState(StringBuilder sb, long j) {
        synchronized (this.mProcessCpuTracker) {
            sb.append(this.mProcessCpuTracker.printCurrentState(j, 10));
        }
    }

    public Pair getAppProfileStatsForDebugging(long j, int i) {
        String printCurrentLoad;
        String printCurrentState;
        synchronized (this.mProcessCpuTracker) {
            updateCpuStatsNow();
            printCurrentLoad = this.mProcessCpuTracker.printCurrentLoad();
            printCurrentState = this.mProcessCpuTracker.printCurrentState(j);
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 > i) {
                break;
            }
            int indexOf = printCurrentState.indexOf(10, i3);
            if (indexOf == -1) {
                i3 = printCurrentState.length();
                break;
            }
            i3 = indexOf + 1;
            i2++;
        }
        return new Pair(printCurrentLoad, printCurrentState.substring(0, i3));
    }

    public void writeProcessesToGcToProto(ProtoOutputStream protoOutputStream, long j, String str) {
        if (this.mProcessesToGc.size() > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int size = this.mProcessesToGc.size();
            for (int i = 0; i < size; i++) {
                ProcessRecord processRecord = (ProcessRecord) this.mProcessesToGc.get(i);
                if (str == null || str.equals(processRecord.info.packageName)) {
                    long start = protoOutputStream.start(j);
                    ProcessProfileRecord processProfileRecord = processRecord.mProfile;
                    processRecord.dumpDebug(protoOutputStream, 1146756268033L);
                    protoOutputStream.write(1133871366146L, processProfileRecord.getReportLowMemory());
                    protoOutputStream.write(1112396529667L, uptimeMillis);
                    protoOutputStream.write(1112396529668L, processProfileRecord.getLastRequestedGc());
                    protoOutputStream.write(1112396529669L, processProfileRecord.getLastLowMemory());
                    protoOutputStream.end(start);
                }
            }
        }
    }

    public boolean dumpProcessesToGc(PrintWriter printWriter, boolean z, String str) {
        if (this.mProcessesToGc.size() > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int size = this.mProcessesToGc.size();
            boolean z2 = false;
            for (int i = 0; i < size; i++) {
                ProcessRecord processRecord = (ProcessRecord) this.mProcessesToGc.get(i);
                if (str == null || str.equals(processRecord.info.packageName)) {
                    if (!z2) {
                        if (z) {
                            printWriter.println();
                        }
                        printWriter.println("  Processes that are waiting to GC:");
                        z2 = true;
                        z = true;
                    }
                    printWriter.print("    Process ");
                    printWriter.println(processRecord);
                    ProcessProfileRecord processProfileRecord = processRecord.mProfile;
                    printWriter.print("      lowMem=");
                    printWriter.print(processProfileRecord.getReportLowMemory());
                    printWriter.print(", last gced=");
                    printWriter.print(uptimeMillis - processProfileRecord.getLastRequestedGc());
                    printWriter.print(" ms ago, last lowMem=");
                    printWriter.print(uptimeMillis - processProfileRecord.getLastLowMemory());
                    printWriter.println(" ms ago");
                }
            }
        }
        return z;
    }

    public boolean getLowMemDetectorIsAvailable() {
        LowMemDetector lowMemDetector = this.mLowMemDetector;
        return lowMemDetector != null && lowMemDetector.isAvailable();
    }
}
