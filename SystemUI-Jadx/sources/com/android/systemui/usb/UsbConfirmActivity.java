package com.android.systemui.usb;

import android.hardware.usb.IUsbManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import android.widget.CheckBox;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class UsbConfirmActivity extends UsbDialogActivity {
    public final UsbAudioWarningDialogMessage mUsbConfirmMessageHandler;

    public UsbConfirmActivity(UsbAudioWarningDialogMessage usbAudioWarningDialogMessage) {
        this.mUsbConfirmMessageHandler = usbAudioWarningDialogMessage;
    }

    @Override // com.android.systemui.usb.UsbDialogActivity
    public final void onConfirm() {
        boolean z;
        this.mDialogHelper.grantUidAccessPermission();
        CheckBox checkBox = this.mAlwaysUse;
        if (checkBox != null && checkBox.isChecked()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.mDialogHelper.setDefaultPackage();
        } else {
            UsbDialogHelper usbDialogHelper = this.mDialogHelper;
            usbDialogHelper.getClass();
            int myUserId = UserHandle.myUserId();
            try {
                boolean z2 = usbDialogHelper.mIsUsbDevice;
                IUsbManager iUsbManager = usbDialogHelper.mUsbService;
                if (z2) {
                    iUsbManager.setDevicePackage(usbDialogHelper.mDevice, (String) null, myUserId);
                } else {
                    iUsbManager.setAccessoryPackage(usbDialogHelper.mAccessory, (String) null, myUserId);
                }
            } catch (RemoteException e) {
                Log.e("UsbDialogHelper", "IUsbService connection failed", e);
            }
        }
        this.mDialogHelper.confirmDialogStartActivity();
        finish();
    }

    @Override // com.android.systemui.usb.UsbDialogActivity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        UsbAudioWarningDialogMessage usbAudioWarningDialogMessage = this.mUsbConfirmMessageHandler;
        UsbDialogHelper usbDialogHelper = this.mDialogHelper;
        usbAudioWarningDialogMessage.mDialogType = 1;
        usbAudioWarningDialogMessage.mDialogHelper = usbDialogHelper;
    }

    @Override // com.android.systemui.usb.UsbDialogActivity
    public final void onResume() {
        boolean z;
        int i;
        String str;
        super.onResume();
        UsbDialogHelper usbDialogHelper = this.mDialogHelper;
        if (usbDialogHelper.mIsUsbDevice && usbDialogHelper.deviceHasAudioCapture() && !this.mDialogHelper.packageHasAudioRecordingPermission()) {
            z = true;
        } else {
            z = false;
        }
        if (this.mUsbConfirmMessageHandler.mDialogType == 0) {
            i = R.string.usb_audio_device_permission_prompt_title;
        } else {
            i = R.string.usb_audio_device_confirm_prompt_title;
        }
        UsbDialogHelper usbDialogHelper2 = this.mDialogHelper;
        String string = getString(i, new Object[]{usbDialogHelper2.mAppName, usbDialogHelper2.getDeviceDescription()});
        int messageId = this.mUsbConfirmMessageHandler.getMessageId();
        if (messageId != 0) {
            UsbDialogHelper usbDialogHelper3 = this.mDialogHelper;
            str = getString(messageId, new Object[]{usbDialogHelper3.mAppName, usbDialogHelper3.getDeviceDescription()});
        } else {
            str = null;
        }
        setAlertParams(string, str);
        if (!z) {
            addAlwaysUseCheckbox();
        }
        setupAlert();
    }
}
