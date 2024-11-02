package com.android.keyguard;

import android.util.MathUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerPanelExpansionCalculator {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        new BouncerPanelExpansionCalculator();
    }

    private BouncerPanelExpansionCalculator() {
    }

    public static final float aboutToShowBouncerProgress(float f) {
        return MathUtils.constrain((f - 0.9f) / 0.1f, 0.0f, 1.0f);
    }

    public static final float showBouncerProgress(float f) {
        if (f >= 0.9f) {
            return 1.0f;
        }
        if (f < 0.6d) {
            return 0.0f;
        }
        return (f - 0.6f) / 0.3f;
    }
}
