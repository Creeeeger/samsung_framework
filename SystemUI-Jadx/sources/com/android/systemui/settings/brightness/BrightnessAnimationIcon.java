package com.android.systemui.settings.brightness;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.value.LottieValueCallback;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.qp.util.AnimationUtils;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BrightnessAnimationIcon {
    public final LottieAnimationView mBrightnessIcon;
    public float mIconAnimationValue;

    public BrightnessAnimationIcon(LottieAnimationView lottieAnimationView) {
        this.mBrightnessIcon = lottieAnimationView;
    }

    public final void initBrightnessIconResources(Context context) {
        LottieAnimationView lottieAnimationView = this.mBrightnessIcon;
        if (lottieAnimationView == null) {
            return;
        }
        ((AnimationUtils) Dependency.get(AnimationUtils.class)).getClass();
        lottieAnimationView.setAnimation("brightness_icon_85.json");
        if (DeviceState.isOpenTheme(context) || ((SettingsHelper) Dependency.get(SettingsHelper.class)).isColorThemeEnabled$1() || context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
            lottieAnimationView.addValueCallback(new KeyPath("normal", "**"), LottieProperty.COLOR_FILTER, new LottieValueCallback(new PorterDuffColorFilter(context.getResources().getColor(R.color.animated_brightness_icon_color, null), PorterDuff.Mode.SRC_ATOP)));
        }
    }

    public final void playBrightnessIconAnimation(int i, int i2) {
        LottieAnimationView lottieAnimationView = this.mBrightnessIcon;
        if (lottieAnimationView == null) {
            return;
        }
        float f = i / i2;
        if (Math.abs(this.mIconAnimationValue - f) > 1.0E-6d) {
            this.mIconAnimationValue = f;
            lottieAnimationView.setProgressInternal(f, true);
        }
    }
}
