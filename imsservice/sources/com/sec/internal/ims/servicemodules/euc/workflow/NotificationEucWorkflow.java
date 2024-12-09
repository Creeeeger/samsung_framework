package com.sec.internal.ims.servicemodules.euc.workflow;

import android.util.Log;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.servicemodules.euc.data.EucState;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;
import com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager;
import com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException;
import com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence;
import com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class NotificationEucWorkflow extends BaseEucWorkflow {
    private static final String LOG_TAG = "NotificationEucWorkflow";
    private final IEucFactory mEucFactory;

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.BaseEucWorkflow
    public IEucStoreAndForward.IResponseCallback createSendResponseCallback() {
        return null;
    }

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

    public NotificationEucWorkflow(IEucPersistence iEucPersistence, IEucDisplayManager iEucDisplayManager, IEucStoreAndForward iEucStoreAndForward, IEucFactory iEucFactory) {
        super(iEucPersistence, iEucDisplayManager, iEucStoreAndForward);
        this.mEucFactory = (IEucFactory) Preconditions.checkNotNull(iEucFactory);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IModuleLifecycleListener
    public void load(String str) {
        this.mOwnIdentities.add(str);
        EucType eucType = EucType.NOTIFICATION;
        List<EucType> singletonList = Collections.singletonList(eucType);
        try {
            IEucPersistence iEucPersistence = this.mEucPersistence;
            EucState eucState = EucState.NONE;
            Iterable<IEucQuery> combine = this.mEucFactory.combine(iEucPersistence.getAllEucs(eucState, eucType, str), this.mEucPersistence.getDialogsByTypes(eucState, singletonList, this.mLanguageCode, str));
            loadToCache(combine);
            displayQueries(combine, this.mLanguageCode);
        } catch (EucPersistenceException e) {
            Log.e(LOG_TAG, "Unable to obtain EUCs from persistence: " + e);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IEucWorkflow
    public void handleIncomingEuc(IEucQuery iEucQuery) {
        this.mCache.put(iEucQuery);
        try {
            this.mEucPersistence.insertEuc(iEucQuery.getEucData());
            this.mEucPersistence.insertDialogs(iEucQuery);
        } catch (EucPersistenceException e) {
            Log.e(LOG_TAG, "Unable to store EUC with key=" + iEucQuery.getEucData().getKey() + " in persistence: " + e);
        }
        this.mDisplayManager.display(iEucQuery, this.mLanguageCode, createDisplayManagerRequestCallback(iEucQuery));
    }

    @Override // com.sec.internal.ims.servicemodules.euc.workflow.IEucWorkflow
    public void changeLanguage(String str) {
        this.mLanguageCode = str;
        changeLanguage(str, EucType.NOTIFICATION);
    }
}
