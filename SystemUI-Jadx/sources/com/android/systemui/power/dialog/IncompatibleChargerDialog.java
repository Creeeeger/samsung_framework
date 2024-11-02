package com.android.systemui.power.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.android.systemui.R;
import com.android.systemui.power.SecBatteryStatsSnapshot;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IncompatibleChargerDialog extends PowerUiDialog {
    public IncompatibleChargerDialog(Context context) {
        super(context);
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final boolean checkCondition() {
        SharedPreferences sharedPreferences = this.mSharedPref;
        if (sharedPreferences != null && sharedPreferences.getBoolean(this.mDoNotShowTag, false)) {
            Log.d("PowerUI.Dialog.IncompatibleCharger", "Incompatible charging notice doesn't show again");
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final AlertDialog getDialog() {
        String string;
        Context context = this.mContext;
        View inflate = LayoutInflater.from(new ContextThemeWrapper(context, R.style.power_ui_dialog_theme)).inflate(R.layout.power_ui_dialog, (ViewGroup) null);
        ((LinearLayout) inflate.findViewById(R.id.do_not_show_again_layout)).setVisibility(0);
        final CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.do_not_show_again);
        TextView textView = (TextView) inflate.findViewById(R.id.notice_text);
        if (DeviceType.isTablet()) {
            string = context.getString(R.string.incompatible_charger_dialog_text_for_tablet);
        } else {
            string = context.getString(R.string.incompatible_charger_dialog_text);
        }
        textView.setText(string);
        AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.power_ui_dialog_theme);
        String string2 = context.getString(R.string.incompatible_charger_title);
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mTitle = string2;
        alertParams.mCancelable = false;
        builder.setPositiveButton(context.getString(R.string.dialog_button_text_ok), new DialogInterface.OnClickListener() { // from class: com.android.systemui.power.dialog.IncompatibleChargerDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (checkBox.isChecked()) {
                    SharedPreferences.Editor edit = IncompatibleChargerDialog.this.mSharedPref.edit();
                    edit.putBoolean(IncompatibleChargerDialog.this.mDoNotShowTag, true);
                    edit.commit();
                }
            }
        });
        builder.setView(inflate);
        AlertDialog create = builder.create();
        create.getWindow().setType(2009);
        return create;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
        this.mSharedPref = this.mContext.getSharedPreferences("com.android.systemui.incompatible_charging", 0);
        this.mDoNotShowTag = "DoNotShowIncompatibleChargerWarning";
    }
}
