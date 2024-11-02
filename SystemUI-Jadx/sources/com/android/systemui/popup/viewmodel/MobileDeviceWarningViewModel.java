package com.android.systemui.popup.viewmodel;

import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.android.systemui.R;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.popup.util.PopupUIIntentWrapper;
import com.android.systemui.popup.util.PopupUIToastWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileDeviceWarningViewModel implements PopupUIViewModel {
    public final PopupUIIntentWrapper mIntentWrapper;
    public final LogWrapper mLogWrapper;
    boolean mPopupCompleted = false;
    public final PopupUIToastWrapper mToastWrapper;

    public MobileDeviceWarningViewModel(PopupUIToastWrapper popupUIToastWrapper, LogWrapper logWrapper, PopupUIIntentWrapper popupUIIntentWrapper) {
        this.mToastWrapper = popupUIToastWrapper;
        this.mLogWrapper = logWrapper;
        this.mIntentWrapper = popupUIIntentWrapper;
    }

    @Override // com.android.systemui.popup.viewmodel.PopupUIViewModel
    public final String getAction() {
        return "android.intent.action.BOOT_COMPLETED";
    }

    @Override // com.android.systemui.popup.viewmodel.PopupUIViewModel
    public final void show(Intent intent) {
        this.mIntentWrapper.getClass();
        if (!intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            return;
        }
        if (this.mPopupCompleted) {
            this.mLogWrapper.d("MobileDeviceWarningViewModel", "makeToast one only time");
            return;
        }
        this.mPopupCompleted = true;
        Context context = this.mToastWrapper.mContext;
        Toast.makeText(context, context.getResources().getString(R.string.mobile_device_warning_toast_notification), 0).show();
    }

    @Override // com.android.systemui.popup.viewmodel.PopupUIViewModel
    public final void dismiss() {
    }
}
