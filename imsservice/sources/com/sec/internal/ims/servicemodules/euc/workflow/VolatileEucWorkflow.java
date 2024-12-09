package com.sec.internal.ims.servicemodules.euc.workflow;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.servicemodules.euc.data.EucMessageKey;
import com.sec.internal.ims.servicemodules.euc.data.EucResponseData;
import com.sec.internal.ims.servicemodules.euc.data.EucSendResponseStatus;
import com.sec.internal.ims.servicemodules.euc.data.EucState;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;
import com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager;
import com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException;
import com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence;
import com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class VolatileEucWorkflow extends BaseEucWorkflow {
    private static final String INTENT_EUCR_VOLATILE_TIMEOUT = "com.sec.internal.ims.servicemodules.euc.workflow.action.VOLATILE_TIMEOUT";
    private static final String LOG_TAG = "VolatileEucWorkflow";
    private BroadcastReceiver mBroadcastReceiver;
    private final Context mContext;
    private Pair<PendingIntent, IEucData> mCurrentAlarm;
    private final IEucFactory mEucFactory;
    private final Handler mHandler;

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow, com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public /* bridge */ /* synthetic */ void discard(String str) {
        super.discard(str);
    }

    public VolatileEucWorkflow(Context context, Handler handler, IEucPersistence iEucPersistence, IEucDisplayManager iEucDisplayManager, IEucStoreAndForward iEucStoreAndForward, IEucFactory iEucFactory) {
        super(iEucPersistence, iEucDisplayManager, iEucStoreAndForward);
        this.mCurrentAlarm = null;
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.servicemodules.euc.workflow.VolatileEucWorkflow.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Log.d(VolatileEucWorkflow.LOG_TAG, "onReceive: EUCR Volatile intent: " + intent.getAction());
                if (VolatileEucWorkflow.INTENT_EUCR_VOLATILE_TIMEOUT.equals(intent.getAction())) {
                    Log.i(VolatileEucWorkflow.LOG_TAG, "onReceive: EUCR Volatile message timeout.");
                    onEucrVolatileTimeout();
                }
            }

            private void onEucrVolatileTimeout() {
                VolatileEucWorkflow volatileEucWorkflow = VolatileEucWorkflow.this;
                volatileEucWorkflow.timeoutMessage((IEucData) volatileEucWorkflow.mCurrentAlarm.second);
                VolatileEucWorkflow.this.unscheduleCurrentAlarmTimerIntent();
                VolatileEucWorkflow.this.scheduleNextAlarmTimerIntent(null);
            }
        };
        this.mContext = context;
        this.mHandler = handler;
        this.mEucFactory = (IEucFactory) Preconditions.checkNotNull(iEucFactory);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow, com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public void start() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_EUCR_VOLATILE_TIMEOUT);
        this.mContext.registerReceiver(this.mBroadcastReceiver, intentFilter, null, this.mHandler);
        Log.d(LOG_TAG, "Receiver registered.");
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow, com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public void stop() {
        this.mContext.unregisterReceiver(this.mBroadcastReceiver);
        Log.d(LOG_TAG, "Receiver unregistered.");
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public void load(String str) {
        this.mOwnIdentities.add(str);
        EucType eucType = EucType.VOLATILE;
        List<EucType> singletonList = Collections.singletonList(eucType);
        try {
            for (IEucData iEucData : this.mEucPersistence.getAllEucs(Arrays.asList(EucState.ACCEPTED_NOT_SENT, EucState.REJECTED_NOT_SENT), eucType, str)) {
                if (isMessageTimedOut(iEucData).booleanValue()) {
                    timeoutMessage(iEucData);
                } else if (iEucData.getState() == EucState.ACCEPTED_NOT_SENT) {
                    sendResponse(iEucData, EucResponseData.Response.ACCEPT, iEucData.getUserPin());
                } else if (iEucData.getState() == EucState.REJECTED_NOT_SENT) {
                    sendResponse(iEucData, EucResponseData.Response.DECLINE, iEucData.getUserPin());
                }
            }
        } catch (EucPersistenceException e) {
            Log.e(LOG_TAG, "Unable to obtain EUCs from persistence: " + e);
        }
        try {
            IEucPersistence iEucPersistence = this.mEucPersistence;
            EucState eucState = EucState.NONE;
            Iterable<IEucQuery> combine = this.mEucFactory.combine(iEucPersistence.getAllEucs(eucState, EucType.VOLATILE, str), this.mEucPersistence.getDialogsByTypes(eucState, singletonList, this.mLanguageCode, str));
            Iterator<IEucQuery> it = combine.iterator();
            while (it.hasNext()) {
                IEucData eucData = it.next().getEucData();
                if (isMessageTimedOut(eucData).booleanValue()) {
                    timeoutMessage(eucData);
                }
            }
            scheduleNextAlarmTimerIntent(null);
            loadToCache(combine);
            displayQueries(combine, this.mLanguageCode);
        } catch (EucPersistenceException e2) {
            Log.e(LOG_TAG, "Unable to obtain EUCs from persistence: " + e2);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IEucWorkflow
    public void handleIncomingEuc(IEucQuery iEucQuery) {
        IEucData eucData = iEucQuery.getEucData();
        Log.d(LOG_TAG, "handleIncomingEuc with id=" + eucData.getKey());
        try {
            this.mEucPersistence.insertEuc(eucData);
            this.mEucPersistence.insertDialogs(iEucQuery);
        } catch (EucPersistenceException e) {
            Log.e(LOG_TAG, "Unable to store EUC with key=" + eucData.getKey() + " in persistence: " + e);
        }
        if (eucData.getTimeOut().longValue() > System.currentTimeMillis()) {
            this.mCache.put(iEucQuery);
            scheduleNextAlarmTimerIntent(eucData);
            this.mDisplayManager.display(iEucQuery, this.mLanguageCode, createDisplayManagerRequestCallback(iEucQuery));
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IEucWorkflow
    public void changeLanguage(String str) {
        this.mLanguageCode = str;
        changeLanguage(str, EucType.VOLATILE);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow
    public IEucStoreAndForward.IResponseCallback createSendResponseCallback() {
        return new IEucStoreAndForward.IResponseCallback() { // from class: com.sec.internal.ims.servicemodules.euc.workflow.VolatileEucWorkflow.2
            @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward.IResponseCallback
            public void onStatus(EucSendResponseStatus eucSendResponseStatus) {
                EucSendResponseStatus.Status status = eucSendResponseStatus.getStatus();
                String id = eucSendResponseStatus.getId();
                String ownIdentity = eucSendResponseStatus.getOwnIdentity();
                EucMessageKey eucMessageKey = new EucMessageKey(id, ownIdentity, EucType.VOLATILE, eucSendResponseStatus.getRemoteUri());
                try {
                    IEucData eucByKey = VolatileEucWorkflow.this.mEucPersistence.getEucByKey(eucMessageKey);
                    if (eucByKey != null) {
                        int i = AnonymousClass3.$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status[status.ordinal()];
                        if (i != 1) {
                            if (i == 2) {
                                Log.e(VolatileEucWorkflow.LOG_TAG, "Network error. Message will not be send");
                                VolatileEucWorkflow.this.mEucPersistence.updateEuc(eucMessageKey, EucState.FAILED, null);
                                reschedule(eucMessageKey);
                                return;
                            } else {
                                if (i != 3) {
                                    return;
                                }
                                Log.e(VolatileEucWorkflow.LOG_TAG, "Internal error. Msg will be send on a new regi for identity: " + IMSLog.checker(ownIdentity));
                                return;
                            }
                        }
                        EucState state = eucByKey.getState();
                        int i2 = AnonymousClass3.$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState[state.ordinal()];
                        if (i2 == 1) {
                            VolatileEucWorkflow.this.mEucPersistence.updateEuc(eucMessageKey, EucState.ACCEPTED, null);
                            reschedule(eucMessageKey);
                            return;
                        }
                        if (i2 == 2) {
                            VolatileEucWorkflow.this.mEucPersistence.updateEuc(eucMessageKey, EucState.REJECTED, null);
                            reschedule(eucMessageKey);
                            return;
                        }
                        Log.e(VolatileEucWorkflow.LOG_TAG, "Wrong state: " + state.getId() + " for EUCR with id=" + id);
                        IMSLog.s(VolatileEucWorkflow.LOG_TAG, "Wrong state: " + state.getId() + " for EUCR with key=" + eucMessageKey);
                        throw new IllegalStateException("Illegal volatile EUC state!");
                    }
                    Log.e(VolatileEucWorkflow.LOG_TAG, "EUCR with id=" + id + " was not found!");
                    IMSLog.s(VolatileEucWorkflow.LOG_TAG, "EUCR with key=" + eucMessageKey + " was not found!");
                } catch (EucPersistenceException unused) {
                    Log.e(VolatileEucWorkflow.LOG_TAG, "Unable to change EUCs state in persistence for EUCR with id=" + id);
                    IMSLog.s(VolatileEucWorkflow.LOG_TAG, "Unable to change EUCs state in persistence for EUCR with key=" + eucMessageKey);
                }
            }

            private void reschedule(EucMessageKey eucMessageKey) {
                if (VolatileEucWorkflow.this.mCurrentAlarm == null || !eucMessageKey.equals(((IEucData) VolatileEucWorkflow.this.mCurrentAlarm.second).getKey())) {
                    return;
                }
                VolatileEucWorkflow.this.unscheduleCurrentAlarmTimerIntent();
                VolatileEucWorkflow.this.scheduleNextAlarmTimerIntent(null);
            }
        };
    }

    /* renamed from: com.sec.internal.ims.servicemodules.euc.workflow.VolatileEucWorkflow$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState;

        static {
            int[] iArr = new int[EucSendResponseStatus.Status.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status = iArr;
            try {
                iArr[EucSendResponseStatus.Status.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status[EucSendResponseStatus.Status.FAILURE_NETWORK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status[EucSendResponseStatus.Status.FAILURE_INTERNAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[EucState.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState = iArr2;
            try {
                iArr2[EucState.ACCEPTED_NOT_SENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState[EucState.REJECTED_NOT_SENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void timeoutMessage(IEucData iEucData) {
        EucMessageKey key = iEucData.getKey();
        String id = iEucData.getId();
        String str = LOG_TAG;
        Log.i(str, "Timeout message with id=" + id);
        IMSLog.s(str, "Timeout message with key=" + key);
        if (!this.mHandleMap.containsKey(key)) {
            this.mDisplayManager.hide(key);
        } else {
            this.mHandleMap.get(key).invalidate();
        }
        try {
            try {
                this.mEucPersistence.updateEuc(key, EucState.TIMED_OUT, null);
            } catch (EucPersistenceException unused) {
                String str2 = LOG_TAG;
                Log.e(str2, "Unable to change EUCs state in persistence for EUCR with id=" + id);
                IMSLog.s(str2, "Unable to change EUCs state in persistence for EUCR with key=" + key);
            }
        } finally {
            this.mCache.remove(key);
        }
    }

    private Boolean isMessageTimedOut(IEucData iEucData) {
        return Boolean.valueOf(getRemainingTimeout(iEucData) < 0);
    }

    private long getRemainingTimeout(IEucData iEucData) {
        return iEucData.getTimeOut().longValue() - System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleNextAlarmTimerIntent(IEucData iEucData) {
        if (iEucData == null) {
            try {
                iEucData = this.mEucPersistence.getVolatileEucByMostRecentTimeout(this.mOwnIdentities);
            } catch (EucPersistenceException e) {
                Log.e(LOG_TAG, "Unable to obtain EUCs from persistence: " + e);
            }
        }
        if (iEucData != null) {
            Pair<PendingIntent, IEucData> pair = this.mCurrentAlarm;
            if (pair != null) {
                if (getRemainingTimeout((IEucData) pair.second) <= getRemainingTimeout(iEucData)) {
                    return;
                } else {
                    unscheduleCurrentAlarmTimerIntent();
                }
            }
            Pair<PendingIntent, IEucData> create = Pair.create(PendingIntent.getBroadcast(this.mContext, 0, new Intent(INTENT_EUCR_VOLATILE_TIMEOUT), 33554432), iEucData);
            this.mCurrentAlarm = create;
            AlarmTimer.start(this.mContext, (PendingIntent) create.first, getRemainingTimeout(iEucData));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unscheduleCurrentAlarmTimerIntent() {
        AlarmTimer.stop(this.mContext, (PendingIntent) this.mCurrentAlarm.first);
        this.mCurrentAlarm = null;
    }
}
