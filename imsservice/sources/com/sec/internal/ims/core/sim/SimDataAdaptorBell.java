package com.sec.internal.ims.core.sim;

import java.util.Locale;

/* loaded from: classes.dex */
class SimDataAdaptorBell extends SimDataAdaptor {
    private static final String DOMAIN = "ims.bell.ca";
    private static final String LOG_TAG = "SimDataAdaptorBell";

    SimDataAdaptorBell(SimManager simManager) {
        super(simManager, 1);
    }

    @Override // com.sec.internal.ims.core.sim.SimDataAdaptor
    String fetchDerivedImpuFromMsisdn(String str, Plmn plmn) {
        return String.format(Locale.US, "sip:%s@%s", str, DOMAIN);
    }
}
