package com.sec.internal.ims.servicemodules.euc.cache;

import com.sec.internal.ims.servicemodules.euc.data.EucMessageKey;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class EucCache implements IEucCache {
    private Map<EucMessageKey, IEucQuery> mEucrMap = new HashMap();

    @Override // com.sec.internal.ims.servicemodules.euc.cache.IEucCache
    public void put(IEucQuery iEucQuery) {
        IEucData eucData = iEucQuery.getEucData();
        this.mEucrMap.put(new EucMessageKey(eucData.getId(), eucData.getOwnIdentity(), eucData.getType(), eucData.getRemoteUri()), iEucQuery);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.cache.IEucCache
    public IEucQuery get(EucMessageKey eucMessageKey) {
        return this.mEucrMap.get(eucMessageKey);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.cache.IEucCache
    public Iterable<IEucQuery> getAllByType(EucType eucType) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<EucMessageKey, IEucQuery> entry : this.mEucrMap.entrySet()) {
            if (eucType == entry.getKey().getEucType()) {
                arrayList.add(entry.getValue());
            }
        }
        return arrayList;
    }

    @Override // com.sec.internal.ims.servicemodules.euc.cache.IEucCache
    public IEucQuery remove(EucMessageKey eucMessageKey) {
        return this.mEucrMap.remove(eucMessageKey);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.cache.IEucCache
    public void clearAllForOwnIdentity(String str) {
        Iterator<Map.Entry<EucMessageKey, IEucQuery>> it = this.mEucrMap.entrySet().iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().getKey().getOwnIdentity())) {
                it.remove();
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.cache.IEucCache
    public boolean isEmpty() {
        return this.mEucrMap.isEmpty();
    }
}
