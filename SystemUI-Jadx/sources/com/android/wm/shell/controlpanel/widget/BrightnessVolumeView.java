package com.android.wm.shell.controlpanel.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.SeslSeekBar;
import androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.SecLockIconView$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.controlpanel.GridUIManager;
import com.android.wm.shell.controlpanel.activity.FlexPanelActivity;
import com.android.wm.shell.controlpanel.utils.ControlPanelUtils;
import com.samsung.android.feature.SemFloatingFeature;
import com.sec.ims.presence.ServiceTuple;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BrightnessVolumeView extends ConstraintLayout {
    public final AccessibilityManager mAccessibilityManager;
    public final AudioManager mAudioManager;
    public ImageView mBrightnessIcon;
    public final AnonymousClass1 mBrightnessRunnable;
    public SeslSeekBar mBrightnessSeekBar;
    public final AnonymousClass3 mBrightnessSeekBarChangeListener;
    public final Context mContext;
    public int mCurrentMediaIconState;
    public int mCurrentRingerMode;
    public int mCurrentRingtoneIconState;
    public final DisplayManager mDisplayManager;
    public int mGetRingerMode;
    public GridUIManager mGridUIManager;
    public int mMaxBrightness;
    public LinearLayout mMediaBrightnessLayout;
    public FrameLayout mMediaVolumeAnimatedIconLayout;
    public FrameLayout mMediaVolumeLayout;
    public int mMinBrightness;
    public final IconMotion mMotion;
    public ImageView mMute;
    public ImageView mNote;
    public ImageView mSplash;
    public int mStreamType;
    public ImageView mVolumeIcon;
    public final AnonymousClass2 mVolumeRunnable;
    public SeslSeekBar mVolumeSeekBar;
    public final AnonymousClass4 mVolumeSeekBarChangeListener;
    public boolean mVolumeSeekBarTracking;
    public ImageView mWaveL;
    public ImageView mWaveS;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class IconMotion {
        public final Handler mHandler = new Handler(Looper.getMainLooper());
        public BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0 mIconRunnable;
        public final Resources mResources;

        public IconMotion(Context context) {
            this.mResources = context.getResources();
        }

        public static Animator getVibrationAnimator(float f, float f2, int i, View view) {
            float f3 = 0.0f;
            if (f2 != 0.0f) {
                f3 = (-f) + f2;
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", f, f3);
            ofFloat.setDuration(i);
            ofFloat.setInterpolator(new LinearInterpolator());
            return ofFloat;
        }

        public final void startMaxAnimation(int i, View view, View view2, View view3, View view4, View view5, View view6, boolean z) {
            long j;
            view5.setVisibility(8);
            view.setVisibility(0);
            view6.setVisibility(8);
            Resources resources = this.mResources;
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_media_icon_note_max_x);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_media_icon_wave_s_max_x);
            int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_media_icon_wave_l_max_x);
            if (i == 2) {
                view4.setVisibility(8);
                view2.setVisibility(0);
                view3.setVisibility(0);
                dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_sound_icon_wave_s_max_x);
                dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_sound_icon_wave_l_max_x);
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, "alpha", view2.getAlpha(), 0.5f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view3, "alpha", view3.getAlpha(), 0.5f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat);
            animatorSet.playTogether(ofFloat2);
            long j2 = 0;
            if (z) {
                j = 0;
            } else {
                j = 150;
            }
            animatorSet.setDuration(j);
            animatorSet.setInterpolator(new LinearInterpolator());
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "x", view.getX(), dimensionPixelSize);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view2, "x", view2.getX(), dimensionPixelSize2);
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(view3, "x", view3.getX(), dimensionPixelSize3);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(ofFloat3);
            animatorSet2.playTogether(ofFloat4);
            animatorSet2.playTogether(ofFloat5);
            if (!z) {
                j2 = 200;
            }
            animatorSet2.setDuration(j2);
            animatorSet2.setInterpolator(new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f));
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playTogether(animatorSet);
            animatorSet3.playTogether(animatorSet2);
            animatorSet3.start();
        }

        public final void startMidAnimation(int i, int i2, View view, View view2, View view3, View view4, View view5, View view6, boolean z) {
            long j;
            view5.setVisibility(8);
            view.setVisibility(0);
            view6.setVisibility(8);
            Resources resources = this.mResources;
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_media_icon_note_mid_x);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_media_icon_wave_s_mid_x);
            int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_media_icon_wave_l_mid_x);
            if (i == 2) {
                view4.setVisibility(8);
                view2.setVisibility(0);
                view3.setVisibility(0);
                dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_sound_icon_wave_s_mid_x);
                dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_sound_icon_wave_l_mid_x);
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, "alpha", view2.getAlpha(), 0.5f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view3, "alpha", view3.getAlpha(), 0.1f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat);
            animatorSet.playTogether(ofFloat2);
            long j2 = 0;
            if (z) {
                j = 0;
            } else {
                j = 100;
            }
            animatorSet.setDuration(j);
            animatorSet.setInterpolator(new LinearInterpolator());
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "x", view.getX(), dimensionPixelSize);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view2, "x", view2.getX(), dimensionPixelSize2);
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(view3, "x", view3.getX(), dimensionPixelSize3);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(ofFloat3);
            animatorSet2.playTogether(ofFloat4);
            animatorSet2.playTogether(ofFloat5);
            if (!z) {
                j2 = 200;
            }
            animatorSet2.setDuration(j2);
            animatorSet2.setInterpolator(new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f));
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playTogether(animatorSet2);
            animatorSet3.playTogether(animatorSet);
            this.mHandler.removeCallbacks(this.mIconRunnable);
            this.mIconRunnable = new BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0(this, i2, i, view, view2, view3, view4, view5, view6, 0);
            animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView.IconMotion.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    IconMotion iconMotion = IconMotion.this;
                    iconMotion.mHandler.postDelayed(iconMotion.mIconRunnable, 200L);
                }
            });
            animatorSet3.start();
        }

        public final void startMinAnimation(int i, int i2, View view, View view2, View view3, View view4, View view5, View view6, boolean z) {
            float f;
            Resources resources;
            long j;
            view5.setVisibility(8);
            view.setVisibility(0);
            view6.setVisibility(8);
            Resources resources2 = this.mResources;
            int dimensionPixelSize = resources2.getDimensionPixelSize(R.dimen.flex_panel_volume_media_icon_note_min_x);
            if (i == 2) {
                view4.setVisibility(8);
                view2.setVisibility(0);
                view3.setVisibility(0);
                dimensionPixelSize = resources2.getDimensionPixelSize(R.dimen.flex_panel_volume_sound_icon_spk_min_x);
                f = 0.3f;
            } else {
                f = 0.0f;
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, "alpha", view2.getAlpha(), f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view3, "alpha", view3.getAlpha(), 0.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat);
            animatorSet.playTogether(ofFloat2);
            long j2 = 0;
            if (z) {
                resources = resources2;
                j = 0;
            } else {
                resources = resources2;
                j = 100;
            }
            animatorSet.setDuration(j);
            animatorSet.setInterpolator(new LinearInterpolator());
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "x", view.getX(), dimensionPixelSize);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(ofFloat3);
            if (i == 2) {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(view2, "x", view2.getX(), resources.getDimensionPixelSize(R.dimen.flex_panel_volume_sound_icon_wave_s_min_x)));
            }
            if (!z) {
                j2 = 200;
            }
            animatorSet2.setDuration(j2);
            animatorSet2.setInterpolator(new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f));
            this.mHandler.removeCallbacks(this.mIconRunnable);
            this.mIconRunnable = new BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0(this, i2, i, view, view2, view3, view4, view5, view6, 1);
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playTogether(animatorSet);
            animatorSet3.playTogether(animatorSet2);
            animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView.IconMotion.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    IconMotion iconMotion = IconMotion.this;
                    iconMotion.mHandler.postDelayed(iconMotion.mIconRunnable, 200L);
                }
            });
            animatorSet3.start();
        }

        public final void startMuteAnimation(int i, View view, View view2, View view3, View view4, View view5, final View view6, boolean z) {
            long j;
            view5.setVisibility(0);
            view.setVisibility(4);
            view6.setVisibility(0);
            Resources resources = this.mResources;
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_media_icon_note_min_x);
            if (i == 2) {
                dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.flex_panel_volume_sound_icon_spk_min_x);
                view4.setVisibility(8);
                view2.setVisibility(4);
                view3.setVisibility(4);
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, "alpha", view2.getAlpha(), 0.0f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view3, "alpha", view3.getAlpha(), 0.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat);
            animatorSet.playTogether(ofFloat2);
            long j2 = 0;
            if (z) {
                j = 0;
            } else {
                j = 100;
            }
            animatorSet.setDuration(j);
            animatorSet.setInterpolator(new LinearInterpolator());
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "x", view.getX(), dimensionPixelSize);
            if (!z) {
                j2 = 200;
            }
            ofFloat3.setDuration(j2);
            SecLockIconView$$ExternalSyntheticOutline0.m(0.22f, 0.25f, 0.0f, 1.0f, ofFloat3);
            this.mHandler.removeCallbacks(this.mIconRunnable);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(animatorSet);
            animatorSet2.playTogether(ofFloat3);
            animatorSet2.start();
            if (!z) {
                view6.setScaleX(0.0f);
                SpringAnimation springAnimation = new SpringAnimation(view6, DynamicAnimation.SCALE_X);
                springAnimation.cancel();
                springAnimation.mVelocity = 0.0f;
                springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda1
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                    public final void onAnimationUpdate(float f, float f2) {
                        if (f2 == 0.0f) {
                            View view7 = view6;
                            view7.setPivotX(0.0f);
                            view7.setPivotY(0.0f);
                        }
                    }
                });
                SpringForce springForce = new SpringForce();
                springForce.setStiffness(300.0f);
                springForce.setDampingRatio(0.58f);
                springAnimation.mSpring = springForce;
                springAnimation.setStartValue(0.0f);
                springAnimation.animateToFinalPosition(1.0f);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.wm.shell.controlpanel.widget.BrightnessVolumeView$1] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.wm.shell.controlpanel.widget.BrightnessVolumeView$2] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.wm.shell.controlpanel.widget.BrightnessVolumeView$3, androidx.appcompat.widget.SeslSeekBar$OnSeekBarChangeListener] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.wm.shell.controlpanel.widget.BrightnessVolumeView$4] */
    public BrightnessVolumeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentMediaIconState = -1;
        this.mCurrentRingtoneIconState = -1;
        this.mBrightnessRunnable = new Runnable() { // from class: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView.1
            @Override // java.lang.Runnable
            public final void run() {
                BrightnessVolumeView.this.mBrightnessSeekBar.setVisibility(4);
                BrightnessVolumeView brightnessVolumeView = BrightnessVolumeView.this;
                GridUIManager gridUIManager = brightnessVolumeView.mGridUIManager;
                if (gridUIManager != null) {
                    ((FlexPanelActivity) gridUIManager).returnToMenu();
                } else {
                    brightnessVolumeView.mMediaVolumeLayout.setVisibility(0);
                    BrightnessVolumeView.this.setDefaultBrightnessView();
                }
            }
        };
        this.mVolumeRunnable = new Runnable() { // from class: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView.2
            @Override // java.lang.Runnable
            public final void run() {
                BrightnessVolumeView.this.mVolumeSeekBar.setVisibility(4);
                BrightnessVolumeView brightnessVolumeView = BrightnessVolumeView.this;
                GridUIManager gridUIManager = brightnessVolumeView.mGridUIManager;
                if (gridUIManager != null) {
                    ((FlexPanelActivity) gridUIManager).returnToMenu();
                    return;
                }
                brightnessVolumeView.mVolumeSeekBar.setEnabled(true);
                BrightnessVolumeView.this.mVolumeSeekBar.setAlpha(1.0f);
                BrightnessVolumeView.this.mVolumeIcon.setAlpha(1.0f);
                BrightnessVolumeView.this.mMediaBrightnessLayout.setVisibility(0);
                BrightnessVolumeView.this.setDefaultVolumeIcon();
            }
        };
        ?? r1 = new SeslSeekBar.OnSeekBarChangeListener() { // from class: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView.3
            public int currentBrightness = -1;

            @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeslSeekBar seslSeekBar, int i, boolean z) {
                if (z) {
                    BrightnessVolumeView brightnessVolumeView = BrightnessVolumeView.this;
                    int i2 = brightnessVolumeView.mMaxBrightness;
                    int i3 = brightnessVolumeView.mMinBrightness;
                    brightnessVolumeView.mDisplayManager.semSetTemporaryBrightness((i - i3) / (i2 - i3));
                    brightnessVolumeView.setBrightnessViewColor(i);
                }
            }

            @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeslSeekBar seslSeekBar) {
                Log.i("BrightnessVolumeView", "mBrightnessSeekBarChangeListener onStartTrackingTouch");
                BrightnessVolumeView brightnessVolumeView = BrightnessVolumeView.this;
                this.currentBrightness = Settings.System.getInt(brightnessVolumeView.mContext.getContentResolver(), "screen_brightness", 0);
                brightnessVolumeView.handlerExcute(brightnessVolumeView.mBrightnessRunnable, false);
            }

            @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeslSeekBar seslSeekBar) {
                TooltipPopup$$ExternalSyntheticOutline0.m(new StringBuilder("mBrightnessSeekBarChangeListener onStopTrackingTouch currentBrightness : "), this.currentBrightness, "BrightnessVolumeView");
                BrightnessVolumeView brightnessVolumeView = BrightnessVolumeView.this;
                this.currentBrightness = brightnessVolumeView.mBrightnessSeekBar.getProgress();
                int i = brightnessVolumeView.mMaxBrightness;
                int i2 = brightnessVolumeView.mMinBrightness;
                brightnessVolumeView.mDisplayManager.semSetTemporaryBrightness((r0 - i2) / (i - i2));
                Settings.System.putInt(brightnessVolumeView.mContext.getContentResolver(), "screen_brightness", brightnessVolumeView.mBrightnessSeekBar.getProgress());
                brightnessVolumeView.handlerExcute(brightnessVolumeView.mBrightnessRunnable, true);
            }
        };
        this.mBrightnessSeekBarChangeListener = r1;
        this.mVolumeSeekBarChangeListener = new SeslSeekBar.OnSeekBarChangeListener() { // from class: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView.4
            @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeslSeekBar seslSeekBar, int i, boolean z) {
                StringBuilder sb = new StringBuilder("mVolumeSeekBarChangeListener onProgressChanged mVolumeSeekBarTracking : ");
                BrightnessVolumeView brightnessVolumeView = BrightnessVolumeView.this;
                sb.append(brightnessVolumeView.mVolumeSeekBarTracking);
                sb.append(", mStreamType : ");
                sb.append(brightnessVolumeView.mStreamType);
                sb.append(", progress : ");
                sb.append(i);
                Log.i("BrightnessVolumeView", sb.toString());
                if (ControlPanelUtils.isAccessibilityEnabled(brightnessVolumeView.mContext) && z) {
                    brightnessVolumeView.mVolumeSeekBarTracking = true;
                }
                if (brightnessVolumeView.mVolumeSeekBarTracking) {
                    if (i > 0 && i < 10) {
                        i = 10;
                    }
                    brightnessVolumeView.mAudioManager.setStreamVolume(brightnessVolumeView.mStreamType, i / 10, 0);
                }
                brightnessVolumeView.setVolumeIcon(brightnessVolumeView.mStreamType);
            }

            @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeslSeekBar seslSeekBar) {
                Log.i("BrightnessVolumeView", "mVolumeSeekBarChangeListener onStartTrackingTouch");
                BrightnessVolumeView brightnessVolumeView = BrightnessVolumeView.this;
                brightnessVolumeView.mVolumeSeekBarTracking = true;
                brightnessVolumeView.handlerExcute(brightnessVolumeView.mVolumeRunnable, false);
            }

            @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeslSeekBar seslSeekBar) {
                Log.i("BrightnessVolumeView", "mVolumeSeekBarChangeListener onStopTrackingTouch");
                BrightnessVolumeView brightnessVolumeView = BrightnessVolumeView.this;
                brightnessVolumeView.mVolumeSeekBarTracking = false;
                brightnessVolumeView.handlerExcute(brightnessVolumeView.mVolumeRunnable, true);
            }
        };
        this.mContext = context;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        this.mDisplayManager = (DisplayManager) context.getSystemService("display");
        AudioManager audioManager = (AudioManager) context.getSystemService(ServiceTuple.MEDIA_CAP_AUDIO);
        this.mAudioManager = audioManager;
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        this.mMotion = new IconMotion(context);
        this.mStreamType = AudioManager.semGetActiveStreamType();
        this.mCurrentRingerMode = audioManager.getRingerMode();
        Log.i("BrightnessVolumeView", "BrightnessVolumeView mStreamType : " + AudioManager.semGetActiveStreamType() + ", mCurrentRingerMode : " + this.mCurrentRingerMode);
        LayoutInflater.from(getContext()).inflate(R.layout.brightness_volume_area, this);
        this.mMediaBrightnessLayout = (LinearLayout) findViewById(R.id.media_brightness_layout);
        this.mBrightnessSeekBar = (SeslSeekBar) findViewById(R.id.media_brightness_seekbar);
        this.mMediaVolumeLayout = (FrameLayout) findViewById(R.id.media_volume_layout);
        this.mMediaVolumeAnimatedIconLayout = (FrameLayout) findViewById(R.id.media_volume_animated_icon_layout);
        this.mVolumeSeekBar = (SeslSeekBar) findViewById(R.id.media_volume_seekbar);
        this.mBrightnessIcon = (ImageView) findViewById(R.id.brightness_icon);
        this.mVolumeIcon = (ImageView) findViewById(R.id.volume_icon);
        this.mNote = (ImageView) findViewById(R.id.volume_media_icon_note);
        this.mWaveL = (ImageView) findViewById(R.id.volume_media_icon_wave_l);
        this.mWaveS = (ImageView) findViewById(R.id.volume_media_icon_wave_s);
        this.mMute = (ImageView) findViewById(R.id.volume_media_icon_mute);
        this.mSplash = (ImageView) findViewById(R.id.volume_icon_mute_splash);
        this.mMaxBrightness = powerManager.semGetMaximumScreenBrightnessSetting();
        this.mMinBrightness = powerManager.semGetMinimumScreenBrightnessSetting();
        this.mBrightnessSeekBar.setMax(this.mMaxBrightness);
        this.mBrightnessSeekBar.setMin(this.mMinBrightness);
        final int i = 0;
        this.mBrightnessSeekBar.setProgress(Settings.System.getInt(context.getContentResolver(), "screen_brightness", 0));
        this.mBrightnessSeekBar.mOnSeekBarChangeListener = r1;
        this.mMediaBrightnessLayout.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView$$ExternalSyntheticLambda0
            public final /* synthetic */ BrightnessVolumeView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        BrightnessVolumeView brightnessVolumeView = this.f$0;
                        brightnessVolumeView.mMediaBrightnessLayout.setVisibility(0);
                        if (brightnessVolumeView.mBrightnessSeekBar.getVisibility() == 0) {
                            brightnessVolumeView.handlerExcute(brightnessVolumeView.mBrightnessRunnable, false);
                            brightnessVolumeView.mBrightnessSeekBar.setVisibility(4);
                            GridUIManager gridUIManager = brightnessVolumeView.mGridUIManager;
                            if (gridUIManager != null) {
                                ((FlexPanelActivity) gridUIManager).returnToMenu();
                                return;
                            } else {
                                brightnessVolumeView.mMediaVolumeLayout.setVisibility(0);
                                brightnessVolumeView.setDefaultBrightnessView();
                                return;
                            }
                        }
                        brightnessVolumeView.mMediaVolumeLayout.setVisibility(4);
                        brightnessVolumeView.mBrightnessSeekBar.setVisibility(0);
                        brightnessVolumeView.setBrightnessViewColor(Settings.System.getInt(brightnessVolumeView.mContext.getContentResolver(), "screen_brightness", 0));
                        if (brightnessVolumeView.mAccessibilityManager.semIsScreenReaderEnabled()) {
                            brightnessVolumeView.mBrightnessSeekBar.semRequestAccessibilityFocus();
                        }
                        brightnessVolumeView.handlerExcute(brightnessVolumeView.mBrightnessRunnable, true);
                        return;
                    default:
                        BrightnessVolumeView brightnessVolumeView2 = this.f$0;
                        brightnessVolumeView2.mMediaVolumeLayout.setVisibility(0);
                        if (brightnessVolumeView2.mVolumeSeekBar.getVisibility() == 0) {
                            brightnessVolumeView2.handlerExcute(brightnessVolumeView2.mVolumeRunnable, false);
                            brightnessVolumeView2.mVolumeSeekBar.setVisibility(4);
                            GridUIManager gridUIManager2 = brightnessVolumeView2.mGridUIManager;
                            if (gridUIManager2 != null) {
                                ((FlexPanelActivity) gridUIManager2).returnToMenu();
                                return;
                            } else {
                                brightnessVolumeView2.mMediaBrightnessLayout.setVisibility(0);
                                brightnessVolumeView2.setDefaultVolumeIcon();
                                return;
                            }
                        }
                        brightnessVolumeView2.mMediaBrightnessLayout.setVisibility(4);
                        brightnessVolumeView2.mVolumeSeekBar.setVisibility(0);
                        brightnessVolumeView2.mStreamType = AudioManager.semGetActiveStreamType();
                        if (ControlPanelUtils.isClockActivity(brightnessVolumeView2.mContext)) {
                            brightnessVolumeView2.mVolumeSeekBar.setEnabled(false);
                            brightnessVolumeView2.mVolumeSeekBar.setAlpha(0.4f);
                            brightnessVolumeView2.mVolumeIcon.setAlpha(0.4f);
                        } else {
                            brightnessVolumeView2.setVolumeSeekBar(brightnessVolumeView2.mStreamType);
                            brightnessVolumeView2.setVolumeIcon(brightnessVolumeView2.mStreamType);
                        }
                        if (brightnessVolumeView2.mAccessibilityManager.semIsScreenReaderEnabled()) {
                            brightnessVolumeView2.mVolumeSeekBar.semRequestAccessibilityFocus();
                        }
                        brightnessVolumeView2.handlerExcute(brightnessVolumeView2.mVolumeRunnable, true);
                        return;
                }
            }
        });
        final int i2 = 1;
        this.mMediaVolumeLayout.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView$$ExternalSyntheticLambda0
            public final /* synthetic */ BrightnessVolumeView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        BrightnessVolumeView brightnessVolumeView = this.f$0;
                        brightnessVolumeView.mMediaBrightnessLayout.setVisibility(0);
                        if (brightnessVolumeView.mBrightnessSeekBar.getVisibility() == 0) {
                            brightnessVolumeView.handlerExcute(brightnessVolumeView.mBrightnessRunnable, false);
                            brightnessVolumeView.mBrightnessSeekBar.setVisibility(4);
                            GridUIManager gridUIManager = brightnessVolumeView.mGridUIManager;
                            if (gridUIManager != null) {
                                ((FlexPanelActivity) gridUIManager).returnToMenu();
                                return;
                            } else {
                                brightnessVolumeView.mMediaVolumeLayout.setVisibility(0);
                                brightnessVolumeView.setDefaultBrightnessView();
                                return;
                            }
                        }
                        brightnessVolumeView.mMediaVolumeLayout.setVisibility(4);
                        brightnessVolumeView.mBrightnessSeekBar.setVisibility(0);
                        brightnessVolumeView.setBrightnessViewColor(Settings.System.getInt(brightnessVolumeView.mContext.getContentResolver(), "screen_brightness", 0));
                        if (brightnessVolumeView.mAccessibilityManager.semIsScreenReaderEnabled()) {
                            brightnessVolumeView.mBrightnessSeekBar.semRequestAccessibilityFocus();
                        }
                        brightnessVolumeView.handlerExcute(brightnessVolumeView.mBrightnessRunnable, true);
                        return;
                    default:
                        BrightnessVolumeView brightnessVolumeView2 = this.f$0;
                        brightnessVolumeView2.mMediaVolumeLayout.setVisibility(0);
                        if (brightnessVolumeView2.mVolumeSeekBar.getVisibility() == 0) {
                            brightnessVolumeView2.handlerExcute(brightnessVolumeView2.mVolumeRunnable, false);
                            brightnessVolumeView2.mVolumeSeekBar.setVisibility(4);
                            GridUIManager gridUIManager2 = brightnessVolumeView2.mGridUIManager;
                            if (gridUIManager2 != null) {
                                ((FlexPanelActivity) gridUIManager2).returnToMenu();
                                return;
                            } else {
                                brightnessVolumeView2.mMediaBrightnessLayout.setVisibility(0);
                                brightnessVolumeView2.setDefaultVolumeIcon();
                                return;
                            }
                        }
                        brightnessVolumeView2.mMediaBrightnessLayout.setVisibility(4);
                        brightnessVolumeView2.mVolumeSeekBar.setVisibility(0);
                        brightnessVolumeView2.mStreamType = AudioManager.semGetActiveStreamType();
                        if (ControlPanelUtils.isClockActivity(brightnessVolumeView2.mContext)) {
                            brightnessVolumeView2.mVolumeSeekBar.setEnabled(false);
                            brightnessVolumeView2.mVolumeSeekBar.setAlpha(0.4f);
                            brightnessVolumeView2.mVolumeIcon.setAlpha(0.4f);
                        } else {
                            brightnessVolumeView2.setVolumeSeekBar(brightnessVolumeView2.mStreamType);
                            brightnessVolumeView2.setVolumeIcon(brightnessVolumeView2.mStreamType);
                        }
                        if (brightnessVolumeView2.mAccessibilityManager.semIsScreenReaderEnabled()) {
                            brightnessVolumeView2.mVolumeSeekBar.semRequestAccessibilityFocus();
                        }
                        brightnessVolumeView2.handlerExcute(brightnessVolumeView2.mVolumeRunnable, true);
                        return;
                }
            }
        });
        if (SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP")) {
            ControlPanelUtils.setRatioPadding(context, this.mBrightnessSeekBar, 3.9d, 0.0d, 7.2d, 0.0d);
            ControlPanelUtils.setRatioPadding(context, this.mVolumeSeekBar, 3.9d, 0.0d, 7.2d, 0.0d);
            ControlPanelUtils.setRatioPadding(context, findViewById(R.id.flex_panel_brightness_area), 7.2d, 0.0d, 0.0d, 0.0d);
            ControlPanelUtils.setRatioPadding(context, findViewById(R.id.flex_panel_volume_area), 7.2d, 0.0d, 0.0d, 0.0d);
        }
        setDefaultBrightnessView();
        setDefaultVolumeIcon();
    }

    public final void handlerExcute(Runnable runnable, boolean z) {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(runnable);
            if (z && !ControlPanelUtils.isAccessibilityEnabled(this.mContext)) {
                handler.postDelayed(runnable, 2000L);
            }
        }
    }

    public final void setBrightnessViewColor(int i) {
        if (i >= 217) {
            this.mBrightnessIcon.setImageTintList(ContextCompat.getColorStateList(R.color.brightness_volume_other_color, this.mContext));
            this.mBrightnessSeekBar.setProgressTintList(ContextCompat.getColorStateList(R.color.brightness_volume_other_color, this.mContext));
            this.mBrightnessSeekBar.setThumbTintList(ContextCompat.getColorStateList(R.color.brightness_volume_other_color, this.mContext));
            this.mBrightnessSeekBar.setProgressBackgroundTintList(ContextCompat.getColorStateList(R.color.brightness_volume_other_color_background, this.mContext));
            return;
        }
        setDefaultBrightnessView();
    }

    public final void setDefaultBrightnessView() {
        this.mBrightnessIcon.setImageTintList(ContextCompat.getColorStateList(R.color.panel_menu_icon_color_expand, this.mContext));
        this.mBrightnessSeekBar.setProgressTintList(ContextCompat.getColorStateList(R.color.seekbar_color_expand, this.mContext));
        this.mBrightnessSeekBar.setThumbTintList(ContextCompat.getColorStateList(R.color.seekbar_color_expand, this.mContext));
        this.mBrightnessSeekBar.setProgressBackgroundTintList(ContextCompat.getColorStateList(R.color.seekbar_background_color_expand, this.mContext));
    }

    public final void setDefaultVolumeIcon() {
        this.mVolumeIcon.setVisibility(0);
        this.mMediaVolumeAnimatedIconLayout.setVisibility(4);
        this.mVolumeIcon.setImageDrawable(this.mContext.getDrawable(R.drawable.ic_ringtone_sound));
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setVolumeIcon(int r32) {
        /*
            Method dump skipped, instructions count: 1084
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.controlpanel.widget.BrightnessVolumeView.setVolumeIcon(int):void");
    }

    public final void setVolumeSeekBar(int i) {
        boolean z;
        int streamVolume = this.mAudioManager.getStreamVolume(this.mStreamType);
        this.mStreamType = i;
        this.mGetRingerMode = this.mAudioManager.getRingerMode();
        StringBuilder sb = new StringBuilder("setVolumeSeekBar mStreamType : ");
        AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(sb, this.mStreamType, ", volumeValue : ", streamVolume, ", mGetRingerMode : ");
        TooltipPopup$$ExternalSyntheticOutline0.m(sb, this.mGetRingerMode, "BrightnessVolumeView");
        int i2 = this.mStreamType;
        if (i2 != 0 && i2 != 6) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            this.mVolumeSeekBar.setMax((this.mAudioManager.getStreamMaxVolume(i2) * 10) + 1);
            this.mVolumeSeekBar.setProgress((streamVolume * 10) + 1);
        } else {
            this.mVolumeSeekBar.setMax(this.mAudioManager.getStreamMaxVolume(i2) * 10);
            this.mVolumeSeekBar.setProgress(streamVolume * 10);
        }
        this.mVolumeSeekBar.mOnSeekBarChangeListener = this.mVolumeSeekBarChangeListener;
    }
}
