package com.sec.internal.ims.core.sim;

import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.log.IMSLog;
import java.util.List;

/* loaded from: classes.dex */
class SimDataAdaptorBog extends SimDataAdaptor {
    private static final String LOG_TAG = "SimDataAdaptorBog";

    SimDataAdaptorBog(SimManager simManager) {
        super(simManager, 1);
    }

    @Override // com.sec.internal.ims.core.sim.SimDataAdaptor
    public String getImpuFromList(List<String> list) {
        if (!this.mSimManager.isEsim()) {
            return super.getImpuFromList(list);
        }
        Log.i(LOG_TAG, "getImpuFromList for BOG ESIM :");
        if (list == null || list.size() == 0) {
            return null;
        }
        if (list.size() > 1 && !TextUtils.isEmpty(list.get(this.mPreferredImpuIndex)) && isValidImpu(list.get(this.mPreferredImpuIndex))) {
            return list.get(this.mPreferredImpuIndex);
        }
        return getValidImpu(list);
    }

    @Override // com.sec.internal.ims.core.sim.SimDataAdaptor
    protected String getValidImpu(List<String> list) {
        for (String str : list) {
            if (isValidImpu(str)) {
                return str;
            }
        }
        return null;
    }

    private boolean isValidImpu(String str) {
        ImsUri parse = ImsUri.parse(str);
        if (parse != null && parse.getUriType() == ImsUri.UriType.SIP_URI) {
            String user = parse.getUser();
            if (TextUtils.isEmpty(user)) {
                return true;
            }
            String imsi = this.mSimManager.getImsi();
            if (TextUtils.isEmpty(imsi) || !user.contains(imsi) || user.length() == imsi.length()) {
                return true;
            }
            IMSLog.s(LOG_TAG, "invalid impu : " + str);
            return false;
        }
        IMSLog.s(LOG_TAG, "invalid impu : " + str);
        return false;
    }
}
