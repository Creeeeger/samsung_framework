package com.android.systemui.usb;

import android.hardware.usb.UsbDevice;
import android.util.Log;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UsbAudioWarningDialogMessage {
    public UsbDialogHelper mDialogHelper;
    public int mDialogType;

    public final int getMessageId() {
        boolean z;
        UsbDialogHelper usbDialogHelper = this.mDialogHelper;
        if (!usbDialogHelper.mIsUsbDevice) {
            if (this.mDialogType == 0) {
                return R.string.usb_accessory_permission_prompt;
            }
            return R.string.usb_accessory_confirm_prompt;
        }
        if (usbDialogHelper.packageHasAudioRecordingPermission() && isUsbAudioDevice()) {
            return R.string.usb_audio_device_prompt;
        }
        if (!this.mDialogHelper.packageHasAudioRecordingPermission() && isUsbAudioDevice()) {
            UsbDevice usbDevice = this.mDialogHelper.mDevice;
            if (usbDevice != null && usbDevice.getHasAudioPlayback()) {
                z = true;
            } else {
                z = false;
            }
            if (z && !this.mDialogHelper.deviceHasAudioCapture()) {
                return R.string.usb_audio_device_prompt;
            }
        }
        if (!this.mDialogHelper.packageHasAudioRecordingPermission() && isUsbAudioDevice() && this.mDialogHelper.deviceHasAudioCapture()) {
            return R.string.usb_audio_device_prompt_warn;
        }
        Log.w("UsbAudioWarningDialogMessage", "Only shows title with empty content description!");
        return 0;
    }

    public final boolean isUsbAudioDevice() {
        boolean z;
        UsbDialogHelper usbDialogHelper = this.mDialogHelper;
        if (!usbDialogHelper.mIsUsbDevice) {
            return false;
        }
        if (!usbDialogHelper.deviceHasAudioCapture()) {
            UsbDevice usbDevice = this.mDialogHelper.mDevice;
            if (usbDevice != null && usbDevice.getHasAudioPlayback()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }
}
