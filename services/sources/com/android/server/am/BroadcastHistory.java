package com.android.server.am;

import android.content.Intent;
import android.util.proto.ProtoOutputStream;
import dalvik.annotation.optimization.NeverCompile;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BroadcastHistory {
    public final int MAX_BROADCAST_HISTORY;
    public final int MAX_BROADCAST_SUMMARY_HISTORY;
    public final String[] mAbortedBroadcastHistory;
    public final BroadcastRecord[] mBroadcastHistory;
    public final Intent[] mBroadcastSummaryHistory;
    public final String[] mBroadcastSummaryHistoryToString;
    public final ActivityManagerService mService;
    public final long[] mSummaryHistoryDispatchTime;
    public final long[] mSummaryHistoryEnqueueTime;
    public final long[] mSummaryHistoryFinishTime;
    public static final int MAX_DELAYED_BROADCAST_HISTORY = BroadcastConstants.MAX_HISTORY_DELAYED_BROADCAST;
    public static final int MAX_ABORTED_BROADCAST_HISTORY = BroadcastConstants.MAX_HISTORY_ABORTED_BROADCAST;
    public final ArrayList mPendingBroadcasts = new ArrayList();
    public int mHistoryNext = 0;
    public int mSummaryHistoryNext = 0;
    public int mAbortedHistoryNext = 0;

    public final int ringAdvance(int i, int i2, int i3) {
        int i4 = i + i2;
        if (i4 < 0) {
            return i3 - 1;
        }
        if (i4 >= i3) {
            return 0;
        }
        return i4;
    }

    public BroadcastHistory(ActivityManagerService activityManagerService, BroadcastConstants broadcastConstants) {
        int i = broadcastConstants.MAX_HISTORY_COMPLETE_SIZE;
        this.MAX_BROADCAST_HISTORY = i;
        int i2 = broadcastConstants.MAX_HISTORY_SUMMARY_SIZE;
        this.MAX_BROADCAST_SUMMARY_HISTORY = i2;
        this.mBroadcastHistory = new BroadcastRecord[i];
        this.mBroadcastSummaryHistory = new Intent[i2];
        this.mSummaryHistoryEnqueueTime = new long[i2];
        this.mSummaryHistoryDispatchTime = new long[i2];
        this.mSummaryHistoryFinishTime = new long[i2];
        this.mBroadcastSummaryHistoryToString = new String[i2];
        this.mAbortedBroadcastHistory = new String[MAX_ABORTED_BROADCAST_HISTORY];
        this.mService = activityManagerService;
    }

    public void onBroadcastEnqueuedLocked(BroadcastRecord broadcastRecord) {
        this.mPendingBroadcasts.add(broadcastRecord);
    }

    public void onBroadcastFinishedLocked(BroadcastRecord broadcastRecord) {
        this.mPendingBroadcasts.remove(broadcastRecord);
        addBroadcastToHistoryLocked(broadcastRecord);
    }

    public void addBroadcastToHistoryLocked(BroadcastRecord broadcastRecord) {
        BroadcastRecord maybeStripForHistory = broadcastRecord.maybeStripForHistory();
        BroadcastRecord[] broadcastRecordArr = this.mBroadcastHistory;
        int i = this.mHistoryNext;
        broadcastRecordArr[i] = maybeStripForHistory;
        this.mHistoryNext = ringAdvance(i, 1, this.MAX_BROADCAST_HISTORY);
        this.mService.mExt.addBroadcastSummaryHistoryLocked(this, maybeStripForHistory);
        long[] jArr = this.mSummaryHistoryEnqueueTime;
        int i2 = this.mSummaryHistoryNext;
        jArr[i2] = maybeStripForHistory.enqueueClockTime;
        this.mSummaryHistoryDispatchTime[i2] = maybeStripForHistory.dispatchClockTime;
        this.mSummaryHistoryFinishTime[i2] = System.currentTimeMillis();
        this.mSummaryHistoryNext = ringAdvance(this.mSummaryHistoryNext, 1, this.MAX_BROADCAST_SUMMARY_HISTORY);
    }

    @NeverCompile
    public void dumpDebug(ProtoOutputStream protoOutputStream) {
        for (int i = 0; i < this.mPendingBroadcasts.size(); i++) {
            ((BroadcastRecord) this.mPendingBroadcasts.get(i)).dumpDebug(protoOutputStream, 2246267895815L);
        }
        int i2 = this.mHistoryNext;
        int i3 = i2;
        do {
            i3 = ringAdvance(i3, -1, this.MAX_BROADCAST_HISTORY);
            BroadcastRecord broadcastRecord = this.mBroadcastHistory[i3];
            if (broadcastRecord != null) {
                broadcastRecord.dumpDebug(protoOutputStream, 2246267895813L);
            }
        } while (i3 != i2);
        int i4 = this.mSummaryHistoryNext;
        int i5 = i4;
        do {
            i5 = ringAdvance(i5, -1, this.MAX_BROADCAST_SUMMARY_HISTORY);
            Intent intent = this.mBroadcastSummaryHistory[i5];
            if (intent != null) {
                long start = protoOutputStream.start(2246267895814L);
                intent.dumpDebug(protoOutputStream, 1146756268033L, false, true, true, false);
                protoOutputStream.write(1112396529666L, this.mSummaryHistoryEnqueueTime[i5]);
                protoOutputStream.write(1112396529667L, this.mSummaryHistoryDispatchTime[i5]);
                protoOutputStream.write(1112396529668L, this.mSummaryHistoryFinishTime[i5]);
                protoOutputStream.end(start);
            }
        } while (i5 != i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x010b A[EDGE_INSN: B:10:0x010b->B:11:0x010b BREAK  A[LOOP:0: B:5:0x004c->B:9:0x01fc], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x01fc A[LOOP:0: B:5:0x004c->B:9:0x01fc, LOOP_END] */
    @dalvik.annotation.optimization.NeverCompile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean dumpLocked(java.io.PrintWriter r20, java.lang.String r21, java.lang.String r22, java.text.SimpleDateFormat r23, boolean r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.BroadcastHistory.dumpLocked(java.io.PrintWriter, java.lang.String, java.lang.String, java.text.SimpleDateFormat, boolean, boolean):boolean");
    }
}
