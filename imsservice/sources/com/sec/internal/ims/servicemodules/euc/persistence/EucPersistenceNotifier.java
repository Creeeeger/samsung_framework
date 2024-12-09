package com.sec.internal.ims.servicemodules.euc.persistence;

import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.servicemodules.euc.data.AutoconfUserConsentData;
import com.sec.internal.ims.servicemodules.euc.data.EucMessageKey;
import com.sec.internal.ims.servicemodules.euc.data.EucState;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.data.IDialogData;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;
import java.util.List;

/* loaded from: classes.dex */
public class EucPersistenceNotifier implements IEucPersistence {
    private final IEucPersistence mEucrPersistence;
    private final UserConsentPersistenceNotifier mUserConsentPersistenceNotifier;

    public EucPersistenceNotifier(EucPersistence eucPersistence, UserConsentPersistenceNotifier userConsentPersistenceNotifier) {
        this.mEucrPersistence = (IEucPersistence) Preconditions.checkNotNull(eucPersistence);
        this.mUserConsentPersistenceNotifier = (UserConsentPersistenceNotifier) Preconditions.checkNotNull(userConsentPersistenceNotifier);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void updateEuc(EucMessageKey eucMessageKey, EucState eucState, String str) throws EucPersistenceException {
        this.mEucrPersistence.updateEuc(eucMessageKey, eucState, str);
        this.mUserConsentPersistenceNotifier.notifyListener(eucMessageKey.getOwnIdentity());
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void insertEuc(IEucData iEucData) throws EucPersistenceException {
        this.mEucrPersistence.insertEuc(iEucData);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void insertDialogs(IEucQuery iEucQuery) throws EucPersistenceException {
        this.mEucrPersistence.insertDialogs(iEucQuery);
        this.mUserConsentPersistenceNotifier.notifyListener(iEucQuery.getEucData().getOwnIdentity());
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void insertAutoconfUserConsent(AutoconfUserConsentData autoconfUserConsentData) throws EucPersistenceException {
        this.mEucrPersistence.insertAutoconfUserConsent(autoconfUserConsentData);
        this.mUserConsentPersistenceNotifier.notifyListener(autoconfUserConsentData.getOwnIdentity());
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IDialogData> getDialogs(List<String> list, EucType eucType, String str, List<String> list2) throws EucPersistenceException, IllegalArgumentException {
        return this.mEucrPersistence.getDialogs(list, eucType, str, list2);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IDialogData> getDialogsByTypes(EucState eucState, List<EucType> list, String str, String str2) throws EucPersistenceException, IllegalArgumentException {
        return this.mEucrPersistence.getDialogsByTypes(eucState, list, str, str2);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IEucData> getAllEucs(EucState eucState, EucType eucType, String str) throws EucPersistenceException {
        return this.mEucrPersistence.getAllEucs(eucState, eucType, str);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IEucData> getAllEucs(List<EucState> list, EucType eucType, String str) throws EucPersistenceException, IllegalArgumentException {
        return this.mEucrPersistence.getAllEucs(list, eucType, str);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IEucData> getAllEucs(EucState eucState, List<EucType> list, String str) throws EucPersistenceException, IllegalArgumentException {
        return this.mEucrPersistence.getAllEucs(eucState, list, str);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IEucData> getAllEucs(List<EucState> list, List<EucType> list2, String str) throws EucPersistenceException, IllegalArgumentException {
        return this.mEucrPersistence.getAllEucs(list, list2, str);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public IEucData getEucByKey(EucMessageKey eucMessageKey) throws EucPersistenceException {
        return this.mEucrPersistence.getEucByKey(eucMessageKey);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public IEucData getVolatileEucByMostRecentTimeout(List<String> list) throws EucPersistenceException, IllegalArgumentException {
        return this.mEucrPersistence.getVolatileEucByMostRecentTimeout(list);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void open() throws IllegalStateException, EucPersistenceException {
        this.mEucrPersistence.open();
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void close() throws IllegalStateException {
        this.mEucrPersistence.close();
    }
}
