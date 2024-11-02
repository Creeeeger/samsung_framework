package com.android.systemui.keyguard;

import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class KeyguardSecLegacyUnlockAnimationControllerImplKt {
    public static final Interpolator CUSTOM_INTERPOLATOR;
    public static final Interpolator SINE_IN_OUT_33;

    static {
        new PathInterpolator(0.33f, 0.0f, 0.1f, 1.0f);
        SINE_IN_OUT_33 = new PathInterpolator(0.33f, 0.0f, 0.67f, 1.0f);
        CUSTOM_INTERPOLATOR = new PathInterpolator(0.33f, 1.0f, 0.9f, 1.0f);
    }
}
