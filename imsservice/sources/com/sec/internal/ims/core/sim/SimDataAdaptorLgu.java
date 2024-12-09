package com.sec.internal.ims.core.sim;

import java.util.Locale;

/* loaded from: classes.dex */
class SimDataAdaptorLgu extends SimDataAdaptor {
    private static final String DOMAIN = "lte-lguplus.co.kr";
    private static final String LOG_TAG = "SimDataAdaptorLgu";

    SimDataAdaptorLgu(SimManager simManager) {
        super(simManager, 1);
    }

    @Override // com.sec.internal.ims.core.sim.SimDataAdaptor
    String fetchDerivedImpi(String str, Plmn plmn) {
        return String.format(Locale.US, "%s@%s", str, DOMAIN);
    }

    @Override // com.sec.internal.ims.core.sim.SimDataAdaptor
    String fetchDerivedImpuFromMsisdn(String str, Plmn plmn) {
        if (str.startsWith("+82")) {
            str = str.replace("+82", "0");
        }
        return String.format(Locale.US, "sip:%s@%s", str, DOMAIN);
    }
}
