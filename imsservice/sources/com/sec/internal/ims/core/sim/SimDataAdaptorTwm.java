package com.sec.internal.ims.core.sim;

import java.util.Locale;

/* loaded from: classes.dex */
class SimDataAdaptorTwm extends SimDataAdaptor {
    private static final String DOMAIN = "ims.taiwanmobile.com";
    private static final String LOG_TAG = "SimDataAdaptorTwm";

    SimDataAdaptorTwm(SimManager simManager) {
        super(simManager, 1);
    }

    @Override // com.sec.internal.ims.core.sim.SimDataAdaptor
    String fetchDerivedImpu(String str, Plmn plmn) {
        return String.format(Locale.US, "sip:%s@%s", str, DOMAIN);
    }

    @Override // com.sec.internal.ims.core.sim.SimDataAdaptor
    String fetchDerivedImpi(String str, Plmn plmn) {
        return String.format(Locale.US, "%s@%s", str, DOMAIN);
    }
}
