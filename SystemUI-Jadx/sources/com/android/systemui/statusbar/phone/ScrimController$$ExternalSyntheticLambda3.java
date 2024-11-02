package com.android.systemui.statusbar.phone;

import com.android.internal.colorextraction.ColorExtractor;
import com.android.internal.util.function.TriConsumer;
import com.android.systemui.BasicRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ScrimController$$ExternalSyntheticLambda3 implements TriConsumer {
    public final /* synthetic */ LightBarController f$0;

    public /* synthetic */ ScrimController$$ExternalSyntheticLambda3(LightBarController lightBarController) {
        this.f$0 = lightBarController;
    }

    public final void accept(Object obj, Object obj2, Object obj3) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        LightBarController lightBarController = this.f$0;
        ScrimState scrimState = (ScrimState) obj;
        float floatValue = ((Float) obj2).floatValue();
        ColorExtractor.GradientColors gradientColors = (ColorExtractor.GradientColors) obj3;
        lightBarController.getClass();
        boolean z10 = BasicRune.NAVBAR_LIGHTBAR;
        boolean z11 = true;
        if (z10 && lightBarController.mNavBarStateManager.isOpaqueNavigationBar()) {
            z = true;
        } else {
            z = false;
        }
        boolean z12 = lightBarController.mPanelExpanded;
        boolean z13 = lightBarController.mPanelHasWhiteBg;
        float f = LightBarController.NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD;
        if (lightBarController.mUseNewLightBarLogic) {
            boolean z14 = lightBarController.mBouncerVisible;
            boolean z15 = lightBarController.mForceDarkForScrim;
            boolean z16 = lightBarController.mForceLightForScrim;
            if (scrimState != ScrimState.BOUNCER && scrimState != ScrimState.BOUNCER_SCRIMMED) {
                z7 = false;
            } else {
                z7 = true;
            }
            lightBarController.mBouncerVisible = z7;
            if (!z7 && floatValue < f) {
                z8 = false;
            } else {
                z8 = true;
            }
            boolean supportsDarkText = gradientColors.supportsDarkText();
            if (z8 && !supportsDarkText) {
                z9 = true;
            } else {
                z9 = false;
            }
            lightBarController.mForceDarkForScrim = z9;
            if (!z8 || !supportsDarkText) {
                z11 = false;
            }
            lightBarController.mForceLightForScrim = z11;
            if (lightBarController.mBouncerVisible != z14) {
                lightBarController.reevaluate();
                return;
            }
            if (lightBarController.mHasLightNavigationBar) {
                if (z9 != z15) {
                    lightBarController.reevaluate();
                    return;
                }
                return;
            } else {
                if (z11 != z16) {
                    lightBarController.reevaluate();
                    return;
                }
                return;
            }
        }
        if (z10) {
            int mainColor = gradientColors.getMainColor();
            int i = (mainColor >> 16) & 255;
            int i2 = (mainColor >> 8) & 255;
            int i3 = mainColor & 255;
            if (((int) Math.sqrt((i3 * i3 * 0.068d) + (i2 * i2 * 0.691d) + (i * i * 0.241d))) >= 130) {
                z5 = true;
            } else {
                z5 = false;
            }
            lightBarController.mPanelHasWhiteBg = z5;
            if (scrimState == ScrimState.UNLOCKED && floatValue >= f) {
                z6 = true;
            } else {
                z6 = false;
            }
            lightBarController.mPanelExpanded = z6;
        }
        boolean z17 = lightBarController.mForceDarkForScrim;
        if (scrimState != ScrimState.BOUNCER && scrimState != ScrimState.BOUNCER_SCRIMMED && floatValue >= f && ((z10 || !gradientColors.supportsDarkText()) && (!z10 || !z))) {
            z2 = true;
        } else {
            z2 = false;
        }
        lightBarController.mForceDarkForScrim = z2;
        if (z10) {
            if (z12 != lightBarController.mPanelExpanded) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (lightBarController.mPanelHasWhiteBg != z13) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (!lightBarController.mHasLightNavigationBar || z2 == z17) {
                z11 = false;
            }
            if (z3 || z4 || z11) {
                lightBarController.reevaluate();
                return;
            }
            return;
        }
        if (lightBarController.mHasLightNavigationBar && z2 != z17) {
            lightBarController.reevaluate();
        }
    }
}
