package com.sec.internal.ims.core.sim;

import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
class SimDataAdaptorTmoUs extends SimDataAdaptor {
    private static final String LOG_TAG = "SimDataAdaptorTmoUs";

    SimDataAdaptorTmoUs(SimManager simManager) {
        super(simManager, 1);
    }

    @Override // com.sec.internal.ims.core.sim.SimDataAdaptor
    public String getImpuFromList(List<String> list) {
        Log.i(LOG_TAG, "getImpuFromList:");
        if (list == null || list.size() == 0) {
            return null;
        }
        return list.get(0);
    }
}
