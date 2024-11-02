package com.android.systemui.qp;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.provider.Settings;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.airbnb.lottie.LottieAnimationView;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.qp.util.AnimationUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubroomBrightnessSettingsView extends LinearLayout {
    public static int SEEK_BAR_MAX_VALUE;
    public final AnimationUtils mAnimationUtils;
    public int mBrightness;
    public final int[] mBrightnessLevels;
    public final Context mContext;
    public int mDualSeekBarThreshold;
    public float mIconAnimationValue;
    public boolean mIsSliderWarning;
    public ImageView mMoreIcon;
    public SubScreenBrightnessToggleSeekBar mSeekBar;
    public LottieAnimationView mSunIcon;

    public SubroomBrightnessSettingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
        int[] intArray = context.getResources().getIntArray(17236310);
        this.mBrightnessLevels = intArray;
        SEEK_BAR_MAX_VALUE = intArray[intArray.length - 1];
        this.mAnimationUtils = (AnimationUtils) Dependency.get(AnimationUtils.class);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mBrightness = Settings.System.getIntForUser(this.mContext.getContentResolver(), "sub_screen_brightness", 73, -2);
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onAttachedToWindow() mBrightness: "), this.mBrightness, "SubroomBrightnessSettingsView");
        this.mSeekBar.setProgress(this.mBrightness);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        ImageView imageView = this.mMoreIcon;
        if (imageView != null) {
            imageView.setContentDescription(this.mContext.getString(R.string.sec_brightness_detail_content_description));
            this.mMoreIcon.setColorFilter(this.mContext.getColor(R.color.subroom_qp_seekbar_icon_color), PorterDuff.Mode.SRC_IN);
        }
        SubScreenBrightnessToggleSeekBar subScreenBrightnessToggleSeekBar = this.mSeekBar;
        if (subScreenBrightnessToggleSeekBar != null) {
            subScreenBrightnessToggleSeekBar.setContentDescription(this.mContext.getString(R.string.subscreen_brightness_button_talkback_label));
            SubScreenBrightnessToggleSeekBar subScreenBrightnessToggleSeekBar2 = this.mSeekBar;
            Context context = this.mContext;
            if (this.mIsSliderWarning) {
                i = R.drawable.sec_brightness_progress_warning_drawable;
            } else {
                i = R.drawable.subroom_seekbar_background;
            }
            subScreenBrightnessToggleSeekBar2.setProgressDrawable(context.getDrawable(i));
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        SubScreenBrightnessToggleSeekBar subScreenBrightnessToggleSeekBar = (SubScreenBrightnessToggleSeekBar) findViewById(R.id.subroom_brightness_seekbar);
        this.mSeekBar = subScreenBrightnessToggleSeekBar;
        subScreenBrightnessToggleSeekBar.setMax(SEEK_BAR_MAX_VALUE);
        this.mSeekBar.setContentDescription(this.mContext.getString(R.string.subscreen_brightness_button_talkback_label));
        if (QpRune.QUICK_PANEL_SUBSCREEN) {
            this.mSunIcon = (LottieAnimationView) findViewById(R.id.brightness_panel_status_icon);
            this.mMoreIcon = (ImageView) findViewById(R.id.brightness_panel_more_icon);
            LottieAnimationView lottieAnimationView = this.mSunIcon;
            if (lottieAnimationView != null) {
                this.mAnimationUtils.getClass();
                lottieAnimationView.setAnimation("brightness_icon_85.json");
            }
            ImageView imageView = this.mMoreIcon;
            if (imageView != null) {
                imageView.setColorFilter(this.mContext.getColor(R.color.subroom_qp_seekbar_icon_color), PorterDuff.Mode.SRC_IN);
            }
            int floor = (int) Math.floor((this.mSeekBar.getMax() * this.mContext.getResources().getInteger(R.integer.sec_brightness_slider_warning_percent)) / 100.0d);
            this.mDualSeekBarThreshold = floor;
            if (floor <= this.mSeekBar.getProgress()) {
                playBrightnessIconAnimation();
            }
        }
    }

    public final void playBrightnessIconAnimation() {
        if (this.mSunIcon == null) {
            return;
        }
        float progress = this.mSeekBar.getProgress() / this.mSeekBar.getMax();
        if (Math.abs(this.mIconAnimationValue - progress) > 1.0E-6d) {
            this.mIconAnimationValue = progress;
            this.mSunIcon.setProgressInternal(progress, true);
        }
    }

    public final void setDualSeekBarResources(boolean z, boolean z2) {
        int i;
        if (z != this.mIsSliderWarning) {
            this.mIsSliderWarning = z;
            SubScreenBrightnessToggleSeekBar subScreenBrightnessToggleSeekBar = this.mSeekBar;
            if (subScreenBrightnessToggleSeekBar != null) {
                Context context = this.mContext;
                if (z) {
                    i = R.drawable.sec_brightness_progress_warning_drawable;
                } else if (z2) {
                    i = R.drawable.subroom_seekbar_background_detail;
                } else {
                    i = R.drawable.subroom_seekbar_background;
                }
                subScreenBrightnessToggleSeekBar.setProgressDrawable(context.getDrawable(i));
            }
        }
        playBrightnessIconAnimation();
    }

    public final void setProgress(int i) {
        this.mSeekBar.setProgress(i);
        if (this.mDualSeekBarThreshold <= i) {
            playBrightnessIconAnimation();
        }
    }
}
