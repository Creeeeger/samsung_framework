package com.android.systemui.popup.view;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.WindowManager;
import com.android.systemui.R;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.popup.data.MWOverheatWarningData;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MWOverheatWarningDialog implements PopupUIAlertDialog {
    public AlertDialog mDialog;
    public final LogWrapper mLogWrapper;

    public MWOverheatWarningDialog(Context context, LogWrapper logWrapper) {
        int i;
        this.mLogWrapper = logWrapper;
        new MWOverheatWarningData();
        String string = context.getResources().getString(R.string.multiwindow_overheat_warning_dialog_title);
        Resources resources = context.getResources();
        if (DeviceType.isTablet()) {
            i = R.string.multiwindow_overheat_warning_dialog_body_tablet;
        } else {
            i = R.string.multiwindow_overheat_warning_dialog_body_phone;
        }
        String string2 = resources.getString(i);
        String string3 = context.getResources().getString(R.string.yes);
        AlertDialog.Builder builder = new AlertDialog.Builder(context, 2132018540);
        builder.setTitle(string);
        builder.setMessage(string2);
        builder.setPositiveButton(string3, (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        this.mDialog = create;
        create.getWindow().getAttributes().setTitle("MWOverheatWarningDialog");
        this.mDialog.getWindow().setType(2008);
        this.mDialog = this.mDialog;
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final void dismiss() {
        if (this.mDialog != null && isShowing()) {
            this.mDialog.dismiss();
        }
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final boolean isShowing() {
        return this.mDialog.isShowing();
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final void show() {
        try {
            if (this.mDialog != null) {
                dismiss();
                this.mDialog.show();
            }
        } catch (WindowManager.BadTokenException unused) {
            this.mLogWrapper.v("MWOverheatWarningDialog");
        }
    }
}
