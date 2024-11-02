package com.android.systemui.power.dialog;

import android.app.ActivityManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.android.systemui.PowerUiRune;
import com.android.systemui.R;
import com.android.systemui.power.SecBatteryStatsSnapshot;
import com.android.systemui.util.DeviceState;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HvChargerEnableDialog extends PowerUiDialog {
    public HvChargerEnableDialog(Context context) {
        super(context);
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final boolean checkCondition() {
        if (!PowerUiRune.IS_LDU_OR_UNPACK_BINARY && !DeviceState.isShopDemo(this.mContext)) {
            if (this.mSharedPref != null) {
                String str = this.mDoNotShowTag + ":" + ActivityManager.getCurrentUser();
                int i = this.mSharedPref.getInt(str, 0);
                if (i >= 3) {
                    Log.d("PowerUI.Dialog.HvChargerEnable", "Once AFC enable charging pop up was showed, so we doesn't show again");
                    return false;
                }
                SharedPreferences.Editor edit = this.mSharedPref.edit();
                edit.putInt(str, i + 1);
                edit.remove("DoNotShowAfcEnablePopup");
                edit.commit();
            }
            return true;
        }
        Log.d("PowerUI.Dialog.HvChargerEnable", "IS LDU or RDU binary, so don't show hv enable popup");
        return false;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final AlertDialog getDialog() {
        String string;
        String string2;
        Context context = this.mContext;
        View inflate = LayoutInflater.from(new ContextThemeWrapper(context, R.style.power_ui_dialog_theme)).inflate(R.layout.power_ui_dialog, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.notice_text);
        boolean z = PowerUiRune.SPECIFIC_POWER_REQUEST_BY_CHN;
        if (z) {
            string = context.getString(R.string.pd_hv_charger_dialog_description_chn);
        } else {
            string = context.getString(R.string.pd_hv_charger_dialog_description);
        }
        textView.setText(string);
        AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.power_ui_dialog_theme);
        if (z) {
            string2 = context.getString(R.string.pd_hv_charger_dialog_title_chn);
        } else {
            string2 = context.getString(R.string.pd_hv_charger_dialog_title);
        }
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mTitle = string2;
        alertParams.mCancelable = false;
        builder.setPositiveButton(R.string.pd_hv_charger_dialog_turn_on_button, new DialogInterface.OnClickListener() { // from class: com.android.systemui.power.dialog.HvChargerEnableDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Settings.System.putIntForUser(HvChargerEnableDialog.this.mContext.getContentResolver(), "adaptive_fast_charging", 1, -2);
            }
        });
        builder.setNegativeButton(android.R.string.cancel, null);
        builder.setView(inflate);
        AlertDialog create = builder.create();
        create.getWindow().setType(2009);
        return create;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
        this.mSharedPref = this.mContext.getSharedPreferences("com.android.systemui.afc_disable_charing", 0);
        this.mDoNotShowTag = "DoNotShowAfcEnablePopupCount";
    }
}
