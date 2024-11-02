package com.android.systemui.keyguard.animator;

import androidx.dynamicanimation.animation.SpringForce;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract /* synthetic */ class ActionUpOrCancelHandler$$ExternalSyntheticOutline0 {
    public static SpringForce m(float f, float f2) {
        SpringForce springForce = new SpringForce();
        springForce.setStiffness(f);
        springForce.setDampingRatio(f2);
        return springForce;
    }
}
