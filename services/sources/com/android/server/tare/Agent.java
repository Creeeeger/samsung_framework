package com.android.server.tare;

import android.content.Context;
import android.content.pm.UserPackage;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArraySet;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArrayMap;
import android.util.SparseSetArray;
import android.util.TimeUtils;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.LocalServices;
import com.android.server.backup.BackupManagerConstants;
import com.android.server.pm.UserManagerInternal;
import com.android.server.tare.EconomicPolicy;
import com.android.server.tare.EconomyManagerInternal;
import com.android.server.tare.Ledger;
import com.android.server.usage.AppStandbyInternal;
import com.android.server.utils.AlarmQueue;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public class Agent {
    public static final boolean DEBUG;
    public static final String TAG;
    public final Analyst mAnalyst;
    public final BalanceThresholdAlarmQueue mBalanceThresholdAlarmQueue;
    public final InternalResourceService mIrs;
    public final Object mLock;
    public final Scribe mScribe;
    public final SparseArrayMap mCurrentOngoingEvents = new SparseArrayMap();
    public final SparseArrayMap mActionAffordabilityNotes = new SparseArrayMap();
    public final TotalDeltaCalculator mTotalDeltaCalculator = new TotalDeltaCalculator();
    public final TrendCalculator mTrendCalculator = new TrendCalculator();
    public final OngoingEventUpdater mOngoingEventUpdater = new OngoingEventUpdater();
    public final Handler mHandler = new AgentHandler(TareHandlerThread.get().getLooper());
    public final AppStandbyInternal mAppStandbyInternal = (AppStandbyInternal) LocalServices.getService(AppStandbyInternal.class);

    static {
        String str = "TARE-" + Agent.class.getSimpleName();
        TAG = str;
        DEBUG = InternalResourceService.DEBUG || Log.isLoggable(str, 3);
    }

    public Agent(InternalResourceService internalResourceService, Scribe scribe, Analyst analyst) {
        this.mLock = internalResourceService.getLock();
        this.mIrs = internalResourceService;
        this.mScribe = scribe;
        this.mAnalyst = analyst;
        this.mBalanceThresholdAlarmQueue = new BalanceThresholdAlarmQueue(internalResourceService.getContext(), TareHandlerThread.get().getLooper());
    }

    /* loaded from: classes3.dex */
    public class TotalDeltaCalculator implements Consumer {
        public Ledger mLedger;
        public long mNow;
        public long mNowElapsed;
        public long mTotal;

        public TotalDeltaCalculator() {
        }

        public void reset(Ledger ledger, long j, long j2) {
            this.mLedger = ledger;
            this.mNowElapsed = j;
            this.mNow = j2;
            this.mTotal = 0L;
        }

        @Override // java.util.function.Consumer
        public void accept(OngoingEvent ongoingEvent) {
            this.mTotal += Agent.this.getActualDeltaLocked(ongoingEvent, this.mLedger, this.mNowElapsed, this.mNow).price;
        }
    }

    public long getBalanceLocked(int i, String str) {
        Ledger ledgerLocked = this.mScribe.getLedgerLocked(i, str);
        long currentBalance = ledgerLocked.getCurrentBalance();
        SparseArrayMap sparseArrayMap = (SparseArrayMap) this.mCurrentOngoingEvents.get(i, str);
        if (sparseArrayMap == null) {
            return currentBalance;
        }
        this.mTotalDeltaCalculator.reset(ledgerLocked, SystemClock.elapsedRealtime(), TareUtils.getCurrentTimeMillis());
        sparseArrayMap.forEach(this.mTotalDeltaCalculator);
        return currentBalance + this.mTotalDeltaCalculator.mTotal;
    }

    public final boolean isAffordableLocked(long j, long j2, long j3) {
        return j >= j2 && this.mScribe.getRemainingConsumableCakesLocked() >= j3;
    }

    public void noteInstantaneousEventLocked(int i, String str, int i2, String str2) {
        if (this.mIrs.isSystem(i, str)) {
            return;
        }
        long currentTimeMillis = TareUtils.getCurrentTimeMillis();
        Ledger ledgerLocked = this.mScribe.getLedgerLocked(i, str);
        CompleteEconomicPolicy completeEconomicPolicyLocked = this.mIrs.getCompleteEconomicPolicyLocked();
        int eventType = EconomicPolicy.getEventType(i2);
        if (eventType == Integer.MIN_VALUE) {
            EconomicPolicy.Reward reward = completeEconomicPolicyLocked.getReward(i2);
            if (reward != null) {
                recordTransactionLocked(i, str, ledgerLocked, new Ledger.Transaction(currentTimeMillis, currentTimeMillis, i2, str2, Math.max(0L, Math.min(reward.maxDailyReward - ledgerLocked.get24HourSum(i2, currentTimeMillis), reward.instantReward)), 0L), true);
            }
        } else if (eventType == 1073741824) {
            EconomicPolicy.Cost costOfAction = completeEconomicPolicyLocked.getCostOfAction(i2, i, str);
            recordTransactionLocked(i, str, ledgerLocked, new Ledger.Transaction(currentTimeMillis, currentTimeMillis, i2, str2, -costOfAction.price, costOfAction.costToProduce), true);
        } else {
            Slog.w(TAG, "Unsupported event type: " + eventType);
        }
        scheduleBalanceCheckLocked(i, str);
    }

    public void noteOngoingEventLocked(int i, String str, int i2, String str2, long j) {
        noteOngoingEventLocked(i, str, i2, str2, j, true);
    }

    public final void noteOngoingEventLocked(int i, String str, int i2, String str2, long j, boolean z) {
        if (this.mIrs.isSystem(i, str)) {
            return;
        }
        SparseArrayMap sparseArrayMap = (SparseArrayMap) this.mCurrentOngoingEvents.get(i, str);
        if (sparseArrayMap == null) {
            sparseArrayMap = new SparseArrayMap();
            this.mCurrentOngoingEvents.add(i, str, sparseArrayMap);
        }
        OngoingEvent ongoingEvent = (OngoingEvent) sparseArrayMap.get(i2, str2);
        CompleteEconomicPolicy completeEconomicPolicyLocked = this.mIrs.getCompleteEconomicPolicyLocked();
        int eventType = EconomicPolicy.getEventType(i2);
        if (eventType == Integer.MIN_VALUE) {
            EconomicPolicy.Reward reward = completeEconomicPolicyLocked.getReward(i2);
            if (reward != null) {
                if (ongoingEvent == null) {
                    sparseArrayMap.add(i2, str2, new OngoingEvent(i2, str2, j, reward));
                } else {
                    ongoingEvent.refCount++;
                }
            }
        } else if (eventType == 1073741824) {
            EconomicPolicy.Cost costOfAction = completeEconomicPolicyLocked.getCostOfAction(i2, i, str);
            if (ongoingEvent == null) {
                sparseArrayMap.add(i2, str2, new OngoingEvent(i2, str2, j, costOfAction));
            } else {
                ongoingEvent.refCount++;
            }
        } else {
            Slog.w(TAG, "Unsupported event type: " + eventType);
        }
        if (z) {
            scheduleBalanceCheckLocked(i, str);
        }
    }

    public void onDeviceStateChangedLocked() {
        onPricingChangedLocked();
    }

    public void onPricingChangedLocked() {
        onAnythingChangedLocked(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onAppStatesChangedLocked(int r26, android.util.ArraySet r27) {
        /*
            r25 = this;
            r7 = r25
            r8 = r26
            long r9 = com.android.server.tare.TareUtils.getCurrentTimeMillis()
            long r11 = android.os.SystemClock.elapsedRealtime()
            com.android.server.tare.InternalResourceService r0 = r7.mIrs
            com.android.server.tare.CompleteEconomicPolicy r13 = r0.getCompleteEconomicPolicyLocked()
            r15 = 0
        L13:
            int r0 = r27.size()
            if (r15 >= r0) goto Lad
            r5 = r27
            java.lang.Object r0 = r5.valueAt(r15)
            r6 = r0
            java.lang.String r6 = (java.lang.String) r6
            com.android.server.tare.InternalResourceService r0 = r7.mIrs
            boolean r16 = r0.isVip(r8, r6, r11)
            android.util.SparseArrayMap r0 = r7.mCurrentOngoingEvents
            java.lang.Object r0 = r0.get(r8, r6)
            r3 = r0
            android.util.SparseArrayMap r3 = (android.util.SparseArrayMap) r3
            if (r3 == 0) goto La5
            com.android.server.tare.Agent$OngoingEventUpdater r0 = r7.mOngoingEventUpdater
            r1 = r26
            r2 = r6
            r14 = r3
            r3 = r9
            r17 = r9
            r9 = r6
            r5 = r11
            com.android.server.tare.Agent.OngoingEventUpdater.m11609$$Nest$mreset(r0, r1, r2, r3, r5)
            com.android.server.tare.Agent$OngoingEventUpdater r0 = r7.mOngoingEventUpdater
            r14.forEach(r0)
            android.util.SparseArrayMap r0 = r7.mActionAffordabilityNotes
            java.lang.Object r0 = r0.get(r8, r9)
            r10 = r0
            android.util.ArraySet r10 = (android.util.ArraySet) r10
            if (r10 == 0) goto La1
            int r14 = r10.size()
            com.android.server.tare.Scribe r0 = r7.mScribe
            com.android.server.tare.Ledger r0 = r0.getLedgerLocked(r8, r9)
            long r19 = r0.getCurrentBalance()
            r5 = 0
        L60:
            if (r5 >= r14) goto La1
            java.lang.Object r0 = r10.valueAt(r5)
            r6 = r0
            com.android.server.tare.Agent$ActionAffordabilityNote r6 = (com.android.server.tare.Agent.ActionAffordabilityNote) r6
            r6.recalculateCosts(r13, r8, r9)
            if (r16 != 0) goto L89
            long r3 = com.android.server.tare.Agent.ActionAffordabilityNote.m11606$$Nest$mgetCachedModifiedPrice(r6)
            long r21 = com.android.server.tare.Agent.ActionAffordabilityNote.m11607$$Nest$mgetStockLimitHonoringCtp(r6)
            r0 = r25
            r1 = r19
            r23 = r5
            r24 = r6
            r5 = r21
            boolean r0 = r0.isAffordableLocked(r1, r3, r5)
            if (r0 == 0) goto L87
            goto L8d
        L87:
            r0 = 0
            goto L8e
        L89:
            r23 = r5
            r24 = r6
        L8d:
            r0 = 1
        L8e:
            boolean r1 = r24.isCurrentlyAffordable()
            if (r1 == r0) goto L9e
            r1 = r24
            com.android.server.tare.Agent.ActionAffordabilityNote.m11608$$Nest$msetNewAffordability(r1, r0)
            com.android.server.tare.InternalResourceService r0 = r7.mIrs
            r0.postAffordabilityChanged(r8, r9, r1)
        L9e:
            int r5 = r23 + 1
            goto L60
        La1:
            r7.scheduleBalanceCheckLocked(r8, r9)
            goto La7
        La5:
            r17 = r9
        La7:
            int r15 = r15 + 1
            r9 = r17
            goto L13
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.tare.Agent.onAppStatesChangedLocked(int, android.util.ArraySet):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onVipStatusChangedLocked(int r22, java.lang.String r23) {
        /*
            r21 = this;
            r7 = r21
            r8 = r22
            r9 = r23
            long r3 = com.android.server.tare.TareUtils.getCurrentTimeMillis()
            long r5 = android.os.SystemClock.elapsedRealtime()
            com.android.server.tare.InternalResourceService r0 = r7.mIrs
            com.android.server.tare.CompleteEconomicPolicy r10 = r0.getCompleteEconomicPolicyLocked()
            com.android.server.tare.InternalResourceService r0 = r7.mIrs
            boolean r11 = r0.isVip(r8, r9, r5)
            android.util.SparseArrayMap r0 = r7.mCurrentOngoingEvents
            java.lang.Object r0 = r0.get(r8, r9)
            r12 = r0
            android.util.SparseArrayMap r12 = (android.util.SparseArrayMap) r12
            if (r12 == 0) goto L33
            com.android.server.tare.Agent$OngoingEventUpdater r0 = r7.mOngoingEventUpdater
            r1 = r22
            r2 = r23
            com.android.server.tare.Agent.OngoingEventUpdater.m11609$$Nest$mreset(r0, r1, r2, r3, r5)
            com.android.server.tare.Agent$OngoingEventUpdater r0 = r7.mOngoingEventUpdater
            r12.forEach(r0)
        L33:
            android.util.SparseArrayMap r0 = r7.mActionAffordabilityNotes
            java.lang.Object r0 = r0.get(r8, r9)
            r12 = r0
            android.util.ArraySet r12 = (android.util.ArraySet) r12
            if (r12 == 0) goto L91
            int r13 = r12.size()
            com.android.server.tare.Scribe r0 = r7.mScribe
            com.android.server.tare.Ledger r0 = r0.getLedgerLocked(r8, r9)
            long r14 = r0.getCurrentBalance()
            r16 = 0
            r5 = r16
        L50:
            if (r5 >= r13) goto L91
            java.lang.Object r0 = r12.valueAt(r5)
            r6 = r0
            com.android.server.tare.Agent$ActionAffordabilityNote r6 = (com.android.server.tare.Agent.ActionAffordabilityNote) r6
            r6.recalculateCosts(r10, r8, r9)
            if (r11 != 0) goto L79
            long r3 = com.android.server.tare.Agent.ActionAffordabilityNote.m11606$$Nest$mgetCachedModifiedPrice(r6)
            long r17 = com.android.server.tare.Agent.ActionAffordabilityNote.m11607$$Nest$mgetStockLimitHonoringCtp(r6)
            r0 = r21
            r1 = r14
            r19 = r5
            r20 = r6
            r5 = r17
            boolean r0 = r0.isAffordableLocked(r1, r3, r5)
            if (r0 == 0) goto L76
            goto L7d
        L76:
            r0 = r16
            goto L7e
        L79:
            r19 = r5
            r20 = r6
        L7d:
            r0 = 1
        L7e:
            boolean r1 = r20.isCurrentlyAffordable()
            if (r1 == r0) goto L8e
            r1 = r20
            com.android.server.tare.Agent.ActionAffordabilityNote.m11608$$Nest$msetNewAffordability(r1, r0)
            com.android.server.tare.InternalResourceService r0 = r7.mIrs
            r0.postAffordabilityChanged(r8, r9, r1)
        L8e:
            int r5 = r19 + 1
            goto L50
        L91:
            r21.scheduleBalanceCheckLocked(r22, r23)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.tare.Agent.onVipStatusChangedLocked(int, java.lang.String):void");
    }

    public void onVipStatusChangedLocked(SparseSetArray sparseSetArray) {
        for (int size = sparseSetArray.size() - 1; size >= 0; size--) {
            int keyAt = sparseSetArray.keyAt(size);
            for (int sizeAt = sparseSetArray.sizeAt(size) - 1; sizeAt >= 0; sizeAt--) {
                onVipStatusChangedLocked(keyAt, (String) sparseSetArray.valueAt(size, sizeAt));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onAnythingChangedLocked(boolean r26) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.tare.Agent.onAnythingChangedLocked(boolean):void");
    }

    public void stopOngoingActionLocked(int i, String str, int i2, String str2, long j, long j2) {
        stopOngoingActionLocked(i, str, i2, str2, j, j2, true, true);
    }

    public final void stopOngoingActionLocked(int i, String str, int i2, String str2, long j, long j2, boolean z, boolean z2) {
        String str3;
        if (this.mIrs.isSystem(i, str)) {
            return;
        }
        Ledger ledgerLocked = this.mScribe.getLedgerLocked(i, str);
        SparseArrayMap sparseArrayMap = (SparseArrayMap) this.mCurrentOngoingEvents.get(i, str);
        if (sparseArrayMap == null) {
            Slog.w(TAG, "No ongoing transactions for " + TareUtils.appToString(i, str));
            return;
        }
        OngoingEvent ongoingEvent = (OngoingEvent) sparseArrayMap.get(i2, str2);
        if (ongoingEvent == null) {
            String str4 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Nonexistent ongoing transaction ");
            sb.append(EconomicPolicy.eventToString(i2));
            if (str2 == null) {
                str3 = "";
            } else {
                str3 = XmlUtils.STRING_ARRAY_SEPARATOR + str2;
            }
            sb.append(str3);
            sb.append(" for ");
            sb.append(TareUtils.appToString(i, str));
            sb.append(" ended");
            Slog.w(str4, sb.toString());
            return;
        }
        int i3 = ongoingEvent.refCount - 1;
        ongoingEvent.refCount = i3;
        if (i3 <= 0) {
            long j3 = j2 - (j - ongoingEvent.startTimeElapsed);
            EconomicPolicy.Cost actualDeltaLocked = getActualDeltaLocked(ongoingEvent, ledgerLocked, j, j2);
            recordTransactionLocked(i, str, ledgerLocked, new Ledger.Transaction(j3, j2, i2, str2, actualDeltaLocked.price, actualDeltaLocked.costToProduce), z2);
            sparseArrayMap.delete(i2, str2);
        }
        if (z) {
            scheduleBalanceCheckLocked(i, str);
        }
    }

    public final EconomicPolicy.Cost getActualDeltaLocked(OngoingEvent ongoingEvent, Ledger ledger, long j, long j2) {
        long j3 = (j - ongoingEvent.startTimeElapsed) / 1000;
        long deltaPerSec = ongoingEvent.getDeltaPerSec() * j3;
        if (ongoingEvent.reward == null) {
            return new EconomicPolicy.Cost(j3 * ongoingEvent.getCtpPerSec(), deltaPerSec);
        }
        return new EconomicPolicy.Cost(0L, Math.max(0L, Math.min(ongoingEvent.reward.maxDailyReward - ledger.get24HourSum(ongoingEvent.eventId, j2), deltaPerSec)));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x015b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void recordTransactionLocked(int r36, java.lang.String r37, com.android.server.tare.Ledger r38, com.android.server.tare.Ledger.Transaction r39, boolean r40) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.tare.Agent.recordTransactionLocked(int, java.lang.String, com.android.server.tare.Ledger, com.android.server.tare.Ledger$Transaction, boolean):void");
    }

    public void reclaimAllAssetsLocked(int i, String str, int i2) {
        Ledger ledgerLocked = this.mScribe.getLedgerLocked(i, str);
        long currentBalance = ledgerLocked.getCurrentBalance();
        if (currentBalance <= 0) {
            return;
        }
        if (DEBUG) {
            Slog.i(TAG, "Reclaiming " + TareUtils.cakeToString(currentBalance) + " from " + TareUtils.appToString(i, str) + " because of " + EconomicPolicy.eventToString(i2));
        }
        long currentTimeMillis = TareUtils.getCurrentTimeMillis();
        recordTransactionLocked(i, str, ledgerLocked, new Ledger.Transaction(currentTimeMillis, currentTimeMillis, i2, null, -currentBalance, 0L), true);
    }

    public void reclaimUnusedAssetsLocked(double d, long j, boolean z) {
        int i;
        int i2;
        int i3;
        long minBalanceLocked;
        CompleteEconomicPolicy completeEconomicPolicyLocked = this.mIrs.getCompleteEconomicPolicyLocked();
        SparseArrayMap ledgersLocked = this.mScribe.getLedgersLocked();
        long currentTimeMillis = TareUtils.getCurrentTimeMillis();
        int i4 = 0;
        while (i4 < ledgersLocked.numMaps()) {
            int keyAt = ledgersLocked.keyAt(i4);
            int i5 = 0;
            while (i5 < ledgersLocked.numElementsForKey(keyAt)) {
                Ledger ledger = (Ledger) ledgersLocked.valueAt(i4, i5);
                long currentBalance = ledger.getCurrentBalance();
                if (currentBalance > 0) {
                    String str = (String) ledgersLocked.keyAt(i4, i5);
                    if (this.mAppStandbyInternal.getTimeSinceLastUsedByUser(str, keyAt) >= j) {
                        if (!z) {
                            minBalanceLocked = completeEconomicPolicyLocked.getMinSatiatedBalance(keyAt, str);
                        } else {
                            minBalanceLocked = this.mIrs.getMinBalanceLocked(keyAt, str);
                        }
                        long j2 = (long) (currentBalance * d);
                        if (currentBalance - j2 < minBalanceLocked) {
                            j2 = currentBalance - minBalanceLocked;
                        }
                        if (j2 > 0) {
                            if (DEBUG) {
                                Slog.i(TAG, "Reclaiming unused wealth! Taking " + TareUtils.cakeToString(j2) + " from " + TareUtils.appToString(keyAt, str));
                            }
                            i = i5;
                            i2 = keyAt;
                            i3 = i4;
                            recordTransactionLocked(keyAt, str, ledger, new Ledger.Transaction(currentTimeMillis, currentTimeMillis, 2, null, -j2, 0L), true);
                            i5 = i + 1;
                            keyAt = i2;
                            i4 = i3;
                        }
                    }
                }
                i = i5;
                i2 = keyAt;
                i3 = i4;
                i5 = i + 1;
                keyAt = i2;
                i4 = i3;
            }
            i4++;
        }
    }

    public void onAppUnexemptedLocked(int i, String str) {
        if (getBalanceLocked(i, str) <= this.mIrs.getMinBalanceLocked(i, str)) {
            return;
        }
        long timeSinceLastUsedByUser = this.mAppStandbyInternal.getTimeSinceLastUsedByUser(str, i);
        long j = (long) ((r3 - r5) * (timeSinceLastUsedByUser < BackupManagerConstants.DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS ? 0.25d : timeSinceLastUsedByUser < 172800000 ? 0.5d : timeSinceLastUsedByUser < 259200000 ? 0.75d : 1.0d));
        if (j > 0) {
            if (DEBUG) {
                Slog.i(TAG, "Reclaiming bonus wealth! Taking " + j + " from " + TareUtils.appToString(i, str));
            }
            long currentTimeMillis = TareUtils.getCurrentTimeMillis();
            recordTransactionLocked(i, str, this.mScribe.getLedgerLocked(i, str), new Ledger.Transaction(currentTimeMillis, currentTimeMillis, 4, null, -j, 0L), true);
        }
    }

    public void onAppRestrictedLocked(int i, String str) {
        reclaimAllAssetsLocked(i, str, 5);
    }

    public void onAppUnrestrictedLocked(int i, String str) {
        Ledger ledgerLocked = this.mScribe.getLedgerLocked(i, str);
        if (ledgerLocked.getCurrentBalance() > 0) {
            Slog.wtf(TAG, "App " + str + " had credits while it was restricted");
            return;
        }
        long currentTimeMillis = TareUtils.getCurrentTimeMillis();
        recordTransactionLocked(i, str, ledgerLocked, new Ledger.Transaction(currentTimeMillis, currentTimeMillis, 6, null, this.mIrs.getMinBalanceLocked(i, str), 0L), true);
    }

    public final boolean shouldGiveCredits(InstalledPackageInfo installedPackageInfo) {
        if (!installedPackageInfo.hasCode) {
            return false;
        }
        int userId = UserHandle.getUserId(installedPackageInfo.uid);
        return (this.mIrs.isSystem(userId, installedPackageInfo.packageName) || this.mIrs.isPackageRestricted(userId, installedPackageInfo.packageName)) ? false : true;
    }

    public void onCreditSupplyChanged() {
        this.mHandler.sendEmptyMessage(0);
    }

    public void distributeBasicIncomeLocked(int i) {
        int i2;
        int i3;
        int i4;
        SparseArrayMap installedPackages = this.mIrs.getInstalledPackages();
        long currentTimeMillis = TareUtils.getCurrentTimeMillis();
        int numMaps = installedPackages.numMaps() - 1;
        while (numMaps >= 0) {
            int keyAt = installedPackages.keyAt(numMaps);
            int numElementsForKeyAt = installedPackages.numElementsForKeyAt(numMaps) - 1;
            while (numElementsForKeyAt >= 0) {
                InstalledPackageInfo installedPackageInfo = (InstalledPackageInfo) installedPackages.valueAt(numMaps, numElementsForKeyAt);
                if (shouldGiveCredits(installedPackageInfo)) {
                    String str = installedPackageInfo.packageName;
                    Ledger ledgerLocked = this.mScribe.getLedgerLocked(keyAt, str);
                    double d = i / 100.0d;
                    long minBalanceLocked = this.mIrs.getMinBalanceLocked(keyAt, str) - ledgerLocked.getCurrentBalance();
                    if (minBalanceLocked > 0) {
                        i2 = numElementsForKeyAt;
                        i3 = keyAt;
                        i4 = numMaps;
                        recordTransactionLocked(keyAt, str, ledgerLocked, new Ledger.Transaction(currentTimeMillis, currentTimeMillis, 0, null, (long) (d * minBalanceLocked), 0L), true);
                        numElementsForKeyAt = i2 - 1;
                        keyAt = i3;
                        numMaps = i4;
                    }
                }
                i2 = numElementsForKeyAt;
                i3 = keyAt;
                i4 = numMaps;
                numElementsForKeyAt = i2 - 1;
                keyAt = i3;
                numMaps = i4;
            }
            numMaps--;
        }
    }

    public void grantBirthrightsLocked() {
        for (int i : ((UserManagerInternal) LocalServices.getService(UserManagerInternal.class)).getUserIds()) {
            grantBirthrightsLocked(i);
        }
    }

    public void grantBirthrightsLocked(int i) {
        int i2;
        List installedPackages = this.mIrs.getInstalledPackages(i);
        long currentTimeMillis = TareUtils.getCurrentTimeMillis();
        int i3 = 0;
        while (i3 < installedPackages.size()) {
            InstalledPackageInfo installedPackageInfo = (InstalledPackageInfo) installedPackages.get(i3);
            if (shouldGiveCredits(installedPackageInfo)) {
                String str = installedPackageInfo.packageName;
                Ledger ledgerLocked = this.mScribe.getLedgerLocked(i, str);
                if (ledgerLocked.getCurrentBalance() > 0) {
                    Slog.wtf(TAG, "App " + str + " had credits before economy was set up");
                } else {
                    i2 = i3;
                    recordTransactionLocked(i, str, ledgerLocked, new Ledger.Transaction(currentTimeMillis, currentTimeMillis, 1, null, this.mIrs.getMinBalanceLocked(i, str), 0L), true);
                    i3 = i2 + 1;
                }
            }
            i2 = i3;
            i3 = i2 + 1;
        }
    }

    public void grantBirthrightLocked(int i, String str) {
        Ledger ledgerLocked = this.mScribe.getLedgerLocked(i, str);
        if (ledgerLocked.getCurrentBalance() > 0) {
            Slog.wtf(TAG, "App " + str + " had credits as soon as it was installed");
            return;
        }
        long currentTimeMillis = TareUtils.getCurrentTimeMillis();
        recordTransactionLocked(i, str, ledgerLocked, new Ledger.Transaction(currentTimeMillis, currentTimeMillis, 1, null, this.mIrs.getMinBalanceLocked(i, str), 0L), true);
    }

    public void onAppExemptedLocked(int i, String str) {
        long minBalanceLocked = this.mIrs.getMinBalanceLocked(i, str) - getBalanceLocked(i, str);
        if (minBalanceLocked <= 0) {
            return;
        }
        Ledger ledgerLocked = this.mScribe.getLedgerLocked(i, str);
        long currentTimeMillis = TareUtils.getCurrentTimeMillis();
        recordTransactionLocked(i, str, ledgerLocked, new Ledger.Transaction(currentTimeMillis, currentTimeMillis, 3, null, minBalanceLocked, 0L), true);
    }

    public void onPackageRemovedLocked(int i, String str) {
        this.mScribe.discardLedgerLocked(i, str);
        this.mCurrentOngoingEvents.delete(i, str);
        this.mBalanceThresholdAlarmQueue.removeAlarmForKey(UserPackage.of(i, str));
    }

    public void onUserRemovedLocked(int i) {
        this.mCurrentOngoingEvents.delete(i);
        this.mBalanceThresholdAlarmQueue.removeAlarmsForUserId(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class TrendCalculator implements Consumer {
        public long mCtpThreshold;
        public long mCurBalance;
        public long mLowerThreshold;
        public long mMaxDeltaPerSecToCtpThreshold;
        public long mMaxDeltaPerSecToLowerThreshold;
        public long mMaxDeltaPerSecToUpperThreshold;
        public long mRemainingConsumableCredits;
        public long mUpperThreshold;

        public void reset(long j, long j2, ArraySet arraySet) {
            this.mCurBalance = j;
            this.mRemainingConsumableCredits = j2;
            this.mMaxDeltaPerSecToLowerThreshold = 0L;
            this.mMaxDeltaPerSecToUpperThreshold = 0L;
            this.mMaxDeltaPerSecToCtpThreshold = 0L;
            this.mUpperThreshold = Long.MIN_VALUE;
            this.mLowerThreshold = Long.MAX_VALUE;
            this.mCtpThreshold = 0L;
            if (arraySet != null) {
                for (int i = 0; i < arraySet.size(); i++) {
                    ActionAffordabilityNote actionAffordabilityNote = (ActionAffordabilityNote) arraySet.valueAt(i);
                    long cachedModifiedPrice = actionAffordabilityNote.getCachedModifiedPrice();
                    if (cachedModifiedPrice <= this.mCurBalance) {
                        long j3 = this.mLowerThreshold;
                        if (j3 != Long.MAX_VALUE) {
                            cachedModifiedPrice = Math.max(j3, cachedModifiedPrice);
                        }
                        this.mLowerThreshold = cachedModifiedPrice;
                    } else {
                        long j4 = this.mUpperThreshold;
                        if (j4 != Long.MIN_VALUE) {
                            cachedModifiedPrice = Math.min(j4, cachedModifiedPrice);
                        }
                        this.mUpperThreshold = cachedModifiedPrice;
                    }
                    long stockLimitHonoringCtp = actionAffordabilityNote.getStockLimitHonoringCtp();
                    if (stockLimitHonoringCtp <= this.mRemainingConsumableCredits) {
                        this.mCtpThreshold = Math.max(this.mCtpThreshold, stockLimitHonoringCtp);
                    }
                }
            }
        }

        public long getTimeToCrossLowerThresholdMs() {
            long j = this.mMaxDeltaPerSecToLowerThreshold;
            if (j == 0 && this.mMaxDeltaPerSecToCtpThreshold == 0) {
                return -1L;
            }
            long j2 = j != 0 ? (this.mLowerThreshold - this.mCurBalance) / j : Long.MAX_VALUE;
            long j3 = this.mMaxDeltaPerSecToCtpThreshold;
            if (j3 != 0) {
                j2 = Math.min(j2, (this.mCtpThreshold - this.mRemainingConsumableCredits) / j3);
            }
            return j2 * 1000;
        }

        public long getTimeToCrossUpperThresholdMs() {
            long j = this.mMaxDeltaPerSecToUpperThreshold;
            if (j == 0) {
                return -1L;
            }
            return ((this.mUpperThreshold - this.mCurBalance) / j) * 1000;
        }

        @Override // java.util.function.Consumer
        public void accept(OngoingEvent ongoingEvent) {
            long deltaPerSec = ongoingEvent.getDeltaPerSec();
            long j = this.mCurBalance;
            if (j >= this.mLowerThreshold && deltaPerSec < 0) {
                this.mMaxDeltaPerSecToLowerThreshold += deltaPerSec;
            } else if (j < this.mUpperThreshold && deltaPerSec > 0) {
                this.mMaxDeltaPerSecToUpperThreshold += deltaPerSec;
            }
            long ctpPerSec = ongoingEvent.getCtpPerSec();
            if (this.mRemainingConsumableCredits < this.mCtpThreshold || deltaPerSec >= 0) {
                return;
            }
            this.mMaxDeltaPerSecToCtpThreshold -= ctpPerSec;
        }
    }

    public final void scheduleBalanceCheckLocked(int i, String str) {
        SparseArrayMap sparseArrayMap = (SparseArrayMap) this.mCurrentOngoingEvents.get(i, str);
        if (sparseArrayMap == null || this.mIrs.isVip(i, str)) {
            this.mBalanceThresholdAlarmQueue.removeAlarmForKey(UserPackage.of(i, str));
            return;
        }
        this.mTrendCalculator.reset(getBalanceLocked(i, str), this.mScribe.getRemainingConsumableCakesLocked(), (ArraySet) this.mActionAffordabilityNotes.get(i, str));
        sparseArrayMap.forEach(this.mTrendCalculator);
        long timeToCrossLowerThresholdMs = this.mTrendCalculator.getTimeToCrossLowerThresholdMs();
        long timeToCrossUpperThresholdMs = this.mTrendCalculator.getTimeToCrossUpperThresholdMs();
        if (timeToCrossLowerThresholdMs != -1) {
            if (timeToCrossUpperThresholdMs != -1) {
                timeToCrossLowerThresholdMs = Math.min(timeToCrossLowerThresholdMs, timeToCrossUpperThresholdMs);
            }
            timeToCrossUpperThresholdMs = timeToCrossLowerThresholdMs;
        } else if (timeToCrossUpperThresholdMs == -1) {
            this.mBalanceThresholdAlarmQueue.removeAlarmForKey(UserPackage.of(i, str));
            return;
        }
        this.mBalanceThresholdAlarmQueue.addAlarm(UserPackage.of(i, str), SystemClock.elapsedRealtime() + timeToCrossUpperThresholdMs);
    }

    public void tearDownLocked() {
        this.mCurrentOngoingEvents.clear();
        this.mBalanceThresholdAlarmQueue.removeAllAlarms();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class OngoingEvent {
        public final EconomicPolicy.Cost actionCost;
        public final int eventId;
        public int refCount;
        public final EconomicPolicy.Reward reward;
        public final long startTimeElapsed;
        public final String tag;

        public OngoingEvent(int i, String str, long j, EconomicPolicy.Reward reward) {
            this.startTimeElapsed = j;
            this.eventId = i;
            this.tag = str;
            this.reward = reward;
            this.actionCost = null;
            this.refCount = 1;
        }

        public OngoingEvent(int i, String str, long j, EconomicPolicy.Cost cost) {
            this.startTimeElapsed = j;
            this.eventId = i;
            this.tag = str;
            this.reward = null;
            this.actionCost = cost;
            this.refCount = 1;
        }

        public long getDeltaPerSec() {
            EconomicPolicy.Cost cost = this.actionCost;
            if (cost != null) {
                return -cost.price;
            }
            EconomicPolicy.Reward reward = this.reward;
            if (reward != null) {
                return reward.ongoingRewardPerSecond;
            }
            Slog.wtfStack(Agent.TAG, "No action or reward in ongoing event?!??!");
            return 0L;
        }

        public long getCtpPerSec() {
            EconomicPolicy.Cost cost = this.actionCost;
            if (cost != null) {
                return cost.costToProduce;
            }
            return 0L;
        }
    }

    /* loaded from: classes3.dex */
    public class OngoingEventUpdater implements Consumer {
        public long mNow;
        public long mNowElapsed;
        public String mPkgName;
        public int mUserId;

        public OngoingEventUpdater() {
        }

        public final void reset(int i, String str, long j, long j2) {
            this.mUserId = i;
            this.mPkgName = str;
            this.mNow = j;
            this.mNowElapsed = j2;
        }

        @Override // java.util.function.Consumer
        public void accept(OngoingEvent ongoingEvent) {
            Agent.this.stopOngoingActionLocked(this.mUserId, this.mPkgName, ongoingEvent.eventId, ongoingEvent.tag, this.mNowElapsed, this.mNow, false, false);
            Agent.this.noteOngoingEventLocked(this.mUserId, this.mPkgName, ongoingEvent.eventId, ongoingEvent.tag, this.mNowElapsed, false);
        }
    }

    /* loaded from: classes3.dex */
    public class BalanceThresholdAlarmQueue extends AlarmQueue {
        public BalanceThresholdAlarmQueue(Context context, Looper looper) {
            super(context, looper, "*tare.affordability_check*", "Affordability check", true, 15000L);
        }

        @Override // com.android.server.utils.AlarmQueue
        public boolean isForUser(UserPackage userPackage, int i) {
            return userPackage.userId == i;
        }

        @Override // com.android.server.utils.AlarmQueue
        public void processExpiredAlarms(ArraySet arraySet) {
            for (int i = 0; i < arraySet.size(); i++) {
                UserPackage userPackage = (UserPackage) arraySet.valueAt(i);
                Agent.this.mHandler.obtainMessage(1, userPackage.userId, 0, userPackage.packageName).sendToTarget();
            }
        }
    }

    public void registerAffordabilityChangeListenerLocked(int i, String str, EconomyManagerInternal.AffordabilityChangeListener affordabilityChangeListener, EconomyManagerInternal.ActionBill actionBill) {
        ArraySet arraySet = (ArraySet) this.mActionAffordabilityNotes.get(i, str);
        if (arraySet == null) {
            arraySet = new ArraySet();
            this.mActionAffordabilityNotes.add(i, str, arraySet);
        }
        CompleteEconomicPolicy completeEconomicPolicyLocked = this.mIrs.getCompleteEconomicPolicyLocked();
        ActionAffordabilityNote actionAffordabilityNote = new ActionAffordabilityNote(actionBill, affordabilityChangeListener, completeEconomicPolicyLocked);
        if (arraySet.add(actionAffordabilityNote)) {
            boolean z = true;
            if (this.mIrs.getEnabledMode() == 0) {
                actionAffordabilityNote.setNewAffordability(true);
                return;
            }
            boolean isVip = this.mIrs.isVip(i, str);
            actionAffordabilityNote.recalculateCosts(completeEconomicPolicyLocked, i, str);
            if (!isVip && !isAffordableLocked(getBalanceLocked(i, str), actionAffordabilityNote.getCachedModifiedPrice(), actionAffordabilityNote.getStockLimitHonoringCtp())) {
                z = false;
            }
            actionAffordabilityNote.setNewAffordability(z);
            this.mIrs.postAffordabilityChanged(i, str, actionAffordabilityNote);
            scheduleBalanceCheckLocked(i, str);
        }
    }

    public void unregisterAffordabilityChangeListenerLocked(int i, String str, EconomyManagerInternal.AffordabilityChangeListener affordabilityChangeListener, EconomyManagerInternal.ActionBill actionBill) {
        ArraySet arraySet = (ArraySet) this.mActionAffordabilityNotes.get(i, str);
        if (arraySet == null || !arraySet.remove(new ActionAffordabilityNote(actionBill, affordabilityChangeListener, this.mIrs.getCompleteEconomicPolicyLocked()))) {
            return;
        }
        scheduleBalanceCheckLocked(i, str);
    }

    /* loaded from: classes3.dex */
    public final class ActionAffordabilityNote {
        public final EconomyManagerInternal.ActionBill mActionBill;
        public boolean mIsAffordable;
        public final EconomyManagerInternal.AffordabilityChangeListener mListener;
        public long mModifiedPrice;
        public long mStockLimitHonoringCtp;

        public ActionAffordabilityNote(EconomyManagerInternal.ActionBill actionBill, EconomyManagerInternal.AffordabilityChangeListener affordabilityChangeListener, EconomicPolicy economicPolicy) {
            this.mActionBill = actionBill;
            List anticipatedActions = actionBill.getAnticipatedActions();
            for (int i = 0; i < anticipatedActions.size(); i++) {
                EconomyManagerInternal.AnticipatedAction anticipatedAction = (EconomyManagerInternal.AnticipatedAction) anticipatedActions.get(i);
                if (economicPolicy.getAction(anticipatedAction.actionId) == null) {
                    if ((anticipatedAction.actionId & 805306368) == 0) {
                        throw new IllegalArgumentException("Invalid action id: " + anticipatedAction.actionId);
                    }
                    Slog.w(Agent.TAG, "Tracking disabled policy's action? " + anticipatedAction.actionId);
                }
            }
            this.mListener = affordabilityChangeListener;
        }

        public EconomyManagerInternal.ActionBill getActionBill() {
            return this.mActionBill;
        }

        public EconomyManagerInternal.AffordabilityChangeListener getListener() {
            return this.mListener;
        }

        public final long getCachedModifiedPrice() {
            return this.mModifiedPrice;
        }

        public final long getStockLimitHonoringCtp() {
            return this.mStockLimitHonoringCtp;
        }

        public void recalculateCosts(EconomicPolicy economicPolicy, int i, String str) {
            EconomicPolicy economicPolicy2 = economicPolicy;
            List anticipatedActions = this.mActionBill.getAnticipatedActions();
            long j = 0;
            int i2 = 0;
            long j2 = 0;
            while (i2 < anticipatedActions.size()) {
                EconomyManagerInternal.AnticipatedAction anticipatedAction = (EconomyManagerInternal.AnticipatedAction) anticipatedActions.get(i2);
                EconomicPolicy.Action action = economicPolicy2.getAction(anticipatedAction.actionId);
                EconomicPolicy.Cost costOfAction = economicPolicy2.getCostOfAction(anticipatedAction.actionId, i, str);
                long j3 = costOfAction.price;
                int i3 = anticipatedAction.numInstantaneousCalls;
                List list = anticipatedActions;
                long j4 = anticipatedAction.ongoingDurationMs;
                j += (i3 * j3) + (j3 * (j4 / 1000));
                if (action.respectsStockLimit) {
                    long j5 = costOfAction.costToProduce;
                    j2 += (i3 * j5) + (j5 * (j4 / 1000));
                }
                i2++;
                economicPolicy2 = economicPolicy;
                anticipatedActions = list;
            }
            this.mModifiedPrice = j;
            this.mStockLimitHonoringCtp = j2;
        }

        public boolean isCurrentlyAffordable() {
            return this.mIsAffordable;
        }

        public final void setNewAffordability(boolean z) {
            this.mIsAffordable = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ActionAffordabilityNote)) {
                return false;
            }
            ActionAffordabilityNote actionAffordabilityNote = (ActionAffordabilityNote) obj;
            return this.mActionBill.equals(actionAffordabilityNote.mActionBill) && this.mListener.equals(actionAffordabilityNote.mListener);
        }

        public int hashCode() {
            return ((0 + Objects.hash(this.mListener)) * 31) + this.mActionBill.hashCode();
        }
    }

    /* loaded from: classes3.dex */
    public final class AgentHandler extends Handler {
        public AgentHandler(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0074 A[Catch: all -> 0x008c, TryCatch #1 {, blocks: (B:8:0x001b, B:10:0x0029, B:12:0x002f, B:13:0x0040, B:15:0x0046, B:17:0x004f, B:21:0x006e, B:23:0x0074, B:25:0x0082, B:30:0x0085, B:31:0x008a), top: B:7:0x001b }] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0082 A[SYNTHETIC] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void handleMessage(android.os.Message r21) {
            /*
                r20 = this;
                r0 = r20
                r1 = r21
                int r2 = r1.what
                r3 = 0
                if (r2 == 0) goto L8f
                r4 = 1
                if (r2 == r4) goto Le
                goto L9f
            Le:
                int r2 = r1.arg1
                java.lang.Object r1 = r1.obj
                java.lang.String r1 = (java.lang.String) r1
                com.android.server.tare.Agent r5 = com.android.server.tare.Agent.this
                java.lang.Object r5 = com.android.server.tare.Agent.m11598$$Nest$fgetmLock(r5)
                monitor-enter(r5)
                com.android.server.tare.Agent r6 = com.android.server.tare.Agent.this     // Catch: java.lang.Throwable -> L8c
                android.util.SparseArrayMap r6 = com.android.server.tare.Agent.m11595$$Nest$fgetmActionAffordabilityNotes(r6)     // Catch: java.lang.Throwable -> L8c
                java.lang.Object r6 = r6.get(r2, r1)     // Catch: java.lang.Throwable -> L8c
                android.util.ArraySet r6 = (android.util.ArraySet) r6     // Catch: java.lang.Throwable -> L8c
                if (r6 == 0) goto L85
                int r7 = r6.size()     // Catch: java.lang.Throwable -> L8c
                if (r7 <= 0) goto L85
                com.android.server.tare.Agent r7 = com.android.server.tare.Agent.this     // Catch: java.lang.Throwable -> L8c
                long r15 = r7.getBalanceLocked(r2, r1)     // Catch: java.lang.Throwable -> L8c
                com.android.server.tare.Agent r7 = com.android.server.tare.Agent.this     // Catch: java.lang.Throwable -> L8c
                com.android.server.tare.InternalResourceService r7 = com.android.server.tare.Agent.m11597$$Nest$fgetmIrs(r7)     // Catch: java.lang.Throwable -> L8c
                boolean r7 = r7.isVip(r2, r1)     // Catch: java.lang.Throwable -> L8c
                r13 = r3
            L40:
                int r8 = r6.size()     // Catch: java.lang.Throwable -> L8c
                if (r13 >= r8) goto L85
                java.lang.Object r8 = r6.valueAt(r13)     // Catch: java.lang.Throwable -> L8c
                r14 = r8
                com.android.server.tare.Agent$ActionAffordabilityNote r14 = (com.android.server.tare.Agent.ActionAffordabilityNote) r14     // Catch: java.lang.Throwable -> L8c
                if (r7 != 0) goto L69
                com.android.server.tare.Agent r8 = com.android.server.tare.Agent.this     // Catch: java.lang.Throwable -> L8c
                long r11 = com.android.server.tare.Agent.ActionAffordabilityNote.m11606$$Nest$mgetCachedModifiedPrice(r14)     // Catch: java.lang.Throwable -> L8c
                long r17 = com.android.server.tare.Agent.ActionAffordabilityNote.m11607$$Nest$mgetStockLimitHonoringCtp(r14)     // Catch: java.lang.Throwable -> L8c
                r9 = r15
                r19 = r13
                r21 = r14
                r13 = r17
                boolean r8 = com.android.server.tare.Agent.m11600$$Nest$misAffordableLocked(r8, r9, r11, r13)     // Catch: java.lang.Throwable -> L8c
                if (r8 == 0) goto L67
                goto L6d
            L67:
                r8 = r3
                goto L6e
            L69:
                r19 = r13
                r21 = r14
            L6d:
                r8 = r4
            L6e:
                boolean r9 = r21.isCurrentlyAffordable()     // Catch: java.lang.Throwable -> L8c
                if (r9 == r8) goto L82
                r9 = r21
                com.android.server.tare.Agent.ActionAffordabilityNote.m11608$$Nest$msetNewAffordability(r9, r8)     // Catch: java.lang.Throwable -> L8c
                com.android.server.tare.Agent r8 = com.android.server.tare.Agent.this     // Catch: java.lang.Throwable -> L8c
                com.android.server.tare.InternalResourceService r8 = com.android.server.tare.Agent.m11597$$Nest$fgetmIrs(r8)     // Catch: java.lang.Throwable -> L8c
                r8.postAffordabilityChanged(r2, r1, r9)     // Catch: java.lang.Throwable -> L8c
            L82:
                int r13 = r19 + 1
                goto L40
            L85:
                com.android.server.tare.Agent r0 = com.android.server.tare.Agent.this     // Catch: java.lang.Throwable -> L8c
                com.android.server.tare.Agent.m11603$$Nest$mscheduleBalanceCheckLocked(r0, r2, r1)     // Catch: java.lang.Throwable -> L8c
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L8c
                goto L9f
            L8c:
                r0 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L8c
                throw r0
            L8f:
                com.android.server.tare.Agent r1 = com.android.server.tare.Agent.this
                java.lang.Object r1 = com.android.server.tare.Agent.m11598$$Nest$fgetmLock(r1)
                monitor-enter(r1)
                r0.removeMessages(r3)     // Catch: java.lang.Throwable -> La0
                com.android.server.tare.Agent r0 = com.android.server.tare.Agent.this     // Catch: java.lang.Throwable -> La0
                com.android.server.tare.Agent.m11602$$Nest$monAnythingChangedLocked(r0, r3)     // Catch: java.lang.Throwable -> La0
                monitor-exit(r1)     // Catch: java.lang.Throwable -> La0
            L9f:
                return
            La0:
                r0 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> La0
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.tare.Agent.AgentHandler.handleMessage(android.os.Message):void");
        }
    }

    public void dumpLocked(IndentingPrintWriter indentingPrintWriter) {
        this.mBalanceThresholdAlarmQueue.dump(indentingPrintWriter);
        indentingPrintWriter.println();
        indentingPrintWriter.println("Ongoing events:");
        indentingPrintWriter.increaseIndent();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = 1;
        int numMaps = this.mCurrentOngoingEvents.numMaps() - 1;
        boolean z = false;
        while (numMaps >= 0) {
            int keyAt = this.mCurrentOngoingEvents.keyAt(numMaps);
            int numElementsForKey = this.mCurrentOngoingEvents.numElementsForKey(keyAt) - i;
            while (numElementsForKey >= 0) {
                String str = (String) this.mCurrentOngoingEvents.keyAt(numMaps, numElementsForKey);
                SparseArrayMap sparseArrayMap = (SparseArrayMap) this.mCurrentOngoingEvents.get(keyAt, str);
                int numMaps2 = sparseArrayMap.numMaps() - i;
                int i2 = 0;
                while (numMaps2 >= 0) {
                    int numElementsForKey2 = sparseArrayMap.numElementsForKey(sparseArrayMap.keyAt(numMaps2)) - i;
                    while (numElementsForKey2 >= 0) {
                        if (i2 == 0) {
                            indentingPrintWriter.println(TareUtils.appToString(keyAt, str));
                            indentingPrintWriter.increaseIndent();
                            i2 = i;
                        }
                        OngoingEvent ongoingEvent = (OngoingEvent) sparseArrayMap.valueAt(numMaps2, numElementsForKey2);
                        indentingPrintWriter.print(EconomicPolicy.eventToString(ongoingEvent.eventId));
                        if (ongoingEvent.tag != null) {
                            indentingPrintWriter.print("(");
                            indentingPrintWriter.print(ongoingEvent.tag);
                            indentingPrintWriter.print(")");
                        }
                        indentingPrintWriter.print(" runtime=");
                        TimeUtils.formatDuration(elapsedRealtime - ongoingEvent.startTimeElapsed, indentingPrintWriter);
                        indentingPrintWriter.print(" delta/sec=");
                        indentingPrintWriter.print(TareUtils.cakeToString(ongoingEvent.getDeltaPerSec()));
                        if (ongoingEvent.getCtpPerSec() != 0) {
                            indentingPrintWriter.print(" ctp/sec=");
                            indentingPrintWriter.print(TareUtils.cakeToString(ongoingEvent.getCtpPerSec()));
                        }
                        indentingPrintWriter.print(" refCount=");
                        indentingPrintWriter.print(ongoingEvent.refCount);
                        indentingPrintWriter.println();
                        numElementsForKey2--;
                        i = 1;
                        z = true;
                    }
                    numMaps2--;
                    i = 1;
                }
                if (i2 != 0) {
                    indentingPrintWriter.decreaseIndent();
                }
                numElementsForKey--;
                i = 1;
            }
            numMaps--;
            i = 1;
        }
        if (!z) {
            indentingPrintWriter.print("N/A");
        }
        indentingPrintWriter.decreaseIndent();
    }
}
