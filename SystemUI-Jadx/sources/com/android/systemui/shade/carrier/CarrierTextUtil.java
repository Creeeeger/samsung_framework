package com.android.systemui.shade.carrier;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CarrierTextUtil implements Dumpable {
    public final Context context;
    public final String TAG = "CarrierTextUtil";
    public String lastCarrierLabel = "";

    public CarrierTextUtil(Context context, CarrierInfraMediator carrierInfraMediator) {
        this.context = context;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("Last carrier label=", this.lastCarrierLabel, printWriter);
    }

    public final String updateNetworkName(Intent intent) {
        boolean z = false;
        boolean booleanExtra = intent.getBooleanExtra("android.telephony.extra.SHOW_SPN", false);
        String stringExtra = intent.getStringExtra("android.telephony.extra.SPN");
        String stringExtra2 = intent.getStringExtra("android.telephony.extra.DATA_SPN");
        boolean booleanExtra2 = intent.getBooleanExtra("android.telephony.extra.SHOW_PLMN", false);
        String stringExtra3 = intent.getStringExtra("android.telephony.extra.PLMN");
        Log.d(this.TAG, "updateNetworkName showSpn=" + booleanExtra + " spn=" + stringExtra + " dataSpn=" + stringExtra2 + " showPlmn=" + booleanExtra2 + " plmn=" + stringExtra3 + " hasVoWifiPLMN=" + intent.getBooleanExtra("showEpdg", false));
        StringBuilder sb = new StringBuilder();
        String string = this.context.getResources().getString(R.string.shade_carrier_divider);
        if (booleanExtra2 && stringExtra3 != null) {
            sb.append(stringExtra3);
        }
        if (booleanExtra && stringExtra != null) {
            if (sb.length() > 0) {
                z = true;
            }
            if (z) {
                sb.append(string);
            }
            sb.append(stringExtra);
        }
        String sb2 = sb.toString();
        this.lastCarrierLabel = sb2;
        return sb2;
    }
}
