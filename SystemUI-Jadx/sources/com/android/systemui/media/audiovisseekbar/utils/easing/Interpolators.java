package com.android.systemui.media.audiovisseekbar.utils.easing;

import android.view.animation.PathInterpolator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Interpolators {
    public static final Interpolators INSTANCE = new Interpolators();
    public static final PathInterpolator MOTION_ACTIVITY_EASING = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);

    private Interpolators() {
    }
}
