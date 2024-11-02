package com.android.systemui.media.dialog;

import android.app.KeyguardManager;
import android.content.Intent;
import android.media.AudioManager;
import android.util.Log;
import android.view.View;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.animation.DialogLaunchAnimator$createActivityLaunchController$1;
import com.android.systemui.media.dialog.MediaOutputAdapter;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        KeyguardManager keyguardManager;
        switch (this.$r8$classId) {
            case 0:
                MediaOutputAdapter.MediaDeviceViewHolder mediaDeviceViewHolder = (MediaOutputAdapter.MediaDeviceViewHolder) this.f$0;
                MediaOutputController mediaOutputController = MediaOutputAdapter.this.mController;
                if (mediaOutputController.mAudioManager.getMutingExpectedDevice() != null) {
                    try {
                        synchronized (mediaOutputController.mMediaDevicesLock) {
                            ((CopyOnWriteArrayList) mediaOutputController.mMediaItemList).removeIf(new MediaOutputController$$ExternalSyntheticLambda1());
                        }
                        AudioManager audioManager = mediaOutputController.mAudioManager;
                        audioManager.cancelMuteAwaitConnection(audioManager.getMutingExpectedDevice());
                    } catch (Exception unused) {
                        Log.d("MediaOutputController", "Unable to cancel mute await connection");
                    }
                }
                MediaOutputAdapter.this.notifyDataSetChanged();
                return;
            case 1:
                ((MediaOutputAdapter.MediaDeviceViewHolder) this.f$0).mCheckBox.performClick();
                return;
            case 2:
                ((MediaOutputAdapter.MediaDeviceViewHolder) this.f$0).mEndClickIcon.performClick();
                return;
            default:
                MediaOutputController mediaOutputController2 = (MediaOutputController) this.f$0;
                DialogLaunchAnimator dialogLaunchAnimator = mediaOutputController2.mDialogLaunchAnimator;
                dialogLaunchAnimator.getClass();
                DialogLaunchAnimator$createActivityLaunchController$1 createActivityLaunchController$default = DialogLaunchAnimator.createActivityLaunchController$default(dialogLaunchAnimator, view);
                if (createActivityLaunchController$default == null || ((keyguardManager = mediaOutputController2.mKeyGuardManager) != null && keyguardManager.isKeyguardLocked())) {
                    ((MediaOutputBaseDialog) mediaOutputController2.mCallback).mBroadcastSender.closeSystemDialogs();
                }
                Intent addFlags = new Intent("android.settings.BLUETOOTH_SETTINGS").addFlags(335544320);
                Intent intent = new Intent("android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY");
                if (intent.resolveActivity(mediaOutputController2.mContext.getPackageManager()) != null) {
                    Log.d("MediaOutputController", "Device support split mode, launch page with deep link");
                    intent.setFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                    intent.putExtra("android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI", addFlags.toUri(1));
                    intent.putExtra("android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY", "top_level_connected_devices");
                    mediaOutputController2.mActivityStarter.startActivity(intent, true, (ActivityLaunchAnimator.Controller) createActivityLaunchController$default);
                    return;
                }
                mediaOutputController2.mActivityStarter.startActivity(addFlags, true, (ActivityLaunchAnimator.Controller) createActivityLaunchController$default);
                return;
        }
    }
}
