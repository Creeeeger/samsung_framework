package com.android.systemui.power.dialog;

import android.content.Context;
import android.content.DialogInterface;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.android.systemui.PowerUiRune;
import com.android.systemui.R;
import com.android.systemui.power.SecBatteryStatsSnapshot;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HappenedOverheatShutdownDialog extends PowerUiDialog {
    public HappenedOverheatShutdownDialog(Context context) {
        super(context);
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final boolean checkCondition() {
        return true;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final AlertDialog getDialog() {
        String string;
        String string2;
        Context context = this.mContext;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.power_ui_dialog_theme);
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mCancelable = false;
        boolean z = PowerUiRune.SPECIFIC_POWER_REQUEST_BY_VZW;
        if (z) {
            if (DeviceType.isTablet()) {
                string = context.getString(R.string.overheat_shutdown_notice_title_tablet);
            } else {
                string = context.getString(R.string.overheat_shutdown_notice_title);
            }
        } else {
            string = context.getString(R.string.overheat_poweroff_notice_title);
        }
        alertParams.mTitle = string;
        if (z) {
            if (DeviceType.isTablet()) {
                string2 = context.getString(R.string.overheat_shutdown_notice_text_tablet);
            } else {
                string2 = context.getString(R.string.overheat_shutdown_notice_text);
            }
        } else {
            string2 = context.getString(R.string.overheat_poweroff_notice_text);
        }
        alertParams.mMessage = string2;
        builder.setPositiveButton(context.getString(R.string.dialog_button_text_ok), new DialogInterface.OnClickListener(this) { // from class: com.android.systemui.power.dialog.HappenedOverheatShutdownDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
            }
        });
        AlertDialog create = builder.create();
        create.getWindow().setType(2009);
        return create;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
    }
}
