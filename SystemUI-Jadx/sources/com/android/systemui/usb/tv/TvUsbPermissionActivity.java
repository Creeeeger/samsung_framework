package com.android.systemui.usb.tv;

import com.android.systemui.R;
import com.android.systemui.usb.UsbDialogHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TvUsbPermissionActivity extends TvUsbDialogActivity {
    public boolean mPermissionGranted = false;

    @Override // com.android.systemui.usb.tv.TvUsbDialogActivity
    public final void onConfirm() {
        this.mDialogHelper.grantUidAccessPermission();
        this.mPermissionGranted = true;
        finish();
    }

    @Override // com.android.systemui.usb.tv.TvUsbDialogActivity, android.app.Activity
    public final void onPause() {
        if (isFinishing()) {
            this.mDialogHelper.sendPermissionDialogResponse(this.mPermissionGranted);
        }
        super.onPause();
    }

    @Override // com.android.systemui.usb.tv.TvUsbDialogActivity, android.app.Activity
    public final void onResume() {
        int i;
        boolean z;
        super.onResume();
        UsbDialogHelper usbDialogHelper = this.mDialogHelper;
        if (usbDialogHelper.mIsUsbDevice) {
            if (usbDialogHelper.deviceHasAudioCapture() && !this.mDialogHelper.packageHasAudioRecordingPermission()) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                i = R.string.usb_device_permission_prompt_warn;
            } else {
                i = R.string.usb_device_permission_prompt;
            }
        } else {
            i = R.string.usb_accessory_permission_prompt;
        }
        UsbDialogHelper usbDialogHelper2 = this.mDialogHelper;
        initUI(this.mDialogHelper.mAppName, getString(i, new Object[]{usbDialogHelper2.mAppName, usbDialogHelper2.getDeviceDescription()}));
    }
}
