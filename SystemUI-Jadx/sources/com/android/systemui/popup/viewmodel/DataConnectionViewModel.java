package com.android.systemui.popup.viewmodel;

import android.content.Context;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.popup.util.PopupUIIntentWrapper;
import com.android.systemui.popup.util.PopupUIToastWrapper;
import com.android.systemui.popup.util.PopupUIUtil;
import com.android.systemui.popup.view.PopupUIAlertDialog;
import com.android.systemui.popup.view.PopupUIAlertDialogFactory;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DataConnectionViewModel implements PopupUIViewModel {
    public final Context mContext;
    public PopupUIAlertDialog mDataConnectionErrorDialog;
    public final PopupUIAlertDialogFactory mDialogFactory;
    public boolean mHasVoiceCallingFeature;
    public final PopupUIIntentWrapper mIntentWrapper;
    public final LogWrapper mLogWrapper;
    public final PopupUIToastWrapper mToastWrapper;
    public final PopupUIUtil mUtil;

    public DataConnectionViewModel(Context context, PopupUIToastWrapper popupUIToastWrapper, LogWrapper logWrapper, PopupUIIntentWrapper popupUIIntentWrapper, PopupUIUtil popupUIUtil, PopupUIAlertDialogFactory popupUIAlertDialogFactory) {
        this.mContext = context;
        this.mToastWrapper = popupUIToastWrapper;
        this.mLogWrapper = logWrapper;
        this.mIntentWrapper = popupUIIntentWrapper;
        this.mUtil = popupUIUtil;
        this.mDialogFactory = popupUIAlertDialogFactory;
    }

    @Override // com.android.systemui.popup.viewmodel.PopupUIViewModel
    public final void dismiss() {
        PopupUIAlertDialog popupUIAlertDialog = this.mDataConnectionErrorDialog;
        if (popupUIAlertDialog != null) {
            popupUIAlertDialog.dismiss();
        }
    }

    @Override // com.android.systemui.popup.viewmodel.PopupUIViewModel
    public final String getAction() {
        return "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR";
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00aa, code lost:
    
        if (r11 != 4) goto L44;
     */
    @Override // com.android.systemui.popup.viewmodel.PopupUIViewModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void show(android.content.Intent r15) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.popup.viewmodel.DataConnectionViewModel.show(android.content.Intent):void");
    }
}
