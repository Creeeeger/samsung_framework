package com.android.systemui.globalactions.presentation.viewmodel;

import android.content.SharedPreferences;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import com.android.systemui.globalactions.util.ScreenCapturePopupController;
import com.samsung.android.globalactions.presentation.viewmodel.ActionInfo;
import com.samsung.android.globalactions.presentation.viewmodel.ActionViewModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScreenCapturePopupActionViewModel implements ActionViewModel {
    public ActionInfo mInfo;
    public final ScreenCapturePopupController mPopupController;

    public ScreenCapturePopupActionViewModel(ScreenCapturePopupController screenCapturePopupController) {
        this.mPopupController = screenCapturePopupController;
    }

    public final ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public final boolean isAvailableShow() {
        ScreenCapturePopupController screenCapturePopupController = this.mPopupController;
        SharedPreferences sharedPreferences = screenCapturePopupController.mPrefrerences;
        int i = sharedPreferences.getInt("count", 0);
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("current count : ", i, ", diff : ");
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences sharedPreferences2 = screenCapturePopupController.mPrefrerences;
        m.append(Long.valueOf(currentTimeMillis - sharedPreferences2.getLong("dismissTime", 0L)));
        screenCapturePopupController.mLogWrapper.logDebug("ScreenCapturePopupController", m.toString());
        if (i >= 1 || Long.valueOf(System.currentTimeMillis() - sharedPreferences2.getLong("dismissTime", 0L)).longValue() > 10000) {
            return false;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putInt("count", sharedPreferences.getInt("count", 0) + 1);
        edit.apply();
        return true;
    }

    public final void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }

    public final void onPress() {
    }
}
