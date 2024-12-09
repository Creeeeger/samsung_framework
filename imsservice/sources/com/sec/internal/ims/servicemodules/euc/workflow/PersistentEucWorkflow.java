package com.sec.internal.ims.servicemodules.euc.workflow;

import android.util.Log;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.servicemodules.euc.data.EucMessageKey;
import com.sec.internal.ims.servicemodules.euc.data.EucResponseData;
import com.sec.internal.ims.servicemodules.euc.data.EucSendResponseStatus;
import com.sec.internal.ims.servicemodules.euc.data.EucState;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.data.IDialogData;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;
import com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager;
import com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException;
import com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence;
import com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class PersistentEucWorkflow extends BaseEucWorkflow {
    private static final String LOG_TAG = "PersistentEucWorkflow";
    private final IEucFactory mEucFactory;

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow, com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public /* bridge */ /* synthetic */ void discard(String str) {
        super.discard(str);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow, com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow, com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    public PersistentEucWorkflow(IEucPersistence iEucPersistence, IEucDisplayManager iEucDisplayManager, IEucFactory iEucFactory, IEucStoreAndForward iEucStoreAndForward) {
        super(iEucPersistence, iEucDisplayManager, iEucStoreAndForward);
        this.mEucFactory = (IEucFactory) Preconditions.checkNotNull(iEucFactory);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public void load(String str) {
        this.mOwnIdentities.add(str);
        List<EucType> asList = Arrays.asList(EucType.PERSISTENT, EucType.ACKNOWLEDGEMENT);
        try {
            for (IEucData iEucData : this.mEucPersistence.getAllEucs(Arrays.asList(EucState.ACCEPTED_NOT_SENT, EucState.REJECTED_NOT_SENT, EucState.NONE), asList, str)) {
                if (iEucData.getState() == EucState.ACCEPTED_NOT_SENT) {
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
            Iterable<IEucQuery> combine = this.mEucFactory.combine(iEucPersistence.getAllEucs(eucState, asList, str), this.mEucPersistence.getDialogsByTypes(eucState, asList, this.mLanguageCode, str));
            loadToCache(combine);
            displayQueries(combine, this.mLanguageCode);
        } catch (EucPersistenceException | NullPointerException e2) {
            Log.e(LOG_TAG, "Unable to obtain EUCs from persistence: " + e2);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IEucWorkflow
    public void handleIncomingEuc(IEucQuery iEucQuery) {
        this.mCache.put(iEucQuery);
        IEucData eucData = iEucQuery.getEucData();
        String id = eucData.getId();
        EucMessageKey eucMessageKey = new EucMessageKey(id, eucData.getOwnIdentity(), EucType.PERSISTENT, eucData.getRemoteUri());
        try {
            if (eucData.getType() == EucType.ACKNOWLEDGEMENT && this.mCache.get(eucMessageKey) != null) {
                this.mDisplayManager.hide(eucMessageKey);
                this.mCache.remove(eucMessageKey);
                this.mEucPersistence.updateEuc(eucMessageKey, EucState.DISMISSED, null);
            }
        } catch (EucPersistenceException e) {
            String str = LOG_TAG;
            Log.e(str, "Unable to update EUC with id=" + id + " in persistence: " + e);
            IMSLog.s(str, "Unable to update EUC with key=" + eucMessageKey + " in persistence: " + e);
        }
        try {
            this.mEucPersistence.insertEuc(eucData);
            this.mEucPersistence.insertDialogs(iEucQuery);
        } catch (EucPersistenceException e2) {
            String str2 = LOG_TAG;
            Log.e(str2, "Unable to insert EUC with id=" + id + " in persistence: " + e2);
            IMSLog.s(str2, "Unable to insert EUC with key=" + eucMessageKey + " in persistence: " + e2);
        }
        IDialogData dialogData = iEucQuery.getDialogData(this.mLanguageCode);
        if (dialogData.getSubject().isEmpty() && dialogData.getText().isEmpty()) {
            return;
        }
        this.mDisplayManager.display(iEucQuery, this.mLanguageCode, createDisplayManagerRequestCallback(iEucQuery));
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow
    public IEucStoreAndForward.IResponseCallback createSendResponseCallback() {
        return new IEucStoreAndForward.IResponseCallback() { // from class: com.sec.internal.ims.servicemodules.euc.workflow.PersistentEucWorkflow.1
            @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward.IResponseCallback
            public void onStatus(EucSendResponseStatus eucSendResponseStatus) {
                EucSendResponseStatus.Status status = eucSendResponseStatus.getStatus();
                String id = eucSendResponseStatus.getId();
                String ownIdentity = eucSendResponseStatus.getOwnIdentity();
                EucMessageKey eucMessageKey = new EucMessageKey(id, ownIdentity, EucType.PERSISTENT, eucSendResponseStatus.getRemoteUri());
                if (PersistentEucWorkflow.this.mHandleMap.containsKey(eucMessageKey)) {
                    PersistentEucWorkflow.this.mHandleMap.get(eucMessageKey).invalidate();
                    PersistentEucWorkflow.this.mHandleMap.remove(eucMessageKey);
                }
                try {
                    IEucData eucByKey = PersistentEucWorkflow.this.mEucPersistence.getEucByKey(eucMessageKey);
                    if (eucByKey != null) {
                        int i = AnonymousClass2.$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status[status.ordinal()];
                        if (i != 1) {
                            if (i == 2) {
                                Log.e(PersistentEucWorkflow.LOG_TAG, "Network error. Message will not be send");
                                PersistentEucWorkflow.this.mEucPersistence.updateEuc(eucMessageKey, EucState.FAILED, null);
                                return;
                            } else {
                                if (i != 3) {
                                    return;
                                }
                                Log.e(PersistentEucWorkflow.LOG_TAG, "Internal error. Msg will be send on a new regi for identity: " + IMSLog.checker(ownIdentity));
                                return;
                            }
                        }
                        EucState state = eucByKey.getState();
                        int i2 = AnonymousClass2.$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState[state.ordinal()];
                        if (i2 == 1) {
                            PersistentEucWorkflow.this.mEucPersistence.updateEuc(eucMessageKey, EucState.ACCEPTED, null);
                            return;
                        }
                        if (i2 == 2) {
                            PersistentEucWorkflow.this.mEucPersistence.updateEuc(eucMessageKey, EucState.REJECTED, null);
                            return;
                        }
                        Log.e(PersistentEucWorkflow.LOG_TAG, "Wrong state: " + state.getId() + " for EUCR with id=" + id);
                        IMSLog.s(PersistentEucWorkflow.LOG_TAG, "Wrong state: " + state.getId() + " for EUCR with key=" + eucMessageKey);
                        throw new IllegalStateException("Illegal persistent EUC state!");
                    }
                    Log.e(PersistentEucWorkflow.LOG_TAG, "EUCR with id=" + id + " was not found!");
                    IMSLog.s(PersistentEucWorkflow.LOG_TAG, "EUCR with key=" + eucMessageKey + " was not found!");
                } catch (EucPersistenceException unused) {
                    Log.e(PersistentEucWorkflow.LOG_TAG, "Unable to change EUCs state in persistence for EUCR with id=" + id);
                    IMSLog.s(PersistentEucWorkflow.LOG_TAG, "Unable to change EUCs state in persistence for EUCR with key=" + eucMessageKey);
                }
            }
        };
    }

    /* renamed from: com.sec.internal.ims.servicemodules.euc.workflow.PersistentEucWorkflow$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
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

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IEucWorkflow
    public void changeLanguage(String str) {
        this.mLanguageCode = str;
        changeLanguage(str, EucType.PERSISTENT);
        changeLanguage(str, EucType.ACKNOWLEDGEMENT);
    }
}
