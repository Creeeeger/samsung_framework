package com.android.systemui.volume;

import android.content.Context;
import android.content.Intent;
import android.util.FeatureFlagUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import com.android.app.animation.Interpolators;
import com.android.systemui.Prefs;
import com.android.systemui.R;
import com.android.systemui.media.dialog.MediaOutputDialog;
import com.android.systemui.media.dialog.MediaOutputDialogFactory;
import com.android.systemui.plugins.VolumeDialogController;
import com.samsung.android.knox.custom.IKnoxCustomManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class VolumeDialogImpl$$ExternalSyntheticLambda6 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VolumeDialogImpl f$0;

    public /* synthetic */ VolumeDialogImpl$$ExternalSyntheticLambda6(VolumeDialogImpl volumeDialogImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = volumeDialogImpl;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i;
        int i2;
        int i3;
        long j;
        int i4;
        int i5 = 2;
        switch (this.$r8$classId) {
            case 0:
                VolumeDialogImpl volumeDialogImpl = this.f$0;
                Prefs.putBoolean(volumeDialogImpl.mContext, "TouchedRingerToggle", true);
                VolumeDialogController.StreamState streamState = volumeDialogImpl.mState.states.get(2);
                if (streamState != null) {
                    boolean hasVibrator = volumeDialogImpl.mController.hasVibrator();
                    int i6 = volumeDialogImpl.mState.ringerModeInternal;
                    if (i6 == 2) {
                        if (hasVibrator) {
                            i5 = 1;
                        }
                        i5 = 0;
                    } else {
                        if (i6 != 1) {
                            if (streamState.level == 0) {
                                volumeDialogImpl.mController.setStreamVolume(2, 1);
                            }
                        }
                        i5 = 0;
                    }
                    volumeDialogImpl.setRingerMode(i5);
                    return;
                }
                return;
            case 1:
                VolumeDialogImpl volumeDialogImpl2 = this.f$0;
                volumeDialogImpl2.getClass();
                Events.writeEvent(8, new Object[0]);
                volumeDialogImpl2.dismissH(5);
                volumeDialogImpl2.mMediaOutputDialogFactory.getClass();
                MediaOutputDialog mediaOutputDialog = MediaOutputDialogFactory.mediaOutputDialog;
                if (mediaOutputDialog != null) {
                    mediaOutputDialog.dismiss();
                }
                MediaOutputDialogFactory.mediaOutputDialog = null;
                if (FeatureFlagUtils.isEnabled(volumeDialogImpl2.mContext, "settings_volume_panel_in_systemui")) {
                    volumeDialogImpl2.mVolumePanelFactory.create();
                    return;
                } else {
                    volumeDialogImpl2.mActivityStarter.startActivity(new Intent("android.settings.panel.action.VOLUME"), true);
                    return;
                }
            case 2:
                VolumeDialogImpl volumeDialogImpl3 = this.f$0;
                boolean z = volumeDialogImpl3.mIsRingerDrawerOpen;
                if (z) {
                    volumeDialogImpl3.hideRingerDrawer();
                    return;
                }
                if (!z) {
                    ImageView imageView = volumeDialogImpl3.mRingerDrawerVibrateIcon;
                    int i7 = 4;
                    if (volumeDialogImpl3.mState.ringerModeInternal == 1) {
                        i = 4;
                    } else {
                        i = 0;
                    }
                    imageView.setVisibility(i);
                    ImageView imageView2 = volumeDialogImpl3.mRingerDrawerMuteIcon;
                    if (volumeDialogImpl3.mState.ringerModeInternal == 0) {
                        i2 = 4;
                    } else {
                        i2 = 0;
                    }
                    imageView2.setVisibility(i2);
                    ImageView imageView3 = volumeDialogImpl3.mRingerDrawerNormalIcon;
                    if (volumeDialogImpl3.mState.ringerModeInternal != 2) {
                        i7 = 0;
                    }
                    imageView3.setVisibility(i7);
                    volumeDialogImpl3.mRingerDrawerNewSelectionBg.setAlpha(0.0f);
                    if (!volumeDialogImpl3.isLandscape()) {
                        volumeDialogImpl3.mRingerDrawerNewSelectionBg.setTranslationY(volumeDialogImpl3.getTranslationInDrawerForRingerMode(volumeDialogImpl3.mState.ringerModeInternal));
                    } else {
                        volumeDialogImpl3.mRingerDrawerNewSelectionBg.setTranslationX(volumeDialogImpl3.getTranslationInDrawerForRingerMode(volumeDialogImpl3.mState.ringerModeInternal));
                    }
                    if (!volumeDialogImpl3.isLandscape()) {
                        volumeDialogImpl3.mRingerDrawerContainer.setTranslationY((volumeDialogImpl3.mRingerCount - 1) * volumeDialogImpl3.mRingerDrawerItemSize);
                    } else {
                        volumeDialogImpl3.mRingerDrawerContainer.setTranslationX((volumeDialogImpl3.mRingerCount - 1) * volumeDialogImpl3.mRingerDrawerItemSize);
                    }
                    volumeDialogImpl3.mRingerDrawerContainer.setAlpha(0.0f);
                    volumeDialogImpl3.mRingerDrawerContainer.setVisibility(0);
                    if (volumeDialogImpl3.mState.ringerModeInternal == 1) {
                        i3 = 175;
                    } else {
                        i3 = IKnoxCustomManager.Stub.TRANSACTION_addDexURLShortcutExtend;
                    }
                    ViewPropertyAnimator animate = volumeDialogImpl3.mRingerDrawerContainer.animate();
                    Interpolator interpolator = Interpolators.FAST_OUT_SLOW_IN;
                    long j2 = i3;
                    ViewPropertyAnimator duration = animate.setInterpolator(interpolator).setDuration(j2);
                    if (volumeDialogImpl3.mState.ringerModeInternal == 1) {
                        j = 75;
                    } else {
                        j = 0;
                    }
                    duration.setStartDelay(j).alpha(1.0f).translationX(0.0f).translationY(0.0f).start();
                    volumeDialogImpl3.mSelectedRingerContainer.animate().setInterpolator(interpolator).setDuration(250L).withEndAction(new VolumeDialogImpl$$ExternalSyntheticLambda2(volumeDialogImpl3, 8));
                    volumeDialogImpl3.mAnimateUpBackgroundToMatchDrawer.setDuration(j2);
                    volumeDialogImpl3.mAnimateUpBackgroundToMatchDrawer.setInterpolator(interpolator);
                    volumeDialogImpl3.mAnimateUpBackgroundToMatchDrawer.start();
                    if (!volumeDialogImpl3.isLandscape()) {
                        volumeDialogImpl3.mSelectedRingerContainer.animate().translationY(volumeDialogImpl3.getTranslationInDrawerForRingerMode(volumeDialogImpl3.mState.ringerModeInternal)).start();
                    } else {
                        volumeDialogImpl3.mSelectedRingerContainer.animate().translationX(volumeDialogImpl3.getTranslationInDrawerForRingerMode(volumeDialogImpl3.mState.ringerModeInternal)).start();
                    }
                    ViewGroup viewGroup = volumeDialogImpl3.mSelectedRingerContainer;
                    Context context = volumeDialogImpl3.mContext;
                    int i8 = volumeDialogImpl3.mState.ringerModeInternal;
                    if (i8 != 0) {
                        if (i8 != 1) {
                            i4 = R.string.volume_ringer_status_normal;
                        } else {
                            i4 = R.string.volume_ringer_status_vibrate;
                        }
                    } else {
                        i4 = R.string.volume_ringer_status_silent;
                    }
                    viewGroup.setContentDescription(context.getString(i4));
                    volumeDialogImpl3.mIsRingerDrawerOpen = true;
                    return;
                }
                return;
            default:
                this.f$0.hideCaptionsTooltip();
                Events.writeEvent(22, new Object[0]);
                return;
        }
    }
}
