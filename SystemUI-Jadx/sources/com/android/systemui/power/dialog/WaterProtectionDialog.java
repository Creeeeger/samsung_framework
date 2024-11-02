package com.android.systemui.power.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.android.systemui.PowerUiRune;
import com.android.systemui.R;
import com.android.systemui.power.SecBatteryStatsSnapshot;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WaterProtectionDialog extends PowerUiDialog {
    public boolean mIsHiccupState;

    public WaterProtectionDialog(Context context) {
        super(context);
        this.mIsHiccupState = false;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final boolean checkCondition() {
        return true;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final AlertDialog getDialog() {
        String string;
        Context context = this.mContext;
        View inflate = LayoutInflater.from(new ContextThemeWrapper(context, R.style.power_ui_dialog_theme)).inflate(R.layout.power_ui_dialog, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.notice_text);
        if (DeviceType.isTablet()) {
            string = context.getString(R.string.water_protection_notification_body_tablet);
        } else if (PowerUiRune.WIRELESS_CHARGING) {
            string = context.getString(R.string.water_protection_notification_body_support_wireless_charging);
        } else {
            string = context.getString(R.string.water_protection_notification_body);
        }
        textView.setText(string);
        AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.power_ui_dialog_theme);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.guide_image);
        imageView.setImageResource(R.drawable.image_popup_remove);
        imageView.setVisibility(0);
        String string2 = context.getString(R.string.water_protection_notification_title);
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mTitle = string2;
        alertParams.mCancelable = false;
        if (this.mIsHiccupState) {
            builder.setPositiveButton(context.getString(R.string.dialog_button_text_ok), (DialogInterface.OnClickListener) null);
        }
        builder.setView(inflate);
        AlertDialog create = builder.create();
        create.getWindow().setType(2009);
        create.getWindow().setGravity(80);
        return create;
    }

    @Override // com.android.systemui.power.dialog.PowerUiDialog
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
        this.mIsHiccupState = secBatteryStatsSnapshot.isHiccupState;
    }
}
