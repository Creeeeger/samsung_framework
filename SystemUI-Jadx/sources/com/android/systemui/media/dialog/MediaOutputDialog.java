package com.android.systemui.media.dialog;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.os.Bundle;
import android.util.FeatureFlagUtils;
import androidx.core.graphics.drawable.IconCompat;
import com.android.internal.logging.UiEventLogger;
import com.android.settingslib.bluetooth.LocalBluetoothLeBroadcast;
import com.android.systemui.R;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.broadcast.BroadcastSender;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaOutputDialog extends MediaOutputBaseDialog {
    public final DialogLaunchAnimator mDialogLaunchAnimator;
    public final UiEventLogger mUiEventLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum MediaOutputEvent implements UiEventLogger.UiEventEnum {
        MEDIA_OUTPUT_DIALOG_SHOW(655);

        private final int mId;

        MediaOutputEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    public MediaOutputDialog(Context context, boolean z, BroadcastSender broadcastSender, MediaOutputController mediaOutputController, DialogLaunchAnimator dialogLaunchAnimator, UiEventLogger uiEventLogger) {
        super(context, broadcastSender, mediaOutputController);
        this.mDialogLaunchAnimator = dialogLaunchAnimator;
        this.mUiEventLogger = uiEventLogger;
        this.mAdapter = new MediaOutputAdapter(this.mMediaOutputController);
        if (!z) {
            getWindow().setType(2038);
        }
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final IconCompat getAppSourceIcon() {
        return this.mMediaOutputController.getNotificationSmallIcon();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final int getBroadcastIconVisibility() {
        boolean isEnabled;
        if (isBroadcastSupported()) {
            LocalBluetoothLeBroadcast localBluetoothLeBroadcast = this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
            if (localBluetoothLeBroadcast == null) {
                isEnabled = false;
            } else {
                isEnabled = localBluetoothLeBroadcast.isEnabled();
            }
            if (isEnabled) {
                return 0;
            }
        }
        return 8;
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final IconCompat getHeaderIcon() {
        return this.mMediaOutputController.getHeaderIcon();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final int getHeaderIconSize() {
        return ((MediaOutputBaseDialog) this).mContext.getResources().getDimensionPixelSize(R.dimen.media_output_dialog_header_album_icon_size);
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final CharSequence getHeaderSubtitle() {
        MediaMetadata metadata;
        MediaController mediaController = this.mMediaOutputController.mMediaController;
        if (mediaController == null || (metadata = mediaController.getMetadata()) == null) {
            return null;
        }
        return metadata.getDescription().getSubtitle();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final CharSequence getHeaderText() {
        return this.mMediaOutputController.getHeaderTitle();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final CharSequence getStopButtonText() {
        int i;
        boolean isEnabled;
        if (isBroadcastSupported() && this.mMediaOutputController.isPlaying()) {
            LocalBluetoothLeBroadcast localBluetoothLeBroadcast = this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
            if (localBluetoothLeBroadcast == null) {
                isEnabled = false;
            } else {
                isEnabled = localBluetoothLeBroadcast.isEnabled();
            }
            if (!isEnabled) {
                i = R.string.media_output_broadcast;
                return ((MediaOutputBaseDialog) this).mContext.getText(i);
            }
        }
        i = R.string.media_output_dialog_button_stop_casting;
        return ((MediaOutputBaseDialog) this).mContext.getText(i);
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final int getStopButtonVisibility() {
        boolean z;
        boolean z2;
        if (this.mMediaOutputController.getCurrentConnectedMediaDevice() != null) {
            z = MediaOutputController.isActiveRemoteDevice(this.mMediaOutputController.getCurrentConnectedMediaDevice());
        } else {
            z = false;
        }
        if (isBroadcastSupported() && this.mMediaOutputController.isPlaying()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z || z2) {
            return 0;
        }
        return 8;
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final boolean isBroadcastSupported() {
        boolean z;
        boolean z2;
        if (FeatureFlagUtils.isEnabled(((MediaOutputBaseDialog) this).mContext, "settings_need_connected_ble_device_for_broadcast")) {
            if (this.mMediaOutputController.getCurrentConnectedMediaDevice() != null) {
                z = this.mMediaOutputController.getCurrentConnectedMediaDevice().isBLEDevice();
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        if (this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 && z) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void onBroadcastIconClick() {
        startLeBroadcastDialog();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog, com.android.systemui.statusbar.phone.SystemUIDialog, android.app.AlertDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mUiEventLogger.log(MediaOutputEvent.MEDIA_OUTPUT_DIALOG_SHOW);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.android.systemui.media.dialog.MediaOutputBaseDialog$$ExternalSyntheticLambda4] */
    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onStopButtonClick() {
        /*
            r7 = this;
            boolean r0 = r7.isBroadcastSupported()
            if (r0 == 0) goto L86
            com.android.systemui.media.dialog.MediaOutputController r0 = r7.mMediaOutputController
            boolean r0 = r0.isPlaying()
            if (r0 == 0) goto L86
            com.android.systemui.media.dialog.MediaOutputController r0 = r7.mMediaOutputController
            com.android.settingslib.bluetooth.LocalBluetoothManager r0 = r0.mLocalBluetoothManager
            com.android.settingslib.bluetooth.LocalBluetoothProfileManager r0 = r0.mProfileManager
            com.android.settingslib.bluetooth.LocalBluetoothLeBroadcast r0 = r0.mLeAudioBroadcast
            r1 = 0
            if (r0 != 0) goto L1b
            r0 = r1
            goto L1f
        L1b:
            boolean r0 = r0.isEnabled()
        L1f:
            if (r0 != 0) goto L6d
            android.content.Context r0 = r7.mContext
            java.lang.String r2 = "MediaOutputDialog"
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r2, r1)
            if (r0 == 0) goto L50
            java.lang.String r3 = "PrefIsLeBroadcastFirstLaunch"
            r4 = 1
            boolean r5 = r0.getBoolean(r3, r4)
            if (r5 == 0) goto L50
            java.lang.String r5 = "PREF_IS_LE_BROADCAST_FIRST_LAUNCH: true"
            android.util.Log.d(r2, r5)
            com.android.systemui.media.dialog.MediaOutputController r2 = r7.mMediaOutputController
            com.android.systemui.media.dialog.MediaOutputController$BroadcastNotifyDialog r5 = com.android.systemui.media.dialog.MediaOutputController.BroadcastNotifyDialog.ACTION_FIRST_LAUNCH
            com.android.systemui.media.dialog.MediaOutputBaseDialog$$ExternalSyntheticLambda4 r6 = new com.android.systemui.media.dialog.MediaOutputBaseDialog$$ExternalSyntheticLambda4
            r6.<init>()
            r2.launchLeBroadcastNotifyDialog(r5, r6)
            android.content.SharedPreferences$Editor r0 = r0.edit()
            r0.putBoolean(r3, r1)
            r0.apply()
            goto L51
        L50:
            r4 = r1
        L51:
            if (r4 == 0) goto L54
            return
        L54:
            android.widget.Button r0 = r7.mStopButton
            r2 = 2131954397(0x7f130add, float:1.9545292E38)
            r0.setText(r2)
            android.widget.Button r0 = r7.mStopButton
            r0.setEnabled(r1)
            com.android.systemui.media.dialog.MediaOutputController r0 = r7.mMediaOutputController
            boolean r0 = r0.startBluetoothLeBroadcast()
            if (r0 != 0) goto L93
            r7.handleLeBroadcastStartFailed()
            goto L93
        L6d:
            android.widget.Button r0 = r7.mStopButton
            r0.setEnabled(r1)
            com.android.systemui.media.dialog.MediaOutputController r0 = r7.mMediaOutputController
            boolean r0 = r0.stopBluetoothLeBroadcast()
            if (r0 != 0) goto L93
            android.os.Handler r0 = r7.mMainThreadHandler
            com.android.systemui.media.dialog.MediaOutputBaseDialog$$ExternalSyntheticLambda1 r1 = new com.android.systemui.media.dialog.MediaOutputBaseDialog$$ExternalSyntheticLambda1
            r2 = 3
            r1.<init>(r7, r2)
            r0.post(r1)
            goto L93
        L86:
            com.android.systemui.media.dialog.MediaOutputController r0 = r7.mMediaOutputController
            r0.releaseSession()
            com.android.systemui.animation.DialogLaunchAnimator r0 = r7.mDialogLaunchAnimator
            r0.disableAllCurrentDialogsExitAnimations()
            r7.dismiss()
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.dialog.MediaOutputDialog.onStopButtonClick():void");
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void getHeaderIconRes() {
    }
}
