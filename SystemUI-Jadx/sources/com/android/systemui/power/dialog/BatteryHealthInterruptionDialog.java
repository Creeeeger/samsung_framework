package com.android.systemui.power.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.android.systemui.R;
import com.android.systemui.power.SecBatteryStatsSnapshot;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BatteryHealthInterruptionDialog extends PowerUiDialog {
    public int mBatteryHealth;

    public BatteryHealthInterruptionDialog(Context context) {
        super(context);
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final boolean checkCondition() {
        int i = this.mBatteryHealth;
        if (i != 6 && i != 8) {
            Log.e("PowerUI.Dialog.BatteryHealthInterruption", "status is NotCharging but health is wrong value");
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final AlertDialog getDialog() {
        String string;
        String string2;
        Context context = this.mContext;
        View inflate = LayoutInflater.from(new ContextThemeWrapper(context, R.style.power_ui_dialog_theme)).inflate(R.layout.power_ui_dialog, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.notice_text);
        if (this.mBatteryHealth == 6) {
            if (DeviceType.isTablet()) {
                string = context.getString(R.string.battery_health_interruption_by_terminal_open_text_tablet);
            } else {
                string = context.getString(R.string.battery_health_interruption_by_terminal_open_text);
            }
        } else if (DeviceType.isTablet()) {
            string = context.getString(R.string.battery_health_interruption_by_limit_high_temperature_text_tablet);
        } else {
            string = context.getString(R.string.battery_health_interruption_by_limit_high_temperature_text_phone);
        }
        textView.setText(string);
        AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.power_ui_dialog_theme);
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mCancelable = false;
        if (this.mBatteryHealth == 6) {
            string2 = context.getString(R.string.battery_health_interruption_title);
        } else {
            string2 = context.getString(R.string.battery_health_interruption_by_limit_high_temperature_title);
        }
        alertParams.mTitle = string2;
        if (this.mBatteryHealth == 6) {
            builder.setPositiveButton(context.getString(R.string.dialog_button_text_ok), (DialogInterface.OnClickListener) null);
        }
        if (this.mBatteryHealth == 8) {
            ImageView imageView = (ImageView) inflate.findViewById(R.id.guide_image);
            imageView.setImageResource(R.drawable.image_popup_remove);
            imageView.setVisibility(0);
        }
        builder.setView(inflate);
        AlertDialog create = builder.create();
        create.getWindow().setType(2009);
        return create;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
        this.mBatteryHealth = secBatteryStatsSnapshot.batteryHealth;
    }
}
