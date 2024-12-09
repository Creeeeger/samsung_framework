package com.sec.internal.ims.core.sim;

import android.text.TextUtils;
import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
class SimDataAdaptorKddi extends SimDataAdaptor {
    private static final String LOG_TAG = "SimDataAdaptorKddi";

    SimDataAdaptorKddi(SimManager simManager) {
        super(simManager, 0);
    }

    @Override // com.sec.internal.ims.core.sim.SimDataAdaptor
    public String getImpuFromList(List<String> list) {
        Log.i(LOG_TAG, "getImpuFromList");
        if (list == null || list.size() == 0) {
            return null;
        }
        if (!TextUtils.isEmpty(list.get(this.mPreferredImpuIndex)) && SimManager.isValidImpu(list.get(this.mPreferredImpuIndex))) {
            return list.get(this.mPreferredImpuIndex);
        }
        return getValidImpu(list);
    }
}
