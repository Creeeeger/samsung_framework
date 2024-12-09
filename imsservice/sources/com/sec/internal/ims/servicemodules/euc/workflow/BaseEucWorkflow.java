package com.sec.internal.ims.servicemodules.euc.workflow;

import android.util.Log;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.servicemodules.euc.cache.EucCache;
import com.sec.internal.ims.servicemodules.euc.cache.IEucCache;
import com.sec.internal.ims.servicemodules.euc.data.EucMessageKey;
import com.sec.internal.ims.servicemodules.euc.data.EucResponseData;
import com.sec.internal.ims.servicemodules.euc.data.EucState;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.data.IDialogData;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;
import com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager;
import com.sec.internal.ims.servicemodules.euc.locale.DeviceLocale;
import com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException;
import com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence;
import com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
abstract class BaseEucWorkflow implements IEucWorkflow {
    private static final String LOG_TAG = "BaseEucWorkflow";
    final IEucDisplayManager mDisplayManager;
    final IEucPersistence mEucPersistence;
    private final IEucStoreAndForward mStoreAndForward;
    protected final IEucCache mCache = new EucCache();
    Map<EucMessageKey, IEucStoreAndForward.IResponseHandle> mHandleMap = new HashMap();
    List<String> mOwnIdentities = new ArrayList();
    String mLanguageCode = DeviceLocale.DEFAULT_LANG_VALUE;

    abstract IEucStoreAndForward.IResponseCallback createSendResponseCallback();

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public void start() {
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public void stop() {
    }

    BaseEucWorkflow(IEucPersistence iEucPersistence, IEucDisplayManager iEucDisplayManager, IEucStoreAndForward iEucStoreAndForward) {
        this.mEucPersistence = (IEucPersistence) Preconditions.checkNotNull(iEucPersistence);
        this.mDisplayManager = (IEucDisplayManager) Preconditions.checkNotNull(iEucDisplayManager);
        this.mStoreAndForward = iEucStoreAndForward;
    }

    void loadToCache(Iterable<IEucQuery> iterable) {
        Iterator<IEucQuery> it = iterable.iterator();
        while (it.hasNext()) {
            this.mCache.put(it.next());
        }
    }

    void changeLanguage(String str, EucType eucType) {
        ArrayList arrayList = new ArrayList();
        for (IEucQuery iEucQuery : this.mCache.getAllByType(eucType)) {
            if (!iEucQuery.hasDialog(str)) {
                arrayList.add(iEucQuery.getEucData().getId());
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            List<IDialogData> dialogs = this.mEucPersistence.getDialogs(arrayList, eucType, str, this.mOwnIdentities);
            Preconditions.checkState(!dialogs.isEmpty(), "No dialogs found for given EUCRs, it should not happen!");
            for (IDialogData iDialogData : dialogs) {
                EucMessageKey key = iDialogData.getKey();
                IEucQuery iEucQuery2 = this.mCache.get(key);
                Preconditions.checkState(iEucQuery2 != null, "No query in cache for id=" + key.getEucId() + ". Should not happen!");
                iEucQuery2.addDialogData(iDialogData);
            }
        } catch (EucPersistenceException | IllegalStateException | NullPointerException e) {
            Log.e(LOG_TAG, "Unable to obtain dialogs data for type=" + eucType + " language=" + str + " from persistence: " + e);
        } catch (IllegalArgumentException e2) {
            Log.e(LOG_TAG, arrayList.isEmpty() ? "idList" : "mOwnIdentities list is empty - wrong argument in query to persistence: " + e2);
        }
        replaceDisplay(eucType, str);
    }

    void displayQueries(Iterable<IEucQuery> iterable, String str) {
        for (IEucQuery iEucQuery : iterable) {
            IDialogData dialogData = iEucQuery.getDialogData(str);
            if (dialogData != null && (!dialogData.getSubject().isEmpty() || !dialogData.getText().isEmpty())) {
                this.mDisplayManager.display(iEucQuery, str, createDisplayManagerRequestCallback(iEucQuery));
            }
        }
    }

    private void replaceDisplay(EucType eucType, String str) {
        this.mDisplayManager.hideAllForType(eucType);
        displayQueries(this.mCache.getAllByType(eucType), str);
    }

    void sendResponse(IEucData iEucData, EucResponseData.Response response, String str) {
        IEucStoreAndForward.IResponseHandle sendResponse;
        if (str == null) {
            sendResponse = this.mStoreAndForward.sendResponse(iEucData, response, createSendResponseCallback());
        } else {
            sendResponse = this.mStoreAndForward.sendResponse(iEucData, response, str, createSendResponseCallback());
        }
        if (sendResponse != null) {
            this.mHandleMap.put(new EucMessageKey(iEucData.getId(), iEucData.getOwnIdentity(), iEucData.getType(), iEucData.getRemoteUri()), sendResponse);
        } else {
            Log.e(LOG_TAG, "Handle is null");
        }
    }

    IEucDisplayManager.IDisplayCallback createDisplayManagerRequestCallback(IEucQuery iEucQuery) {
        final IEucData eucData = iEucQuery.getEucData();
        final String id = eucData.getId();
        final EucType type = eucData.getType();
        final EucMessageKey eucMessageKey = new EucMessageKey(id, eucData.getOwnIdentity(), type, eucData.getRemoteUri());
        return new IEucDisplayManager.IDisplayCallback() { // from class: com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow.1
            @Override // com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager.IDisplayCallback
            public void onSuccess(EucResponseData.Response response, String str) {
                EucState eucState;
                try {
                    try {
                        int i = AnonymousClass2.$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType[type.ordinal()];
                        if (i == 1 || i == 2) {
                            EucResponseData.Response response2 = EucResponseData.Response.ACCEPT;
                            if (response.equals(response2)) {
                                eucState = EucState.ACCEPTED_NOT_SENT;
                            } else {
                                eucState = EucState.REJECTED_NOT_SENT;
                                response2 = EucResponseData.Response.DECLINE;
                            }
                            BaseEucWorkflow.this.mEucPersistence.updateEuc(eucMessageKey, eucState, str);
                            BaseEucWorkflow.this.sendResponse(eucData, response2, str);
                        } else if (i == 3 || i == 4) {
                            Preconditions.checkState(response.equals(EucResponseData.Response.ACCEPT), "Only ok button expected for notification or acknowledgment!");
                            BaseEucWorkflow.this.mEucPersistence.updateEuc(eucMessageKey, EucState.ACCEPTED, str);
                        } else if (i == 5) {
                            Log.e(BaseEucWorkflow.LOG_TAG, "EULA is not handled here!");
                        }
                    } catch (EucPersistenceException unused) {
                        Log.e(BaseEucWorkflow.LOG_TAG, "Unable to change EUCs state in persistence for EUCR with id=" + id);
                        IMSLog.s(BaseEucWorkflow.LOG_TAG, "Unable to change EUCs state in persistence for EUCR with key=" + eucMessageKey);
                    }
                } finally {
                    BaseEucWorkflow.this.mCache.remove(eucMessageKey);
                }
            }
        };
    }

    /* renamed from: com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType;

        static {
            int[] iArr = new int[EucType.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType = iArr;
            try {
                iArr[EucType.PERSISTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType[EucType.VOLATILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType[EucType.ACKNOWLEDGEMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType[EucType.NOTIFICATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType[EucType.EULA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public void discard(String str) {
        Iterator<Map.Entry<EucMessageKey, IEucStoreAndForward.IResponseHandle>> it = this.mHandleMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<EucMessageKey, IEucStoreAndForward.IResponseHandle> next = it.next();
            if (str.equals(next.getKey().getOwnIdentity())) {
                next.getValue().invalidate();
                it.remove();
            }
        }
        this.mDisplayManager.hideAllForOwnIdentity(str);
        this.mCache.clearAllForOwnIdentity(str);
        this.mOwnIdentities.remove(str);
    }
}
