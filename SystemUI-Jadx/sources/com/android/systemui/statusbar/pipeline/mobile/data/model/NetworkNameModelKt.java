package com.android.systemui.statusbar.pipeline.mobile.data.model;

import android.content.Intent;
import com.android.systemui.statusbar.pipeline.mobile.data.model.NetworkNameModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class NetworkNameModelKt {
    public static final NetworkNameModel.IntentDerived toNetworkNameModel(Intent intent, String str) {
        boolean z;
        boolean z2 = false;
        boolean booleanExtra = intent.getBooleanExtra("android.telephony.extra.SHOW_SPN", false);
        String stringExtra = intent.getStringExtra("android.telephony.extra.DATA_SPN");
        boolean booleanExtra2 = intent.getBooleanExtra("android.telephony.extra.SHOW_PLMN", false);
        String stringExtra2 = intent.getStringExtra("android.telephony.extra.PLMN");
        StringBuilder sb = new StringBuilder();
        if (booleanExtra2 && stringExtra2 != null) {
            sb.append(stringExtra2);
        }
        if (booleanExtra && stringExtra != null) {
            if (sb.length() > 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                sb.append(str);
            }
            sb.append(stringExtra);
        }
        if (sb.length() > 0) {
            z2 = true;
        }
        if (z2) {
            return new NetworkNameModel.IntentDerived(sb.toString());
        }
        return null;
    }
}
