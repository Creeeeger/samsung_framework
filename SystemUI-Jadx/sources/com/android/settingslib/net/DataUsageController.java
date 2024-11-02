package com.android.settingslib.net;

import android.content.Context;
import android.net.NetworkPolicyManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.internal.util.ArrayUtils;
import com.android.systemui.statusbar.connectivity.NetworkControllerImpl;
import java.util.Formatter;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DataUsageController {
    public NetworkControllerImpl.AnonymousClass3 mCallback;
    public final Context mContext;
    public final int mSubscriptionId;

    static {
        new Formatter(new StringBuilder(50), Locale.getDefault());
    }

    public DataUsageController(Context context) {
        this.mContext = context;
        NetworkPolicyManager.from(context);
        this.mSubscriptionId = -1;
    }

    public TelephonyManager getTelephonyManager() {
        int i = this.mSubscriptionId;
        if (!SubscriptionManager.isValidSubscriptionId(i)) {
            i = SubscriptionManager.getDefaultDataSubscriptionId();
        }
        boolean isValidSubscriptionId = SubscriptionManager.isValidSubscriptionId(i);
        Context context = this.mContext;
        if (!isValidSubscriptionId) {
            int[] activeSubscriptionIdList = SubscriptionManager.from(context).getActiveSubscriptionIdList();
            if (!ArrayUtils.isEmpty(activeSubscriptionIdList)) {
                i = activeSubscriptionIdList[0];
            }
        }
        return ((TelephonyManager) context.getSystemService(TelephonyManager.class)).createForSubscriptionId(i);
    }

    public final boolean isMobileDataEnabled() {
        return getTelephonyManager().isDataEnabled();
    }

    public final boolean isMobileDataSupported() {
        if (getTelephonyManager().isDataCapable() && getTelephonyManager().getSimState() == 5) {
            return true;
        }
        return false;
    }

    public final void setMobileDataEnabled(boolean z) {
        Log.d("DataUsageController", "setMobileDataEnabled: enabled=" + z);
        getTelephonyManager().setDataEnabled(z);
        NetworkControllerImpl.AnonymousClass3 anonymousClass3 = this.mCallback;
        if (anonymousClass3 != null) {
            anonymousClass3.onMobileDataEnabled(z);
        }
    }
}
