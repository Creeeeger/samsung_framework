package com.android.server.am;

import android.app.BroadcastOptions;
import android.app.IApplicationThread;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.CompatibilityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.EventLog;
import android.util.IndentingPrintWriter;
import android.util.Slog;
import android.util.SparseIntArray;
import android.util.proto.ProtoOutputStream;
import com.android.internal.os.TimeoutRecord;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.jobs.XmlUtils;
import dalvik.annotation.optimization.NeverCompile;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.function.BooleanSupplier;

/* loaded from: classes.dex */
public class BroadcastQueueImpl extends BroadcastQueue {
    public boolean mBroadcastsScheduled;
    public final BroadcastConstants mConstants;
    public final boolean mDelayBehindServices;
    public final BroadcastDispatcher mDispatcher;
    public final BroadcastHandler mHandler;
    public boolean mLogLatencyMetrics;
    public int mNextToken;
    public final ArrayList mParallelBroadcasts;
    public BroadcastRecord mPendingBroadcast;
    public int mPendingBroadcastRecvIndex;
    public boolean mPendingBroadcastTimeoutMessage;
    public final int mSchedGroup;
    public final SparseIntArray mSplitRefcounts;

    @Override // com.android.server.am.BroadcastQueue
    public void clearDelayedBroadcastLocked() {
    }

    @Override // com.android.server.am.BroadcastQueue
    public void enqueueDelayedBroadcastLocked(BroadcastRecord broadcastRecord) {
    }

    @Override // com.android.server.am.BroadcastQueue
    public void onProcessFreezableChangedLocked(ProcessRecord processRecord) {
    }

    /* loaded from: classes.dex */
    public final class BroadcastHandler extends Handler {
        public BroadcastHandler(Looper looper) {
            super(looper, null);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 200) {
                BroadcastQueueImpl.this.processNextBroadcast(true);
                return;
            }
            if (i != 201) {
                return;
            }
            ActivityManagerService activityManagerService = BroadcastQueueImpl.this.mService;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    BroadcastQueueImpl.this.broadcastTimeoutLocked(true);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }
    }

    public BroadcastQueueImpl(ActivityManagerService activityManagerService, Handler handler, String str, BroadcastConstants broadcastConstants, boolean z, int i) {
        this(activityManagerService, handler, str, broadcastConstants, new BroadcastSkipPolicy(activityManagerService), new BroadcastHistory(activityManagerService, broadcastConstants), z, i);
    }

    public BroadcastQueueImpl(ActivityManagerService activityManagerService, Handler handler, String str, BroadcastConstants broadcastConstants, BroadcastSkipPolicy broadcastSkipPolicy, BroadcastHistory broadcastHistory, boolean z, int i) {
        super(activityManagerService, handler, str, broadcastSkipPolicy, broadcastHistory);
        this.mParallelBroadcasts = new ArrayList();
        this.mSplitRefcounts = new SparseIntArray();
        this.mNextToken = 0;
        this.mBroadcastsScheduled = false;
        this.mPendingBroadcast = null;
        this.mLogLatencyMetrics = true;
        BroadcastHandler broadcastHandler = new BroadcastHandler(handler.getLooper());
        this.mHandler = broadcastHandler;
        this.mConstants = broadcastConstants;
        this.mDelayBehindServices = z;
        this.mSchedGroup = i;
        this.mDispatcher = new BroadcastDispatcher(this, broadcastConstants, broadcastHandler, this.mService);
    }

    @Override // com.android.server.am.BroadcastQueue
    public void start(ContentResolver contentResolver) {
        this.mDispatcher.start();
        this.mConstants.startObserving(this.mHandler, contentResolver);
    }

    @Override // com.android.server.am.BroadcastQueue
    public boolean isDelayBehindServices() {
        return this.mDelayBehindServices;
    }

    public BroadcastRecord getPendingBroadcastLocked() {
        return this.mPendingBroadcast;
    }

    public BroadcastRecord getActiveBroadcastLocked() {
        return this.mDispatcher.getActiveBroadcastLocked();
    }

    @Override // com.android.server.am.BroadcastQueue
    public int getPreferredSchedulingGroupLocked(ProcessRecord processRecord) {
        BroadcastRecord activeBroadcastLocked = getActiveBroadcastLocked();
        if (activeBroadcastLocked != null && activeBroadcastLocked.curApp == processRecord) {
            return this.mSchedGroup;
        }
        BroadcastRecord pendingBroadcastLocked = getPendingBroadcastLocked();
        if (pendingBroadcastLocked == null || pendingBroadcastLocked.curApp != processRecord) {
            return Integer.MIN_VALUE;
        }
        return this.mSchedGroup;
    }

    @Override // com.android.server.am.BroadcastQueue
    public void enqueueBroadcastLocked(BroadcastRecord broadcastRecord) {
        BroadcastRecord broadcastRecord2;
        ProcessRecord processRecord;
        Intent intent;
        boolean z;
        int i;
        int i2;
        int i3;
        String str;
        long uptimeMillis;
        ProcessRecord processRecord2;
        broadcastRecord.applySingletonPolicy(this.mService);
        boolean z2 = false;
        boolean z3 = (broadcastRecord.intent.getFlags() & 536870912) != 0;
        boolean z4 = broadcastRecord.ordered;
        if (!z4) {
            List list = broadcastRecord.receivers;
            int size = list != null ? list.size() : 0;
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    break;
                }
                if (broadcastRecord.receivers.get(i4) instanceof ResolveInfo) {
                    z4 = true;
                    break;
                }
                i4++;
            }
        }
        if (z4) {
            BroadcastRecord replaceOrderedBroadcastLocked = z3 ? replaceOrderedBroadcastLocked(broadcastRecord) : null;
            if (replaceOrderedBroadcastLocked != null) {
                IIntentReceiver iIntentReceiver = replaceOrderedBroadcastLocked.resultTo;
                if (iIntentReceiver != null) {
                    try {
                        replaceOrderedBroadcastLocked.mIsReceiverAppRunning = true;
                        processRecord = replaceOrderedBroadcastLocked.resultToApp;
                        intent = replaceOrderedBroadcastLocked.intent;
                        z = replaceOrderedBroadcastLocked.shareIdentity;
                        i = replaceOrderedBroadcastLocked.userId;
                        i2 = replaceOrderedBroadcastLocked.callingUid;
                        i3 = broadcastRecord.callingUid;
                        str = broadcastRecord.callerPackage;
                        uptimeMillis = SystemClock.uptimeMillis() - replaceOrderedBroadcastLocked.enqueueTime;
                        processRecord2 = replaceOrderedBroadcastLocked.resultToApp;
                        broadcastRecord2 = replaceOrderedBroadcastLocked;
                    } catch (RemoteException e) {
                        e = e;
                        broadcastRecord2 = replaceOrderedBroadcastLocked;
                    }
                    try {
                        performReceiveLocked(replaceOrderedBroadcastLocked, processRecord, iIntentReceiver, intent, 0, null, null, false, false, z, i, i2, i3, str, uptimeMillis, 0L, 0, processRecord2 != null ? processRecord2.mState.getCurProcState() : -1);
                        return;
                    } catch (RemoteException e2) {
                        e = e2;
                        Slog.w("BroadcastQueue", "Failure [" + this.mQueueName + "] sending broadcast result of " + broadcastRecord2.intent, e);
                        return;
                    }
                }
                return;
            }
            enqueueOrderedBroadcastLocked(broadcastRecord);
            scheduleBroadcastsLocked();
            return;
        }
        if (z3 && replaceParallelBroadcastLocked(broadcastRecord) != null) {
            z2 = true;
        }
        if (z2) {
            return;
        }
        enqueueParallelBroadcastLocked(broadcastRecord);
        scheduleBroadcastsLocked();
    }

    public void enqueueParallelBroadcastLocked(BroadcastRecord broadcastRecord) {
        broadcastRecord.enqueueClockTime = System.currentTimeMillis();
        broadcastRecord.enqueueTime = SystemClock.uptimeMillis();
        broadcastRecord.enqueueRealTime = SystemClock.elapsedRealtime();
        this.mParallelBroadcasts.add(broadcastRecord);
        enqueueBroadcastHelper(broadcastRecord);
    }

    public void enqueueOrderedBroadcastLocked(BroadcastRecord broadcastRecord) {
        broadcastRecord.enqueueClockTime = System.currentTimeMillis();
        broadcastRecord.enqueueTime = SystemClock.uptimeMillis();
        broadcastRecord.enqueueRealTime = SystemClock.elapsedRealtime();
        this.mDispatcher.enqueueOrderedBroadcastLocked(broadcastRecord);
        enqueueBroadcastHelper(broadcastRecord);
    }

    public final void enqueueBroadcastHelper(BroadcastRecord broadcastRecord) {
        if (Trace.isTagEnabled(64L)) {
            Trace.asyncTraceBegin(64L, createBroadcastTraceTitle(broadcastRecord, 0), System.identityHashCode(broadcastRecord));
        }
    }

    public final BroadcastRecord replaceParallelBroadcastLocked(BroadcastRecord broadcastRecord) {
        return replaceBroadcastLocked(this.mParallelBroadcasts, broadcastRecord, "PARALLEL");
    }

    public final BroadcastRecord replaceOrderedBroadcastLocked(BroadcastRecord broadcastRecord) {
        return this.mDispatcher.replaceBroadcastLocked(broadcastRecord, "ORDERED");
    }

    public final BroadcastRecord replaceBroadcastLocked(ArrayList arrayList, BroadcastRecord broadcastRecord, String str) {
        Intent intent = broadcastRecord.intent;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            BroadcastRecord broadcastRecord2 = (BroadcastRecord) arrayList.get(size);
            if (broadcastRecord2.userId == broadcastRecord.userId && intent.filterEquals(broadcastRecord2.intent)) {
                arrayList.set(size, broadcastRecord);
                return broadcastRecord2;
            }
        }
        return null;
    }

    public final void processCurBroadcastLocked(BroadcastRecord broadcastRecord, ProcessRecord processRecord) {
        ProcessReceiverRecord processReceiverRecord;
        IApplicationThread thread = processRecord.getThread();
        if (thread == null) {
            throw new RemoteException();
        }
        if (processRecord.isInFullBackup()) {
            skipReceiverLocked(broadcastRecord);
            return;
        }
        broadcastRecord.curApp = processRecord;
        broadcastRecord.curAppLastProcessState = processRecord.mState.getCurProcState();
        ProcessReceiverRecord processReceiverRecord2 = processRecord.mReceivers;
        processReceiverRecord2.addCurReceiver(broadcastRecord);
        processRecord.mState.forceProcessStateUpTo(11);
        if (this.mService.mInternal.getRestrictionLevel(processRecord.info.packageName, processRecord.userId) < 40) {
            this.mService.updateLruProcessLocked(processRecord, false, null);
        }
        this.mService.enqueueOomAdjTargetLocked(processRecord);
        this.mService.updateOomAdjPendingTargetsLocked(3);
        maybeReportBroadcastDispatchedEventLocked(broadcastRecord, broadcastRecord.curReceiver.applicationInfo.uid);
        broadcastRecord.intent.setComponent(broadcastRecord.curComponent);
        BroadcastOptions broadcastOptions = broadcastRecord.options;
        if (broadcastOptions != null && broadcastOptions.getTemporaryAppAllowlistDuration() > 0 && broadcastRecord.options.getTemporaryAppAllowlistType() == 4) {
            this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(processRecord, 3, broadcastRecord.options.getTemporaryAppAllowlistDuration());
        }
        try {
            broadcastRecord.receiversDispatchTime[broadcastRecord.nextReceiver - 1] = SystemClock.uptimeMillis();
            this.mService.notifyPackageUse(broadcastRecord.intent.getComponent().getPackageName(), 3);
            processReceiverRecord = processReceiverRecord2;
        } catch (Throwable th) {
            th = th;
            processReceiverRecord = processReceiverRecord2;
        }
        try {
            thread.scheduleReceiver(prepareReceiverIntent(broadcastRecord.intent, broadcastRecord.curFilteredExtras), broadcastRecord.curReceiver, (CompatibilityInfo) null, broadcastRecord.resultCode, broadcastRecord.resultData, broadcastRecord.resultExtras, broadcastRecord.ordered, false, broadcastRecord.userId, broadcastRecord.shareIdentity ? broadcastRecord.callingUid : -1, processRecord.mState.getReportedProcState(), broadcastRecord.shareIdentity ? broadcastRecord.callerPackage : null);
            if (processRecord.isKilled()) {
                throw new RemoteException("app gets killed during broadcasting");
            }
        } catch (Throwable th2) {
            th = th2;
            broadcastRecord.curApp = null;
            broadcastRecord.curAppLastProcessState = -1;
            processReceiverRecord.removeCurReceiver(broadcastRecord);
            throw th;
        }
    }

    public void updateUidReadyForBootCompletedBroadcastLocked(int i) {
        this.mDispatcher.updateUidReadyForBootCompletedBroadcastLocked(i);
        scheduleBroadcastsLocked();
    }

    @Override // com.android.server.am.BroadcastQueue
    public boolean onApplicationAttachedLocked(ProcessRecord processRecord) {
        updateUidReadyForBootCompletedBroadcastLocked(processRecord.uid);
        BroadcastRecord broadcastRecord = this.mPendingBroadcast;
        if (broadcastRecord == null || broadcastRecord.curApp != processRecord) {
            return false;
        }
        return sendPendingBroadcastsLocked(processRecord);
    }

    @Override // com.android.server.am.BroadcastQueue
    public void onApplicationTimeoutLocked(ProcessRecord processRecord) {
        skipCurrentOrPendingReceiverLocked(processRecord);
    }

    @Override // com.android.server.am.BroadcastQueue
    public void onApplicationProblemLocked(ProcessRecord processRecord) {
        skipCurrentOrPendingReceiverLocked(processRecord);
    }

    @Override // com.android.server.am.BroadcastQueue
    public void onApplicationCleanupLocked(ProcessRecord processRecord) {
        skipCurrentOrPendingReceiverLocked(processRecord);
    }

    public boolean sendPendingBroadcastsLocked(ProcessRecord processRecord) {
        BroadcastRecord broadcastRecord = this.mPendingBroadcast;
        if (broadcastRecord == null || broadcastRecord.curApp.getPid() <= 0 || broadcastRecord.curApp.getPid() != processRecord.getPid()) {
            return false;
        }
        if (broadcastRecord.curApp != processRecord) {
            Slog.e("BroadcastQueue", "App mismatch when sending pending broadcast to " + processRecord.processName + ", intended target is " + broadcastRecord.curApp.processName);
            return false;
        }
        try {
            this.mPendingBroadcast = null;
            broadcastRecord.mIsReceiverAppRunning = false;
            processCurBroadcastLocked(broadcastRecord, processRecord);
            return true;
        } catch (Exception e) {
            Slog.w("BroadcastQueue", "Exception in new application when starting receiver " + broadcastRecord.curComponent.flattenToShortString(), e);
            logBroadcastReceiverDiscardLocked(broadcastRecord);
            finishReceiverLocked(broadcastRecord, broadcastRecord.resultCode, broadcastRecord.resultData, broadcastRecord.resultExtras, broadcastRecord.resultAbort, false);
            scheduleBroadcastsLocked();
            broadcastRecord.state = 0;
            throw new BroadcastDeliveryFailedException(e);
        }
    }

    public boolean skipCurrentOrPendingReceiverLocked(ProcessRecord processRecord) {
        BroadcastRecord broadcastRecord;
        BroadcastRecord activeBroadcastLocked = this.mDispatcher.getActiveBroadcastLocked();
        if (activeBroadcastLocked == null || activeBroadcastLocked.curApp != processRecord) {
            activeBroadcastLocked = null;
        }
        if (activeBroadcastLocked == null && (broadcastRecord = this.mPendingBroadcast) != null && broadcastRecord.curApp == processRecord) {
            activeBroadcastLocked = broadcastRecord;
        }
        if (activeBroadcastLocked == null) {
            return false;
        }
        skipReceiverLocked(activeBroadcastLocked);
        return true;
    }

    public final void skipReceiverLocked(BroadcastRecord broadcastRecord) {
        logBroadcastReceiverDiscardLocked(broadcastRecord);
        finishReceiverLocked(broadcastRecord, broadcastRecord.resultCode, broadcastRecord.resultData, broadcastRecord.resultExtras, broadcastRecord.resultAbort, false);
        scheduleBroadcastsLocked();
    }

    public void scheduleBroadcastsLocked() {
        if (this.mBroadcastsScheduled) {
            return;
        }
        BroadcastHandler broadcastHandler = this.mHandler;
        broadcastHandler.sendMessage(broadcastHandler.obtainMessage(200, this));
        this.mBroadcastsScheduled = true;
    }

    public BroadcastRecord getMatchingOrderedReceiver(ProcessRecord processRecord) {
        BroadcastRecord activeBroadcastLocked = this.mDispatcher.getActiveBroadcastLocked();
        if (activeBroadcastLocked == null) {
            Slog.w("BroadcastQueue", "getMatchingOrderedReceiver [" + this.mQueueName + "] no active broadcast");
            return null;
        }
        if (activeBroadcastLocked.curApp == processRecord) {
            return activeBroadcastLocked;
        }
        Slog.w("BroadcastQueue", "getMatchingOrderedReceiver [" + this.mQueueName + "] active broadcast " + activeBroadcastLocked.curApp + " doesn't match " + processRecord);
        return null;
    }

    public final int nextSplitTokenLocked() {
        int i = this.mNextToken + 1;
        int i2 = i > 0 ? i : 1;
        this.mNextToken = i2;
        return i2;
    }

    public final void postActivityStartTokenRemoval(final ProcessRecord processRecord, final BroadcastRecord broadcastRecord) {
        String intern = (processRecord.toShortString() + broadcastRecord.toString()).intern();
        this.mHandler.removeCallbacksAndMessages(intern);
        this.mHandler.postAtTime(new Runnable() { // from class: com.android.server.am.BroadcastQueueImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BroadcastQueueImpl.this.lambda$postActivityStartTokenRemoval$0(processRecord, broadcastRecord);
            }
        }, intern, broadcastRecord.receiverTime + this.mConstants.ALLOW_BG_ACTIVITY_START_TIMEOUT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postActivityStartTokenRemoval$0(ProcessRecord processRecord, BroadcastRecord broadcastRecord) {
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                processRecord.removeBackgroundStartPrivileges(broadcastRecord);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    @Override // com.android.server.am.BroadcastQueue
    public boolean finishReceiverLocked(ProcessRecord processRecord, int i, String str, Bundle bundle, boolean z, boolean z2) {
        BroadcastRecord matchingOrderedReceiver = getMatchingOrderedReceiver(processRecord);
        if (matchingOrderedReceiver != null) {
            return finishReceiverLocked(matchingOrderedReceiver, i, str, bundle, z, z2);
        }
        return false;
    }

    public boolean finishReceiverLocked(BroadcastRecord broadcastRecord, int i, String str, Bundle bundle, boolean z, boolean z2) {
        int i2;
        ActivityInfo activityInfo;
        ProcessRecord processRecord;
        ProcessRecord processRecord2;
        int i3;
        int i4;
        int i5 = broadcastRecord.state;
        ActivityInfo activityInfo2 = broadcastRecord.curReceiver;
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = uptimeMillis - broadcastRecord.receiverTime;
        broadcastRecord.state = 0;
        int i6 = broadcastRecord.nextReceiver - 1;
        int i7 = broadcastRecord.mWasReceiverAppStopped ? 2 : 1;
        if (i6 < 0 || i6 >= broadcastRecord.receivers.size() || broadcastRecord.curApp == null) {
            i2 = -1;
        } else {
            Object obj = broadcastRecord.receivers.get(i6);
            int i8 = broadcastRecord.curApp.uid;
            int i9 = broadcastRecord.callingUid;
            if (i9 == -1) {
                i9 = 1000;
            }
            String action = broadcastRecord.intent.getAction();
            int i10 = obj instanceof BroadcastFilter ? 1 : 2;
            if (broadcastRecord.mIsReceiverAppRunning) {
                i4 = 1;
                i3 = i9;
            } else {
                i3 = i9;
                i4 = 3;
            }
            long j2 = broadcastRecord.dispatchTime;
            long j3 = j2 - broadcastRecord.enqueueTime;
            long j4 = broadcastRecord.receiverTime;
            i2 = -1;
            FrameworkStatsLog.write(FrameworkStatsLog.BROADCAST_DELIVERY_EVENT_REPORTED, i8, i3, action, i10, i4, j3, j4 - j2, uptimeMillis - j4, i7, broadcastRecord.curApp.info.packageName, broadcastRecord.callerPackage, broadcastRecord.calculateTypeForLogging(), broadcastRecord.getDeliveryGroupPolicy(), broadcastRecord.intent.getFlags(), BroadcastRecord.getReceiverPriority(obj), broadcastRecord.callerProcState, broadcastRecord.curAppLastProcessState);
        }
        if (i5 == 0) {
            Slog.w("BroadcastQueue", "finishReceiver [" + this.mQueueName + "] called but state is IDLE");
        }
        if (broadcastRecord.mBackgroundStartPrivileges.allowsAny() && (processRecord2 = broadcastRecord.curApp) != null) {
            if (j > this.mConstants.ALLOW_BG_ACTIVITY_START_TIMEOUT) {
                processRecord2.removeBackgroundStartPrivileges(broadcastRecord);
            } else {
                postActivityStartTokenRemoval(processRecord2, broadcastRecord);
            }
        }
        int i11 = broadcastRecord.nextReceiver;
        if (i11 > 0) {
            broadcastRecord.terminalTime[i11 - 1] = uptimeMillis;
        }
        if (!broadcastRecord.timeoutExempt && (processRecord = broadcastRecord.curApp) != null) {
            long j5 = this.mConstants.SLOW_TIME;
            if (j5 > 0 && j > j5 && !UserHandle.isCore(processRecord.uid)) {
                this.mDispatcher.startDeferring(broadcastRecord.curApp.uid);
            }
        }
        broadcastRecord.intent.setComponent(null);
        ProcessRecord processRecord3 = broadcastRecord.curApp;
        if (processRecord3 != null && processRecord3.mReceivers.hasCurReceiver(broadcastRecord)) {
            broadcastRecord.curApp.mReceivers.removeCurReceiver(broadcastRecord);
            this.mService.enqueueOomAdjTargetLocked(broadcastRecord.curApp);
        }
        BroadcastFilter broadcastFilter = broadcastRecord.curFilter;
        if (broadcastFilter != null) {
            broadcastFilter.receiverList.curBroadcast = null;
        }
        broadcastRecord.curFilter = null;
        broadcastRecord.curReceiver = null;
        broadcastRecord.curApp = null;
        broadcastRecord.curAppLastProcessState = i2;
        broadcastRecord.curFilteredExtras = null;
        broadcastRecord.mWasReceiverAppStopped = false;
        this.mPendingBroadcast = null;
        broadcastRecord.resultCode = i;
        broadcastRecord.resultData = str;
        broadcastRecord.resultExtras = bundle;
        int i12 = broadcastRecord.nextReceiver;
        if (i12 > 0) {
            broadcastRecord.receiversFinishTime[i12 - 1] = SystemClock.uptimeMillis();
        }
        if (z && (broadcastRecord.intent.getFlags() & 134217728) == 0) {
            broadcastRecord.resultAbort = z;
            this.mService.mExt.addAbortedBroadcastToHistoryLocked(this.mHistory, broadcastRecord);
        } else {
            broadcastRecord.resultAbort = false;
        }
        if (z2 && broadcastRecord.curComponent != null && broadcastRecord.queue.isDelayBehindServices() && ((BroadcastQueueImpl) broadcastRecord.queue).getActiveBroadcastLocked() == broadcastRecord) {
            if (broadcastRecord.nextReceiver < broadcastRecord.receivers.size()) {
                Object obj2 = broadcastRecord.receivers.get(broadcastRecord.nextReceiver);
                if (obj2 instanceof ActivityInfo) {
                    activityInfo = (ActivityInfo) obj2;
                    if ((activityInfo2 != null || activityInfo == null || activityInfo2.applicationInfo.uid != activityInfo.applicationInfo.uid || !activityInfo2.processName.equals(activityInfo.processName)) && this.mService.mServices.hasBackgroundServicesLocked(broadcastRecord.userId)) {
                        Slog.i("BroadcastQueue", "Delay finish: " + broadcastRecord.curComponent.flattenToShortString());
                        broadcastRecord.state = 4;
                        return false;
                    }
                }
            }
            activityInfo = null;
            if (activityInfo2 != null) {
            }
            Slog.i("BroadcastQueue", "Delay finish: " + broadcastRecord.curComponent.flattenToShortString());
            broadcastRecord.state = 4;
            return false;
        }
        broadcastRecord.curComponent = null;
        boolean z3 = i5 == 1 || i5 == 3;
        if (z3) {
            processNextBroadcastLocked(false, true);
        }
        return z3;
    }

    @Override // com.android.server.am.BroadcastQueue
    public void backgroundServicesFinishedLocked(int i) {
        BroadcastRecord activeBroadcastLocked = this.mDispatcher.getActiveBroadcastLocked();
        if (activeBroadcastLocked != null && activeBroadcastLocked.userId == i && activeBroadcastLocked.state == 4) {
            Slog.i("BroadcastQueue", "Resuming delayed broadcast");
            activeBroadcastLocked.curComponent = null;
            activeBroadcastLocked.state = 0;
            processNextBroadcastLocked(false, false);
        }
    }

    public void performReceiveLocked(BroadcastRecord broadcastRecord, ProcessRecord processRecord, IIntentReceiver iIntentReceiver, Intent intent, int i, String str, Bundle bundle, boolean z, boolean z2, boolean z3, int i2, int i3, int i4, String str2, long j, long j2, int i5, int i6) {
        int i7;
        if (z3) {
            this.mService.mPackageManagerInt.grantImplicitAccess(i2, intent, UserHandle.getAppId(i3), i4, true);
        }
        if (processRecord != null) {
            IApplicationThread thread = processRecord.getThread();
            if (thread != null) {
                try {
                    i7 = -1;
                    thread.scheduleRegisteredReceiver(iIntentReceiver, intent, i, str, bundle, z, z2, !z, i2, processRecord.mState.getReportedProcState(), z3 ? i4 : -1, z3 ? str2 : null);
                } catch (RemoteException e) {
                    ActivityManagerService activityManagerService = this.mService;
                    ActivityManagerService.boostPriorityForLockedSection();
                    synchronized (activityManagerService) {
                        try {
                            Slog.w("BroadcastQueue", "Failed to schedule " + intent + " to " + iIntentReceiver + " via " + processRecord + ": " + e);
                            processRecord.killLocked("Can't deliver broadcast", 13, 26, true);
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw e;
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                }
            } else {
                throw new RemoteException("app.thread must not be null");
            }
        } else {
            i7 = -1;
            iIntentReceiver.performReceive(intent, i, str, bundle, z, z2, i2);
        }
        if (z) {
            return;
        }
        int i8 = i3;
        int i9 = i4;
        if (i8 == i7) {
            i8 = 1000;
        }
        if (i9 == i7) {
            i9 = 1000;
        }
        FrameworkStatsLog.write(FrameworkStatsLog.BROADCAST_DELIVERY_EVENT_REPORTED, i8, i9, intent.getAction(), 1, 1, j, j2, 0L, 1, processRecord != null ? processRecord.info.packageName : null, str2, broadcastRecord.calculateTypeForLogging(), broadcastRecord.getDeliveryGroupPolicy(), broadcastRecord.intent.getFlags(), i5, broadcastRecord.callerProcState, i6);
    }

    public boolean isPendingBroadcastPackageLocked(int i) {
        BroadcastRecord broadcastRecord = this.mPendingBroadcast;
        return broadcastRecord != null && broadcastRecord.curApp.uid == i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:80:0x021b A[Catch: RemoteException -> 0x0217, TRY_LEAVE, TryCatch #6 {RemoteException -> 0x0217, blocks: (B:78:0x01de, B:80:0x021b, B:113:0x0213), top: B:47:0x0130 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.android.server.am.BroadcastRecord] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void deliverToRegisteredReceiverLocked(com.android.server.am.BroadcastRecord r31, com.android.server.am.BroadcastFilter r32, boolean r33, int r34) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.BroadcastQueueImpl.deliverToRegisteredReceiverLocked(com.android.server.am.BroadcastRecord, com.android.server.am.BroadcastFilter, boolean, int):void");
    }

    public void maybeScheduleTempAllowlistLocked(int i, BroadcastRecord broadcastRecord, BroadcastOptions broadcastOptions) {
        if (broadcastOptions == null || broadcastOptions.getTemporaryAppAllowlistDuration() <= 0) {
            return;
        }
        long temporaryAppAllowlistDuration = broadcastOptions.getTemporaryAppAllowlistDuration();
        int temporaryAppAllowlistType = broadcastOptions.getTemporaryAppAllowlistType();
        int temporaryAppAllowlistReasonCode = broadcastOptions.getTemporaryAppAllowlistReasonCode();
        String temporaryAppAllowlistReason = broadcastOptions.getTemporaryAppAllowlistReason();
        long j = temporaryAppAllowlistDuration > 2147483647L ? 2147483647L : temporaryAppAllowlistDuration;
        StringBuilder sb = new StringBuilder();
        sb.append("broadcast:");
        UserHandle.formatUid(sb, broadcastRecord.callingUid);
        sb.append(XmlUtils.STRING_ARRAY_SEPARATOR);
        if (broadcastRecord.intent.getAction() != null) {
            sb.append(broadcastRecord.intent.getAction());
        } else if (broadcastRecord.intent.getComponent() != null) {
            broadcastRecord.intent.getComponent().appendShortString(sb);
        } else if (broadcastRecord.intent.getData() != null) {
            sb.append(broadcastRecord.intent.getData());
        }
        sb.append(",reason:");
        sb.append(temporaryAppAllowlistReason);
        if (temporaryAppAllowlistType != 4) {
            this.mService.tempAllowlistUidLocked(i, j, temporaryAppAllowlistReasonCode, sb.toString(), temporaryAppAllowlistType, broadcastRecord.callingUid);
        }
    }

    public final void processNextBroadcast(boolean z) {
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                processNextBroadcastLocked(z, false);
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public static Intent prepareReceiverIntent(Intent intent, Bundle bundle) {
        Intent intent2 = new Intent(intent);
        if (bundle != null) {
            intent2.replaceExtras(bundle);
        }
        return intent2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x01c8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x06c7 A[LOOP:2: B:47:0x00f9->B:80:0x06c7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0361 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03ca  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v22 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void processNextBroadcastLocked(boolean r39, boolean r40) {
        /*
            Method dump skipped, instructions count: 1743
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.BroadcastQueueImpl.processNextBroadcastLocked(boolean, boolean):void");
    }

    public final String getTargetPackage(BroadcastRecord broadcastRecord) {
        Intent intent = broadcastRecord.intent;
        if (intent == null) {
            return null;
        }
        if (intent.getPackage() != null) {
            return broadcastRecord.intent.getPackage();
        }
        if (broadcastRecord.intent.getComponent() != null) {
            return broadcastRecord.intent.getComponent().getPackageName();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void logBootCompletedBroadcastCompletionLatencyIfPossible(com.android.server.am.BroadcastRecord r12) {
        /*
            java.util.List r0 = r12.receivers
            r1 = 0
            if (r0 == 0) goto La
            int r0 = r0.size()
            goto Lb
        La:
            r0 = r1
        Lb:
            int r2 = r12.nextReceiver
            if (r2 >= r0) goto L10
            return
        L10:
            android.content.Intent r2 = r12.intent
            java.lang.String r2 = r2.getAction()
            java.lang.String r3 = "android.intent.action.LOCKED_BOOT_COMPLETED"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L21
            r3 = 1
        L1f:
            r5 = r3
            goto L2c
        L21:
            java.lang.String r3 = "android.intent.action.BOOT_COMPLETED"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L2b
            r3 = 2
            goto L1f
        L2b:
            r5 = r1
        L2c:
            if (r5 == 0) goto Lc1
            long r3 = r12.dispatchTime
            long r6 = r12.enqueueTime
            long r3 = r3 - r6
            int r6 = (int) r3
            long r3 = android.os.SystemClock.uptimeMillis()
            long r7 = r12.enqueueTime
            long r3 = r3 - r7
            int r7 = (int) r3
            long r3 = r12.dispatchRealTime
            long r8 = r12.enqueueRealTime
            long r3 = r3 - r8
            int r8 = (int) r3
            long r3 = android.os.SystemClock.elapsedRealtime()
            long r9 = r12.enqueueRealTime
            long r3 = r3 - r9
            int r9 = (int) r3
            java.lang.Class<com.android.server.pm.UserManagerInternal> r3 = com.android.server.pm.UserManagerInternal.class
            java.lang.Object r3 = com.android.server.LocalServices.getService(r3)
            com.android.server.pm.UserManagerInternal r3 = (com.android.server.pm.UserManagerInternal) r3
            r4 = 0
            if (r3 == 0) goto L5c
            int r10 = r12.userId
            android.content.pm.UserInfo r3 = r3.getUserInfo(r10)
            goto L5d
        L5c:
            r3 = r4
        L5d:
            if (r3 == 0) goto L65
            java.lang.String r1 = r3.userType
            int r1 = com.android.server.pm.UserJourneyLogger.getUserTypeForStatsd(r1)
        L65:
            r11 = r1
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r10 = "BOOT_COMPLETED_BROADCAST_COMPLETION_LATENCY_REPORTED action:"
            r1.append(r10)
            r1.append(r2)
            java.lang.String r2 = " dispatchLatency:"
            r1.append(r2)
            r1.append(r6)
            java.lang.String r2 = " completeLatency:"
            r1.append(r2)
            r1.append(r7)
            java.lang.String r2 = " dispatchRealLatency:"
            r1.append(r2)
            r1.append(r8)
            java.lang.String r2 = " completeRealLatency:"
            r1.append(r2)
            r1.append(r9)
            java.lang.String r2 = " receiversSize:"
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = " userId:"
            r1.append(r0)
            int r0 = r12.userId
            r1.append(r0)
            java.lang.String r0 = " userType:"
            r1.append(r0)
            if (r3 == 0) goto Lae
            java.lang.String r4 = r3.userType
        Lae:
            r1.append(r4)
            java.lang.String r0 = r1.toString()
            java.lang.String r1 = "BroadcastQueue"
            android.util.Slog.i(r1, r0)
            r4 = 437(0x1b5, float:6.12E-43)
            int r10 = r12.userId
            com.android.internal.util.FrameworkStatsLog.write(r4, r5, r6, r7, r8, r9, r10, r11)
        Lc1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.BroadcastQueueImpl.logBootCompletedBroadcastCompletionLatencyIfPossible(com.android.server.am.BroadcastRecord):void");
    }

    public final void maybeReportBroadcastDispatchedEventLocked(BroadcastRecord broadcastRecord, int i) {
        String targetPackage;
        BroadcastOptions broadcastOptions = broadcastRecord.options;
        if (broadcastOptions == null || broadcastOptions.getIdForResponseEvent() <= 0 || (targetPackage = getTargetPackage(broadcastRecord)) == null) {
            return;
        }
        this.mService.mUsageStatsService.reportBroadcastDispatched(broadcastRecord.callingUid, targetPackage, UserHandle.of(broadcastRecord.userId), broadcastRecord.options.getIdForResponseEvent(), SystemClock.elapsedRealtime(), this.mService.getUidStateLocked(i));
    }

    public final void maybeAddBackgroundStartPrivileges(ProcessRecord processRecord, BroadcastRecord broadcastRecord) {
        if (broadcastRecord == null || processRecord == null || !broadcastRecord.mBackgroundStartPrivileges.allowsAny()) {
            return;
        }
        this.mHandler.removeCallbacksAndMessages((processRecord.toShortString() + broadcastRecord.toString()).intern());
        processRecord.addOrUpdateBackgroundStartPrivileges(broadcastRecord, broadcastRecord.mBackgroundStartPrivileges);
    }

    public final void setBroadcastTimeoutLocked(long j) {
        if (this.mPendingBroadcastTimeoutMessage) {
            return;
        }
        this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(201, this), j);
        this.mPendingBroadcastTimeoutMessage = true;
    }

    public final void cancelBroadcastTimeoutLocked() {
        if (this.mPendingBroadcastTimeoutMessage) {
            this.mHandler.removeMessages(201, this);
            this.mPendingBroadcastTimeoutMessage = false;
        }
    }

    public final void broadcastTimeoutLocked(boolean z) {
        Object obj;
        ProcessRecord processRecord;
        boolean z2 = false;
        if (z) {
            this.mPendingBroadcastTimeoutMessage = false;
        }
        if (this.mDispatcher.isEmpty() || this.mDispatcher.getActiveBroadcastLocked() == null) {
            return;
        }
        Trace.traceBegin(64L, "broadcastTimeoutLocked()");
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            BroadcastRecord activeBroadcastLocked = this.mDispatcher.getActiveBroadcastLocked();
            if (z) {
                if (!this.mService.mProcessesReady) {
                    return;
                }
                if (activeBroadcastLocked.timeoutExempt) {
                    return;
                }
                long j = activeBroadcastLocked.receiverTime + this.mConstants.TIMEOUT;
                if (j > uptimeMillis) {
                    setBroadcastTimeoutLocked(j);
                    return;
                }
            }
            if (activeBroadcastLocked.state == 4) {
                StringBuilder sb = new StringBuilder();
                sb.append("Waited long enough for: ");
                ComponentName componentName = activeBroadcastLocked.curComponent;
                sb.append(componentName != null ? componentName.flattenToShortString() : "(null)");
                Slog.i("BroadcastQueue", sb.toString());
                activeBroadcastLocked.curComponent = null;
                activeBroadcastLocked.state = 0;
                processNextBroadcastLocked(false, false);
                return;
            }
            ProcessRecord processRecord2 = activeBroadcastLocked.curApp;
            if (processRecord2 != null && processRecord2.isDebugging()) {
                z2 = true;
            }
            long j2 = uptimeMillis - activeBroadcastLocked.receiverTime;
            Slog.w("BroadcastQueue", "Timeout of broadcast " + activeBroadcastLocked + " - curFilter=" + activeBroadcastLocked.curFilter + " curReceiver=" + activeBroadcastLocked.curReceiver + ", started " + j2 + "ms ago");
            activeBroadcastLocked.receiverTime = uptimeMillis;
            if (!z2) {
                activeBroadcastLocked.anrCount++;
            }
            int i = activeBroadcastLocked.nextReceiver;
            if (i > 0) {
                obj = activeBroadcastLocked.receivers.get(i - 1);
                activeBroadcastLocked.delivery[activeBroadcastLocked.nextReceiver - 1] = 3;
            } else {
                obj = activeBroadcastLocked.curReceiver;
            }
            Slog.w("BroadcastQueue", "Receiver during timeout of " + activeBroadcastLocked + " : " + obj);
            logBroadcastReceiverDiscardLocked(activeBroadcastLocked);
            TimeoutRecord forBroadcastReceiver = TimeoutRecord.forBroadcastReceiver(activeBroadcastLocked.intent, j2);
            if (obj == null || !(obj instanceof BroadcastFilter)) {
                processRecord = activeBroadcastLocked.curApp;
            } else {
                BroadcastFilter broadcastFilter = (BroadcastFilter) obj;
                int i2 = broadcastFilter.receiverList.pid;
                if (i2 == 0 || i2 == ActivityManagerService.MY_PID) {
                    processRecord = null;
                } else {
                    forBroadcastReceiver.mLatencyTracker.waitingOnPidLockStarted();
                    synchronized (this.mService.mPidsSelfLocked) {
                        forBroadcastReceiver.mLatencyTracker.waitingOnPidLockEnded();
                        processRecord = this.mService.mPidsSelfLocked.get(broadcastFilter.receiverList.pid);
                    }
                }
            }
            if (this.mPendingBroadcast == activeBroadcastLocked) {
                this.mPendingBroadcast = null;
            }
            finishReceiverLocked(activeBroadcastLocked, activeBroadcastLocked.resultCode, activeBroadcastLocked.resultData, activeBroadcastLocked.resultExtras, activeBroadcastLocked.resultAbort, false);
            scheduleBroadcastsLocked();
            if (!z2 && processRecord != null) {
                this.mService.appNotResponding(processRecord, forBroadcastReceiver);
            }
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public final void addBroadcastToHistoryLocked(BroadcastRecord broadcastRecord) {
        if (broadcastRecord.callingUid < 0) {
            return;
        }
        broadcastRecord.finishTime = SystemClock.uptimeMillis();
        if (Trace.isTagEnabled(64L)) {
            Trace.asyncTraceEnd(64L, createBroadcastTraceTitle(broadcastRecord, 1), System.identityHashCode(broadcastRecord));
        }
        this.mService.notifyBroadcastFinishedLocked(broadcastRecord);
        this.mHistory.addBroadcastToHistoryLocked(broadcastRecord);
    }

    @Override // com.android.server.am.BroadcastQueue
    public boolean cleanupDisabledPackageReceiversLocked(String str, Set set, int i) {
        boolean z = false;
        for (int size = this.mParallelBroadcasts.size() - 1; size >= 0; size--) {
            z |= ((BroadcastRecord) this.mParallelBroadcasts.get(size)).cleanupDisabledPackageReceiversLocked(str, set, i, true);
        }
        return this.mDispatcher.cleanupDisabledPackageReceiversLocked(str, set, i, true) | z;
    }

    public final void logBroadcastReceiverDiscardLocked(BroadcastRecord broadcastRecord) {
        int i = broadcastRecord.nextReceiver - 1;
        if (i >= 0 && i < broadcastRecord.receivers.size()) {
            Object obj = broadcastRecord.receivers.get(i);
            if (obj instanceof BroadcastFilter) {
                BroadcastFilter broadcastFilter = (BroadcastFilter) obj;
                EventLog.writeEvent(30024, Integer.valueOf(broadcastFilter.owningUserId), Integer.valueOf(System.identityHashCode(broadcastRecord)), broadcastRecord.intent.getAction(), Integer.valueOf(i), Integer.valueOf(System.identityHashCode(broadcastFilter)));
                return;
            } else {
                ResolveInfo resolveInfo = (ResolveInfo) obj;
                EventLog.writeEvent(30025, Integer.valueOf(UserHandle.getUserId(resolveInfo.activityInfo.applicationInfo.uid)), Integer.valueOf(System.identityHashCode(broadcastRecord)), broadcastRecord.intent.getAction(), Integer.valueOf(i), resolveInfo.toString());
                return;
            }
        }
        if (i < 0) {
            Slog.w("BroadcastQueue", "Discarding broadcast before first receiver is invoked: " + broadcastRecord);
        }
        EventLog.writeEvent(30025, -1, Integer.valueOf(System.identityHashCode(broadcastRecord)), broadcastRecord.intent.getAction(), Integer.valueOf(broadcastRecord.nextReceiver), "NONE");
    }

    public final String createBroadcastTraceTitle(BroadcastRecord broadcastRecord, int i) {
        Object[] objArr = new Object[4];
        objArr[0] = i == 0 ? "in queue" : "dispatched";
        String str = broadcastRecord.callerPackage;
        if (str == null) {
            str = "";
        }
        objArr[1] = str;
        ProcessRecord processRecord = broadcastRecord.callerApp;
        objArr[2] = processRecord == null ? "process unknown" : processRecord.toShortString();
        Intent intent = broadcastRecord.intent;
        objArr[3] = intent != null ? intent.getAction() : "";
        return TextUtils.formatSimple("Broadcast %s from %s (%s) %s", objArr);
    }

    @Override // com.android.server.am.BroadcastQueue
    /* renamed from: isIdleLocked, reason: merged with bridge method [inline-methods] */
    public boolean lambda$waitForIdle$1() {
        return this.mParallelBroadcasts.isEmpty() && this.mDispatcher.isIdle() && this.mPendingBroadcast == null;
    }

    /* renamed from: isBeyondBarrierLocked, reason: merged with bridge method [inline-methods] */
    public boolean lambda$waitForBarrier$2(long j) {
        if (lambda$waitForIdle$1()) {
            return true;
        }
        for (int i = 0; i < this.mParallelBroadcasts.size(); i++) {
            if (((BroadcastRecord) this.mParallelBroadcasts.get(i)).enqueueTime <= j) {
                return false;
            }
        }
        BroadcastRecord pendingBroadcastLocked = getPendingBroadcastLocked();
        if (pendingBroadcastLocked == null || pendingBroadcastLocked.enqueueTime > j) {
            return this.mDispatcher.isBeyondBarrier(j);
        }
        return false;
    }

    /* renamed from: isDispatchedLocked, reason: merged with bridge method [inline-methods] */
    public boolean lambda$waitForDispatched$3(Intent intent) {
        if (lambda$waitForIdle$1()) {
            return true;
        }
        for (int i = 0; i < this.mParallelBroadcasts.size(); i++) {
            if (intent.filterEquals(((BroadcastRecord) this.mParallelBroadcasts.get(i)).intent)) {
                return false;
            }
        }
        BroadcastRecord pendingBroadcastLocked = getPendingBroadcastLocked();
        if (pendingBroadcastLocked == null || !intent.filterEquals(pendingBroadcastLocked.intent)) {
            return this.mDispatcher.isDispatched(intent);
        }
        return false;
    }

    @Override // com.android.server.am.BroadcastQueue
    public void waitForIdle(PrintWriter printWriter) {
        waitFor(new BooleanSupplier() { // from class: com.android.server.am.BroadcastQueueImpl$$ExternalSyntheticLambda2
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean lambda$waitForIdle$1;
                lambda$waitForIdle$1 = BroadcastQueueImpl.this.lambda$waitForIdle$1();
                return lambda$waitForIdle$1;
            }
        }, printWriter, "idle");
    }

    @Override // com.android.server.am.BroadcastQueue
    public void waitForBarrier(PrintWriter printWriter) {
        final long uptimeMillis = SystemClock.uptimeMillis();
        waitFor(new BooleanSupplier() { // from class: com.android.server.am.BroadcastQueueImpl$$ExternalSyntheticLambda1
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean lambda$waitForBarrier$2;
                lambda$waitForBarrier$2 = BroadcastQueueImpl.this.lambda$waitForBarrier$2(uptimeMillis);
                return lambda$waitForBarrier$2;
            }
        }, printWriter, "barrier");
    }

    @Override // com.android.server.am.BroadcastQueue
    public void waitForDispatched(final Intent intent, PrintWriter printWriter) {
        waitFor(new BooleanSupplier() { // from class: com.android.server.am.BroadcastQueueImpl$$ExternalSyntheticLambda3
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean lambda$waitForDispatched$3;
                lambda$waitForDispatched$3 = BroadcastQueueImpl.this.lambda$waitForDispatched$3(intent);
                return lambda$waitForDispatched$3;
            }
        }, printWriter, "dispatch");
    }

    public final void waitFor(BooleanSupplier booleanSupplier, PrintWriter printWriter, String str) {
        long j = 0;
        while (true) {
            ActivityManagerService activityManagerService = this.mService;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    if (booleanSupplier.getAsBoolean()) {
                        break;
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            long uptimeMillis = SystemClock.uptimeMillis();
            if (uptimeMillis >= 1000 + j) {
                String str2 = "Queue [" + this.mQueueName + "] waiting for " + str + " condition; state is " + describeStateLocked();
                Slog.v("BroadcastQueue", str2);
                if (printWriter != null) {
                    printWriter.println(str2);
                    printWriter.flush();
                }
                j = uptimeMillis;
            }
            cancelDeferrals();
            SystemClock.sleep(100L);
        }
        String str3 = "Queue [" + this.mQueueName + "] reached " + str + " condition";
        Slog.v("BroadcastQueue", str3);
        if (printWriter != null) {
            printWriter.println(str3);
            printWriter.flush();
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public void cancelDeferrals() {
        ActivityManagerService activityManagerService = this.mService;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                this.mDispatcher.cancelDeferralsLocked();
                scheduleBroadcastsLocked();
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    @Override // com.android.server.am.BroadcastQueue
    public String describeStateLocked() {
        return this.mParallelBroadcasts.size() + " parallel; " + this.mDispatcher.describeStateLocked();
    }

    @Override // com.android.server.am.BroadcastQueue
    @NeverCompile
    public void dumpDebug(ProtoOutputStream protoOutputStream, long j) {
        long start = protoOutputStream.start(j);
        protoOutputStream.write(1138166333441L, this.mQueueName);
        for (int size = this.mParallelBroadcasts.size() - 1; size >= 0; size--) {
            ((BroadcastRecord) this.mParallelBroadcasts.get(size)).dumpDebug(protoOutputStream, 2246267895810L);
        }
        this.mDispatcher.dumpDebug(protoOutputStream, 2246267895811L);
        BroadcastRecord broadcastRecord = this.mPendingBroadcast;
        if (broadcastRecord != null) {
            broadcastRecord.dumpDebug(protoOutputStream, 1146756268036L);
        }
        this.mHistory.dumpDebug(protoOutputStream);
        protoOutputStream.end(start);
    }

    @Override // com.android.server.am.BroadcastQueue
    @NeverCompile
    public boolean dumpLocked(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i, boolean z, boolean z2, boolean z3, String str, boolean z4) {
        boolean z5;
        BroadcastRecord broadcastRecord;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        if (this.mParallelBroadcasts.isEmpty() && this.mDispatcher.isEmpty() && this.mPendingBroadcast == null) {
            z5 = z4;
        } else {
            boolean z6 = false;
            boolean z7 = z4;
            for (int size = this.mParallelBroadcasts.size() - 1; size >= 0; size--) {
                BroadcastRecord broadcastRecord2 = (BroadcastRecord) this.mParallelBroadcasts.get(size);
                if (str == null || str.equals(broadcastRecord2.callerPackage)) {
                    if (!z6) {
                        if (z7) {
                            printWriter.println();
                        }
                        printWriter.println("  Active broadcasts [" + this.mQueueName + "]:");
                        z7 = true;
                        z6 = true;
                    }
                    printWriter.println("  Active Broadcast " + this.mQueueName + " #" + size + XmlUtils.STRING_ARRAY_SEPARATOR);
                    broadcastRecord2.dump(printWriter, "    ", simpleDateFormat);
                }
            }
            this.mDispatcher.dumpLocked(printWriter, str, this.mQueueName, simpleDateFormat);
            if (str == null || ((broadcastRecord = this.mPendingBroadcast) != null && str.equals(broadcastRecord.callerPackage))) {
                printWriter.println();
                printWriter.println("  Pending broadcast [" + this.mQueueName + "]:");
                BroadcastRecord broadcastRecord3 = this.mPendingBroadcast;
                if (broadcastRecord3 != null) {
                    broadcastRecord3.dump(printWriter, "    ", simpleDateFormat);
                } else {
                    printWriter.println("    (null)");
                }
                z5 = true;
            } else {
                z5 = z7;
            }
        }
        if (z) {
            this.mConstants.dump(new IndentingPrintWriter(printWriter));
        }
        return z2 ? this.mHistory.dumpLocked(printWriter, str, this.mQueueName, simpleDateFormat, z3, z5) : z5;
    }
}
