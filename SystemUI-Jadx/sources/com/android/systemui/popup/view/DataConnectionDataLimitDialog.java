package com.android.systemui.popup.view;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkPolicy;
import android.net.NetworkPolicyManager;
import android.net.NetworkTemplate;
import android.os.Parcelable;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.android.systemui.basic.util.LogWrapper;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DataConnectionDataLimitDialog implements PopupUIAlertDialog {
    public final Context mContext;
    public final LogWrapper mLogWrapper;

    public DataConnectionDataLimitDialog(Context context, LogWrapper logWrapper) {
        this.mContext = context;
        this.mLogWrapper = logWrapper;
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final boolean isShowing() {
        return false;
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final void show() {
        Context context = this.mContext;
        String subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        boolean isEmpty = TextUtils.isEmpty(subscriberId);
        LogWrapper logWrapper = this.mLogWrapper;
        if (!isEmpty) {
            NetworkPolicy[] networkPolicies = NetworkPolicyManager.from(context).getNetworkPolicies();
            boolean z = false;
            NetworkTemplate networkTemplate = null;
            if (networkPolicies != null) {
                int length = networkPolicies.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    networkTemplate = networkPolicies[i].template;
                    if (networkTemplate.getSubscriberIds().contains(subscriberId)) {
                        z = true;
                        break;
                    }
                    i++;
                }
            }
            if (z) {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.android.systemui", "com.android.systemui.net.NetworkOverLimitActivity"));
                intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                intent.putExtra("android.net.NETWORK_TEMPLATE", (Parcelable) networkTemplate);
                try {
                    context.startActivity(intent);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            logWrapper.d("DataConnectionDataLimitDialog", "showDataConnectionNotifications() : hasPolicy is false");
            return;
        }
        logWrapper.d("DataConnectionDataLimitDialog", "showDataConnectionNotifications() : Failed TelephonyManager.getSubscriberId");
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final void dismiss() {
    }
}
