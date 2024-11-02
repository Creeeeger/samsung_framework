package com.android.systemui.battery;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.BatteryManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import androidx.vectordrawable.graphics.drawable.ArgbEvaluator;
import com.android.systemui.DualToneHandler;
import com.android.systemui.R;
import com.android.systemui.R$styleable;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.phone.SwitchableDoubleShadowTextView;
import com.android.systemui.statusbar.policy.BatteryControllerImpl;
import com.android.systemui.statusbar.policy.BatteryControllerImpl$$ExternalSyntheticLambda0;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class BatteryMeterView extends LinearLayout implements DarkIconDispatcher.DarkReceiver {
    public boolean mApplyShadowToPercentView;
    public BatteryMeterViewController$$ExternalSyntheticLambda1 mBatteryEstimateFetcher;
    public float mBatteryIconDarkModeAlpha;
    public float mBatteryIconLightModeAlpha;
    public final ImageView mBatteryIconView;
    public SwitchableDoubleShadowTextView mBatteryPercentView;
    public boolean mCharging;
    public int mDarkModeBackgroundColor;
    public int mDarkModeFillColor;
    public boolean mDisplayShieldEnabled;
    public final DualToneHandler mDualToneHandler;
    public String mEstimateText;
    public int mGrayColor;
    public boolean mIsBatteryDefender;
    public boolean mIsDirectPowerMode;
    public boolean mIsGrayColor;
    public int mLevel;
    public int mLightModeBackgroundColor;
    public int mLightModeFillColor;
    public int mNonAdaptedBackgroundColor;
    public int mNonAdaptedForegroundColor;
    public float mRatio;
    public final LegacySamsungBatteryMeterDrawable mSamsungDrawable;
    public int mShowPercentMode;
    public boolean mShowPercentSamsungSetting;
    public int mTextColor;

    public BatteryMeterView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CharSequence getBatteryPercentViewText() {
        return this.mBatteryPercentView.getText();
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        SwitchableDoubleShadowTextView switchableDoubleShadowTextView = this.mBatteryPercentView;
        if (switchableDoubleShadowTextView != null) {
            removeView(switchableDoubleShadowTextView);
            this.mBatteryPercentView = null;
        }
        updateShowPercent();
    }

    @Override // com.android.systemui.plugins.DarkIconDispatcher.DarkReceiver
    public final void onDarkChanged(ArrayList arrayList, float f, int i) {
        float f2;
        boolean isInAreas = DarkIconDispatcher.isInAreas(arrayList, this);
        if (!isInAreas) {
            f = 0.0f;
        }
        this.mSamsungDrawable.darkIntensity = f;
        if (isInAreas) {
            float f3 = this.mBatteryIconLightModeAlpha;
            f2 = DependencyGraph$$ExternalSyntheticOutline0.m(this.mBatteryIconDarkModeAlpha, f3, f, f3);
        } else {
            f2 = 0.74f;
        }
        if (this.mIsGrayColor) {
            this.mGrayColor = i;
            f2 = 1.0f;
        }
        this.mBatteryIconView.setAlpha(f2);
        int i2 = this.mLightModeFillColor;
        int i3 = this.mDarkModeFillColor;
        ArgbEvaluator argbEvaluator = ArgbEvaluator.sInstance;
        this.mNonAdaptedForegroundColor = ((Integer) argbEvaluator.evaluate(f, Integer.valueOf(i2), Integer.valueOf(i3))).intValue();
        this.mNonAdaptedBackgroundColor = ((Integer) argbEvaluator.evaluate(f, Integer.valueOf(this.mLightModeBackgroundColor), Integer.valueOf(this.mDarkModeBackgroundColor))).intValue();
        updateColors(this.mNonAdaptedForegroundColor, DarkIconDispatcher.getTint(arrayList, this, i));
    }

    public final void scaleBatteryMeterViews() {
        float f;
        int i;
        Resources resources = getContext().getResources();
        TypedValue typedValue = new TypedValue();
        boolean z = true;
        resources.getValue(R.dimen.status_bar_icon_scale_factor, typedValue, true);
        typedValue.getFloat();
        float f2 = this.mRatio;
        if (this.mBatteryPercentView != null) {
            this.mBatteryPercentView.setTextSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.status_bar_clock_size) * this.mRatio);
        }
        float dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.samsung_status_bar_battery_icon_height) * f2;
        float dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.samsung_status_bar_battery_icon_width) * f2;
        if (!this.mDisplayShieldEnabled || !this.mIsBatteryDefender) {
            z = false;
        }
        int i2 = BatterySpecs.$r8$clinit;
        if (!z) {
            f = dimensionPixelSize;
        } else {
            f = (dimensionPixelSize / 20.0f) * 23.0f;
        }
        if (z) {
            dimensionPixelSize2 = (dimensionPixelSize2 / 12.0f) * 18.0f;
        }
        if (z) {
            i = Math.round(f - dimensionPixelSize) - resources.getDimensionPixelSize(R.dimen.status_bar_battery_extra_vertical_spacing);
        } else {
            i = 0;
        }
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.battery_margin_bottom);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(Math.round(dimensionPixelSize2), Math.round(f));
        layoutParams.setMargins(0, i, 0, dimensionPixelSize3);
        this.mBatteryIconView.setLayoutParams(layoutParams);
        this.mBatteryIconView.invalidateDrawable(this.mSamsungDrawable);
    }

    public final void setPercentShowMode(int i) {
        if (i == this.mShowPercentMode) {
            return;
        }
        this.mShowPercentMode = i;
        updateShowPercent();
        updatePercentText();
    }

    public final void setPercentTextAtCurrentLevel() {
        if (this.mBatteryPercentView != null) {
            String string = getContext().getString(R.string.status_bar_settings_uniform_battery_meter_format, Integer.valueOf(this.mLevel));
            if (!TextUtils.isEmpty(string)) {
                string = string.replaceAll(" ", "").trim();
            }
            if (!TextUtils.equals(this.mBatteryPercentView.getText(), string)) {
                this.mBatteryPercentView.setText(string);
            }
        }
        updateContentDescription();
    }

    public final void updateColors(int i, int i2) {
        if (this.mIsGrayColor) {
            this.mSamsungDrawable.setGrayColors(this.mGrayColor);
            int i3 = this.mGrayColor;
            this.mTextColor = i3;
            SwitchableDoubleShadowTextView switchableDoubleShadowTextView = this.mBatteryPercentView;
            if (switchableDoubleShadowTextView != null) {
                switchableDoubleShadowTextView.setTextColor(i3);
                return;
            }
            return;
        }
        this.mSamsungDrawable.setColors(i);
        this.mTextColor = i2;
        SwitchableDoubleShadowTextView switchableDoubleShadowTextView2 = this.mBatteryPercentView;
        if (switchableDoubleShadowTextView2 != null) {
            switchableDoubleShadowTextView2.setTextColor(i2);
        }
    }

    public final void updateContentDescription() {
        String string;
        int i;
        Context context = getContext();
        if (this.mShowPercentMode == 3 && !TextUtils.isEmpty(this.mEstimateText)) {
            if (this.mIsBatteryDefender) {
                i = R.string.accessibility_battery_level_charging_paused_with_estimate;
            } else {
                i = R.string.accessibility_battery_level_with_estimate;
            }
            string = context.getString(i, Integer.valueOf(this.mLevel), this.mEstimateText);
        } else if (this.mIsBatteryDefender) {
            string = context.getString(R.string.accessibility_battery_level_charging_paused, Integer.valueOf(this.mLevel));
        } else if (this.mCharging) {
            string = context.getString(R.string.accessibility_battery_level_charging, Integer.valueOf(this.mLevel));
        } else {
            string = context.getString(R.string.accessibility_battery_level, Integer.valueOf(this.mLevel));
        }
        setContentDescription(string);
    }

    public final void updatePercentText() {
        BatteryMeterViewController$$ExternalSyntheticLambda1 batteryMeterViewController$$ExternalSyntheticLambda1 = this.mBatteryEstimateFetcher;
        if (batteryMeterViewController$$ExternalSyntheticLambda1 == null) {
            setPercentTextAtCurrentLevel();
            return;
        }
        if (this.mBatteryPercentView != null) {
            if (this.mShowPercentMode == 3 && !this.mCharging) {
                BatteryMeterView$$ExternalSyntheticLambda0 batteryMeterView$$ExternalSyntheticLambda0 = new BatteryMeterView$$ExternalSyntheticLambda0(this);
                BatteryControllerImpl batteryControllerImpl = (BatteryControllerImpl) batteryMeterViewController$$ExternalSyntheticLambda1.f$0;
                synchronized (batteryControllerImpl.mFetchCallbacks) {
                    batteryControllerImpl.mFetchCallbacks.add(batteryMeterView$$ExternalSyntheticLambda0);
                }
                if (!batteryControllerImpl.mFetchingEstimate) {
                    batteryControllerImpl.mFetchingEstimate = true;
                    batteryControllerImpl.mBgHandler.post(new BatteryControllerImpl$$ExternalSyntheticLambda0(batteryControllerImpl, 0));
                    return;
                }
                return;
            }
            setPercentTextAtCurrentLevel();
            return;
        }
        updateContentDescription();
    }

    public final void updateShowPercent() {
        boolean z;
        int i;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        SwitchableDoubleShadowTextView switchableDoubleShadowTextView = this.mBatteryPercentView;
        boolean z2 = true;
        if (switchableDoubleShadowTextView != null) {
            z = true;
        } else {
            z = false;
        }
        if (((!this.mShowPercentSamsungSetting || this.mShowPercentMode == 2) && (i = this.mShowPercentMode) != 1 && i != 3) || this.mIsDirectPowerMode) {
            z2 = false;
        }
        if (z2) {
            if (!z) {
                SwitchableDoubleShadowTextView switchableDoubleShadowTextView2 = (SwitchableDoubleShadowTextView) LayoutInflater.from(getContext()).inflate(R.layout.battery_percentage_view, (ViewGroup) null);
                this.mBatteryPercentView = switchableDoubleShadowTextView2;
                switchableDoubleShadowTextView2.shadowEnabled = this.mApplyShadowToPercentView;
                int i2 = this.mTextColor;
                if (i2 != 0) {
                    switchableDoubleShadowTextView2.setTextColor(i2);
                }
                updatePercentText();
                addView(this.mBatteryPercentView, 0, new ViewGroup.LayoutParams(-2, -1));
                SwitchableDoubleShadowTextView switchableDoubleShadowTextView3 = this.mBatteryPercentView;
                if (switchableDoubleShadowTextView3 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) switchableDoubleShadowTextView3.getLayoutParams()) != null && getResources() != null) {
                    marginLayoutParams.setMarginEnd(getResources().getDimensionPixelSize(R.dimen.battery_level_margin_end));
                    this.mBatteryPercentView.setLayoutParams(marginLayoutParams);
                }
                scaleBatteryMeterViews();
                return;
            }
            return;
        }
        if (z) {
            removeView(switchableDoubleShadowTextView);
            this.mBatteryPercentView = null;
        }
    }

    public BatteryMeterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mShowPercentMode = 0;
        this.mEstimateText = null;
        this.mApplyShadowToPercentView = false;
        setOrientation(0);
        setGravity(8388627);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BatteryMeterView, i, 0);
        obtainStyledAttributes.getColor(0, context.getColor(R.color.meter_background_color));
        obtainStyledAttributes.getResourceId(1, 0);
        LegacySamsungBatteryMeterDrawable legacySamsungBatteryMeterDrawable = new LegacySamsungBatteryMeterDrawable(context);
        this.mSamsungDrawable = legacySamsungBatteryMeterDrawable;
        this.mBatteryIconLightModeAlpha = context.getResources().getFloat(R.dimen.status_bar_battery_light_mode_alpha);
        this.mBatteryIconDarkModeAlpha = context.getResources().getFloat(R.dimen.status_bar_battery_dark_mode_alpha);
        this.mLightModeFillColor = context.getColor(R.color.status_bar_battery_frame_light_color);
        this.mDarkModeFillColor = context.getColor(R.color.status_bar_battery_frame_dark_color);
        this.mLightModeBackgroundColor = context.getColor(R.color.light_mode_battery_icon_color_dual_tone_background);
        this.mDarkModeBackgroundColor = context.getColor(R.color.dark_mode_battery_icon_color_dual_tone_background);
        obtainStyledAttributes.recycle();
        context.getResources().getBoolean(android.R.bool.config_cbrs_supported);
        this.mLevel = ((BatteryManager) context.getSystemService("batterymanager")).getIntProperty(4);
        Log.d("BatteryMeterView", "Set initial level=" + this.mLevel);
        ImageView imageView = new ImageView(context);
        this.mBatteryIconView = imageView;
        imageView.setImageDrawable(legacySamsungBatteryMeterDrawable);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(getResources().getDimensionPixelSize(R.dimen.samsung_status_bar_battery_icon_width), getResources().getDimensionPixelSize(R.dimen.samsung_status_bar_battery_icon_height));
        marginLayoutParams.setMargins(0, 0, 0, getResources().getDimensionPixelOffset(R.dimen.battery_margin_bottom));
        addView(imageView, marginLayoutParams);
        updateShowPercent();
        this.mDualToneHandler = new DualToneHandler(context);
        onDarkChanged(new ArrayList(), 0.0f, -301989889);
        setClipChildren(false);
        setClipToPadding(false);
    }
}
