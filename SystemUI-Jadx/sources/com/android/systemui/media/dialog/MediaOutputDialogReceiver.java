package com.android.systemui.media.dialog;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaOutputDialogReceiver extends BroadcastReceiver {
    public final MediaOutputBroadcastDialogFactory mediaOutputBroadcastDialogFactory;
    public final MediaOutputDialogFactory mediaOutputDialogFactory;

    public MediaOutputDialogReceiver(MediaOutputDialogFactory mediaOutputDialogFactory, MediaOutputBroadcastDialogFactory mediaOutputBroadcastDialogFactory) {
        this.mediaOutputDialogFactory = mediaOutputDialogFactory;
        this.mediaOutputBroadcastDialogFactory = mediaOutputBroadcastDialogFactory;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean z = true;
        boolean z2 = false;
        if (TextUtils.equals("com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG", intent.getAction())) {
            String stringExtra = intent.getStringExtra("package_name");
            if (stringExtra != null && stringExtra.length() != 0) {
                z = false;
            }
            if (!z) {
                MediaOutputDialogFactory mediaOutputDialogFactory = this.mediaOutputDialogFactory;
                MediaOutputDialog mediaOutputDialog = MediaOutputDialogFactory.mediaOutputDialog;
                mediaOutputDialogFactory.create(stringExtra, null);
                return;
            } else {
                if (MediaOutputDialogReceiverKt.DEBUG) {
                    Log.e("MediaOutputDlgReceiver", "Unable to launch media output dialog. Package name is empty.");
                    return;
                }
                return;
            }
        }
        if (TextUtils.equals("com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG", intent.getAction())) {
            String stringExtra2 = intent.getStringExtra("package_name");
            if (stringExtra2 == null || stringExtra2.length() == 0) {
                z2 = true;
            }
            if (!z2) {
                MediaOutputBroadcastDialogFactory mediaOutputBroadcastDialogFactory = this.mediaOutputBroadcastDialogFactory;
                MediaOutputBroadcastDialog mediaOutputBroadcastDialog = mediaOutputBroadcastDialogFactory.mediaOutputBroadcastDialog;
                if (mediaOutputBroadcastDialog != null) {
                    mediaOutputBroadcastDialog.dismiss();
                }
                MediaOutputBroadcastDialog mediaOutputBroadcastDialog2 = new MediaOutputBroadcastDialog(mediaOutputBroadcastDialogFactory.context, true, mediaOutputBroadcastDialogFactory.broadcastSender, new MediaOutputController(mediaOutputBroadcastDialogFactory.context, stringExtra2, mediaOutputBroadcastDialogFactory.mediaSessionManager, mediaOutputBroadcastDialogFactory.lbm, mediaOutputBroadcastDialogFactory.starter, mediaOutputBroadcastDialogFactory.notifCollection, mediaOutputBroadcastDialogFactory.dialogLaunchAnimator, mediaOutputBroadcastDialogFactory.nearbyMediaDevicesManagerOptional, mediaOutputBroadcastDialogFactory.audioManager, mediaOutputBroadcastDialogFactory.powerExemptionManager, mediaOutputBroadcastDialogFactory.keyGuardManager, mediaOutputBroadcastDialogFactory.featureFlags, mediaOutputBroadcastDialogFactory.userTracker));
                mediaOutputBroadcastDialogFactory.mediaOutputBroadcastDialog = mediaOutputBroadcastDialog2;
                mediaOutputBroadcastDialog2.show();
                return;
            }
            if (MediaOutputDialogReceiverKt.DEBUG) {
                Log.e("MediaOutputDlgReceiver", "Unable to launch media output broadcast dialog. Package name is empty.");
            }
        }
    }
}
