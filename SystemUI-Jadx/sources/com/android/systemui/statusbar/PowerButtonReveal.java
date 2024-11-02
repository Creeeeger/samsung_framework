package com.android.systemui.statusbar;

import android.view.animation.Interpolator;
import com.android.app.animation.Interpolators;
import com.android.systemui.LsRune;
import com.android.systemui.statusbar.LightRevealEffect;
import com.android.systemui.util.leak.RotationUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PowerButtonReveal implements LightRevealEffect {
    public final float powerButtonY;
    public final float OFF_SCREEN_START_AMOUNT = 0.05f;
    public final float INCREASE_MULTIPLIER = 1.25f;

    public PowerButtonReveal(float f) {
        this.powerButtonY = f;
    }

    @Override // com.android.systemui.statusbar.LightRevealEffect
    public final void setRevealAmountOnScrim(float f, LightRevealScrim lightRevealScrim) {
        Interpolator interpolator;
        boolean z;
        boolean z2 = LsRune.AOD_LIGHT_REVEAL;
        if (z2) {
            SecLightRevealScrimHelper.Companion.getClass();
            interpolator = SecLightRevealScrimHelper.SEC_LIGHT_REVEAL_INTERPOLATOR;
        } else {
            interpolator = Interpolators.FAST_OUT_SLOW_IN_REVERSE;
        }
        float interpolation = interpolator.getInterpolation(f);
        LightRevealEffect.Companion.getClass();
        lightRevealScrim.setRevealGradientEndColorAlpha(1.0f - LightRevealEffect.Companion.getPercentPastThreshold(interpolation, 0.5f));
        lightRevealScrim.interpolatedRevealAmount = interpolation;
        if (z2) {
            float f2 = 1.0f - f;
            if (lightRevealScrim.revealDimGradientEndColorAlpha == f2) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                lightRevealScrim.revealDimGradientEndColorAlpha = f2;
                lightRevealScrim.setPaintColorFilter();
            }
        }
        int rotation = RotationUtils.getRotation(lightRevealScrim.getContext());
        float f3 = this.powerButtonY;
        float f4 = this.INCREASE_MULTIPLIER;
        float f5 = this.OFF_SCREEN_START_AMOUNT;
        if (rotation != 0) {
            if (rotation != 1) {
                float f6 = f5 + 1.0f;
                lightRevealScrim.setRevealGradientBounds((lightRevealScrim.getWidth() - f3) - (lightRevealScrim.getWidth() * interpolation), (lightRevealScrim.getHeight() * f6) - ((lightRevealScrim.getHeight() * f4) * interpolation), (lightRevealScrim.getWidth() * interpolation) + (lightRevealScrim.getWidth() - f3), (lightRevealScrim.getHeight() * f4 * interpolation) + (f6 * lightRevealScrim.getHeight()));
                return;
            }
            lightRevealScrim.setRevealGradientBounds(f3 - (lightRevealScrim.getWidth() * interpolation), ((-lightRevealScrim.getHeight()) * f5) - ((lightRevealScrim.getHeight() * f4) * interpolation), (lightRevealScrim.getWidth() * interpolation) + f3, (lightRevealScrim.getHeight() * f4 * interpolation) + ((-lightRevealScrim.getHeight()) * f5));
            return;
        }
        float f7 = f5 + 1.0f;
        lightRevealScrim.setRevealGradientBounds((lightRevealScrim.getWidth() * f7) - ((lightRevealScrim.getWidth() * f4) * interpolation), f3 - (lightRevealScrim.getHeight() * interpolation), (lightRevealScrim.getWidth() * f4 * interpolation) + (f7 * lightRevealScrim.getWidth()), (lightRevealScrim.getHeight() * interpolation) + f3);
    }
}
