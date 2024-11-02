package com.android.systemui.popup.view;

import android.app.AlertDialog;
import android.view.WindowManager;
import com.android.systemui.basic.util.LogWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DataConnectionErrorDialog implements PopupUIAlertDialog {
    public AlertDialog mDialog;
    public final LogWrapper mLogWrapper;

    /* JADX WARN: Removed duplicated region for block: B:42:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public DataConnectionErrorDialog(final android.content.Context r9, com.android.systemui.basic.util.LogWrapper r10, java.lang.Runnable r11, java.lang.Runnable r12, int r13, final boolean r14, final android.app.PendingIntent r15) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.popup.view.DataConnectionErrorDialog.<init>(android.content.Context, com.android.systemui.basic.util.LogWrapper, java.lang.Runnable, java.lang.Runnable, int, boolean, android.app.PendingIntent):void");
    }

    @Override // com.android.systemui.popup.view.PopupUIAlertDialog
    public final void dismiss() {
        if (this.mDialog != null && isShowing()) {
            this.mLogWrapper.v("DataConnectionErrorDialog");
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
            this.mLogWrapper.v("DataConnectionErrorDialog");
        }
    }
}
