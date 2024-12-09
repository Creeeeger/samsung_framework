package com.sec.internal.ims.core.sim;

import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.helper.SimpleEventLog;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
abstract class SimDataAdaptor {
    protected static final String LOG_TAG = "SimDataAdaptor";
    protected static final int PREFERRED_IMPU_INDEX_0 = 0;
    protected static final int PREFERRED_IMPU_INDEX_1 = 1;
    protected String mLastOperator;
    protected final int mPreferredImpuIndex;
    protected final SimManager mSimManager;
    protected final SimpleEventLog mSimpleEventLog;

    public boolean hasValidMsisdn() {
        return true;
    }

    SimDataAdaptor(SimManager simManager, int i) {
        this.mSimManager = simManager;
        this.mSimpleEventLog = simManager.getSimpleEventLog();
        this.mLastOperator = simManager.getSimOperator();
        this.mPreferredImpuIndex = i;
    }

    public String getEmergencyImpu(List<String> list) {
        Log.i(LOG_TAG, "getEmergencyImpu:");
        if (list == null || list.size() == 0 || TextUtils.isEmpty(list.get(0))) {
            return null;
        }
        return list.get(0);
    }

    public String getImpuFromList(List<String> list) {
        Log.i(LOG_TAG, "getImpuFromList:");
        if (list == null || list.size() == 0) {
            return null;
        }
        if (list.size() > 1 && !TextUtils.isEmpty(list.get(this.mPreferredImpuIndex)) && SimManager.isValidImpu(list.get(this.mPreferredImpuIndex))) {
            return list.get(this.mPreferredImpuIndex);
        }
        return getValidImpu(list);
    }

    protected String getValidImpu(List<String> list) {
        for (String str : list) {
            if (SimManager.isValidImpu(str)) {
                return str;
            }
        }
        return null;
    }

    public boolean needHandleLoadedAgain(String str) {
        if (TextUtils.equals(str, this.mLastOperator)) {
            return false;
        }
        Log.i(LOG_TAG, "Different operator. Last:" + this.mLastOperator + ", new:" + str);
        this.mLastOperator = str;
        return true;
    }

    String fetchDerivedImpu(String str, Plmn plmn) {
        return String.format(Locale.US, "sip:%s@%s", str, convertPlmnToDomain(plmn));
    }

    String fetchDerivedImpi(String str, Plmn plmn) {
        return String.format(Locale.US, "%s@%s", str, convertPlmnToDomain(plmn));
    }

    String fetchDerivedImpuFromMsisdn(String str, Plmn plmn) {
        return String.format(Locale.US, "sip:%s@%s", str, convertPlmnToDomain(plmn));
    }

    private String convertPlmnToDomain(Plmn plmn) {
        return String.format(Locale.US, "ims.mnc%03d.mcc%03d.3gppnetwork.org", Integer.valueOf(plmn.mnc), Integer.valueOf(plmn.mcc));
    }
}
