package com.android.systemui.power.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.PowerUiRune;
import com.android.systemui.R;
import com.android.systemui.power.SecBatteryStatsSnapshot;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WillOverheatShutdownDialog extends PowerUiDialog {
    public WillOverheatShutdownDialog(Context context) {
        super(context);
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final boolean checkCondition() {
        return true;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final AlertDialog getDialog() {
        String string;
        String m;
        String string2;
        Context context = this.mContext;
        AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.power_ui_dialog_theme);
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mCancelable = false;
        boolean z = PowerUiRune.SPECIFIC_POWER_REQUEST_BY_VZW;
        if (z) {
            string = context.getString(R.string.overheat_shutdown_warning_title);
        } else {
            string = context.getString(R.string.overheat_poweroff_warning_title);
        }
        alertParams.mTitle = string;
        if (z) {
            if (DeviceType.isTablet()) {
                string2 = context.getString(R.string.overheat_shutdown_warning_text_tablet);
            } else {
                string2 = context.getString(R.string.overheat_shutdown_warning_text);
            }
            m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(context, R.string.overheat_poweroff_warning_text_append, MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(string2, " "));
        } else {
            m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(context, R.string.overheat_poweroff_warning_text_append, MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(context.getString(R.string.overheat_poweroff_warning_text_new, 10), " "));
        }
        alertParams.mMessage = m;
        builder.setPositiveButton(context.getString(R.string.dialog_button_text_ok), (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        create.getWindow().setType(2009);
        return create;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
    }
}
