package com.android.server.am;

import android.app.ActivityManager;
import android.app.ActivityThread;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.net.NetworkPolicyManager;
import android.os.Debug;
import android.os.Handler;
import android.os.ICustomFrequencyManager;
import android.os.Message;
import android.os.PowerManagerInternal;
import android.os.Process;
import android.os.SystemClock;
import android.os.Trace;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.server.LocalServices;
import com.android.server.ServiceThread;
import com.android.server.am.ActivityManagerService;
import com.android.server.chimera.GPUMemoryReclaimer;
import com.android.server.chimera.PerProcessNandswap;
import com.android.server.wm.WindowProcessController;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class OomAdjuster {
    public String VENDING_PKG;
    public ActiveUids mActiveUids;
    public int mAdjSeq;
    public ICustomFrequencyManager mCFMS;
    public CacheOomRanker mCacheOomRanker;
    public CachedAppOptimizer mCachedAppOptimizer;
    public ActivityManagerConstants mConstants;
    public DynamicHiddenApp mDynamicHiddenApp;
    public GPUMemoryReclaimer mGPUMemoryReclaimer;
    public double mLastFreeSwapPercent;
    public PowerManagerInternal mLocalPowerManager;
    public int mNewNumAServiceProcs;
    public int mNewNumServiceProcs;
    public long mNextNoKillDebugMessageTime;
    public int mNumCachedHiddenProcs;
    public int mNumCachedProcessCount;
    public int mNumCachedSlotCount;
    public int mNumEmptyProcessCount;
    public int mNumEmptySlotCount;
    public int mNumNonCachedProcs;
    public int mNumServiceProcs;
    public final int mNumSlots;
    public boolean mOomAdjUpdateOngoing;
    public boolean mPendingFullOomAdjUpdate;
    public final ArraySet mPendingProcessSet;
    public PerProcessNandswap mPerProcessNandswap;
    public final ActivityManagerGlobalLock mProcLock;
    public final Handler mProcessGroupHandler;
    public final ProcessList mProcessList;
    public final ArraySet mProcessesInCycle;
    public final ActivityManagerService mService;
    public final ArrayList mTmpBecameIdle;
    public final ComputeOomAdjWindowCallback mTmpComputeOomAdjWindowCallback;
    public final long[] mTmpLong;
    public final ArrayList mTmpProcessList;
    public final ArraySet mTmpProcessSet;
    public final ArrayDeque mTmpQueue;
    public final int[] mTmpSchedGroup;
    public final ActiveUids mTmpUidRecords;

    public static final String oomAdjReasonToString(int i) {
        switch (i) {
            case 0:
                return "updateOomAdj_meh";
            case 1:
                return "updateOomAdj_activityChange";
            case 2:
                return "updateOomAdj_finishReceiver";
            case 3:
                return "updateOomAdj_startReceiver";
            case 4:
                return "updateOomAdj_bindService";
            case 5:
                return "updateOomAdj_unbindService";
            case 6:
                return "updateOomAdj_startService";
            case 7:
                return "updateOomAdj_getProvider";
            case 8:
                return "updateOomAdj_removeProvider";
            case 9:
                return "updateOomAdj_uiVisibility";
            case 10:
                return "updateOomAdj_allowlistChange";
            case 11:
                return "updateOomAdj_processBegin";
            case 12:
                return "updateOomAdj_processEnd";
            case 13:
                return "updateOomAdj_shortFgs";
            case 14:
                return "updateOomAdj_systemInit";
            case 15:
                return "updateOomAdj_backup";
            case 16:
                return "updateOomAdj_shell";
            case 17:
                return "updateOomAdj_removeTask";
            case 18:
                return "updateOomAdj_uidIdle";
            case 19:
                return "updateOomAdj_stopService";
            case 20:
                return "updateOomAdj_executingService";
            case 21:
                return "updateOomAdj_restrictionChange";
            case 22:
                return "updateOomAdj_componentDisabled";
            case 23:
                return "updateOomAdj_slowdown";
            case 24:
                return "updateOomAdj_fgsfilter";
            default:
                return "_unknown";
        }
    }

    public boolean isChangeEnabled(int i, ApplicationInfo applicationInfo, boolean z) {
        PlatformCompatCache.getInstance();
        return PlatformCompatCache.isChangeEnabled(i, applicationInfo, z);
    }

    public OomAdjuster(ActivityManagerService activityManagerService, ProcessList processList, ActiveUids activeUids) {
        this(activityManagerService, processList, activeUids, createAdjusterThread());
    }

    public static ServiceThread createAdjusterThread() {
        final ServiceThread serviceThread = new ServiceThread("OomAdjuster", -10, false);
        serviceThread.start();
        serviceThread.getThreadHandler().post(new Runnable() { // from class: com.android.server.am.OomAdjuster$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                OomAdjuster.lambda$createAdjusterThread$0(ServiceThread.this);
            }
        });
        return serviceThread;
    }

    public static /* synthetic */ void lambda$createAdjusterThread$0(ServiceThread serviceThread) {
        Process.setThreadGroupAndCpuset(serviceThread.getThreadId(), CoreRune.SYSPERF_BOOST_OPT ? 10 : 5);
    }

    public OomAdjuster(ActivityManagerService activityManagerService, ProcessList processList, ActiveUids activeUids, ServiceThread serviceThread) {
        this.mCFMS = null;
        this.mTmpLong = new long[3];
        this.mAdjSeq = 0;
        this.mNumServiceProcs = 0;
        this.mNewNumAServiceProcs = 0;
        this.mNewNumServiceProcs = 0;
        this.mNumNonCachedProcs = 0;
        this.mNumCachedHiddenProcs = 0;
        this.mTmpSchedGroup = new int[1];
        this.mDynamicHiddenApp = null;
        this.mNumCachedProcessCount = 0;
        this.mNumEmptyProcessCount = 0;
        this.mNumCachedSlotCount = 0;
        this.mNumEmptySlotCount = 0;
        this.mTmpProcessList = new ArrayList();
        this.mTmpBecameIdle = new ArrayList();
        this.mTmpProcessSet = new ArraySet();
        this.mPendingProcessSet = new ArraySet();
        this.mProcessesInCycle = new ArraySet();
        this.mOomAdjUpdateOngoing = false;
        this.mPendingFullOomAdjUpdate = false;
        this.VENDING_PKG = "com.android.vending";
        this.mLastFreeSwapPercent = 1.0d;
        this.mTmpComputeOomAdjWindowCallback = new ComputeOomAdjWindowCallback();
        this.mService = activityManagerService;
        this.mProcessList = processList;
        this.mProcLock = activityManagerService.mProcLock;
        this.mActiveUids = activeUids;
        this.mLocalPowerManager = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
        this.mConstants = activityManagerService.mConstants;
        this.mCachedAppOptimizer = new CachedAppOptimizer(activityManagerService);
        this.mCacheOomRanker = new CacheOomRanker(activityManagerService);
        this.mGPUMemoryReclaimer = GPUMemoryReclaimer.getInstance();
        this.mPerProcessNandswap = PerProcessNandswap.getInstance();
        this.mProcessGroupHandler = new Handler(serviceThread.getLooper(), new Handler.Callback() { // from class: com.android.server.am.OomAdjuster$$ExternalSyntheticLambda2
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean lambda$new$1;
                lambda$new$1 = OomAdjuster.lambda$new$1(message);
                return lambda$new$1;
            }
        });
        this.mTmpUidRecords = new ActiveUids(activityManagerService, false);
        this.mTmpQueue = new ArrayDeque(this.mConstants.CUR_MAX_CACHED_PROCESSES << 1);
        this.mNumSlots = 10;
        DynamicHiddenApp dynamicHiddenApp = DynamicHiddenApp.getInstance();
        this.mDynamicHiddenApp = dynamicHiddenApp;
        dynamicHiddenApp.initDynamicHiddenApp(activityManagerService, processList, this.mConstants);
    }

    public static /* synthetic */ boolean lambda$new$1(Message message) {
        int i = message.arg1;
        int i2 = message.arg2;
        if (i == ActivityManagerService.MY_PID) {
            return true;
        }
        if (Trace.isTagEnabled(64L)) {
            Trace.traceBegin(64L, "setProcessGroup " + message.obj + " to " + i2);
        }
        try {
            Process.setProcessGroup(i, i2);
        } catch (Exception unused) {
        } catch (Throwable th) {
            Trace.traceEnd(64L);
            throw th;
        }
        Trace.traceEnd(64L);
        return true;
    }

    public void initSettings() {
        this.mCachedAppOptimizer.init();
        this.mCacheOomRanker.init(ActivityThread.currentApplication().getMainExecutor());
        if (this.mService.mConstants.KEEP_WARMING_SERVICES.size() > 0) {
            this.mService.mContext.registerReceiverForAllUsers(new BroadcastReceiver() { // from class: com.android.server.am.OomAdjuster.1
                public AnonymousClass1() {
                }

                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    ActivityManagerService activityManagerService = OomAdjuster.this.mService;
                    ActivityManagerService.boostPriorityForLockedSection();
                    synchronized (activityManagerService) {
                        try {
                            OomAdjuster.this.handleUserSwitchedLocked();
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }, new IntentFilter("android.intent.action.USER_SWITCHED"), null, this.mService.mHandler);
        }
    }

    /* renamed from: com.android.server.am.OomAdjuster$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends BroadcastReceiver {
        public AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ActivityManagerService activityManagerService = OomAdjuster.this.mService;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    OomAdjuster.this.handleUserSwitchedLocked();
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }
    }

    public void handleUserSwitchedLocked() {
        this.mProcessList.forEachLruProcessesLOSP(false, new Consumer() { // from class: com.android.server.am.OomAdjuster$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                OomAdjuster.this.updateKeepWarmIfNecessaryForProcessLocked((ProcessRecord) obj);
            }
        });
    }

    public final void updateKeepWarmIfNecessaryForProcessLocked(ProcessRecord processRecord) {
        boolean z;
        ArraySet arraySet = this.mService.mConstants.KEEP_WARMING_SERVICES;
        PackageList pkgList = processRecord.getPkgList();
        int size = arraySet.size() - 1;
        while (true) {
            if (size < 0) {
                z = false;
                break;
            } else {
                if (pkgList.containsKey(((ComponentName) arraySet.valueAt(size)).getPackageName())) {
                    z = true;
                    break;
                }
                size--;
            }
        }
        if (z) {
            ProcessServiceRecord processServiceRecord = processRecord.mServices;
            for (int numberOfRunningServices = processServiceRecord.numberOfRunningServices() - 1; numberOfRunningServices >= 0; numberOfRunningServices--) {
                processServiceRecord.getRunningServiceAt(numberOfRunningServices).updateKeepWarmLocked();
            }
        }
    }

    public final boolean performUpdateOomAdjLSP(ProcessRecord processRecord, int i, ProcessRecord processRecord2, long j, int i2) {
        if (processRecord.getThread() == null) {
            return false;
        }
        processRecord.mState.resetCachedInfo();
        processRecord.mState.setCurBoundByNonBgRestrictedApp(false);
        UidRecord uidRecord = processRecord.getUidRecord();
        if (uidRecord != null) {
            uidRecord.reset();
        }
        this.mPendingProcessSet.remove(processRecord);
        this.mProcessesInCycle.clear();
        computeOomAdjLSP(processRecord, i, processRecord2, false, j, false, true);
        if (!this.mProcessesInCycle.isEmpty()) {
            for (int size = this.mProcessesInCycle.size() - 1; size >= 0; size--) {
                ((ProcessRecord) this.mProcessesInCycle.valueAt(size)).mState.setCompletedAdjSeq(this.mAdjSeq - 1);
            }
            return true;
        }
        if (uidRecord != null) {
            uidRecord.forEachProcess(new Consumer() { // from class: com.android.server.am.OomAdjuster$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    OomAdjuster.this.updateAppUidRecIfNecessaryLSP((ProcessRecord) obj);
                }
            });
            if (uidRecord.getCurProcState() != 20 && (uidRecord.getSetProcState() != uidRecord.getCurProcState() || uidRecord.getSetCapability() != uidRecord.getCurCapability() || uidRecord.isSetAllowListed() != uidRecord.isCurAllowListed())) {
                ActiveUids activeUids = this.mTmpUidRecords;
                activeUids.clear();
                activeUids.put(uidRecord.getUid(), uidRecord);
                updateUidsLSP(activeUids, SystemClock.elapsedRealtime());
            }
        }
        return applyOomAdjLSP(processRecord, false, j, SystemClock.elapsedRealtime(), i2);
    }

    public void updateOomAdjLocked(int i) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        ActivityManagerService.boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                updateOomAdjLSP(i);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterProcLockedSection();
    }

    public final void updateOomAdjLSP(int i) {
        if (checkAndEnqueueOomAdjTargetLocked(null)) {
            return;
        }
        try {
            this.mOomAdjUpdateOngoing = true;
            performUpdateOomAdjLSP(i);
        } finally {
            this.mOomAdjUpdateOngoing = false;
            updateOomAdjPendingTargetsLocked(i);
        }
    }

    public final void performUpdateOomAdjLSP(int i) {
        ProcessRecord topApp = this.mService.getTopApp();
        this.mPendingProcessSet.clear();
        AppProfiler appProfiler = this.mService.mAppProfiler;
        appProfiler.mHasHomeProcess = false;
        appProfiler.mHasPreviousProcess = false;
        updateOomAdjInnerLSP(i, topApp, null, null, true, true);
    }

    public boolean updateOomAdjLocked(ProcessRecord processRecord, int i) {
        boolean updateOomAdjLSP;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        ActivityManagerService.boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                updateOomAdjLSP = updateOomAdjLSP(processRecord, i);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterProcLockedSection();
        return updateOomAdjLSP;
    }

    public final boolean updateOomAdjLSP(ProcessRecord processRecord, int i) {
        if (processRecord == null || !this.mConstants.OOMADJ_UPDATE_QUICK) {
            updateOomAdjLSP(i);
            return true;
        }
        if (checkAndEnqueueOomAdjTargetLocked(processRecord)) {
            return true;
        }
        try {
            this.mOomAdjUpdateOngoing = true;
            return performUpdateOomAdjLSP(processRecord, i);
        } finally {
            this.mOomAdjUpdateOngoing = false;
            updateOomAdjPendingTargetsLocked(i);
        }
    }

    public final boolean performUpdateOomAdjLSP(ProcessRecord processRecord, int i) {
        ProcessRecord topApp = this.mService.getTopApp();
        Trace.traceBegin(64L, oomAdjReasonToString(i));
        this.mService.mOomAdjProfiler.oomAdjStarted();
        this.mAdjSeq++;
        ProcessStateRecord processStateRecord = processRecord.mState;
        boolean isCached = processStateRecord.isCached();
        int curRawAdj = processStateRecord.getCurRawAdj();
        int i2 = curRawAdj >= 900 ? curRawAdj : 1001;
        boolean isProcStateBackground = ActivityManager.isProcStateBackground(processStateRecord.getSetProcState());
        int setCapability = processStateRecord.getSetCapability();
        processStateRecord.setContainsCycle(false);
        processStateRecord.setProcStateChanged(false);
        processStateRecord.resetCachedInfo();
        processStateRecord.setCurBoundByNonBgRestrictedApp(false);
        this.mPendingProcessSet.remove(processRecord);
        processRecord.mOptRecord.setLastOomAdjChangeReason(i);
        boolean performUpdateOomAdjLSP = performUpdateOomAdjLSP(processRecord, i2, topApp, SystemClock.uptimeMillis(), i);
        if (!performUpdateOomAdjLSP || (isCached == processStateRecord.isCached() && curRawAdj != -10000 && this.mProcessesInCycle.isEmpty() && setCapability == processStateRecord.getCurCapability() && isProcStateBackground == ActivityManager.isProcStateBackground(processStateRecord.getSetProcState()))) {
            this.mProcessesInCycle.clear();
            this.mService.mOomAdjProfiler.oomAdjEnded();
            Trace.traceEnd(64L);
            return performUpdateOomAdjLSP;
        }
        ArrayList arrayList = this.mTmpProcessList;
        ActiveUids activeUids = this.mTmpUidRecords;
        this.mPendingProcessSet.add(processRecord);
        for (int size = this.mProcessesInCycle.size() - 1; size >= 0; size--) {
            this.mPendingProcessSet.add((ProcessRecord) this.mProcessesInCycle.valueAt(size));
        }
        this.mProcessesInCycle.clear();
        boolean collectReachableProcessesLocked = collectReachableProcessesLocked(this.mPendingProcessSet, arrayList, activeUids);
        this.mPendingProcessSet.clear();
        if (!collectReachableProcessesLocked) {
            processStateRecord.setReachable(false);
            arrayList.remove(processRecord);
        }
        if (arrayList.size() > 0) {
            this.mAdjSeq--;
            updateOomAdjInnerLSP(i, topApp, arrayList, activeUids, collectReachableProcessesLocked, false);
        } else if (processStateRecord.getCurRawAdj() == 1001) {
            arrayList.add(processRecord);
            assignCachedAdjIfNecessary(arrayList);
            applyOomAdjLSP(processRecord, false, SystemClock.uptimeMillis(), SystemClock.elapsedRealtime(), i);
        }
        this.mTmpProcessList.clear();
        this.mService.mOomAdjProfiler.oomAdjEnded();
        Trace.traceEnd(64L);
        return true;
    }

    public final boolean collectReachableProcessesLocked(ArraySet arraySet, ArrayList arrayList, ActiveUids activeUids) {
        ArrayDeque arrayDeque = this.mTmpQueue;
        arrayDeque.clear();
        arrayList.clear();
        int size = arraySet.size();
        for (int i = 0; i < size; i++) {
            ProcessRecord processRecord = (ProcessRecord) arraySet.valueAt(i);
            processRecord.mState.setReachable(true);
            arrayDeque.offer(processRecord);
        }
        activeUids.clear();
        boolean z = false;
        for (ProcessRecord processRecord2 = (ProcessRecord) arrayDeque.poll(); processRecord2 != null; processRecord2 = (ProcessRecord) arrayDeque.poll()) {
            arrayList.add(processRecord2);
            UidRecord uidRecord = processRecord2.getUidRecord();
            if (uidRecord != null) {
                activeUids.put(uidRecord.getUid(), uidRecord);
            }
            ProcessServiceRecord processServiceRecord = processRecord2.mServices;
            for (int numberOfConnections = processServiceRecord.numberOfConnections() - 1; numberOfConnections >= 0; numberOfConnections--) {
                ConnectionRecord connectionAt = processServiceRecord.getConnectionAt(numberOfConnections);
                ProcessRecord processRecord3 = connectionAt.hasFlag(2) ? connectionAt.binding.service.isolationHostProc : connectionAt.binding.service.app;
                if (processRecord3 != null && processRecord3 != processRecord2 && (processRecord3.mState.getMaxAdj() < -900 || processRecord3.mState.getMaxAdj() >= 0)) {
                    z |= processRecord3.mState.isReachable();
                    if (!processRecord3.mState.isReachable() && (!connectionAt.hasFlag(32) || !connectionAt.notHasFlag(134217856))) {
                        arrayDeque.offer(processRecord3);
                        processRecord3.mState.setReachable(true);
                    }
                }
            }
            ProcessProviderRecord processProviderRecord = processRecord2.mProviders;
            for (int numberOfProviderConnections = processProviderRecord.numberOfProviderConnections() - 1; numberOfProviderConnections >= 0; numberOfProviderConnections--) {
                ProcessRecord processRecord4 = processProviderRecord.getProviderConnectionAt(numberOfProviderConnections).provider.proc;
                if (processRecord4 != null && processRecord4 != processRecord2 && (processRecord4.mState.getMaxAdj() < -900 || processRecord4.mState.getMaxAdj() >= 0)) {
                    z |= processRecord4.mState.isReachable();
                    if (!processRecord4.mState.isReachable()) {
                        arrayDeque.offer(processRecord4);
                        processRecord4.mState.setReachable(true);
                    }
                }
            }
            List sdkSandboxProcessesForAppLocked = this.mProcessList.getSdkSandboxProcessesForAppLocked(processRecord2.uid);
            for (int size2 = (sdkSandboxProcessesForAppLocked != null ? sdkSandboxProcessesForAppLocked.size() : 0) - 1; size2 >= 0; size2--) {
                ProcessRecord processRecord5 = (ProcessRecord) sdkSandboxProcessesForAppLocked.get(size2);
                z |= processRecord5.mState.isReachable();
                if (!processRecord5.mState.isReachable()) {
                    arrayDeque.offer(processRecord5);
                    processRecord5.mState.setReachable(true);
                }
            }
            if (processRecord2.isSdkSandbox) {
                for (int numberOfRunningServices = processServiceRecord.numberOfRunningServices() - 1; numberOfRunningServices >= 0; numberOfRunningServices--) {
                    ArrayMap connections = processServiceRecord.getRunningServiceAt(numberOfRunningServices).getConnections();
                    for (int size3 = connections.size() - 1; size3 >= 0; size3--) {
                        ArrayList arrayList2 = (ArrayList) connections.valueAt(size3);
                        for (int size4 = arrayList2.size() - 1; size4 >= 0; size4--) {
                            ProcessRecord processRecord6 = ((ConnectionRecord) arrayList2.get(size4)).binding.attributedClient;
                            if (processRecord6 != null && processRecord6 != processRecord2 && ((processRecord6.mState.getMaxAdj() < -900 || processRecord6.mState.getMaxAdj() >= 0) && !processRecord6.mState.isReachable())) {
                                arrayDeque.offer(processRecord6);
                                processRecord6.mState.setReachable(true);
                            }
                        }
                    }
                }
            }
        }
        int size5 = arrayList.size();
        if (size5 > 0) {
            int i2 = 0;
            for (int i3 = size5 - 1; i2 < i3; i3--) {
                ProcessRecord processRecord7 = (ProcessRecord) arrayList.get(i2);
                arrayList.set(i2, (ProcessRecord) arrayList.get(i3));
                arrayList.set(i3, processRecord7);
                i2++;
            }
        }
        return z;
    }

    public void enqueueOomAdjTargetLocked(ProcessRecord processRecord) {
        if (processRecord == null || processRecord.mState.getMaxAdj() <= 0) {
            return;
        }
        this.mPendingProcessSet.add(processRecord);
    }

    public void removeOomAdjTargetLocked(ProcessRecord processRecord, boolean z) {
        if (processRecord != null) {
            this.mPendingProcessSet.remove(processRecord);
            if (z) {
                PlatformCompatCache.getInstance().invalidate(processRecord.info);
            }
        }
    }

    public final boolean checkAndEnqueueOomAdjTargetLocked(ProcessRecord processRecord) {
        if (!this.mOomAdjUpdateOngoing) {
            return false;
        }
        if (processRecord != null) {
            this.mPendingProcessSet.add(processRecord);
        } else {
            this.mPendingFullOomAdjUpdate = true;
        }
        return true;
    }

    public void updateOomAdjPendingTargetsLocked(int i) {
        if (this.mPendingFullOomAdjUpdate) {
            this.mPendingFullOomAdjUpdate = false;
            this.mPendingProcessSet.clear();
            updateOomAdjLocked(i);
        } else {
            if (this.mPendingProcessSet.isEmpty() || this.mOomAdjUpdateOngoing) {
                return;
            }
            try {
                this.mOomAdjUpdateOngoing = true;
                performUpdateOomAdjPendingTargetsLocked(i);
            } finally {
                this.mOomAdjUpdateOngoing = false;
                updateOomAdjPendingTargetsLocked(i);
            }
        }
    }

    public final void performUpdateOomAdjPendingTargetsLocked(int i) {
        ProcessRecord topApp = this.mService.getTopApp();
        Trace.traceBegin(64L, oomAdjReasonToString(i));
        this.mService.mOomAdjProfiler.oomAdjStarted();
        ArrayList arrayList = this.mTmpProcessList;
        ActiveUids activeUids = this.mTmpUidRecords;
        collectReachableProcessesLocked(this.mPendingProcessSet, arrayList, activeUids);
        this.mPendingProcessSet.clear();
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        ActivityManagerService.boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                updateOomAdjInnerLSP(i, topApp, arrayList, activeUids, true, false);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterProcLockedSection();
        arrayList.clear();
        this.mService.mOomAdjProfiler.oomAdjEnded();
        Trace.traceEnd(64L);
    }

    public final void updateOomAdjInnerLSP(int i, ProcessRecord processRecord, ArrayList arrayList, ActiveUids activeUids, boolean z, boolean z2) {
        ActiveUids activeUids2;
        ArrayList arrayList2;
        int i2;
        int i3;
        int i4;
        ActiveUids activeUids3;
        ArrayList arrayList3;
        boolean z3;
        if (z2) {
            Trace.traceBegin(64L, oomAdjReasonToString(i));
            this.mService.mOomAdjProfiler.oomAdjStarted();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = uptimeMillis - this.mConstants.mMaxEmptyTimeMillis;
        boolean z4 = false;
        boolean z5 = arrayList == null;
        ArrayList lruProcessesLOSP = z5 ? this.mProcessList.getLruProcessesLOSP() : arrayList;
        int size = lruProcessesLOSP.size();
        if (activeUids == null) {
            int size2 = this.mActiveUids.size();
            ActiveUids activeUids4 = this.mTmpUidRecords;
            activeUids4.clear();
            for (int i5 = 0; i5 < size2; i5++) {
                UidRecord valueAt = this.mActiveUids.valueAt(i5);
                activeUids4.put(valueAt.getUid(), valueAt);
            }
            activeUids2 = activeUids4;
        } else {
            activeUids2 = activeUids;
        }
        for (int size3 = activeUids2.size() - 1; size3 >= 0; size3--) {
            activeUids2.valueAt(size3).reset();
        }
        this.mAdjSeq++;
        if (z5) {
            this.mNewNumServiceProcs = 0;
            this.mNewNumAServiceProcs = 0;
        }
        boolean z6 = z5 || z;
        int i6 = size - 1;
        for (int i7 = i6; i7 >= 0; i7--) {
            ProcessStateRecord processStateRecord = ((ProcessRecord) lruProcessesLOSP.get(i7)).mState;
            processStateRecord.setReachable(false);
            if (processStateRecord.getAdjSeq() != this.mAdjSeq) {
                processStateRecord.setContainsCycle(false);
                processStateRecord.setCurRawProcState(19);
                processStateRecord.setCurRawAdj(1001);
                processStateRecord.setSetCapability(0);
                processStateRecord.resetCachedInfo();
                processStateRecord.setCurBoundByNonBgRestrictedApp(false);
            }
        }
        this.mProcessesInCycle.clear();
        int i8 = i6;
        int i9 = 0;
        while (i8 >= 0) {
            ProcessRecord processRecord2 = (ProcessRecord) lruProcessesLOSP.get(i8);
            ProcessStateRecord processStateRecord2 = processRecord2.mState;
            if (processRecord2.isKilledByAm() || processRecord2.getThread() == null) {
                i3 = i8;
                i4 = size;
                activeUids3 = activeUids2;
                arrayList3 = lruProcessesLOSP;
                z3 = z4;
            } else {
                processStateRecord2.setProcStateChanged(z4);
                processRecord2.mOptRecord.setLastOomAdjChangeReason(i);
                i3 = i8;
                i4 = size;
                arrayList3 = lruProcessesLOSP;
                activeUids3 = activeUids2;
                z3 = z4;
                computeOomAdjLSP(processRecord2, 1001, processRecord, z5, uptimeMillis, false, z6);
                int i10 = i9 | (processStateRecord2.containsCycle() ? 1 : 0);
                processStateRecord2.setCompletedAdjSeq(this.mAdjSeq);
                i9 = i10;
            }
            i8 = i3 - 1;
            activeUids2 = activeUids3;
            size = i4;
            z4 = z3;
            lruProcessesLOSP = arrayList3;
        }
        int i11 = size;
        ActiveUids activeUids5 = activeUids2;
        ArrayList arrayList4 = lruProcessesLOSP;
        boolean z7 = z4;
        if (this.mCacheOomRanker.useOomReranking()) {
            this.mCacheOomRanker.reRankLruCachedAppsLSP(this.mProcessList.getLruProcessesLSP(), this.mProcessList.getLruProcessServiceStartLOSP());
        }
        if (z6) {
            int i12 = z7 ? 1 : 0;
            while (i9 != 0 && i12 < 10) {
                int i13 = i12 + 1;
                int i14 = z7 ? 1 : 0;
                while (i14 < i11) {
                    ArrayList arrayList5 = arrayList4;
                    ProcessRecord processRecord3 = (ProcessRecord) arrayList5.get(i14);
                    ProcessStateRecord processStateRecord3 = processRecord3.mState;
                    if (!processRecord3.isKilledByAm() && processRecord3.getThread() != null && processStateRecord3.containsCycle()) {
                        processStateRecord3.decAdjSeq();
                        processStateRecord3.decCompletedAdjSeq();
                    }
                    i14++;
                    arrayList4 = arrayList5;
                }
                ArrayList arrayList6 = arrayList4;
                int i15 = z7 ? 1 : 0;
                i9 = i15;
                while (i15 < i11) {
                    ProcessRecord processRecord4 = (ProcessRecord) arrayList6.get(i15);
                    ProcessStateRecord processStateRecord4 = processRecord4.mState;
                    if (processRecord4.isKilledByAm() || processRecord4.getThread() == null || !processStateRecord4.containsCycle()) {
                        arrayList2 = arrayList6;
                        i2 = i15;
                    } else {
                        arrayList2 = arrayList6;
                        i2 = i15;
                        if (computeOomAdjLSP(processRecord4, 1001, processRecord, true, uptimeMillis, true, true)) {
                            i9 = 1;
                        }
                    }
                    i15 = i2 + 1;
                    arrayList6 = arrayList2;
                }
                arrayList4 = arrayList6;
                i12 = i13;
            }
        }
        this.mProcessesInCycle.clear();
        assignCachedAdjIfNecessary(this.mProcessList.getLruProcessesLOSP());
        this.mNumNonCachedProcs = z7 ? 1 : 0;
        this.mNumCachedHiddenProcs = z7 ? 1 : 0;
        boolean updateAndTrimProcessLSP = updateAndTrimProcessLSP(uptimeMillis, elapsedRealtime, j, activeUids5, i);
        this.mNumServiceProcs = this.mNewNumServiceProcs;
        ActivityManagerService activityManagerService = this.mService;
        if (activityManagerService.mAlwaysFinishActivities) {
            activityManagerService.mAtmInternal.scheduleDestroyAllActivities("always-finish");
        }
        if (updateAndTrimProcessLSP) {
            ActivityManagerService activityManagerService2 = this.mService;
            activityManagerService2.mAppProfiler.requestPssAllProcsLPr(uptimeMillis, z7, activityManagerService2.mProcessStats.isMemFactorLowered());
        }
        updateUidsLSP(activeUids5, elapsedRealtime);
        synchronized (this.mService.mProcessStats.mLock) {
            long uptimeMillis2 = SystemClock.uptimeMillis();
            if (this.mService.mProcessStats.shouldWriteNowLocked(uptimeMillis2)) {
                ActivityManagerService activityManagerService3 = this.mService;
                activityManagerService3.mHandler.post(new ActivityManagerService.ProcStatsRunnable(activityManagerService3, activityManagerService3.mProcessStats));
            }
            this.mService.mProcessStats.updateTrackingAssociationsLocked(this.mAdjSeq, uptimeMillis2);
        }
        if (z2) {
            this.mService.mOomAdjProfiler.oomAdjEnded();
            Trace.traceEnd(64L);
        }
    }

    public final void assignCachedAdjIfNecessary(ArrayList arrayList) {
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        DynamicHiddenApp dynamicHiddenApp;
        boolean z2;
        DynamicHiddenApp dynamicHiddenApp2;
        int i5;
        ArrayList arrayList2 = arrayList;
        int size = arrayList.size();
        ActivityManagerConstants activityManagerConstants = this.mConstants;
        if (activityManagerConstants.USE_TIERED_CACHED_ADJ) {
            long uptimeMillis = SystemClock.uptimeMillis();
            for (int i6 = size - 1; i6 >= 0; i6--) {
                ProcessRecord processRecord = (ProcessRecord) arrayList2.get(i6);
                ProcessStateRecord processStateRecord = processRecord.mState;
                ProcessCachedOptimizerRecord processCachedOptimizerRecord = processRecord.mOptRecord;
                if (!processRecord.isKilledByAm() && processRecord.getThread() != null && processStateRecord.getCurAdj() >= 1001) {
                    ProcessServiceRecord processServiceRecord = processRecord.mServices;
                    if (processCachedOptimizerRecord == null || !processCachedOptimizerRecord.isFreezeExempt()) {
                        i5 = (processStateRecord.getSetAdj() < 900 || processStateRecord.getLastStateTime() + this.mConstants.TIERED_CACHED_ADJ_DECAY_TIME >= uptimeMillis) ? 910 : 950;
                    } else {
                        i5 = 900;
                    }
                    processStateRecord.setCurRawAdj(i5);
                    processStateRecord.setCurAdj(processServiceRecord.modifyRawOomAdj(i5));
                }
            }
            return;
        }
        int i7 = activityManagerConstants.CUR_MAX_CACHED_PROCESSES - activityManagerConstants.CUR_MAX_EMPTY_PROCESSES;
        int i8 = size - this.mNumNonCachedProcs;
        int i9 = this.mNumCachedHiddenProcs;
        int i10 = i8 - i9;
        if (i10 <= i7) {
            i7 = i10;
        }
        int i11 = i9 > 0 ? (i9 + this.mNumSlots) - 1 : 1;
        int i12 = this.mNumSlots;
        int i13 = i11 / i12;
        if (i13 < 1) {
            i13 = 1;
        }
        int i14 = ((i7 + i12) - 1) / i12;
        if (i14 < 1) {
            i14 = 1;
        }
        DynamicHiddenApp dynamicHiddenApp3 = this.mDynamicHiddenApp;
        if (dynamicHiddenApp3 != null && DynamicHiddenApp.BORA_POLICY_ENABLE) {
            dynamicHiddenApp3.clearRecentActivityProcess();
        }
        int i15 = size - 1;
        int i16 = -1;
        int i17 = 915;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 905;
        int i23 = 900;
        int i24 = 910;
        int i25 = -1;
        while (i15 >= 0) {
            ProcessRecord processRecord2 = (ProcessRecord) arrayList2.get(i15);
            ProcessStateRecord processStateRecord2 = processRecord2.mState;
            if (processRecord2.isKilledByAm() || processRecord2.getThread() == null) {
                i = i15;
            } else {
                i = i15;
                if (processStateRecord2.getCurAdj() >= 1001) {
                    ProcessServiceRecord processServiceRecord2 = processRecord2.mServices;
                    switch (processStateRecord2.getCurProcState()) {
                        case 16:
                        case 17:
                        case 18:
                            int connectionGroup = processServiceRecord2.getConnectionGroup();
                            i2 = i14;
                            if (connectionGroup != 0) {
                                int connectionImportance = processServiceRecord2.getConnectionImportance();
                                i3 = i16;
                                int i26 = processRecord2.uid;
                                if (i19 == i26 && i20 == connectionGroup) {
                                    if (connectionImportance > i18) {
                                        if (i23 < i24 && i23 < 999) {
                                            i21++;
                                        }
                                        i18 = connectionImportance;
                                    }
                                    z = true;
                                    if (!z || i23 == i24) {
                                        i4 = i24;
                                        i24 = i23;
                                    } else {
                                        i25++;
                                        if (i25 >= i13) {
                                            i4 = i24 + 10;
                                            if (i4 > 999) {
                                                i4 = 999;
                                            }
                                            i25 = 0;
                                        } else {
                                            i4 = i24;
                                            i24 = i23;
                                        }
                                        i21 = 0;
                                    }
                                    int i27 = i24 + i21;
                                    processStateRecord2.setCurRawAdj(i27);
                                    processStateRecord2.setCurAdj(processServiceRecord2.modifyRawOomAdj(i27));
                                    dynamicHiddenApp = this.mDynamicHiddenApp;
                                    if (dynamicHiddenApp != null && DynamicHiddenApp.BORA_POLICY_ENABLE) {
                                        dynamicHiddenApp.addRecentActivityProcess(processRecord2);
                                        break;
                                    }
                                } else {
                                    i20 = connectionGroup;
                                    i18 = connectionImportance;
                                    i19 = i26;
                                }
                            } else {
                                i3 = i16;
                            }
                            z = false;
                            if (z) {
                            }
                            i4 = i24;
                            i24 = i23;
                            int i272 = i24 + i21;
                            processStateRecord2.setCurRawAdj(i272);
                            processStateRecord2.setCurAdj(processServiceRecord2.modifyRawOomAdj(i272));
                            dynamicHiddenApp = this.mDynamicHiddenApp;
                            if (dynamicHiddenApp != null) {
                                dynamicHiddenApp.addRecentActivityProcess(processRecord2);
                            }
                            break;
                        default:
                            i2 = i14;
                            i3 = i16;
                            if (DynamicHiddenApp.LMK_ENABLE_USERSPACE_LMK && processRecord2.hasActivities()) {
                                int connectionGroup2 = processServiceRecord2.getConnectionGroup();
                                if (connectionGroup2 != 0) {
                                    int connectionImportance2 = processServiceRecord2.getConnectionImportance();
                                    int i28 = processRecord2.uid;
                                    if (i19 == i28 && i20 == connectionGroup2) {
                                        if (connectionImportance2 > i18) {
                                            if (i23 < i24 && i23 < 999) {
                                                i21++;
                                            }
                                            i18 = connectionImportance2;
                                        }
                                        z2 = true;
                                        if (!z2 || i23 == i24) {
                                            i4 = i24;
                                            i24 = i23;
                                        } else {
                                            i25++;
                                            if (i25 >= i13) {
                                                i4 = i24 + 10;
                                                if (i4 > 999) {
                                                    i4 = 999;
                                                }
                                                i25 = 0;
                                            } else {
                                                i4 = i24;
                                                i24 = i23;
                                            }
                                            i21 = 0;
                                        }
                                        int i29 = i24 + i21;
                                        processStateRecord2.setCurRawAdj(i29);
                                        processStateRecord2.setCurAdj(processServiceRecord2.modifyRawOomAdj(i29));
                                        dynamicHiddenApp2 = this.mDynamicHiddenApp;
                                        if (dynamicHiddenApp2 != null && DynamicHiddenApp.BORA_POLICY_ENABLE) {
                                            dynamicHiddenApp2.addRecentActivityProcess(processRecord2);
                                            break;
                                        }
                                    } else {
                                        i20 = connectionGroup2;
                                        i18 = connectionImportance2;
                                        i19 = i28;
                                    }
                                }
                                z2 = false;
                                if (z2) {
                                }
                                i4 = i24;
                                i24 = i23;
                                int i292 = i24 + i21;
                                processStateRecord2.setCurRawAdj(i292);
                                processStateRecord2.setCurAdj(processServiceRecord2.modifyRawOomAdj(i292));
                                dynamicHiddenApp2 = this.mDynamicHiddenApp;
                                if (dynamicHiddenApp2 != null) {
                                    dynamicHiddenApp2.addRecentActivityProcess(processRecord2);
                                }
                            } else {
                                if (i22 != i17) {
                                    i16 = i3 + 1;
                                    i14 = i2;
                                    if (i16 >= i14) {
                                        int i30 = i17 + 10;
                                        i22 = i17;
                                        if (i30 > 999) {
                                            i17 = 999;
                                            i16 = 0;
                                        } else {
                                            i16 = 0;
                                            i17 = i30;
                                        }
                                    }
                                } else {
                                    i14 = i2;
                                    i16 = i3;
                                }
                                processStateRecord2.setCurRawAdj(i22);
                                processStateRecord2.setCurAdj(processServiceRecord2.modifyRawOomAdj(i22));
                                break;
                            }
                            break;
                    }
                    i23 = i24;
                    i14 = i2;
                    i16 = i3;
                    i24 = i4;
                    i15 = i - 1;
                    arrayList2 = arrayList;
                }
            }
            i16 = i16;
            i15 = i - 1;
            arrayList2 = arrayList;
        }
    }

    public static double getFreeSwapPercent() {
        return CachedAppOptimizer.getFreeSwapPercent();
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x018d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean updateAndTrimProcessLSP(long r39, long r41, long r43, com.android.server.am.ActiveUids r45, int r46) {
        /*
            Method dump skipped, instructions count: 1040
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.OomAdjuster.updateAndTrimProcessLSP(long, long, long, com.android.server.am.ActiveUids, int):boolean");
    }

    public final void updateAppUidRecIfNecessaryLSP(ProcessRecord processRecord) {
        if (processRecord.isKilledByAm() || processRecord.getThread() == null) {
            return;
        }
        if (processRecord.isolated && processRecord.mServices.numberOfRunningServices() <= 0 && processRecord.getIsolatedEntryPoint() == null) {
            return;
        }
        updateAppUidRecLSP(processRecord);
    }

    public final void updateAppUidRecLSP(ProcessRecord processRecord) {
        UidRecord uidRecord = processRecord.getUidRecord();
        if (uidRecord != null) {
            ProcessStateRecord processStateRecord = processRecord.mState;
            uidRecord.setEphemeral(processRecord.info.isInstantApp());
            if (uidRecord.getCurProcState() > processStateRecord.getCurProcState()) {
                uidRecord.setCurProcState(processStateRecord.getCurProcState());
            }
            if (processRecord.mServices.hasForegroundServices()) {
                uidRecord.setForegroundServices(true);
            }
            uidRecord.setCurCapability(uidRecord.getCurCapability() | processStateRecord.getCurCapability());
        }
    }

    public final void updateUidsLSP(ActiveUids activeUids, long j) {
        int i;
        this.mProcessList.incrementProcStateSeqAndNotifyAppsLOSP(activeUids);
        ArrayList arrayList = this.mTmpBecameIdle;
        arrayList.clear();
        PowerManagerInternal powerManagerInternal = this.mLocalPowerManager;
        if (powerManagerInternal != null) {
            powerManagerInternal.startUidChanges();
        }
        for (int size = activeUids.size() - 1; size >= 0; size--) {
            UidRecord valueAt = activeUids.valueAt(size);
            if (valueAt.getCurProcState() != 20 && (valueAt.getSetProcState() != valueAt.getCurProcState() || valueAt.getSetCapability() != valueAt.getCurCapability() || valueAt.isSetAllowListed() != valueAt.isCurAllowListed() || valueAt.getProcAdjChanged())) {
                if (valueAt.getSetCapability() != valueAt.getCurCapability()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Changes in ");
                    sb.append(valueAt.getUid());
                    sb.append(" ");
                    sb.append(valueAt.getSetProcState());
                    sb.append(" to ");
                    sb.append(valueAt.getCurProcState());
                    sb.append(", ");
                    sb.append(valueAt.getSetCapability());
                    sb.append(" to ");
                    sb.append(valueAt.getCurCapability());
                    sb.append(CoreRune.SAFE_DEBUG ? " Caller=" + Debug.getCallers(7) : "");
                    Slog.i("ActivityManager", sb.toString());
                }
                if (ActivityManager.isProcStateBackground(valueAt.getCurProcState()) && !valueAt.isCurAllowListed()) {
                    if (!ActivityManager.isProcStateBackground(valueAt.getSetProcState()) || valueAt.isSetAllowListed() || valueAt.getLastBackgroundTime() == 0) {
                        valueAt.setLastBackgroundTime(j);
                        if (this.mService.mDeterministicUidIdle || !this.mService.mHandler.hasMessages(58)) {
                            this.mService.mHandler.sendEmptyMessageDelayed(58, this.mConstants.BACKGROUND_SETTLE_TIME);
                        }
                    }
                    if (!valueAt.isIdle() || valueAt.isSetIdle()) {
                        i = 0;
                    } else {
                        if (valueAt.getSetProcState() != 20) {
                            arrayList.add(valueAt);
                        }
                        i = 2;
                    }
                } else {
                    if (valueAt.isIdle()) {
                        EventLogTags.writeAmUidActive(valueAt.getUid());
                        valueAt.setIdle(false);
                        i = 4;
                    } else {
                        i = 0;
                    }
                    valueAt.setLastBackgroundTime(0L);
                    valueAt.setLastIdleTime(0L);
                }
                boolean z = valueAt.getSetProcState() > 11;
                boolean z2 = valueAt.getCurProcState() > 11;
                if (z != z2 || valueAt.getSetProcState() == 20) {
                    i |= z2 ? 8 : 16;
                }
                if (valueAt.getSetCapability() != valueAt.getCurCapability()) {
                    i |= 32;
                }
                if (valueAt.getSetProcState() != valueAt.getCurProcState()) {
                    i |= Integer.MIN_VALUE;
                }
                if (valueAt.getProcAdjChanged()) {
                    i |= 64;
                }
                valueAt.setSetProcState(valueAt.getCurProcState());
                valueAt.setSetCapability(valueAt.getCurCapability());
                valueAt.setSetAllowListed(valueAt.isCurAllowListed());
                valueAt.setSetIdle(valueAt.isIdle());
                valueAt.clearProcAdjChanged();
                int i2 = i & Integer.MIN_VALUE;
                if (i2 != 0 || (i & 32) != 0) {
                    this.mService.mAtmInternal.onUidProcStateChanged(valueAt.getUid(), valueAt.getSetProcState());
                }
                if (i != 0) {
                    this.mService.enqueueUidChangeLocked(valueAt, -1, i);
                }
                if (i2 != 0 || (i & 32) != 0) {
                    this.mService.noteUidProcessState(valueAt.getUid(), valueAt.getCurProcState(), valueAt.getCurCapability());
                }
                if (valueAt.hasForegroundServices()) {
                    this.mService.mServices.foregroundServiceProcStateChangedLocked(valueAt);
                }
            }
            this.mService.mInternal.deletePendingTopUid(valueAt.getUid(), j);
        }
        PowerManagerInternal powerManagerInternal2 = this.mLocalPowerManager;
        if (powerManagerInternal2 != null) {
            powerManagerInternal2.finishUidChanges();
        }
        if (arrayList.size() > 0) {
            for (int i3 = r12 - 1; i3 >= 0; i3--) {
                this.mService.mServices.stopInBackgroundLocked(((UidRecord) arrayList.get(i3)).getUid());
            }
        }
    }

    public final boolean shouldKillExcessiveProcesses(long j) {
        long lastUserUnlockingUptime = this.mService.mUserController.getLastUserUnlockingUptime();
        if (lastUserUnlockingUptime == 0) {
            return !this.mConstants.mNoKillCachedProcessesUntilBootCompleted;
        }
        return lastUserUnlockingUptime + this.mConstants.mNoKillCachedProcessesPostBootCompletedDurationMillis <= j;
    }

    /* loaded from: classes.dex */
    public final class ComputeOomAdjWindowCallback implements WindowProcessController.ComputeOomAdjCallback {
        public int adj;
        public ProcessRecord app;
        public int appUid;
        public boolean foregroundActivities;
        public int logUid;
        public boolean mHasVisibleActivities;
        public ProcessStateRecord mState;
        public int procState;
        public int processStateCurTop;
        public int schedGroup;

        public ComputeOomAdjWindowCallback() {
        }

        public void initialize(ProcessRecord processRecord, int i, boolean z, boolean z2, int i2, int i3, int i4, int i5, int i6) {
            this.app = processRecord;
            this.adj = i;
            this.foregroundActivities = z;
            this.mHasVisibleActivities = z2;
            this.procState = i2;
            this.schedGroup = i3;
            this.appUid = i4;
            this.logUid = i5;
            this.processStateCurTop = i6;
            this.mState = processRecord.mState;
        }

        @Override // com.android.server.wm.WindowProcessController.ComputeOomAdjCallback
        public void onVisibleActivity() {
            if (this.adj > 100) {
                this.adj = 100;
                this.mState.setAdjType("vis-activity");
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to vis-activity: " + this.app);
                }
            }
            int i = this.procState;
            int i2 = this.processStateCurTop;
            if (i > i2) {
                this.procState = i2;
                this.mState.setAdjType("vis-activity");
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to vis-activity (top): " + this.app);
                }
            }
            if (this.schedGroup < 2) {
                this.schedGroup = 2;
            }
            this.mState.setCached(false);
            this.mState.setEmpty(false);
            this.foregroundActivities = true;
            this.mHasVisibleActivities = true;
        }

        @Override // com.android.server.wm.WindowProcessController.ComputeOomAdjCallback
        public void onPausedActivity() {
            if (this.adj > 200) {
                this.adj = 200;
                this.mState.setAdjType("pause-activity");
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to pause-activity: " + this.app);
                }
            }
            int i = this.procState;
            int i2 = this.processStateCurTop;
            if (i > i2) {
                this.procState = i2;
                this.mState.setAdjType("pause-activity");
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to pause-activity (top): " + this.app);
                }
            }
            if (this.schedGroup < 2) {
                this.schedGroup = 2;
            }
            this.mState.setCached(false);
            this.mState.setEmpty(false);
            this.foregroundActivities = true;
            this.mHasVisibleActivities = false;
        }

        @Override // com.android.server.wm.WindowProcessController.ComputeOomAdjCallback
        public void onStoppingActivity(boolean z) {
            if (this.adj > 200) {
                this.adj = 200;
                this.mState.setAdjType("stop-activity");
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to stop-activity: " + this.app);
                }
            }
            if (!z && this.procState > 15) {
                this.procState = 15;
                this.mState.setAdjType("stop-activity");
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to stop-activity: " + this.app);
                }
            }
            this.mState.setCached(false);
            this.mState.setEmpty(false);
            this.foregroundActivities = true;
            this.mHasVisibleActivities = false;
        }

        @Override // com.android.server.wm.WindowProcessController.ComputeOomAdjCallback
        public void onOtherActivity() {
            if (this.procState > 16) {
                this.procState = 16;
                this.mState.setAdjType("cch-act");
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to cached activity: " + this.app);
                }
            }
            this.mHasVisibleActivities = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:413:0x0701, code lost:
    
        if (r67 < (r11.lastActivity + r62.mConstants.MAX_SERVICE_INACTIVITY)) goto L1150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:665:0x0a1b, code lost:
    
        if (r1 >= 200) goto L1332;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0490 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x05f7  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x062c  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x069a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0cac  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0f24  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0f8c  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0faf  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x1010  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x101f  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x1037  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x1041  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x1047  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x1054  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x106b  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x1078  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x10b5  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x10c3  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x10d7  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x1030  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x06ab  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x073a  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x074d  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x08a6  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x08bc  */
    /* JADX WARN: Removed duplicated region for block: B:523:0x0985  */
    /* JADX WARN: Removed duplicated region for block: B:534:0x0a6c  */
    /* JADX WARN: Removed duplicated region for block: B:548:0x0ae3  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0af2  */
    /* JADX WARN: Removed duplicated region for block: B:555:0x0af9  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x0b05  */
    /* JADX WARN: Removed duplicated region for block: B:565:0x0b13  */
    /* JADX WARN: Removed duplicated region for block: B:571:0x0b9d  */
    /* JADX WARN: Removed duplicated region for block: B:591:0x0ba3  */
    /* JADX WARN: Removed duplicated region for block: B:594:0x0b6a  */
    /* JADX WARN: Removed duplicated region for block: B:612:0x0aca  */
    /* JADX WARN: Removed duplicated region for block: B:630:0x0a48  */
    /* JADX WARN: Removed duplicated region for block: B:632:0x0a4e  */
    /* JADX WARN: Removed duplicated region for block: B:692:0x0b78  */
    /* JADX WARN: Removed duplicated region for block: B:697:0x08ad  */
    /* JADX WARN: Removed duplicated region for block: B:707:0x0c5e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:723:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:728:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:737:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:756:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:761:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:763:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:767:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x044f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean computeOomAdjLSP(com.android.server.am.ProcessRecord r63, int r64, com.android.server.am.ProcessRecord r65, boolean r66, long r67, boolean r69, boolean r70) {
        /*
            Method dump skipped, instructions count: 4327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.OomAdjuster.computeOomAdjLSP(com.android.server.am.ProcessRecord, int, com.android.server.am.ProcessRecord, boolean, long, boolean, boolean):boolean");
    }

    public final boolean promoteSchedGroupIfNecessary(int i, int i2, ProcessStateRecord processStateRecord) {
        if (i != 2) {
            return false;
        }
        if ("fg-service-act".equals(processStateRecord.getAdjType()) || "vis-activity".equals(processStateRecord.getAdjType())) {
            return true;
        }
        if (i2 == 0 && "service".equals(processStateRecord.getAdjType())) {
            return true;
        }
        return i2 == 3 && "provider".equals(processStateRecord.getAdjType());
    }

    public final int getDefaultCapability(ProcessRecord processRecord, int i) {
        int i2;
        int defaultProcessNetworkCapabilities = NetworkPolicyManager.getDefaultProcessNetworkCapabilities(i);
        if (i == 0 || i == 1 || i == 2) {
            i2 = 63;
        } else if (i != 3) {
            i2 = 0;
            if (i == 4 && processRecord.getActiveInstrumentation() != null) {
                i2 = 6;
            }
        } else {
            i2 = 16;
        }
        return defaultProcessNetworkCapabilities | i2;
    }

    public int getBfslCapabilityFromClient(ProcessRecord processRecord) {
        if (processRecord.mState.getCurProcState() < 4) {
            return 16;
        }
        return processRecord.mState.getCurCapability() & 16;
    }

    public final boolean shouldSkipDueToCycle(ProcessRecord processRecord, ProcessStateRecord processStateRecord, int i, int i2, boolean z) {
        if (!processStateRecord.containsCycle()) {
            return false;
        }
        processRecord.mState.setContainsCycle(true);
        this.mProcessesInCycle.add(processRecord);
        if (processStateRecord.getCompletedAdjSeq() < this.mAdjSeq) {
            return !z || (processStateRecord.getCurRawProcState() >= i && processStateRecord.getCurRawAdj() >= i2);
        }
        return false;
    }

    public final void reportOomAdjMessageLocked(String str, String str2) {
        Slog.d(str, str2);
        synchronized (this.mService.mOomAdjObserverLock) {
            ActivityManagerService activityManagerService = this.mService;
            if (activityManagerService.mCurOomAdjObserver != null) {
                activityManagerService.mUiHandler.obtainMessage(70, str2).sendToTarget();
            }
        }
    }

    public void onWakefulnessChanged(int i) {
        this.mCachedAppOptimizer.onWakefulnessChanged(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0321 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean applyOomAdjLSP(final com.android.server.am.ProcessRecord r24, boolean r25, long r26, long r28, int r30) {
        /*
            Method dump skipped, instructions count: 1222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.OomAdjuster.applyOomAdjLSP(com.android.server.am.ProcessRecord, boolean, long, long, int):boolean");
    }

    public /* synthetic */ void lambda$applyOomAdjLSP$2(ProcessRecord processRecord) {
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                this.mService.mServices.stopAllForegroundServicesLocked(processRecord.uid, processRecord.info.packageName);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public void setAttachingSchedGroupLSP(ProcessRecord processRecord) {
        int i = CoreRune.SYSPERF_BOOST_OPT ? 6 : 2;
        ProcessStateRecord processStateRecord = processRecord.mState;
        if (processStateRecord.hasForegroundActivities()) {
            try {
                processRecord.getWindowProcessController().onTopProcChanged();
                if (this.mService.mUseFifoUiScheduling) {
                    ActivityManagerService.scheduleAsFifoPriority(processRecord.getPid(), true);
                } else {
                    Process.setThreadPriority(processRecord.getPid(), -10);
                }
                i = 3;
            } catch (Exception e) {
                Slog.w("OomAdjuster", "Failed to pre-set top priority to " + processRecord + " " + e);
            }
        }
        processStateRecord.setSetSchedGroup(i);
        processStateRecord.setCurrentSchedulingGroup(i);
    }

    public void maybeUpdateUsageStats(ProcessRecord processRecord, long j) {
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                ActivityManagerService.boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        maybeUpdateUsageStatsLSP(processRecord, j);
                    } catch (Throwable th) {
                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                }
                ActivityManagerService.resetPriorityAfterProcLockedSection();
            } catch (Throwable th2) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0047, code lost:
    
        if (r14 > (r0.getFgInteractionTime() + r8)) goto L69;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void maybeUpdateUsageStatsLSP(com.android.server.am.ProcessRecord r13, long r14) {
        /*
            r12 = this;
            com.android.server.am.ProcessStateRecord r0 = r13.mState
            com.android.server.am.ActivityManagerService r1 = r12.mService
            android.app.usage.UsageStatsManagerInternal r1 = r1.mUsageStatsService
            if (r1 != 0) goto L9
            return
        L9:
            r1 = 2
            boolean r1 = r0.getCachedCompatChange(r1)
            int r2 = r0.getCurProcState()
            boolean r2 = android.app.ActivityManager.isProcStateConsideredInteraction(r2)
            r3 = 6
            r4 = 0
            r5 = 0
            r7 = 1
            if (r2 == 0) goto L21
            r0.setFgInteractionTime(r5)
            goto L55
        L21:
            int r2 = r0.getCurProcState()
            r8 = 4
            if (r2 > r8) goto L4a
            long r8 = r0.getFgInteractionTime()
            int r2 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r2 != 0) goto L35
            r0.setFgInteractionTime(r14)
        L33:
            r7 = r4
            goto L55
        L35:
            if (r1 == 0) goto L3c
            com.android.server.am.ActivityManagerConstants r2 = r12.mConstants
            long r8 = r2.SERVICE_USAGE_INTERACTION_TIME_POST_S
            goto L40
        L3c:
            com.android.server.am.ActivityManagerConstants r2 = r12.mConstants
            long r8 = r2.SERVICE_USAGE_INTERACTION_TIME_PRE_S
        L40:
            long r10 = r0.getFgInteractionTime()
            long r10 = r10 + r8
            int r2 = (r14 > r10 ? 1 : (r14 == r10 ? 0 : -1))
            if (r2 <= 0) goto L33
            goto L55
        L4a:
            int r2 = r0.getCurProcState()
            if (r2 > r3) goto L51
            goto L52
        L51:
            r7 = r4
        L52:
            r0.setFgInteractionTime(r5)
        L55:
            if (r1 == 0) goto L5c
            com.android.server.am.ActivityManagerConstants r1 = r12.mConstants
            long r1 = r1.USAGE_STATS_INTERACTION_INTERVAL_POST_S
            goto L60
        L5c:
            com.android.server.am.ActivityManagerConstants r1 = r12.mConstants
            long r1 = r1.USAGE_STATS_INTERACTION_INTERVAL_PRE_S
        L60:
            if (r7 == 0) goto L8c
            boolean r8 = r0.hasReportedInteraction()
            if (r8 == 0) goto L72
            long r8 = r0.getInteractionEventTime()
            long r8 = r14 - r8
            int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r1 <= 0) goto L8c
        L72:
            r0.setInteractionEventTime(r14)
            java.lang.String[] r14 = r13.getPackageList()
            if (r14 == 0) goto L8c
        L7b:
            int r15 = r14.length
            if (r4 >= r15) goto L8c
            com.android.server.am.ActivityManagerService r15 = r12.mService
            android.app.usage.UsageStatsManagerInternal r15 = r15.mUsageStatsService
            r1 = r14[r4]
            int r2 = r13.userId
            r15.reportEvent(r1, r2, r3)
            int r4 = r4 + 1
            goto L7b
        L8c:
            r0.setReportedInteraction(r7)
            if (r7 != 0) goto L94
            r0.setInteractionEventTime(r5)
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.OomAdjuster.maybeUpdateUsageStatsLSP(com.android.server.am.ProcessRecord, long):void");
    }

    public final void maybeUpdateLastTopTime(ProcessStateRecord processStateRecord, long j) {
        if (processStateRecord.getSetProcState() > 2 || processStateRecord.getCurProcState() <= 2) {
            return;
        }
        processStateRecord.setLastTopTime(j);
    }

    public void idleUidsLocked() {
        int size = this.mActiveUids.size();
        this.mService.mHandler.removeMessages(58);
        if (size <= 0) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.mConstants.BACKGROUND_SETTLE_TIME;
        PowerManagerInternal powerManagerInternal = this.mLocalPowerManager;
        if (powerManagerInternal != null) {
            powerManagerInternal.startUidChanges();
        }
        long j2 = 0;
        for (int i = size - 1; i >= 0; i--) {
            UidRecord valueAt = this.mActiveUids.valueAt(i);
            long lastBackgroundTime = valueAt.getLastBackgroundTime();
            long lastIdleTime = valueAt.getLastIdleTime();
            if (lastBackgroundTime > 0 && (!valueAt.isIdle() || lastIdleTime == 0)) {
                if (lastBackgroundTime <= j) {
                    EventLogTags.writeAmUidIdle(valueAt.getUid());
                    ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                    ActivityManagerService.boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        try {
                            valueAt.setIdle(true);
                            valueAt.setSetIdle(true);
                            valueAt.setLastIdleTime(elapsedRealtime);
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    this.mService.doStopUidLocked(valueAt.getUid(), valueAt);
                } else if (j2 == 0 || j2 > lastBackgroundTime) {
                    j2 = lastBackgroundTime;
                }
            }
        }
        PowerManagerInternal powerManagerInternal2 = this.mLocalPowerManager;
        if (powerManagerInternal2 != null) {
            powerManagerInternal2.finishUidChanges();
        }
        if (this.mService.mConstants.mKillBgRestrictedAndCachedIdle) {
            ArraySet arraySet = this.mProcessList.mAppsInBackgroundRestricted;
            int size2 = arraySet.size();
            for (int i2 = 0; i2 < size2; i2++) {
                long lambda$killAppIfBgRestrictedAndCachedIdleLocked$4 = this.mProcessList.lambda$killAppIfBgRestrictedAndCachedIdleLocked$4((ProcessRecord) arraySet.valueAt(i2), elapsedRealtime) - this.mConstants.BACKGROUND_SETTLE_TIME;
                if (lambda$killAppIfBgRestrictedAndCachedIdleLocked$4 > 0 && (j2 == 0 || j2 > lambda$killAppIfBgRestrictedAndCachedIdleLocked$4)) {
                    j2 = lambda$killAppIfBgRestrictedAndCachedIdleLocked$4;
                }
            }
        }
        if (j2 > 0) {
            this.mService.mHandler.sendEmptyMessageDelayed(58, (j2 + this.mConstants.BACKGROUND_SETTLE_TIME) - elapsedRealtime);
        }
    }

    public void setAppIdTempAllowlistStateLSP(int i, boolean z) {
        boolean z2 = false;
        for (int size = this.mActiveUids.size() - 1; size >= 0; size--) {
            UidRecord valueAt = this.mActiveUids.valueAt(size);
            if (valueAt.getUid() == i && valueAt.isCurAllowListed() != z) {
                valueAt.setCurAllowListed(z);
                z2 = true;
            }
        }
        if (z2) {
            updateOomAdjLSP(10);
        }
    }

    public void setUidTempAllowlistStateLSP(int i, boolean z) {
        UidRecord uidRecord = this.mActiveUids.get(i);
        if (uidRecord == null || uidRecord.isCurAllowListed() == z) {
            return;
        }
        uidRecord.setCurAllowListed(z);
        updateOomAdjLSP(10);
    }

    public void dumpProcessListVariablesLocked(ProtoOutputStream protoOutputStream) {
        protoOutputStream.write(1120986464305L, this.mAdjSeq);
        protoOutputStream.write(1120986464306L, this.mProcessList.getLruSeqLOSP());
        protoOutputStream.write(1120986464307L, this.mNumNonCachedProcs);
        protoOutputStream.write(1120986464309L, this.mNumServiceProcs);
        protoOutputStream.write(1120986464310L, this.mNewNumServiceProcs);
    }

    public void dumpSequenceNumbersLocked(PrintWriter printWriter) {
        printWriter.println("  mAdjSeq=" + this.mAdjSeq + " mLruSeq=" + this.mProcessList.getLruSeqLOSP());
    }

    public void dumpProcCountsLocked(PrintWriter printWriter) {
        printWriter.println("  mNumNonCachedProcs=" + this.mNumNonCachedProcs + " (" + this.mProcessList.getLruSizeLOSP() + " total) mNumCachedHiddenProcs=" + this.mNumCachedHiddenProcs + " mNumServiceProcs=" + this.mNumServiceProcs + " mNewNumServiceProcs=" + this.mNewNumServiceProcs);
    }

    public void dumpCachedAppOptimizerSettings(PrintWriter printWriter) {
        this.mCachedAppOptimizer.dump(printWriter);
    }

    public void dumpCacheOomRankerSettings(PrintWriter printWriter) {
        this.mCacheOomRanker.dump(printWriter);
    }

    public final void updateAppFreezeStateLSP(ProcessRecord processRecord, int i) {
        if (this.mCachedAppOptimizer.useFreezer() && !processRecord.mOptRecord.isFreezeExempt()) {
            ProcessCachedOptimizerRecord processCachedOptimizerRecord = processRecord.mOptRecord;
            if (processCachedOptimizerRecord.isFrozen() && processCachedOptimizerRecord.shouldNotFreeze()) {
                this.mCachedAppOptimizer.unfreezeAppLSP(processRecord, CachedAppOptimizer.getUnfreezeReasonCodeFromOomAdjReason(i));
                return;
            }
            ProcessStateRecord processStateRecord = processRecord.mState;
            if (processStateRecord.getCurAdj() >= 830 && !processCachedOptimizerRecord.isFrozen() && !processCachedOptimizerRecord.shouldNotFreeze()) {
                this.mCachedAppOptimizer.freezeAppAsyncLSP(processRecord);
            } else if (processStateRecord.getSetAdj() < 830) {
                this.mCachedAppOptimizer.unfreezeAppLSP(processRecord, CachedAppOptimizer.getUnfreezeReasonCodeFromOomAdjReason(i));
            }
        }
    }

    public void unfreezeTemporarily(ProcessRecord processRecord, int i) {
        if (this.mCachedAppOptimizer.useFreezer()) {
            ProcessCachedOptimizerRecord processCachedOptimizerRecord = processRecord.mOptRecord;
            if (processCachedOptimizerRecord.isFrozen() || processCachedOptimizerRecord.isPendingFreeze()) {
                ArrayList arrayList = this.mTmpProcessList;
                ActiveUids activeUids = this.mTmpUidRecords;
                this.mTmpProcessSet.add(processRecord);
                collectReachableProcessesLocked(this.mTmpProcessSet, arrayList, activeUids);
                this.mTmpProcessSet.clear();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.mCachedAppOptimizer.unfreezeTemporarily((ProcessRecord) arrayList.get(i2), i);
                }
                arrayList.clear();
            }
        }
    }
}
